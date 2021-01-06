#pragma once

#include "vnl/vnl_vector_fixed.h"
#include "TriMesh.h"
#include "KDtree.h"
#include <unordered_map>

#include "MeshWrapper.h"

#include <Eigen/Core>
#include <Eigen/Geometry>
#include <vector>
#include "igl/heat_geodesics.h"

namespace shapeworks {

class TriMeshWrapper : public MeshWrapper {
public:
  explicit TriMeshWrapper(std::shared_ptr<trimesh::TriMesh> mesh);

  ~TriMeshWrapper() = default;

  typedef typename MeshWrapper::PointType PointType;
  typedef typename MeshWrapper::HessianType HessianType;

  double ComputeDistance(PointType pointa, int idx_a,
                         PointType pointb, int idx_b,
                         vnl_vector_fixed<double, DIMENSION> *out_grad=nullptr) const override;

  PointType
  GeodesicWalk(PointType pointa, int idx, vnl_vector_fixed<double, DIMENSION> vector) const override;

  vnl_vector_fixed<double, DIMENSION>
  ProjectVectorToSurfaceTangent(const PointType& pointa, int idx,
                                vnl_vector_fixed<double, DIMENSION>& vector) const override;

  vnl_vector_fixed<float, DIMENSION> SampleNormalAtPoint(PointType p, int idx) const override;
  HessianType SampleGradNAtPoint(PointType p, int idx) const override;

  PointType SnapToMesh(PointType pointa, int idx) const override;

  PointType GetPointOnMesh() const override;


  inline const PointType& GetMeshLowerBound() const override
  {
    return mesh_lower_bound_;
  }

  inline const PointType& GetMeshUpperBound() const override
  {
    return mesh_upper_bound_;
  }

private:

  Eigen::Vector3d
  GeodesicWalkOnFace(Eigen::Vector3d point_a,
                     Eigen::Vector3d projected_vector, int face_index) const;

  Eigen::Vector3d
  ProjectVectorToFace(const Eigen::Vector3d& normal, const Eigen::Vector3d& vector) const;

  Eigen::Vector3d
  RotateVectorToFace(const Eigen::Vector3d& prev_normal, const Eigen::Vector3d& next_normal,
                     const Eigen::Vector3d& vector) const;

  const Eigen::Vector3d GetFaceNormal(int face_index) const;

  void ComputeMeshBounds();
  void ComputeGradN(); // Gradient of normals

  trimesh::point GetBarycentricIntersection(trimesh::vec3 start, trimesh::vec3 end,
                                            int currentFace, int edge) const;

  int GetNearestVertex(trimesh::point pt) const;
  int GetTriangleForPoint(trimesh::point pt, int idx, trimesh::vec& bary) const;
  std::vector<int> GetKNearestVertices(trimesh::point pt, int k) const;
  trimesh::vec3 ComputeBarycentricCoordinates(trimesh::point pt, int face) const;

  static inline bool IsBarycentricCoordinateValid(const trimesh::vec3& b);

  // IGL Helper functions
  void GetIGLMesh(Eigen::MatrixXd& V, Eigen::MatrixXi& F);

  std::shared_ptr<trimesh::TriMesh> mesh_;
  std::shared_ptr<trimesh::KDtree> kd_tree_;

  // Maintains a map of particle index -> triangle index
  // Has to be mutable because all of the accessor APIs are const
  mutable std::vector<int> particle2tri_;

  std::vector<HessianType> grad_normals_;

  // Geodesic distances
  void PrecomputeGeodesics(); // Precomputation for geodesic distances
  double GeodesicDistance(int v1, int v2) const;
  trimesh::vec3 GeodesicDistanceFromFace(int f1, int f2) const;
  Eigen::VectorXd GeodesicDistanceFromFace(int f1) const;
  mutable struct {
    igl::HeatGeodesicsData<double> heat_data;

    //TODO lru_cache https://github.com/lamerman/cpp-lru-cache/blob/master/include/lrucache.hpp
    std::unordered_map<int, Eigen::VectorXd> cache;

    //TODO should we just recompute this every time?
    Eigen::SparseMatrix<double> G;
  } geodesic_cache_;

  PointType mesh_lower_bound_;
  PointType mesh_upper_bound_;
};

}
