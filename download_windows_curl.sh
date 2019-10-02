#!/bin/bash

CURL="curl -L -O"  # may need to add -k (Allow insecure server connections when using SSL)

. ./versions.sh

if [ ! -f "VTK-${VTK_VER}.zip" ]; then
  MAJOR=$(echo ${VTK_VER} | cut -d '.' -f 1)
  MINOR=$(echo ${VTK_VER} | cut -d '.' -f 2)
  ${CURL} https://www.vtk.org/files/release/${MAJOR}.${MINOR}/VTK-${VTK_VER}.zip
fi

if [ ! -f "hdf5-${HDF5_VER}.zip" ]; then
  MAJOR=$(echo ${HDF5_VER} | cut -d '.' -f 1)
  MINOR=$(echo ${HDF5_VER} | cut -d '.' -f 2)
  ${CURL} https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-${MAJOR}.${MINOR}/hdf5-${HDF5_VER}/cmake/SZip.tar.gz
  ${CURL} https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-${MAJOR}.${MINOR}/hdf5-${HDF5_VER}/cmake/ZLib.tar.gz
  ${CURL} https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-${MAJOR}.${MINOR}/hdf5-${HDF5_VER}/src/hdf5-${HDF5_VER}.zip
fi

if [ ! -f "cgnslib_${CGNSLIB_VER}.tar.gz" ]; then
  MAJOR=$(echo ${CGNSLIB_VER} | cut -d '.' -f 1)
  MINOR=$(echo ${CGNSLIB_VER} | cut -d '.' -f 2)
  ${CURL} https://downloads.sourceforge.net/project/cgns/cgnslib_${MAJOR}.${MINOR}/cgnslib_${CGNSLIB_VER}.tar.gz
fi

if [ ! -f "iriclib-${IRICLIB_VER}.zip" ]; then
  ${CURL} https://github.com/i-RIC/iriclib/archive/v${IRICLIB_VER}.zip
  mv v${IRICLIB_VER}.zip iriclib-${IRICLIB_VER}.zip
fi

if [ ! -f "iriclib-adf-${IRICLIB_VER}.zip" ]; then
  ${CURL} https://github.com/scharlton2/iriclib/archive/adf-${IRICLIB_ADF_VER}.zip
  mv adf-${IRICLIB_ADF_VER}.zip iriclib-adf-${IRICLIB_ADF_VER}.zip
fi

if [ ! -f "shapelib-${SHAPELIB_VER}.zip" ]; then
  ${CURL} http://download.osgeo.org/shapelib/shapelib-${SHAPELIB_VER}.zip
fi

if [ ! -f "qwt-${QWT_VER}.zip" ]; then
  ${CURL} https://sourceforge.net/projects/qwt/files/qwt/${QWT_VER}/qwt-${QWT_VER}.zip
fi

if [ ! -f "gdal-${GDAL_VER}.tar.gz" ]; then
  ${CURL} http://download.osgeo.org/gdal/${GDAL_VER}/gdal-${GDAL_VER}.tar.gz
fi

if [ ! -f "proj-${PROJ_VER}.zip" ]; then
  ${CURL} http://download.osgeo.org/proj/proj-${PROJ_VER}.zip
fi

if [ ! -f "netcdf-${NETCDF_VER}.zip" ]; then
  ${CURL} ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-${NETCDF_VER}.zip
fi

if [ ! -f "geos-${GEOS_VER}.tar.bz2" ]; then
  ${CURL} http://download.osgeo.org/geos/geos-${GEOS_VER}.tar.bz2
fi

if [ ! -f "boost_${BOOST_UVER}.7z" ]; then
  ${CURL} https://sourceforge.net/projects/boost/files/boost/${BOOST_VER}/boost_${BOOST_UVER}.7z
fi

if [ ! -f "yaml-cpp-release-${YAML_CPP_VER}.zip" ]; then
  ${CURL} https://github.com/jbeder/yaml-cpp/archive/release-${YAML_CPP_VER}.zip 
  mv release-${YAML_CPP_VER}.zip yaml-cpp-release-${YAML_CPP_VER}.zip
fi

if [ ! -f "expat-${EXPAT_VER}.zip" ]; then
  ${CURL} https://github.com/libexpat/libexpat/archive/${EXPAT_UVER}.zip
  mv ${EXPAT_UVER}.zip expat-${EXPAT_VER}.zip
fi

if [ ! -f "udunits-${UDUNITS_VER}.tar.gz" ]; then
  ${CURL} ftp://ftp.unidata.ucar.edu/pub/udunits/udunits-${UDUNITS_VER}.tar.gz
fi

if [ ! -f "OpenSSL_${OPENSSL_UVER}.zip" ]; then
  ${CURL} https://github.com/openssl/openssl/archive/OpenSSL_${OPENSSL_UVER}.zip
fi
