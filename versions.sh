#!/bin/sh
VTK_VER=6.1.0
HDF5_VER=1.8.14
CGNSLIB_VER=3.2.1
IRICLIB_VER=$(git ls-remote https://github.com/i-RIC/iriclib.git HEAD | cut -f1)
SHAPELIB_VER=1.3.0
QWT_VER=6.1.3
GDAL_VER=1.11.2
PROJ_VER=4.8.0
NETCDF_VER=4.3.3
GEOS_VER=3.4.3
BOOST_VER=1.59.0
YAML_CPP_VER=0.5.2
#
# replace . with _
#
BOOST_UVER=$(echo $BOOST_VER | sed 's/\./_/g')

export VTK_VER HDF5_VER CGNSLIB_VER SHAPELIB_VER QWT_VER
export GDAL_VER PROJ_VER NETCDF_VER GEOS_VER BOOST_VER
export YAML_CPP_VER BOOST_UVER IRICLIB_VER
