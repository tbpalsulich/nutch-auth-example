#!/bin/bash

mkdir dist
svn co http://svn.apache.org/repos/asf/nutch/trunk/ nutch_trunk
cd nutch_trunk
ant
cp -r runtime/local/* ../dist
cd ..
cp conf/* dist/conf
cp -r urls dist/
