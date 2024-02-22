lib = -y ./hdl/aes_enc128_32bits_hpc2/ -y ./hdl/aes_enc128_32bits_hpc2/masked_gadgets -y ./hdl/aes_enc128_32bits_hpc2/sbox -y ./hdl/aes_enc128_32bits_hpc2/rnd_gen -y ./hdl/tb -I ./hdl/aes_enc128_32bits_hpc2/masked_gadgets/ -I ./hdl/tb/

all: cMSKsbox

MSKaesMC:
	iverilog -o hello ./hdl/tb/tb_aesMC.v $(lib)
	vvp hello

MSKaesMCinv:
	iverilog -o hello ./hdl/tb/tb_aesMCinv.v $(lib)
	vvp hello

MSKsbox:
	iverilog -o hello ./hdl/tb/tb_MSKsbox.v $(lib)
	vvp hello

cMSKsbox:
	iverilog -o hello ./hdl/tb/tb_cMSKsbox.v $(lib)
	vvp hello

sboxcomplete:
	iverilog -o hello ./hdl/tb/tb_sboxcomplete.v $(lib)
	vvp hello

tb:
	iverilog -o hello ./hdl/tb/tb_aes_enc128_32bits_hpc2.v $(lib)
	vvp hello

clean:
	rm -f hello *.vcd

.PHONY: all run clean
