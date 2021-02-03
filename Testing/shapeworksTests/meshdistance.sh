#! /bin/bash

shapeworks readimage --name $DATA/m03_L_femur.ply meshdistance --name $DATA/m04_L_femur.ply writemesh --name /tmp/meshdistance1p2p.vtk comparemesh --name $DATA/meshdistance1p2p.vtk
  #| diff - $DATA/meshdistance1p2p.txt
if [[ $? != 0 ]]; then exit -1; fi
shapeworks readimage --name $DATA/m03_L_femur.ply meshdistance --name $DATA/m04_L_femur.ply --method "point-to-cell" writemesh --name /tmp/meshdistance1p2c.vtk comparemesh --name $DATA/meshdistance1p2c.vtk
  #| diff - $DATA/meshdistance1p2c.txt
if [[ $? != 0 ]]; then exit -1; fi
shapeworks readimage --name $DATA/m04_L_femur.ply meshdistance --name $DATA/m03_L_femur.ply writemesh --name /tmp/meshdistance1rev.vtk comparemesh --name $DATA/meshdistance1rev.vtk
  #| diff - $DATA/meshdistance1rev.txt
if [[ $? != 0 ]]; then exit -1; fi
shapeworks readimage --name $DATA/femur.ply meshdistance --name $DATA/pelvis.ply writemesh --name /tmp/meshdistance2.vtk comparemesh --name $DATA/meshdistance2.vtk
  #| diff - $DATA/meshdistance2.txt
if [[ $? != 0 ]]; then exit -1; fi
shapeworks readimage --name $DATA/pevis.ply meshdistance --name $DATA/femur.ply writemesh --name /tmp/meshdistance2rev.vtk comparemesh --name $DATA/meshdistance2rev.vtk
  #| diff - $DATA/meshdistance2rev.txt
