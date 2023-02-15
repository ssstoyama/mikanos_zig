#!/bin/bash

workspace=/workspaces/mikanos_zig
edk2=/home/vscode/edk2
current=$(pwd)

export CONF_PATH=${workspace}/edk2/Conf

ln -sf ${workspace}/src/MikanLoaderPkg ${edk2}

# configure edk2
cd ${edk2}
source edksetup.sh
cd ${current}
ln -sf ${edk2}/Build .

# configure clang (kernel build)
source /home/vscode/osbook/devenv/buildenv.sh

cp tools_def_arm64.txt ./edk2/Conf/tools_def.txt

unset -v workspace edk2 current
