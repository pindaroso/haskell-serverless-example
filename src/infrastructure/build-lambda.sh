#!/bin/bash

PROJECT=example
CMD=$(find .stack-work/dist -type f -perm +111 -print | grep main)

$CMD lambda build --build-target $PROJECT --source-directory $PROEJCT/
