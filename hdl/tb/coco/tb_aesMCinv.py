# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

# test_my_design.py (simple)

import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def my_first_test(dut):
    """Try accessing the design."""

    # for cycle in range(10):
    #     dut.clk.value = 0
    #     await Timer(1, units="ns")
    #     dut.clk.value = 1
    #     await Timer(1, units="ns")

    dut.b0.value = 0x8e
    dut.b1.value = 0x4d
    dut.b2.value = 0xa1
    dut.b3.value = 0xbc

    await Timer(1, units="ms") 

    assert dut.a0.value == 0xdb, "a0"
    assert dut.a1.value == 0x13, "a1"
    assert dut.a2.value == 0x53, "a2"
    assert dut.a3.value == 0x45, "a3"


# # test_my_design.py (extended)

# import cocotb
# from cocotb.triggers import FallingEdge, Timer


# async def generate_clock(dut):
#     """Generate clock pulses."""

#     for cycle in range(10):
#         dut.clk.value = 0
#         await Timer(1, units="ns")
#         dut.clk.value = 1
#         await Timer(1, units="ns")


# @cocotb.test()
# async def my_second_test(dut):
#     """Try accessing the design."""

#     await cocotb.start(generate_clock(dut))  # run the clock "in the background"

#     await Timer(5, units="ns")  # wait a bit
#     await FallingEdge(dut.clk)  # wait for falling edge/"negedge"

#     dut._log.info("my_signal_1 is %s", dut.my_signal_1.value)
#     assert dut.my_signal_2.value[0] == 0, "my_signal_2[0] is not 0!"
