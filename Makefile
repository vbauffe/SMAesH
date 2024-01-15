lib = -y ./hdl/aes_enc128_32bits_hpc2/ -y ./hdl/aes_enc128_32bits_hpc2/masked_gadgets

all: MSKaesMCinv

MSKaesMC:
	iverilog -o hello ./hdl/tb/tb_aesMC.v $(lib)
	vvp hello

MSKaesMCinv:
	iverilog -o hello ./hdl/tb/tb_aesMCinv.v $(lib)
	vvp hello

clean:
	rm -f hello *.vcd

.PHONY: all run clean
