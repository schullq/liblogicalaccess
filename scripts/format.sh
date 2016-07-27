#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="${DIR}/../"
for f in `find ${DIR}/src ${DIR}/include -name "*.hpp" -or -name "*.cpp"`; do
    clang-format-3.8 -style=file -i $f;
done

for f in `find ${DIR}plugins/lla-tests ${DIR}plugins/pluginscards ${DIR}plugins/pluginsreaderproviders -name "*.hpp" -or -name "*.cpp"`; do
    clang-format-3.8 -style=file -i $f;
done
