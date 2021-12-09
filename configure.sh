#!/bin/sh

mkdir sources;
cp -r python sources/;
cp -r c sources/;
cp -r cpp sources/;
cp -r nanopb sources/;
mkdir -p sources/nanopb/include/proto;
mkdir sources/nanopb/src;
mv sources/nanopb/proto/*.h sources/nanopb/include/proto/;
mv sources/nanopb/proto/*.c sources/nanopb/src/;
rm -rf sources/nanopb/proto;
git clone https://github.com/nanopb/nanopb.git _nanopb_;
cp _nanopb_/pb*.h sources/nanopb/include/;
cp _nanopb_/pb*.c sources/nanopb/src/;
zip -r sources.zip sources;