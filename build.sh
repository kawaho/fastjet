#!/bin/bash

rm -rf CGAL-5.6*
rm -rf build

cd fastjet-core
git reset --hard fastjet-3.4.2
git clean -f
cd plugins/SISCone/siscone
git clean -f
cd ../../../
cd ..

cd fastjet-contrib
git clean -f
cd ..

rm -rf src/fastjet/_fastjet_core/

python -m pip install --upgrade --verbose .
