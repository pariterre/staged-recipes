mkdir build
pushd build

cmake $SRC_DIR \
  -GNinja \
  -DCMAKE_INSTALL_PREFIX=${PREFIX}\
  -DACADOS_INSTALL_DIR=${PREFIX}\
  -BLASFEO_TARGET="GENERIC" \
  -DACADOS_WITH_QPOASES=ON \
  -DACADOS_PYTHON=ON \
  -DPYTHON_PREFIX=${SP_DIR} \
  -DCMAKE_BUILD_TYPE=Release \
  -DACADOS_EXAMPLES=OFF
  
ninja install
