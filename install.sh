#!/bin/sh
SCRIPTPATH=$( cd "$(dirname "$0")" ; pwd -P)
ln -sfv $SCRIPTPATH/home/.??* ~

ln -sfv $SCRIPTPATH/.vim ~

mkdir -pv ~/.vimbackup
