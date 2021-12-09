#!/bin/sh
protoc -I=proto --python_out=python --c_out=c --cpp_out=cpp --doc_out=docs proto/acq_protocol.proto

nanopb_generator proto/acq_protocol.proto --output-dir=nanopb
