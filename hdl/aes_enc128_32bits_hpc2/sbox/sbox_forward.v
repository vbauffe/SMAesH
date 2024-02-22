`timescale 1ns/1ps

module sbox_forward
(
    input  clk,
    input state,
    input  u0, u1, u2, u3, u4, u5, u6, u7,
    output s0, s1, s2, s3, s4, s5, s6, s7
);

wire t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21, t22, t23, t24, t25, t26, t27;
wire m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, m29, m30, m31, m32, m33, m34, m35, m36, m37, m38, m39, m40, m41, m42, m43, m44, m45, m46, m47, m48, m49, m50, m51, m52, m53, m54, m55, m56, m57, m58, m59, m60, m61, m62, m63;
wire l0, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12, l13, l14, l15, l16, l17, l18, l19, l20, l21, l22, l23, l24, l25, l26, l27, l28, l29;

sbox_xor fxor0 (u0, u3, t1);
sbox_xor fxor1 (u0, u5, t2);
sbox_xor fxor2 (u0, u6, t3);
sbox_xor fxor3 (u3, u5, t4);
sbox_xor fxor4 (u4, u6, t5);
sbox_xor fxor5 (t1, t5, t6);
sbox_xor fxor6 (u1, u2, t7);
sbox_xor fxor7 (u7, t6, t8);
sbox_xor fxor8 (u7, t7, t9);
sbox_xor fxor9 (t6, t7, t10);
sbox_xor fxor10 (u1, u5, t11);
sbox_xor fxor11 (u2, u5, t12);
sbox_xor fxor12 (t3, t4, t13);
sbox_xor fxor13 (t6, t11, t14);
sbox_xor fxor14 (t5, t11, t15);
sbox_xor fxor15 (t5, t12, t16);
sbox_xor fxor16 (t9, t16, t17);
sbox_xor fxor17 (u3, u7, t18);
sbox_xor fxor18 (t7, t18, t19);
sbox_xor fxor19 (t1, t19, t20);
sbox_xor fxor20 (u6, u7, t21);
sbox_xor fxor21 (t7, t21, t22);
sbox_xor fxor22 (t2, t22, t23);
sbox_xor fxor23 (t2, t10, t24);
sbox_xor fxor24 (t20, t17, t25);
sbox_xor fxor25 (t3, t16, t26);
sbox_xor fxor26 (t1, t12, t27);

sbox_and and0 (t13, t6, m1);
sbox_and and1 (t23, t8, m2);
sbox_xor xor17 (t14, m1, m3);
sbox_and and2 (t19, u7, m4);
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
sbox_and and18 (m39, u7, m48);
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

sbox_xor fxor27 (m61, m62, l0);
sbox_xor fxor28 (m50, m56, l1);
sbox_xor fxor29 (m46, m48, l2);
sbox_xor fxor30 (m47, m55, l3);
sbox_xor fxor31 (m54, m58, l4);
sbox_xor fxor32 (m49, m61, l5);
sbox_xor fxor33 (m62, l5, l6);
sbox_xor fxor34 (m46, l3, l7);
sbox_xor fxor35 (m51, m59, l8);
sbox_xor fxor36 (m52, m53, l9);
sbox_xor fxor37 (m53, l4, l10);
sbox_xor fxor38 (m60, l2, l11);
sbox_xor fxor39 (m48, m51, l12);
sbox_xor fxor40 (m50, l0, l13);
sbox_xor fxor41 (m52, m61, l14);
sbox_xor fxor42 (m55, l1, l15);
sbox_xor fxor43 (m56, l0, l16);
sbox_xor fxor44 (m57, l1, l17);
sbox_xor fxor45 (m58, l8, l18);
sbox_xor fxor46 (m63, l4, l19);
sbox_xor fxor47 (l0, l1, l20);
sbox_xor fxor48 (l1, l7, l21);
sbox_xor fxor49 (l3, l12, l22);
sbox_xor fxor50 (l18, l2, l23);
sbox_xor fxor51 (l15, l9, l24);
sbox_xor fxor52 (l6, l10, l25);
sbox_xor fxor53 (l7, l9, l26);
sbox_xor fxor54 (l8, l10, l27);
sbox_xor fxor55 (l11, l14, l28);
sbox_xor fxor56 (l11, l17, l29);
sbox_xor fxor57 (l6, l24, s0);
sbox_xnor fxnor0 (l16, l26, s1);
sbox_xnor fxnor1 (l19, l28, s2);
sbox_xor fxor58 (l6, l21, s3);
sbox_xor fxor59 (l20, l22, s4);
sbox_xor fxor60 (l25, l29, s5);
sbox_xnor fxnor2 (l13, l27, s6);
sbox_xnor fxnor3 (l6, l23, s7);

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

