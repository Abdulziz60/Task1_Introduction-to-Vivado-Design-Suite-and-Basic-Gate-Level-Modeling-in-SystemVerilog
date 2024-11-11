#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Nov 11 19:27:27 +03 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 5c95469a3bfc4ef6864c21e243a96be2 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot bt_Half_Adder_behav xil_defaultlib.bt_Half_Adder xil_defaultlib.glbl -log elaborate.log"
xelab -wto 5c95469a3bfc4ef6864c21e243a96be2 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot bt_Half_Adder_behav xil_defaultlib.bt_Half_Adder xil_defaultlib.glbl -log elaborate.log

