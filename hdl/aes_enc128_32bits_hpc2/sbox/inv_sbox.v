`timescale 1ns/1ps

module tb_invsbox;

reg clk;
always #1 clk=~clk;

reg [7:0] test_data [0:511];

reg [7:0] i;
wire [7:0] o;

invsbox dut (clk, i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 
                  o[7], o[6], o[5], o[4], o[3], o[2], o[1], o[0]);

integer j;

initial begin
    $display("Hello"); 
    $readmemh("./hdl/aes_enc128_32bits_hpc2/sbox/test_vector_inv_sbox.txt", test_data);
    $dumpfile("invSbox.vcd");
    $dumpvars(0, tb_invsbox);
    clk <= 1;
    for (j=0; j<256; j=j+1) begin
        i <= test_data[j*2]; #1
        $display("Input : %h - Output : (actual) %h - %h (expected)", i, o, test_data[j*2+1]);
    end
    #10
    $finish();
end

endmodule

module invsbox
(
    input  clk,
    input  u0, u1, u2, u3, u4, u5, u6, u7,
    output w0, w1, w2, w3, w4, w5, w6, w7
);

wire t0, t1, t2, t3, t4, t6, t8, t9, t10, t13, t14, t15, t16, t17, t19, t20, t22, t23, t24, t25, t26, t27;
wire m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, m29, m30, m31, m32, m33, m34, m35, m36, m37, m38, m39, m40, m41, m42, m43, m44, m45, m46, m47, m48, m49, m50, m51, m52, m53, m54, m55, m56, m57, m58, m59, m60, m61, m62, m63;
wire p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p22, p23, p24, p25, p26, p27, p28, p29;
wire r5, r13, r17, r18, r19;
wire y5;

sbox_xor xor0 (u0, u3, t23);
sbox_xnor xnor0 (u1, u3, t22);
sbox_xnor xnor1 (u0, u1, t2);
sbox_xor xor1 (u3, u4, t1);
sbox_xnor xnor2 (u4, u7, t24);
sbox_xor xor2 (u6, u7, r5);
sbox_xnor xnor3 (u1, t23, t8);
sbox_xor xor3 (t22, r5, t19);
sbox_xnor xnor4 (u7, t1, t9);
sbox_xor xor4 (t2, t24, t10);
sbox_xor xor5 (t2, r5, t13);
sbox_xor xor6 (t1, r5, t3);
sbox_xnor xnor5 (u2, t1, t25);
sbox_xor xor7 (u1, u6, r13);
sbox_xnor xnor6 (u2, t19, t17);
sbox_xor xor8 (t24, r13, t20);
sbox_xor xor9 (u4, t8, t4);
sbox_xnor xnor7 (u2, u5, r17);
sbox_xnor xnor8 (u5, u6, r18);
sbox_xnor xnor9 (u2, u4, r19);
sbox_xor xor10 (u0, r17, y5);
sbox_xor xor11 (t22, r17, t6);
sbox_xor xor12 (r13, r19, t16);
sbox_xor xor13 (t1, r18, t27);
sbox_xor xor14 (t10, t27, t15);
sbox_xor xor15 (t10, r18, t14);
sbox_xor xor16 (t3, t16, t26);

sbox_and and0 (t13, t6, m1);
sbox_and and1 (t23, t8, m2);
sbox_xor xor17 (t14, m1, m3);
sbox_and and2 (t19, y5, m4);
sbox_xor xor18 (m4, m1, m5);
sbox_and and3 (t3, t16, m6);
sbox_and and4 (t22, t9, m7);
sbox_xor xor19 (t26, m6, m8);
sbox_and and5 (t20, t17, m9);
sbox_xor xor20 (m9, m6, m10);
sbox_and and6 (t1, t15, m11);
sbox_and and7 (t4, t27, m12);
sbox_xor xor21 (m12, m11, m13);
sbox_and and8 (t2, t10, m14);
sbox_xor xor22 (m14, m11, m15);
sbox_xor xor23 (m3, m2, m16);
sbox_xor xor24 (m5, t24, m17);
sbox_xor xor25 (m8, m7, m18);
sbox_xor xor26 (m10, m15, m19);
sbox_xor xor27 (m16, m13, m20);
sbox_xor xor28 (m17, m15, m21);
sbox_xor xor29 (m18, m13, m22);
sbox_xor xor30 (m19, t25, m23);
sbox_xor xor31 (m22, m23, m24);
sbox_and and9  (m22, m20, m25);
sbox_xor xor32 (m21, m25, m26);
sbox_xor xor33 (m20, m21, m27);
sbox_xor xor34 (m23, m25, m28);
sbox_and and10 (m28, m27, m29);
sbox_and and11 (m26, m24, m30);
sbox_and and12 (m20, m23, m31);
sbox_and and13 (m27, m31, m32);
sbox_xor xor35 (m27, m25, m33);
sbox_and and14 (m21, m22, m34);
sbox_and and15 (m24, m34, m35);
sbox_xor xor36 (m24, m25, m36);
sbox_xor xor37 (m21, m29, m37);
sbox_xor xor38 (m32, m33, m38);
sbox_xor xor39 (m23, m30, m39);
sbox_xor xor40 (m35, m36, m40);
sbox_xor xor41 (m38, m40, m41);
sbox_xor xor42 (m37, m39, m42);
sbox_xor xor43 (m37, m38, m43);
sbox_xor xor44 (m39, m40, m44);
sbox_xor xor45 (m42, m41, m45);
sbox_and and16 (m44, t6, m46);
sbox_and and17 (m40, t8, m47);
sbox_and and18 (m39, y5, m48);
sbox_and and19 (m43, t16, m49);
sbox_and and20 (m38, t9, m50);
sbox_and and21 (m37, t17, m51);
sbox_and and22 (m42, t15, m52);
sbox_and and23 (m45, t27, m53);
sbox_and and24 (m41, t10, m54);
sbox_and and25 (m44, t13, m55);
sbox_and and26 (m40, t23, m56);
sbox_and and27 (m39, t19, m57);
sbox_and and28 (m43, t3, m58);
sbox_and and29 (m38, t22, m59);
sbox_and and30 (m37, t20, m60);
sbox_and and31 (m42, t1, m61);
sbox_and and32 (m45, t4, m62);
sbox_and and33 (m41, t2, m63);

sbox_xor xor46 (m52, m61, p0);
sbox_xor xor47 (m58, m59, p1);
sbox_xor xor48 (m54, m62, p2);
sbox_xor xor49 (m47, m50, p3);
sbox_xor xor50 (m48, m56, p4);
sbox_xor xor51 (m46, m51, p5);
sbox_xor xor52 (m49, m60, p6);
sbox_xor xor53 (p0, p1, p7);
sbox_xor xor54 (m50, m53, p8);
sbox_xor xor55 (m55, m63, p9);
sbox_xor xor56 (m57, p4, p10);
sbox_xor xor57 (p0, p3, p11);
sbox_xor xor58 (m46, m48, p12);
sbox_xor xor59 (m49, m51, p13);
sbox_xor xor60 (m49, m62, p14);
sbox_xor xor61 (m54, m59, p15);
sbox_xor xor62 (m57, m61, p16);
sbox_xor xor63 (m58, p2, p17);
sbox_xor xor64 (m63, p5, p18);
sbox_xor xor65 (p2, p3, p19);
sbox_xor xor66 (p4, p6, p20);
sbox_xor xor67 (p2, p7, p22);
sbox_xor xor68 (p7, p8, p23);
sbox_xor xor69 (p5, p7, p24);
sbox_xor xor70 (p6, p10, p25);
sbox_xor xor71 (p9, p11, p26);
sbox_xor xor72 (p10, p18, p27);
sbox_xor xor73 (p11, p25, p28);
sbox_xor xor74 (p15, p20, p29);
sbox_xor xor75 (p13, p22, w0);
sbox_xor xor76 (p26, p29, w1);
sbox_xor xor77 (p17, p28, w2);
sbox_xor xor78 (p12, p22, w3);
sbox_xor xor79 (p23, p27, w4);
sbox_xor xor80 (p19, p24, w5);
sbox_xor xor81 (p14, p23, w6);
sbox_xor xor82 (p9, p16, w7);

endmodule

module sbox_xnor
(
    input a, b,
    output out
);

assign out = ~(a ^ b);

endmodule

module sbox_xor
(
    input a, b,
    output out
);

assign out = a ^ b;

endmodule

module sbox_and
(
    input a, b,
    output out
);

assign out = a & b;

endmodule

