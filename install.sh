#! /bin/sh
#
# install.sh
# Copyright (C) 2016 justice <justice@justice-ubuntu>
#
# Distributed under terms of the MIT license.
#


PWD=$(pwd)

INSTALL_DIR="~/.vim"

mkdir -p ${INSTALL_DIR}
cp *.vim ${INSTALL_DIR}
cp vimrc ${INSTALL_DIR}
cd ${INSTALL_DIR} && ln -s plugged.vim vimrc.local

