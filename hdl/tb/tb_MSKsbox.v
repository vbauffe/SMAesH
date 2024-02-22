`timescale 1ns/1ps

module tb_sbox;

localparam and_pini_mul_nrnd = 2*(2-1)/2;
localparam and_pini_nrnd = and_pini_mul_nrnd;

reg clk;
wire [7:0] in, out;
wire [1:0] i0, i1, i2, i3, i4, i5, i6, i7;
wire [1:0] o0, o1, o2, o3, o4, o5, o6, o7;

assign in = 8'h00;

assign {i0[1], i1[1], i2[1], i3[1], i4[1], i5[1], i6[1], i7[1]} = 8'h12;
assign {i0[0], i1[0], i2[0], i3[0], i4[0], i5[0], i6[0], i7[0]} = 8'h00;


wire [9*and_pini_nrnd-1:0] rnd_bus0; 
wire [3*and_pini_nrnd-1:0] rnd_bus2;
wire [4*and_pini_nrnd-1:0] rnd_bus3;
wire [18*and_pini_nrnd-1:0] rnd_bus4;
assign rnd_bus0 = 9'b001100101;
assign rnd_bus2 = 3'b001;
assign rnd_bus3 = 4'b0011;
assign rnd_bus4 = 18'b001101111101111100;

bp_inv_sbox #(.d(2))
    sbox_unit(
        .clk(clk),
        .i0(i7),
        .i1(i6),
        .i2(i5),
        .i3(i4),
        .i4(i3),
        .i5(i2),
        .i6(i1),
        .i7(i0),
        .rnd_bus0(rnd_bus0),
        .rnd_bus2(rnd_bus2),
        .rnd_bus3(rnd_bus3),
        .rnd_bus4(rnd_bus4),
        .o0(o0),
        .o1(o1),
        .o2(o2),
        .o3(o3),
        .o4(o4),
        .o5(o5),
        .o6(o6),
        .o7(o7)
    );

// bp_aes_sbox_msk_noctrl_noenable #(.d(2)) dut (	clk,
//                                                 i0, i1, i2, i3, i4, i5, i6, i7,
//                                                 rnd_bus0, rnd_bus2, rnd_bus3, rnd_bus4,
//                                                 o0, o1, o2, o3, o4, o5, o6, o7 );

always #1 clk = ~clk;

assign out = {o7[0] ^ o7[1], o6[0] ^ o6[1], o5[0] ^ o5[1], o4[0] ^ o4[1], o3[0] ^ o3[1], o2[0] ^ o2[1], o1[0] ^ o1[1], o0[0] ^ o0[1]};

initial begin
    clk = 0;
    // $dumpfile("MSKsbox.vcd");
    // $dumpvars(0, tb_invsbox);
    $monitor("%h - %h", in, out);
    #13
    // $display("%b - %b - %b - %b", rnd_bus0, rnd_bus2, rnd_bus3, rnd_bus4);
    $finish();
end

endmodule