#!/bin/sh
SCRIPTPATH=$( cd "$(dirname "$0")" ; pwd -P)
ln -sfv $SCRIPTPATH/.????* ~
