# -*- coding: utf-8 -*-
"""
====================================================================
Full Example Pipeline for Statistical Shape Modeling with ShapeWorks
====================================================================

In this example we provide a full pipeline with an example dataset of axis 
aligned ellipsoids. We provide two different datasets for two different 
senarios, prepared data consists of the binary images which do not require 
alignment/resampling/cropping as pre-processing and only require conversion to
signed distance transforms before running the ShapeWorks particle based 
optimization. Second is the unprepped data which requires additional 
pre-processing steps before it can be fed into the optimization. 

This example is set to serve as a test case for new ShapeWorks users, and each
step is explained in the shapeworks including the pre-processing, the 
optimization and, the post ShapeWorks visualization.

First import the necessary modules
"""

from zipfile import ZipFile
import os
import sys
import csv
import argparse

from GroomUtils import *
from OptimizeUtils import *
from AnalyzeUtils import *


def Run_Pipeline(args):

    """
    Unzip the data for this tutorial.

    The data is inside the Ellipsoids.zip, run the following function to unzip the 
    data and create necessary supporting files. The files will be Extracted in a
    newly created Directory TestEllipsoids.
    This data both prepped and unprepped are binary images of ellipsoids varying
    one of the axes while the other two are kept fixed. 
    """
    """
    Extract the zipfile into proper directory and create necessary supporting
    files
    """
    print("\nStep 1. Extract Data\n")
    if int(args.interactive) != 0:
        input("Press Enter to continue")

    datasetName = "ellipsoid"
    filename = datasetName + ".zip"
    # Check if the data is in the right place
    if not os.path.exists(filename):
        print("Can't find " + filename + " in the current directory.")
        import DatasetUtils
        DatasetUtils.downloadDataset(datasetName)

    parentDir = "TestEllipsoidsMesh/"
    if not os.path.exists(parentDir):
        os.makedirs(parentDir)
    # extract the zipfile
    with ZipFile(filename, 'r') as zipObj:
        zipObj.extractall(path=parentDir)
        datasetDir = parentDir + datasetName + "/"
        meshFiles = sorted(glob.glob(datasetDir + "meshes/*.ply"))
        imageFiles = sorted(glob.glob(datasetDir + "images/*.nrrd"))

    meshFiles = meshFiles[:15]
    imageFiles = imageFiles[:15]
    if args.tiny_test:
        args.use_single_scale = 1
        meshFiles = meshFiles[:2]
        imageFiles = imageFiles[:2]

    pointDir = parentDir + 'PointFiles/'
    if not os.path.exists(pointDir):
        os.makedirs(pointDir)

    parameterDictionary = {
        "number_of_particles" : 128,
        "use_normals": 0,
        "normal_weight": 10.0,
        "checkpointing_interval" : 200,
        "keep_checkpoints" : 0,
        "iterations_per_split" : 500,
        "optimization_iterations" : 500,
        "starting_regularization" : 100,
        "ending_regularization" : 0.1,
        "recompute_regularization_interval" : 2,
        "domains_per_shape" : 1,
        "domain_type" : 'mesh',
        "relative_weighting" : 10,
        "initial_relative_weighting" : 0.01,
        "procrustes_interval" : 0,
        "procrustes_scaling" : 0,
        "save_init_splits" : 0,
        "debug_projection" : 0,
        "verbosity" : 3
      }

    if args.tiny_test:
        parameterDictionary["number_of_particles"] = 32
        parameterDictionary["optimization_iterations"] = 25

    if not args.use_single_scale:
        parameterDictionary["use_shape_statistics_after"] = 32


    """
    Now we execute a single scale particle optimization function.
    """
    [localPointFiles, worldPointFiles] = runShapeWorksOptimize(pointDir, meshFiles, parameterDictionary)

    if args.tiny_test:
        print("Done with tiny test")
        exit()
          
    """
    ## ANALYZE : Shape Analysis and Visualization

    Shapeworks yields relatively sparse correspondence models that may be inadequate to reconstruct 
    thin structures and high curvature regions of the underlying anatomical surfaces. 
    However, for many applications, we require a denser correspondence model, for example, 
    to construct better surface meshes, make more detailed measurements, or conduct biomechanical 
    or other simulations on mesh surfaces. One option for denser modeling is 
    to increase the number of particles per shape sample. However, this approach necessarily 
    increases the computational overhead, especially when modeling large clinical cohorts.

    Here we adopt a template-deformation approach to establish an inter-sample dense surface correspondence, 
    given a sparse set of optimized particles. To avoid introducing bias due to the template choice, we developed
    an unbiased framework for template mesh construction. The dense template mesh is then constructed 
    by triangulating the isosurface of the mean distance transform. This unbiased strategy will preserve 
    the topology of the desired anatomy  by taking into account the shape population of interest. 
    In order to recover a sample-specific surface mesh, a warping function is constructed using the 
    sample-level particle system and the mean/template particle system as control points. 
    This warping function is then used to deform the template dense mesh to the sample space.

    """

    print("\nStep 5. Analysis - Launch ShapeWorksStudio - sparse correspondence model.\n")
    if args.interactive != 0:
        input("Press Enter to continue")

    launchShapeWorksStudio(pointDir, imageFiles, localPointFiles, worldPointFiles)
