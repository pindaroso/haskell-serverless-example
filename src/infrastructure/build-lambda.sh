#!/bin/bash

PROJECT=example
CMD=./code/infrastructure/.stack-work/dist/x86_64-linux/Cabal-1.22.5.0/build/main/main

$CMD lambda build --build-target $PROJECT --source-directory $PROEJCT/
