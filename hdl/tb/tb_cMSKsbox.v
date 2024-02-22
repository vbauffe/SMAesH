`timescale 1ns/1ps

module tb_sbox;

localparam and_pini_mul_nrnd = 2*(2-1)/2;
localparam and_pini_nrnd = and_pini_mul_nrnd;

reg clk;
wire [7:0] in, out;
wire [1:0] i0, i1, i2, i3, i4, i5, i6, i7;
wire [1:0] o0, o1, o2, o3, o4, o5, o6, o7;

wire [1:0] t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21, t22, t23, t24, t25, t26, t27;
wire [1:0] ft1, ft2, ft3, ft4, ft5, ft6, ft7, ft8, ft9, ft10, ft11, ft12, ft13, ft14, ft15, ft16, ft17, ft18, ft19, ft20, ft21, ft22, ft23, ft24, ft25, ft26, ft27;
wire [1:0] it1, it2, it3, it4, it5, it6, it7, it8, it9, it10, it11, it12, it13, it14, it15, it16, it17, it18, it19, it20, it21, it22, it23, it24, it25, it26, it27;
wire [1:0] m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, m29, m30, m31, m32, m33, m34, m35, m36, m37, m38, m39, m40, m41, m42, m43, m44, m45, m46, m47, m48, m49, m50, m51, m52, m53, m54, m55, m56, m57, m58, m59, m60, m61, m62, m63;
wire [1:0] y5;
wire [1:0] w0, w1, w2, w3, w4, w5, w6, w7;
wire [1:0] s0, s1, s2, s3, s4, s5, s6, s7;

assign in = 8'h12;

assign {i7[1], i6[1], i5[1], i4[1], i3[1], i2[1], i1[1], i0[1]} = in;
assign {i0[0], i1[0], i2[0], i3[0], i4[0], i5[0], i6[0], i7[0]} = 8'h00;

wire [9*and_pini_nrnd-1:0] rnd_bus0; 
wire [3*and_pini_nrnd-1:0] rnd_bus2;
wire [4*and_pini_nrnd-1:0] rnd_bus3;
wire [18*and_pini_nrnd-1:0] rnd_bus4;
assign rnd_bus0 = 9'b001100101;
assign rnd_bus2 = 3'b001;
assign rnd_bus3 = 4'b0011;
assign rnd_bus4 = 18'b001101111101111100;

sb_f1 #(.d(2))
    sbox_forward1(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .i5(i5),
        .i6(i6),
        .i7(i7),
        .o1(ft1),
        .o2(ft2),
        .o3(ft3),
        .o4(ft4),
        .o5(ft5),
        .o6(ft6),
        .o7(ft7),
        .o8(ft8),
        .o9(ft9),
        .o10(ft10),
        .o11(ft11),
        .o12(ft12),
        .o13(ft13),
        .o14(ft14),
        .o15(ft15),
        .o16(ft16),
        .o17(ft17),
        .o18(ft18),
        .o19(ft19),
        .o20(ft20),
        .o21(ft21),
        .o22(ft22),
        .o23(ft23),
        .o24(ft24),
        .o25(ft25),
        .o26(ft26),
        .o27(ft27)
    );

sb_i1 #(.d(2))
    sbox_inverse1(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .i5(i5),
        .i6(i6),
        .i7(i7),
        .o1(it1),
        .o2(it2),
        .o3(it3),
        .o4(it4),
        .o6(it6),
        .o8(it8),
        .o9(it9),
        .o10(it10),
        .o13(it13),
        .o14(it14),
        .o15(it15),
        .o16(it16),
        .o17(it17),
        .o19(it19),
        .o20(it20),
        .o22(it22),
        .o23(it23),
        .o24(it24),
        .o25(it25),
        .o26(it26),
        .o27(it27),
        .o28(y5)
    );

wire [1:0] ds;
wire inverse;
assign inverse = 1;
MSKmux #(.d(2),.count(1))
mux_ds(
    .sel(inverse),
    .in_true(y5),
    .in_false(i7),
    .out(ds)
);

MSKmux #(.d(2),.count(1))
mux_t1(
    .sel(inverse),
    .in_true(it1),
    .in_false(ft1),
    .out(t1)
);

MSKmux #(.d(2),.count(1))
mux_t2(
    .sel(inverse),
    .in_true(it2),
    .in_false(ft2),
    .out(t2)
);

MSKmux #(.d(2),.count(1))
mux_t3(
    .sel(inverse),
    .in_true(it3),
    .in_false(ft3),
    .out(t3)
);

MSKmux #(.d(2),.count(1))
mux_t4(
    .sel(inverse),
    .in_true(it4),
    .in_false(ft4),
    .out(t4)
);

MSKmux #(.d(2),.count(1))
mux_t5(
    .sel(inverse),
    .in_true(it5),
    .in_false(ft5),
    .out(t5)
);

MSKmux #(.d(2),.count(1))
mux_t6(
    .sel(inverse),
    .in_true(it6),
    .in_false(ft6),
    .out(t6)
);

MSKmux #(.d(2),.count(1))
mux_t7(
    .sel(inverse),
    .in_true(it7),
    .in_false(ft7),
    .out(t7)
);

MSKmux #(.d(2),.count(1))
mux_t8(
    .sel(inverse),
    .in_true(it8),
    .in_false(ft8),
    .out(t8)
);

MSKmux #(.d(2),.count(1))
mux_t9(
    .sel(inverse),
    .in_true(it9),
    .in_false(ft9),
    .out(t9)
);

MSKmux #(.d(2),.count(1))
mux_t10(
    .sel(inverse),
    .in_true(it10),
    .in_false(ft10),
    .out(t10)
);

MSKmux #(.d(2),.count(1))
mux_t11(
    .sel(inverse),
    .in_true(it11),
    .in_false(ft11),
    .out(t11)
);

MSKmux #(.d(2),.count(1))
mux_t12(
    .sel(inverse),
    .in_true(it12),
    .in_false(ft12),
    .out(t12)
);

MSKmux #(.d(2),.count(1))
mux_t13(
    .sel(inverse),
    .in_true(it13),
    .in_false(ft13),
    .out(t13)
);

MSKmux #(.d(2),.count(1))
mux_t14(
    .sel(inverse),
    .in_true(it14),
    .in_false(ft14),
    .out(t14)
);

MSKmux #(.d(2),.count(1))
mux_t15(
    .sel(inverse),
    .in_true(it15),
    .in_false(ft15),
    .out(t15)
);

MSKmux #(.d(2),.count(1))
mux_t16(
    .sel(inverse),
    .in_true(it16),
    .in_false(ft16),
    .out(t16)
);

MSKmux #(.d(2),.count(1))
mux_t17(
    .sel(inverse),
    .in_true(it17),
    .in_false(ft17),
    .out(t17)
);

MSKmux #(.d(2),.count(1))
mux_t18(
    .sel(inverse),
    .in_true(it18),
    .in_false(ft18),
    .out(t18)
);

MSKmux #(.d(2),.count(1))
mux_t19(
    .sel(inverse),
    .in_true(it19),
    .in_false(ft19),
    .out(t19)
);

MSKmux #(.d(2),.count(1))
mux_t20(
    .sel(inverse),
    .in_true(it20),
    .in_false(ft20),
    .out(t20)
);

MSKmux #(.d(2),.count(1))
mux_t21(
    .sel(inverse),
    .in_true(it21),
    .in_false(ft21),
    .out(t21)
);

MSKmux #(.d(2),.count(1))
mux_t22(
    .sel(inverse),
    .in_true(it22),
    .in_false(ft22),
    .out(t22)
);

MSKmux #(.d(2),.count(1))
mux_t23(
    .sel(inverse),
    .in_true(it23),
    .in_false(ft23),
    .out(t23)
);

MSKmux #(.d(2),.count(1))
mux_t24(
    .sel(inverse),
    .in_true(it24),
    .in_false(ft24),
    .out(t24)
);

MSKmux #(.d(2),.count(1))
mux_t25(
    .sel(inverse),
    .in_true(it25),
    .in_false(ft25),
    .out(t25)
);

MSKmux #(.d(2),.count(1))
mux_t26(
    .sel(inverse),
    .in_true(it26),
    .in_false(ft26),
    .out(t26)
);

MSKmux #(.d(2),.count(1))
mux_t27(
    .sel(inverse),
    .in_true(it27),
    .in_false(ft27),
    .out(t27)
);

sb_common #(.d(2))
    sbox_common(
        .clk(clk),
        .t1(t1),
        .t2(t2),
        .t3(t3),
        .t4(t4),
        .t5(t5),
        .t6(t6),
        .t7(t7),
        .t8(t8),
        .t9(t9),
        .t10(t10),
        .t11(t11),
        .t12(t12),
        .t13(t13),
        .t14(t14),
        .t15(t15),
        .t16(t16),
        .t17(t17),
        .t18(t18),
        .t19(t19),
        .t20(t20),
        .t21(t21),
        .t22(t22),
        .t23(t23),
        .t24(t24),
        .t25(t25),
        .t26(t26),
        .t27(t27),
        .ds(ds),
        .rnd_bus0(rnd_bus0),
        .rnd_bus2(rnd_bus2),
        .rnd_bus3(rnd_bus3),
        .rnd_bus4(rnd_bus4),
        // Circuit outputs IOs
        .o1(m1),
        .o2(m2),
        .o3(m3),
        .o4(m4),
        .o5(m5),
        .o6(m6),
        .o7(m7),
        .o8(m8),
        .o9(m9),
        .o10(m10),
        .o11(m11),
        .o12(m12),
        .o13(m13),
        .o14(m14),
        .o15(m15),
        .o16(m16),
        .o17(m17),
        .o18(m18),
        .o19(m19),
        .o20(m20),
        .o21(m21),
        .o22(m22),
        .o23(m23),
        .o24(m24),
        .o25(m25),
        .o26(m26),
        .o27(m27),
        .o28(m28),
        .o29(m29),
        .o30(m30),
        .o31(m31),
        .o32(m32),
        .o33(m33),
        .o34(m34),
        .o35(m35),
        .o36(m36),
        .o37(m37),
        .o38(m38),
        .o39(m39),
        .o40(m40),
        .o41(m41),
        .o42(m42),
        .o43(m43),
        .o44(m44),
        .o45(m45),
        .o46(m46),
        .o47(m47),
        .o48(m48),
        .o49(m49),
        .o50(m50),
        .o51(m51),
        .o52(m52),
        .o53(m53),
        .o54(m54),
        .o55(m55),
        .o56(m56),
        .o57(m57),
        .o58(m58),
        .o59(m59),
        .o60(m60),
        .o61(m61),
        .o62(m62),
        .o63(m63)
    );

sb_f2 #(.d(2))
    sbox_forward2(
        .m1(m1),
        .m2(m2),
        .m3(m3),
        .m4(m4),
        .m5(m5),
        .m6(m6),
        .m7(m7),
        .m8(m8),
        .m9(m9),
        .m10(m10),
        .m11(m11),
        .m12(m12),
        .m13(m13),
        .m14(m14),
        .m15(m15),
        .m16(m16),
        .m17(m17),
        .m18(m18),
        .m19(m19),
        .m20(m20),
        .m21(m21),
        .m22(m22),
        .m23(m23),
        .m24(m24),
        .m25(m25),
        .m26(m26),
        .m27(m27),
        .m28(m28),
        .m29(m29),
        .m30(m30),
        .m31(m31),
        .m32(m32),
        .m33(m33),
        .m34(m34),
        .m35(m35),
        .m36(m36),
        .m37(m37),
        .m38(m38),
        .m39(m39),
        .m40(m40),
        .m41(m41),
        .m42(m42),
        .m43(m43),
        .m44(m44),
        .m45(m45),
        .m46(m46),
        .m47(m47),
        .m48(m48),
        .m49(m49),
        .m50(m50),
        .m51(m51),
        .m52(m52),
        .m53(m53),
        .m54(m54),
        .m55(m55),
        .m56(m56),
        .m57(m57),
        .m58(m58),
        .m59(m59),
        .m60(m60),
        .m61(m61),
        .m62(m62),
        .m63(m63),
        .o0(s0),
        .o1(s1),
        .o2(s2),
        .o3(s3),
        .o4(s4),
        .o5(s5),
        .o6(s6),
        .o7(s7)
    );

sb_i2 #(.d(2))
    sbox_inverse2(
        .m1(m1),
        .m2(m2),
        .m3(m3),
        .m4(m4),
        .m5(m5),
        .m6(m6),
        .m7(m7),
        .m8(m8),
        .m9(m9),
        .m10(m10),
        .m11(m11),
        .m12(m12),
        .m13(m13),
        .m14(m14),
        .m15(m15),
        .m16(m16),
        .m17(m17),
        .m18(m18),
        .m19(m19),
        .m20(m20),
        .m21(m21),
        .m22(m22),
        .m23(m23),
        .m24(m24),
        .m25(m25),
        .m26(m26),
        .m27(m27),
        .m28(m28),
        .m29(m29),
        .m30(m30),
        .m31(m31),
        .m32(m32),
        .m33(m33),
        .m34(m34),
        .m35(m35),
        .m36(m36),
        .m37(m37),
        .m38(m38),
        .m39(m39),
        .m40(m40),
        .m41(m41),
        .m42(m42),
        .m43(m43),
        .m44(m44),
        .m45(m45),
        .m46(m46),
        .m47(m47),
        .m48(m48),
        .m49(m49),
        .m50(m50),
        .m51(m51),
        .m52(m52),
        .m53(m53),
        .m54(m54),
        .m55(m55),
        .m56(m56),
        .m57(m57),
        .m58(m58),
        .m59(m59),
        .m60(m60),
        .m61(m61),
        .m62(m62),
        .m63(m63),
        .o0(w0),
        .o1(w1),
        .o2(w2),
        .o3(w3),
        .o4(w4),
        .o5(w5),
        .o6(w6),
        .o7(w7)
    );

MSKmux #(.d(2),.count(1))
mux_o0(
    .sel(inverse),
    .in_true(w0),
    .in_false(s0),
    .out(o0)
);

MSKmux #(.d(2),.count(1))
mux_o1(
    .sel(inverse),
    .in_true(w1),
    .in_false(s1),
    .out(o1)
);

MSKmux #(.d(2),.count(1))
mux_o2(
    .sel(inverse),
    .in_true(w2),
    .in_false(s2),
    .out(o2)
);

MSKmux #(.d(2),.count(1))
mux_o3(
    .sel(inverse),
    .in_true(w3),
    .in_false(s3),
    .out(o3)
);

MSKmux #(.d(2),.count(1))
mux_o4(
    .sel(inverse),
    .in_true(w4),
    .in_false(s4),
    .out(o4)
);

MSKmux #(.d(2),.count(1))
mux_o5(
    .sel(inverse),
    .in_true(w5),
    .in_false(s5),
    .out(o5)
);

MSKmux #(.d(2),.count(1))
mux_o6(
    .sel(inverse),
    .in_true(w6),
    .in_false(s6),
    .out(o6)
);

MSKmux #(.d(2),.count(1))
mux_o7(
    .sel(inverse),
    .in_true(w7),
    .in_false(s7),
    .out(o7)
);

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