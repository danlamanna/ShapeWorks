#pragma once

#include "MeshWrapper.h"

#include <vtkPolyData.h>
#include <vtkSmartPointer.h>

class vtkCellLocator;

namespace shapeworks {

class VtkMeshWrapper : public MeshWrapper {

public:

  typedef typename MeshWrapper::PointType PointType;
  typedef typename MeshWrapper::GradNType GradNType;

  explicit VtkMeshWrapper(vtkSmartPointer <vtkPolyData> mesh);

  ~VtkMeshWrapper() = default;

  double ComputeDistance(PointType pointa, PointType pointb) const override;

  PointType
  GeodesicWalk(PointType pointa, int idx, vnl_vector_fixed<double, DIMENSION> vector) const override;

  vnl_vector_fixed<double, DIMENSION>
  ProjectVectorToSurfaceTangent(const PointType& pointa, int idx,
                                vnl_vector_fixed<double, DIMENSION>& vector);

  vnl_vector_fixed<float, DIMENSION> SampleNormalAtPoint(PointType p, int idx) const override;
  GradNType SampleGradNAtPoint(PointType p, int idx) const override;

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


  int GetTriangleForPoint(const double pt[3], int idx) const;

  Eigen::Vector3d ProjectVectorToFace(const Eigen::Vector3d& normal,
                                                      const Eigen::Vector3d& vector);


  vtkSmartPointer<vtkPolyData> poly_data_;

  /*
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


  // IGL Helper functions
  void GetIGLMesh(Eigen::MatrixXd& V, Eigen::MatrixXi& F);
*/

  // Maintains a map of particle index -> triangle index
  // Has to be mutable because all of the accessor APIs are const
  mutable std::vector<int> particle2tri_;

  std::vector<GradNType> grad_normals_;

  PointType mesh_lower_bound_;
  PointType mesh_upper_bound_;


  vtkSmartPointer<vtkCellLocator> cell_locator_ = vtkSmartPointer<vtkCellLocator>::New();

};
}