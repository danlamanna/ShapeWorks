# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# compile CXX with /usr/bin/c++
CXX_FLAGS =  -g -O1  -Wno-array-bounds -msse2 -fopenmp  -Wno-deprecated -g -I/home/sci/prafulag/GitRepos/hipworks/fim_v4 -I/home/sci/prafulag/GitRepos/hipworks/ITKIOFactoryRegistration -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/Watersheds/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/Voronoi/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Video/IO/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Video/Filtering/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Video/Core/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Bridge/VTK/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/TestKernel/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/SpatialFunction/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Registration/RegistrationMethodsv4/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/RegionGrowing/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/QuadEdgeMeshFiltering/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Numerics/NeuralNetworks/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Registration/Metricsv4/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Numerics/Optimizersv4/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/MarkovRandomFieldsClassifiers/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/LevelSetsv4/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/LabelVoting/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/KLMRegionGrowing/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageNoise/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageFusion/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/VTK/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/TransformMatlab/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/TransformInsightLegacy/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/TransformHDF5/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/TransformBase/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/Stimulate/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/Siemens/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/RAW/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/PNG/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/PNG/src -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/PNG/src -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/NRRD/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/NrrdIO/src/NrrdIO -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/NrrdIO/src/NrrdIO -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/NIFTI/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/Meta/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/Mesh/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/MRC/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/LSM/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/TIFF/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/TIFF/src -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/TIFF/src/itktiff -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/TIFF/src -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/JPEG/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/JPEG/src -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/JPEG/src -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/HDF5/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/GIPL/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/GE/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/IPL/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/GDCM/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/CSV/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/BioRad/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/BMP/include -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/HDF5/src -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/HDF5/src -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/GPUThresholding/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/GPUSmoothing/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Registration/GPUPDEDeformable/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Registration/GPUCommon/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/GPUImageFilterBase/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/GPUAnisotropicSmoothing/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/GPUFiniteDifference/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/GPUCommon/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/GIFTI/src/gifticlib -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/NIFTI/src/nifti/znzlib -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/NIFTI/src/nifti/niftilib -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/GDCM/src/gdcm/Source/DataStructureAndEncodingDefinition -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/GDCM/src/gdcm/Source/MessageExchangeDefinition -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/GDCM/src/gdcm/Source/InformationObjectDefinition -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/GDCM/src/gdcm/Source/Common -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/GDCM/src/gdcm/Source/DataDictionary -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/GDCM/src/gdcm/Source/MediaStorageAndFileFormat -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/GDCM/src/gdcm/Source/Common -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/GDCM -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Registration/FEM/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Registration/PDEDeformable/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Numerics/FEM/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Registration/Common/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/SpatialObjects/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/XML/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/Expat/src/expat -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/Expat/src/expat -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Numerics/Eigen/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/DisplacementField/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/DiffusionTensorImage/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/Denoising/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/DeformableMesh/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/Deconvolution/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/DICOMParser/src/DICOMParser -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/DICOMParser/src/DICOMParser -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/Convolution/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/FFT/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/Colormap/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/Classifiers/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/BioCell/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/BiasCorrection/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Numerics/Polynomials/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/AntiAlias/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/LevelSets/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/SignedDistanceFunction/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Numerics/Optimizers/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageFeature/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageSources/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageGradient/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/Smoothing/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageCompare/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/FastMarching/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/QuadEdgeMesh/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/DistanceMap/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Numerics/NarrowBand/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/BinaryMathematicalMorphology/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/LabelMap/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/MathematicalMorphology/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Segmentation/ConnectedComponents/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/Thresholding/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageLabel/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageIntensity/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/Path/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageStatistics/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/SpatialObjects/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/MetaIO/src/MetaIO/src -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/MetaIO/src/MetaIO/src -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/ZLIB/src -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/ZLIB/src -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/Mesh/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/IO/ImageBase/include -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/IO/ImageBase -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageCompose/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/AnisotropicSmoothing/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageGrid/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/ImageFunction/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/Transform/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Numerics/Statistics/include -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/Netlib -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/ImageAdaptors/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/CurvatureFlow/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Filtering/ImageFilterBase/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/FiniteDifference/include -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/Core/Common/include -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/Core/Common -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/VNLInstantiation/include -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/VNL/src/vxl/core -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/VNL/src/vxl/vcl -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/VNL/src/vxl/v3p/netlib -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/VNL/src/vxl/core -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/VNL/src/vxl/vcl -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/VNL/src/vxl/v3p/netlib -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/KWSys/src -I/home/sci/prafulag/BuildDIR/ITK-4.7.2/Modules/ThirdParty/DoubleConversion/src/double-conversion -I/home/sci/prafulag/SourceDIR/ITK-4.7.2/Modules/ThirdParty/DoubleConversion/src/double-conversion -I/home/sci/prafulag/GitRepos/hipworks/fim_v4/trimesh2/include -I/home/sci/prafulag/GitRepos/hipworks/Utilities -I/home/sci/prafulag/GitRepos/hipworks/ITKParticleSystem -I/home/sci/prafulag/GitRepos/hipworks/tinyxml -I/home/sci/prafulag/BuildDIR/VTK-5.10.1 -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Common -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/VolumeRendering -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Rendering -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Charts -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Chemistry -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/vtkalglib -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Infovis -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Geovis -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Views -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/VolumeRendering -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Hybrid -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Widgets -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Rendering -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Charts -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Chemistry -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Rendering/Testing/Cxx -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/IO -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Imaging -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Graphics -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/GenericFiltering -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Filtering -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Common -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Common/Testing/Cxx -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/vtknetcdf -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtknetcdf -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtknetcdf/include -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/vtklibproj4 -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtklibproj4 -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/DICOMParser -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/DICOMParser -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/vtkfreetype/include -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtkfreetype/include -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/LSDyna -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/LSDyna -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/MaterialLibrary -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/MaterialLibrary -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/vtkmetaio -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtkmetaio -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/verdict -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/verdict -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/vtkhdf5 -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtkhdf5 -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/vtkhdf5/src -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtkhdf5/src -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/Utilities/vtkhdf5/hl/src -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtkhdf5/hl/src -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/utf8/source -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/GUISupport/Qt -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/GUISupport/Qt -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/GUISupport/Qt/Chart -I/home/sci/prafulag/BuildDIR/VTK-5.10.1/GUISupport/Qt/Chart -I/home/sci/prafulag/SourceDIR/VTK-5.10.1/Utilities/vtkalglib -I/home/sci/prafulag/BuildDIR/vxl/vcl -I/home/sci/prafulag/SourceDIR/vxl/vcl -I/home/sci/prafulag/BuildDIR/vxl/core -I/home/sci/prafulag/SourceDIR/vxl/core -I/home/sci/prafulag/GitRepos/hipworks/trimesh2/include   

CXX_DEFINES = -DITK_IO_FACTORY_REGISTER_MANAGER -DSW_USE_FEAMESH -DSW_USE_OPENMP
