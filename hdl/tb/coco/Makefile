# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += ../../aes_enc128_32bits_hpc2/MSKaesMCinv.v ../../aes_enc128_32bits_hpc2/MSKprodMCinv.v ../../aes_enc128_32bits_hpc2/masked_gadgets/MSKxor.v
# use VHDL_SOURCES for VHDL files

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = MSKaesMCinv

# MODULE is the basename of the Python test file
MODULE = tb_aesMCinv

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
