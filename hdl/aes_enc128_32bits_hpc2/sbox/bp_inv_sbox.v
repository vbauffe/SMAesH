(* fv_prop = "PINI", fv_strat = "composite", fv_order=d *)
module bp_inv_sbox
#
(
    parameter d=2
)
(
    	// Circuit inputs IOs
	clk,
	i0,
	i1,
	i2,
	i3,
	i4,
	i5,
	i6,
	i7,
	rnd_bus0,
	rnd_bus2,
	rnd_bus3,
	rnd_bus4,
	// Circuit outputs IOs
	o0,
	o1,
	o2,
	o3,
	o4,
	o5,
	o6,
	o7

);

`include "MSKand_HPC2.vh"

// Inputs ports
(* fv_type="clock" *)
input clk;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] i0;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] i1;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] i2;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] i3;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] i4;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] i5;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] i6;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] i7;
(* fv_type="random", fv_count=1, fv_rnd_count_0=9*and_pini_nrnd, fv_rnd_lat_0=0  *)
input [9*and_pini_nrnd-1:0] rnd_bus0;
(* fv_type="random", fv_count=1, fv_rnd_count_0=3*and_pini_nrnd, fv_rnd_lat_0=2  *)
input [3*and_pini_nrnd-1:0] rnd_bus2;
(* fv_type="random", fv_count=1, fv_rnd_count_0=4*and_pini_nrnd, fv_rnd_lat_0=3  *)
input [4*and_pini_nrnd-1:0] rnd_bus3;
(* fv_type="random", fv_count=1, fv_rnd_count_0=18*and_pini_nrnd, fv_rnd_lat_0=4  *)
input [18*and_pini_nrnd-1:0] rnd_bus4;

// Outputs ports
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o0;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o1;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o2;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o3;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o4;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o5;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o6;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o7;


// Internal variables
wire [d-1:0] u0;
wire [d-1:0] u1;
wire [d-1:0] u2;
wire [d-1:0] u3;
wire [d-1:0] u4;
wire [d-1:0] u5;
wire [d-1:0] u6;
wire [d-1:0] u7;
wire [d-1:0] t23;
wire [d-1:0] t22_tmpNXOR;
wire [d-1:0] t22;
wire [d-1:0] t2_tmpNXOR;
wire [d-1:0] t2;
wire [d-1:0] t1;
wire [d-1:0] t24_tmpNXOR;
wire [d-1:0] t24;
wire [d-1:0] r5;
wire [d-1:0] t8_tmpNXOR;
wire [d-1:0] t8;
wire [d-1:0] t19;
wire [d-1:0] t9_tmpNXOR;
wire [d-1:0] t9;
wire [d-1:0] t10;
wire [d-1:0] t13;
wire [d-1:0] t3;
wire [d-1:0] t25_tmpNXOR;
wire [d-1:0] t25;
wire [d-1:0] r13;
wire [d-1:0] t17_tmpNXOR;
wire [d-1:0] t17;
wire [d-1:0] t20;
wire [d-1:0] t4;
wire [d-1:0] r17_tmpNXOR;
wire [d-1:0] r17;
wire [d-1:0] r18_tmpNXOR;
wire [d-1:0] r18;
wire [d-1:0] r19_tmpNXOR;
wire [d-1:0] r19;
wire [d-1:0] y5;
wire [d-1:0] t6;
wire [d-1:0] t16;
wire [d-1:0] t27;
wire [d-1:0] t15;
wire [d-1:0] t14;
wire [d-1:0] t26;
wire [d-1:0] ds;
wire [d-1:0] m1;
wire [d-1:0] m2;
wire [d-1:0] m3;
wire [d-1:0] m4;
wire [d-1:0] m5;
wire [d-1:0] m6;
wire [d-1:0] m7;
wire [d-1:0] m8;
wire [d-1:0] m9;
wire [d-1:0] m10;
wire [d-1:0] m11;
wire [d-1:0] m12;
wire [d-1:0] m13;
wire [d-1:0] m14;
wire [d-1:0] m15;
wire [d-1:0] m16;
wire [d-1:0] m17;
wire [d-1:0] m18;
wire [d-1:0] m19;
wire [d-1:0] m20;
wire [d-1:0] m21;
wire [d-1:0] m22;
wire [d-1:0] m23;
wire [d-1:0] m24;
wire [d-1:0] m25;
wire [d-1:0] m26;
wire [d-1:0] m27;
wire [d-1:0] m28;
wire [d-1:0] m29;
wire [d-1:0] m30;
wire [d-1:0] m31;
wire [d-1:0] m32;
wire [d-1:0] m33;
wire [d-1:0] m34;
wire [d-1:0] m35;
wire [d-1:0] m36;
wire [d-1:0] m37;
wire [d-1:0] m38;
wire [d-1:0] m39;
wire [d-1:0] m40;
wire [d-1:0] m41;
wire [d-1:0] m42;
wire [d-1:0] m43;
wire [d-1:0] m44;
wire [d-1:0] m45;
wire [d-1:0] m46;
wire [d-1:0] m47;
wire [d-1:0] m48;
wire [d-1:0] m49;
wire [d-1:0] m50;
wire [d-1:0] m51;
wire [d-1:0] m52;
wire [d-1:0] m53;
wire [d-1:0] m54;
wire [d-1:0] m55;
wire [d-1:0] m56;
wire [d-1:0] m57;
wire [d-1:0] m58;
wire [d-1:0] m59;
wire [d-1:0] m60;
wire [d-1:0] m61;
wire [d-1:0] m62;
wire [d-1:0] m63;
wire [d-1:0] p0;
wire [d-1:0] p1;
wire [d-1:0] p2;
wire [d-1:0] p3;
wire [d-1:0] p4;
wire [d-1:0] p5;
wire [d-1:0] p6;
wire [d-1:0] p7;
wire [d-1:0] p8;
wire [d-1:0] p9;
wire [d-1:0] p10;
wire [d-1:0] p11;
wire [d-1:0] p12;
wire [d-1:0] p13;
wire [d-1:0] p14;
wire [d-1:0] p15;
wire [d-1:0] p16;
wire [d-1:0] p17;
wire [d-1:0] p18;
wire [d-1:0] p19;
wire [d-1:0] p20;
wire [d-1:0] p22;
wire [d-1:0] p23;
wire [d-1:0] p24;
wire [d-1:0] p25;
wire [d-1:0] p26;
wire [d-1:0] p27;
wire [d-1:0] p28;
wire [d-1:0] p29;
wire [d-1:0] w0;
wire [d-1:0] w1;
wire [d-1:0] w2;
wire [d-1:0] w3;
wire [d-1:0] w4;
wire [d-1:0] w5;
wire [d-1:0] w6;
wire [d-1:0] w7;
wire [d-1:0] dt6;
wire [d-1:0] ddt14;
wire [d-1:0] dt14;
wire [d-1:0] dt8;
wire [d-1:0] dt27;
wire [d-1:0] dt15;
wire [d-1:0] dds;
wire [d-1:0] ddt24;
wire [d-1:0] dt24;
wire [d-1:0] dt10;
wire [d-1:0] dt16;
wire [d-1:0] ddt26;
wire [d-1:0] dt26;
wire [d-1:0] dt9;
wire [d-1:0] dm20;
wire [d-1:0] ddm27;
wire [d-1:0] dm27;
wire [d-1:0] dt17;
wire [d-1:0] ddt25;
wire [d-1:0] dt25;
wire [d-1:0] dm23;
wire [d-1:0] dm33;
wire [d-1:0] ddm24;
wire [d-1:0] dm24;
wire [d-1:0] dm22;
wire [d-1:0] dm36;
wire [d-1:0] ddddt2;
wire [d-1:0] dddt2;
wire [d-1:0] ddt2;
wire [d-1:0] dt2;
wire [d-1:0] ddm21;
wire [d-1:0] dm21;
wire [d-1:0] dddm23;
wire [d-1:0] ddm23;
wire [d-1:0] ddddt13;
wire [d-1:0] dddt13;
wire [d-1:0] ddt13;
wire [d-1:0] dt13;
wire [d-1:0] ddddt19;
wire [d-1:0] dddt19;
wire [d-1:0] ddt19;
wire [d-1:0] dt19;
wire [d-1:0] dddm21;
wire [d-1:0] ddddt1;
wire [d-1:0] dddt1;
wire [d-1:0] ddt1;
wire [d-1:0] dt1;
wire [d-1:0] ddddt16;
wire [d-1:0] dddt16;
wire [d-1:0] ddt16;
wire [d-1:0] ddddt4;
wire [d-1:0] dddt4;
wire [d-1:0] ddt4;
wire [d-1:0] dt4;
wire [d-1:0] ddddt15;
wire [d-1:0] dddt15;
wire [d-1:0] ddt15;
wire [d-1:0] ddddt22;
wire [d-1:0] dddt22;
wire [d-1:0] ddt22;
wire [d-1:0] dt22;
wire [d-1:0] ddddt3;
wire [d-1:0] dddt3;
wire [d-1:0] ddt3;
wire [d-1:0] dt3;
wire [d-1:0] ddddt9;
wire [d-1:0] dddt9;
wire [d-1:0] ddt9;
wire [d-1:0] ddddt27;
wire [d-1:0] dddt27;
wire [d-1:0] ddt27;
wire [d-1:0] ddddt8;
wire [d-1:0] dddt8;
wire [d-1:0] ddt8;
wire [d-1:0] ddddt10;
wire [d-1:0] dddt10;
wire [d-1:0] ddt10;
wire [d-1:0] ddddt6;
wire [d-1:0] dddt6;
wire [d-1:0] ddt6;
wire [d-1:0] ddddt17;
wire [d-1:0] dddt17;
wire [d-1:0] ddt17;
wire [d-1:0] ddddt23;
wire [d-1:0] dddt23;
wire [d-1:0] ddt23;
wire [d-1:0] dt23;
wire [d-1:0] ddddds;
wire [d-1:0] dddds;
wire [d-1:0] ddds;
wire [d-1:0] ddddt20;
wire [d-1:0] dddt20;
wire [d-1:0] ddt20;
wire [d-1:0] dt20;

// Internal computation node
assign u1 = i6;

assign u6 = i1;

MSKxor #(.d(d))
xorhpc2_r13 (
    .ina(u1),
    .inb(u6),
    .out(r13)
    );

assign u2 = i5;

assign u4 = i3;

MSKxor #(.d(d))
xorhpc2_r19_tmpNXOR (
    .ina(u2),
    .inb(u4),
    .out(r19_tmpNXOR)
    );

MSKinv #(.d(d))
inv_r19 (
    .in(r19_tmpNXOR),
    .out(r19)
    );

MSKxor #(.d(d))
xorhpc2_t16 (
    .ina(r13),
    .inb(r19),
    .out(t16)
    );

MSKreg #(.d(d))
regen_dt16 (
    .clk(clk),
    .in(t16),
    .out(dt16)
    );

MSKreg #(.d(d))
regen_ddt16 (
    .clk(clk),
    .in(dt16),
    .out(ddt16)
    );

MSKreg #(.d(d))
regen_dddt16 (
    .clk(clk),
    .in(ddt16),
    .out(dddt16)
    );

MSKreg #(.d(d))
regen_ddddt16 (
    .clk(clk),
    .in(dddt16),
    .out(ddddt16)
    );

assign u0 = i7;

MSKxor #(.d(d))
xorhpc2_t2_tmpNXOR (
    .ina(u0),
    .inb(u1),
    .out(t2_tmpNXOR)
    );

MSKinv #(.d(d))
inv_t2 (
    .in(t2_tmpNXOR),
    .out(t2)
    );

assign u7 = i0;

MSKxor #(.d(d))
xorhpc2_t24_tmpNXOR (
    .ina(u4),
    .inb(u7),
    .out(t24_tmpNXOR)
    );

MSKinv #(.d(d))
inv_t24 (
    .in(t24_tmpNXOR),
    .out(t24)
    );

MSKxor #(.d(d))
xorhpc2_t10 (
    .ina(t2),
    .inb(t24),
    .out(t10)
    );

assign u5 = i2;

MSKxor #(.d(d))
xorhpc2_r18_tmpNXOR (
    .ina(u5),
    .inb(u6),
    .out(r18_tmpNXOR)
    );

MSKinv #(.d(d))
inv_r18 (
    .in(r18_tmpNXOR),
    .out(r18)
    );

MSKxor #(.d(d))
xorhpc2_t14 (
    .ina(t10),
    .inb(r18),
    .out(t14)
    );

MSKreg #(.d(d))
regen_dt14 (
    .clk(clk),
    .in(t14),
    .out(dt14)
    );

MSKreg #(.d(d))
regen_ddt14 (
    .clk(clk),
    .in(dt14),
    .out(ddt14)
    );

MSKxor #(.d(d))
xorhpc2_r5 (
    .ina(u6),
    .inb(u7),
    .out(r5)
    );

MSKxor #(.d(d))
xorhpc2_t13 (
    .ina(t2),
    .inb(r5),
    .out(t13)
    );

assign u3 = i4;

MSKxor #(.d(d))
xorhpc2_t22_tmpNXOR (
    .ina(u1),
    .inb(u3),
    .out(t22_tmpNXOR)
    );

MSKinv #(.d(d))
inv_t22 (
    .in(t22_tmpNXOR),
    .out(t22)
    );

MSKxor #(.d(d))
xorhpc2_r17_tmpNXOR (
    .ina(u2),
    .inb(u5),
    .out(r17_tmpNXOR)
    );

MSKinv #(.d(d))
inv_r17 (
    .in(r17_tmpNXOR),
    .out(r17)
    );

MSKxor #(.d(d))
xorhpc2_t6 (
    .ina(t22),
    .inb(r17),
    .out(t6)
    );

MSKreg #(.d(d))
regen_dt6 (
    .clk(clk),
    .in(t6),
    .out(dt6)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m1 (
    .ina(dt6),
    .inb(t13),
    .rnd(rnd_bus0[0 +: and_pini_nrnd]),
    .clk(clk),
    .out(m1)
    );

MSKxor #(.d(d))
xorhpc2_m3 (
    .ina(ddt14),
    .inb(m1),
    .out(m3)
    );

MSKxor #(.d(d))
xorhpc2_t23 (
    .ina(u0),
    .inb(u3),
    .out(t23)
    );

MSKxor #(.d(d))
xorhpc2_t8_tmpNXOR (
    .ina(u1),
    .inb(t23),
    .out(t8_tmpNXOR)
    );

MSKinv #(.d(d))
inv_t8 (
    .in(t8_tmpNXOR),
    .out(t8)
    );

MSKreg #(.d(d))
regen_dt8 (
    .clk(clk),
    .in(t8),
    .out(dt8)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m2 (
    .ina(dt8),
    .inb(t23),
    .rnd(rnd_bus0[1*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m2)
    );

MSKxor #(.d(d))
xorhpc2_m16 (
    .ina(m3),
    .inb(m2),
    .out(m16)
    );

MSKxor #(.d(d))
xorhpc2_t4 (
    .ina(u4),
    .inb(t8),
    .out(t4)
    );

MSKxor #(.d(d))
xorhpc2_t1 (
    .ina(u3),
    .inb(u4),
    .out(t1)
    );

MSKxor #(.d(d))
xorhpc2_t27 (
    .ina(t1),
    .inb(r18),
    .out(t27)
    );

MSKreg #(.d(d))
regen_dt27 (
    .clk(clk),
    .in(t27),
    .out(dt27)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m12 (
    .ina(dt27),
    .inb(t4),
    .rnd(rnd_bus0[7*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m12)
    );

MSKxor #(.d(d))
xorhpc2_t15 (
    .ina(t10),
    .inb(t27),
    .out(t15)
    );

MSKreg #(.d(d))
regen_dt15 (
    .clk(clk),
    .in(t15),
    .out(dt15)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m11 (
    .ina(dt15),
    .inb(t1),
    .rnd(rnd_bus0[6*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m11)
    );

MSKxor #(.d(d))
xorhpc2_m13 (
    .ina(m12),
    .inb(m11),
    .out(m13)
    );

MSKxor #(.d(d))
xorhpc2_m20 (
    .ina(m16),
    .inb(m13),
    .out(m20)
    );

MSKreg #(.d(d))
regen_dt24 (
    .clk(clk),
    .in(t24),
    .out(dt24)
    );

MSKreg #(.d(d))
regen_ddt24 (
    .clk(clk),
    .in(dt24),
    .out(ddt24)
    );

MSKxor #(.d(d))
xorhpc2_t19 (
    .ina(t22),
    .inb(r5),
    .out(t19)
    );

MSKxor #(.d(d))
xorhpc2_y5 (
    .ina(u0),
    .inb(r17),
    .out(y5)
    );

assign ds = y5;

MSKreg #(.d(d))
regen_dds (
    .clk(clk),
    .in(ds),
    .out(dds)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m4 (
    .ina(dds),
    .inb(t19),
    .rnd(rnd_bus0[2*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m4)
    );

MSKxor #(.d(d))
xorhpc2_m5 (
    .ina(m4),
    .inb(m1),
    .out(m5)
    );

MSKxor #(.d(d))
xorhpc2_m17 (
    .ina(ddt24),
    .inb(m5),
    .out(m17)
    );

MSKreg #(.d(d))
regen_dt10 (
    .clk(clk),
    .in(t10),
    .out(dt10)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m14 (
    .ina(dt10),
    .inb(t2),
    .rnd(rnd_bus0[8*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m14)
    );

MSKxor #(.d(d))
xorhpc2_m15 (
    .ina(m14),
    .inb(m11),
    .out(m15)
    );

MSKxor #(.d(d))
xorhpc2_m21 (
    .ina(m17),
    .inb(m15),
    .out(m21)
    );

MSKxor #(.d(d))
xorhpc2_m27 (
    .ina(m20),
    .inb(m21),
    .out(m27)
    );

MSKreg #(.d(d))
regen_dm27 (
    .clk(clk),
    .in(m27),
    .out(dm27)
    );

MSKreg #(.d(d))
regen_ddm27 (
    .clk(clk),
    .in(dm27),
    .out(ddm27)
    );

MSKxor #(.d(d))
xorhpc2_t3 (
    .ina(t1),
    .inb(r5),
    .out(t3)
    );

MSKxor #(.d(d))
xorhpc2_t26 (
    .ina(t3),
    .inb(t16),
    .out(t26)
    );

MSKreg #(.d(d))
regen_dt26 (
    .clk(clk),
    .in(t26),
    .out(dt26)
    );

MSKreg #(.d(d))
regen_ddt26 (
    .clk(clk),
    .in(dt26),
    .out(ddt26)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m6 (
    .ina(dt16),
    .inb(t3),
    .rnd(rnd_bus0[3*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m6)
    );

MSKxor #(.d(d))
xorhpc2_m8 (
    .ina(ddt26),
    .inb(m6),
    .out(m8)
    );

MSKxor #(.d(d))
xorhpc2_t9_tmpNXOR (
    .ina(u7),
    .inb(t1),
    .out(t9_tmpNXOR)
    );

MSKinv #(.d(d))
inv_t9 (
    .in(t9_tmpNXOR),
    .out(t9)
    );

MSKreg #(.d(d))
regen_dt9 (
    .clk(clk),
    .in(t9),
    .out(dt9)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m7 (
    .ina(dt9),
    .inb(t22),
    .rnd(rnd_bus0[4*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m7)
    );

MSKxor #(.d(d))
xorhpc2_m18 (
    .ina(m8),
    .inb(m7),
    .out(m18)
    );

MSKxor #(.d(d))
xorhpc2_m22 (
    .ina(m18),
    .inb(m13),
    .out(m22)
    );

MSKreg #(.d(d))
regen_dm20 (
    .clk(clk),
    .in(m20),
    .out(dm20)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m25 (
    .ina(dm20),
    .inb(m22),
    .rnd(rnd_bus2[0 +: and_pini_nrnd]),
    .clk(clk),
    .out(m25)
    );

MSKxor #(.d(d))
xorhpc2_m33 (
    .ina(ddm27),
    .inb(m25),
    .out(m33)
    );

MSKreg #(.d(d))
regen_dm33 (
    .clk(clk),
    .in(m33),
    .out(dm33)
    );

MSKxor #(.d(d))
xorhpc2_t25_tmpNXOR (
    .ina(u2),
    .inb(t1),
    .out(t25_tmpNXOR)
    );

MSKinv #(.d(d))
inv_t25 (
    .in(t25_tmpNXOR),
    .out(t25)
    );

MSKreg #(.d(d))
regen_dt25 (
    .clk(clk),
    .in(t25),
    .out(dt25)
    );

MSKreg #(.d(d))
regen_ddt25 (
    .clk(clk),
    .in(dt25),
    .out(ddt25)
    );

MSKxor #(.d(d))
xorhpc2_t20 (
    .ina(t24),
    .inb(r13),
    .out(t20)
    );

MSKxor #(.d(d))
xorhpc2_t17_tmpNXOR (
    .ina(u2),
    .inb(t19),
    .out(t17_tmpNXOR)
    );

MSKinv #(.d(d))
inv_t17 (
    .in(t17_tmpNXOR),
    .out(t17)
    );

MSKreg #(.d(d))
regen_dt17 (
    .clk(clk),
    .in(t17),
    .out(dt17)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m9 (
    .ina(dt17),
    .inb(t20),
    .rnd(rnd_bus0[5*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m9)
    );

MSKxor #(.d(d))
xorhpc2_m10 (
    .ina(m9),
    .inb(m6),
    .out(m10)
    );

MSKxor #(.d(d))
xorhpc2_m19 (
    .ina(m10),
    .inb(m15),
    .out(m19)
    );

MSKxor #(.d(d))
xorhpc2_m23 (
    .ina(ddt25),
    .inb(m19),
    .out(m23)
    );

MSKreg #(.d(d))
regen_dm23 (
    .clk(clk),
    .in(m23),
    .out(dm23)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m31 (
    .ina(dm23),
    .inb(m20),
    .rnd(rnd_bus2[1*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m31)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m32 (
    .ina(m31),
    .inb(dm27),
    .rnd(rnd_bus3[2*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m32)
    );

MSKxor #(.d(d))
xorhpc2_m38 (
    .ina(dm33),
    .inb(m32),
    .out(m38)
    );

MSKreg #(.d(d))
regen_dm21 (
    .clk(clk),
    .in(m21),
    .out(dm21)
    );

MSKreg #(.d(d))
regen_ddm21 (
    .clk(clk),
    .in(dm21),
    .out(ddm21)
    );

MSKreg #(.d(d))
regen_dddm21 (
    .clk(clk),
    .in(ddm21),
    .out(dddm21)
    );

MSKreg #(.d(d))
regen_ddm23 (
    .clk(clk),
    .in(dm23),
    .out(ddm23)
    );

MSKxor #(.d(d))
xorhpc2_m28 (
    .ina(ddm23),
    .inb(m25),
    .out(m28)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m29 (
    .ina(m28),
    .inb(dm27),
    .rnd(rnd_bus3[0 +: and_pini_nrnd]),
    .clk(clk),
    .out(m29)
    );

MSKxor #(.d(d))
xorhpc2_m37 (
    .ina(dddm21),
    .inb(m29),
    .out(m37)
    );

MSKxor #(.d(d))
xorhpc2_m43 (
    .ina(m38),
    .inb(m37),
    .out(m43)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m49 (
    .ina(m43),
    .inb(ddddt16),
    .rnd(rnd_bus4[3*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m49)
    );

MSKreg #(.d(d))
regen_ddt17 (
    .clk(clk),
    .in(dt17),
    .out(ddt17)
    );

MSKreg #(.d(d))
regen_dddt17 (
    .clk(clk),
    .in(ddt17),
    .out(dddt17)
    );

MSKreg #(.d(d))
regen_ddddt17 (
    .clk(clk),
    .in(dddt17),
    .out(ddddt17)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m51 (
    .ina(m37),
    .inb(ddddt17),
    .rnd(rnd_bus4[5*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m51)
    );

MSKxor #(.d(d))
xorhpc2_p13 (
    .ina(m49),
    .inb(m51),
    .out(p13)
    );

MSKreg #(.d(d))
regen_ddt10 (
    .clk(clk),
    .in(dt10),
    .out(ddt10)
    );

MSKreg #(.d(d))
regen_dddt10 (
    .clk(clk),
    .in(ddt10),
    .out(dddt10)
    );

MSKreg #(.d(d))
regen_ddddt10 (
    .clk(clk),
    .in(dddt10),
    .out(ddddt10)
    );

MSKxor #(.d(d))
xorhpc2_m24 (
    .ina(m22),
    .inb(m23),
    .out(m24)
    );

MSKreg #(.d(d))
regen_dm24 (
    .clk(clk),
    .in(m24),
    .out(dm24)
    );

MSKreg #(.d(d))
regen_ddm24 (
    .clk(clk),
    .in(dm24),
    .out(ddm24)
    );

MSKxor #(.d(d))
xorhpc2_m36 (
    .ina(ddm24),
    .inb(m25),
    .out(m36)
    );

MSKreg #(.d(d))
regen_dm36 (
    .clk(clk),
    .in(m36),
    .out(dm36)
    );

MSKreg #(.d(d))
regen_dm22 (
    .clk(clk),
    .in(m22),
    .out(dm22)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m34 (
    .ina(dm22),
    .inb(m21),
    .rnd(rnd_bus2[2*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m34)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m35 (
    .ina(m34),
    .inb(dm24),
    .rnd(rnd_bus3[3*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m35)
    );

MSKxor #(.d(d))
xorhpc2_m40 (
    .ina(dm36),
    .inb(m35),
    .out(m40)
    );

MSKxor #(.d(d))
xorhpc2_m41 (
    .ina(m38),
    .inb(m40),
    .out(m41)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m54 (
    .ina(m41),
    .inb(ddddt10),
    .rnd(rnd_bus4[8*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m54)
    );

MSKreg #(.d(d))
regen_dt4 (
    .clk(clk),
    .in(t4),
    .out(dt4)
    );

MSKreg #(.d(d))
regen_ddt4 (
    .clk(clk),
    .in(dt4),
    .out(ddt4)
    );

MSKreg #(.d(d))
regen_dddt4 (
    .clk(clk),
    .in(ddt4),
    .out(dddt4)
    );

MSKreg #(.d(d))
regen_ddddt4 (
    .clk(clk),
    .in(dddt4),
    .out(ddddt4)
    );

MSKreg #(.d(d))
regen_dddm23 (
    .clk(clk),
    .in(ddm23),
    .out(dddm23)
    );

MSKxor #(.d(d))
xorhpc2_m26 (
    .ina(ddm21),
    .inb(m25),
    .out(m26)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m30 (
    .ina(m26),
    .inb(dm24),
    .rnd(rnd_bus3[1*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m30)
    );

MSKxor #(.d(d))
xorhpc2_m39 (
    .ina(dddm23),
    .inb(m30),
    .out(m39)
    );

MSKxor #(.d(d))
xorhpc2_m42 (
    .ina(m37),
    .inb(m39),
    .out(m42)
    );

MSKxor #(.d(d))
xorhpc2_m45 (
    .ina(m41),
    .inb(m42),
    .out(m45)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m62 (
    .ina(m45),
    .inb(ddddt4),
    .rnd(rnd_bus4[16*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m62)
    );

MSKxor #(.d(d))
xorhpc2_p2 (
    .ina(m54),
    .inb(m62),
    .out(p2)
    );

MSKreg #(.d(d))
regen_ddt15 (
    .clk(clk),
    .in(dt15),
    .out(ddt15)
    );

MSKreg #(.d(d))
regen_dddt15 (
    .clk(clk),
    .in(ddt15),
    .out(dddt15)
    );

MSKreg #(.d(d))
regen_ddddt15 (
    .clk(clk),
    .in(dddt15),
    .out(ddddt15)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m52 (
    .ina(m42),
    .inb(ddddt15),
    .rnd(rnd_bus4[6*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m52)
    );

MSKreg #(.d(d))
regen_dt1 (
    .clk(clk),
    .in(t1),
    .out(dt1)
    );

MSKreg #(.d(d))
regen_ddt1 (
    .clk(clk),
    .in(dt1),
    .out(ddt1)
    );

MSKreg #(.d(d))
regen_dddt1 (
    .clk(clk),
    .in(ddt1),
    .out(dddt1)
    );

MSKreg #(.d(d))
regen_ddddt1 (
    .clk(clk),
    .in(dddt1),
    .out(ddddt1)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m61 (
    .ina(m42),
    .inb(ddddt1),
    .rnd(rnd_bus4[15*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m61)
    );

MSKxor #(.d(d))
xorhpc2_p0 (
    .ina(m52),
    .inb(m61),
    .out(p0)
    );

MSKreg #(.d(d))
regen_dt22 (
    .clk(clk),
    .in(t22),
    .out(dt22)
    );

MSKreg #(.d(d))
regen_ddt22 (
    .clk(clk),
    .in(dt22),
    .out(ddt22)
    );

MSKreg #(.d(d))
regen_dddt22 (
    .clk(clk),
    .in(ddt22),
    .out(dddt22)
    );

MSKreg #(.d(d))
regen_ddddt22 (
    .clk(clk),
    .in(dddt22),
    .out(ddddt22)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m59 (
    .ina(m38),
    .inb(ddddt22),
    .rnd(rnd_bus4[13*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m59)
    );

MSKreg #(.d(d))
regen_dt3 (
    .clk(clk),
    .in(t3),
    .out(dt3)
    );

MSKreg #(.d(d))
regen_ddt3 (
    .clk(clk),
    .in(dt3),
    .out(ddt3)
    );

MSKreg #(.d(d))
regen_dddt3 (
    .clk(clk),
    .in(ddt3),
    .out(dddt3)
    );

MSKreg #(.d(d))
regen_ddddt3 (
    .clk(clk),
    .in(dddt3),
    .out(ddddt3)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m58 (
    .ina(m43),
    .inb(ddddt3),
    .rnd(rnd_bus4[12*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m58)
    );

MSKxor #(.d(d))
xorhpc2_p1 (
    .ina(m59),
    .inb(m58),
    .out(p1)
    );

MSKxor #(.d(d))
xorhpc2_p7 (
    .ina(p0),
    .inb(p1),
    .out(p7)
    );

MSKxor #(.d(d))
xorhpc2_p22 (
    .ina(p2),
    .inb(p7),
    .out(p22)
    );

MSKxor #(.d(d))
xorhpc2_w0 (
    .ina(p13),
    .inb(p22),
    .out(w0)
    );

MSKreg #(.d(d))
regen_dt2 (
    .clk(clk),
    .in(t2),
    .out(dt2)
    );

MSKreg #(.d(d))
regen_ddt2 (
    .clk(clk),
    .in(dt2),
    .out(ddt2)
    );

MSKreg #(.d(d))
regen_dddt2 (
    .clk(clk),
    .in(ddt2),
    .out(dddt2)
    );

MSKreg #(.d(d))
regen_ddddt2 (
    .clk(clk),
    .in(dddt2),
    .out(ddddt2)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m63 (
    .ina(m41),
    .inb(ddddt2),
    .rnd(rnd_bus4[17*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m63)
    );

MSKreg #(.d(d))
regen_dt13 (
    .clk(clk),
    .in(t13),
    .out(dt13)
    );

MSKreg #(.d(d))
regen_ddt13 (
    .clk(clk),
    .in(dt13),
    .out(ddt13)
    );

MSKreg #(.d(d))
regen_dddt13 (
    .clk(clk),
    .in(ddt13),
    .out(dddt13)
    );

MSKreg #(.d(d))
regen_ddddt13 (
    .clk(clk),
    .in(dddt13),
    .out(ddddt13)
    );

MSKxor #(.d(d))
xorhpc2_m44 (
    .ina(m40),
    .inb(m39),
    .out(m44)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m55 (
    .ina(m44),
    .inb(ddddt13),
    .rnd(rnd_bus4[9*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m55)
    );

MSKxor #(.d(d))
xorhpc2_p9 (
    .ina(m63),
    .inb(m55),
    .out(p9)
    );

MSKreg #(.d(d))
regen_ddt8 (
    .clk(clk),
    .in(dt8),
    .out(ddt8)
    );

MSKreg #(.d(d))
regen_dddt8 (
    .clk(clk),
    .in(ddt8),
    .out(dddt8)
    );

MSKreg #(.d(d))
regen_ddddt8 (
    .clk(clk),
    .in(dddt8),
    .out(ddddt8)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m47 (
    .ina(m40),
    .inb(ddddt8),
    .rnd(rnd_bus4[1*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m47)
    );

MSKreg #(.d(d))
regen_ddt9 (
    .clk(clk),
    .in(dt9),
    .out(ddt9)
    );

MSKreg #(.d(d))
regen_dddt9 (
    .clk(clk),
    .in(ddt9),
    .out(dddt9)
    );

MSKreg #(.d(d))
regen_ddddt9 (
    .clk(clk),
    .in(dddt9),
    .out(ddddt9)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m50 (
    .ina(m38),
    .inb(ddddt9),
    .rnd(rnd_bus4[4*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m50)
    );

MSKxor #(.d(d))
xorhpc2_p3 (
    .ina(m47),
    .inb(m50),
    .out(p3)
    );

MSKxor #(.d(d))
xorhpc2_p11 (
    .ina(p3),
    .inb(p0),
    .out(p11)
    );

MSKxor #(.d(d))
xorhpc2_p26 (
    .ina(p9),
    .inb(p11),
    .out(p26)
    );

MSKxor #(.d(d))
xorhpc2_p15 (
    .ina(m54),
    .inb(m59),
    .out(p15)
    );

MSKreg #(.d(d))
regen_dt23 (
    .clk(clk),
    .in(t23),
    .out(dt23)
    );

MSKreg #(.d(d))
regen_ddt23 (
    .clk(clk),
    .in(dt23),
    .out(ddt23)
    );

MSKreg #(.d(d))
regen_dddt23 (
    .clk(clk),
    .in(ddt23),
    .out(dddt23)
    );

MSKreg #(.d(d))
regen_ddddt23 (
    .clk(clk),
    .in(dddt23),
    .out(ddddt23)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m56 (
    .ina(m40),
    .inb(ddddt23),
    .rnd(rnd_bus4[10*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m56)
    );

MSKreg #(.d(d))
regen_ddds (
    .clk(clk),
    .in(dds),
    .out(ddds)
    );

MSKreg #(.d(d))
regen_dddds (
    .clk(clk),
    .in(ddds),
    .out(dddds)
    );

MSKreg #(.d(d))
regen_ddddds (
    .clk(clk),
    .in(dddds),
    .out(ddddds)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m48 (
    .ina(m39),
    .inb(ddddds),
    .rnd(rnd_bus4[2*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m48)
    );

MSKxor #(.d(d))
xorhpc2_p4 (
    .ina(m56),
    .inb(m48),
    .out(p4)
    );

MSKreg #(.d(d))
regen_dt20 (
    .clk(clk),
    .in(t20),
    .out(dt20)
    );

MSKreg #(.d(d))
regen_ddt20 (
    .clk(clk),
    .in(dt20),
    .out(ddt20)
    );

MSKreg #(.d(d))
regen_dddt20 (
    .clk(clk),
    .in(ddt20),
    .out(dddt20)
    );

MSKreg #(.d(d))
regen_ddddt20 (
    .clk(clk),
    .in(dddt20),
    .out(ddddt20)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m60 (
    .ina(m37),
    .inb(ddddt20),
    .rnd(rnd_bus4[14*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m60)
    );

MSKxor #(.d(d))
xorhpc2_p6 (
    .ina(m49),
    .inb(m60),
    .out(p6)
    );

MSKxor #(.d(d))
xorhpc2_p20 (
    .ina(p4),
    .inb(p6),
    .out(p20)
    );

MSKxor #(.d(d))
xorhpc2_p29 (
    .ina(p15),
    .inb(p20),
    .out(p29)
    );

MSKxor #(.d(d))
xorhpc2_w1 (
    .ina(p26),
    .inb(p29),
    .out(w1)
    );

MSKxor #(.d(d))
xorhpc2_p17 (
    .ina(m58),
    .inb(p2),
    .out(p17)
    );

MSKreg #(.d(d))
regen_dt19 (
    .clk(clk),
    .in(t19),
    .out(dt19)
    );

MSKreg #(.d(d))
regen_ddt19 (
    .clk(clk),
    .in(dt19),
    .out(ddt19)
    );

MSKreg #(.d(d))
regen_dddt19 (
    .clk(clk),
    .in(ddt19),
    .out(dddt19)
    );

MSKreg #(.d(d))
regen_ddddt19 (
    .clk(clk),
    .in(dddt19),
    .out(ddddt19)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m57 (
    .ina(m39),
    .inb(ddddt19),
    .rnd(rnd_bus4[11*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m57)
    );

MSKxor #(.d(d))
xorhpc2_p10 (
    .ina(m57),
    .inb(p4),
    .out(p10)
    );

MSKxor #(.d(d))
xorhpc2_p25 (
    .ina(p6),
    .inb(p10),
    .out(p25)
    );

MSKxor #(.d(d))
xorhpc2_p28 (
    .ina(p11),
    .inb(p25),
    .out(p28)
    );

MSKxor #(.d(d))
xorhpc2_w2 (
    .ina(p17),
    .inb(p28),
    .out(w2)
    );

MSKreg #(.d(d))
regen_ddt6 (
    .clk(clk),
    .in(dt6),
    .out(ddt6)
    );

MSKreg #(.d(d))
regen_dddt6 (
    .clk(clk),
    .in(ddt6),
    .out(dddt6)
    );

MSKreg #(.d(d))
regen_ddddt6 (
    .clk(clk),
    .in(dddt6),
    .out(ddddt6)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m46 (
    .ina(m44),
    .inb(ddddt6),
    .rnd(rnd_bus4[0 +: and_pini_nrnd]),
    .clk(clk),
    .out(m46)
    );

MSKxor #(.d(d))
xorhpc2_p12 (
    .ina(m46),
    .inb(m48),
    .out(p12)
    );

MSKxor #(.d(d))
xorhpc2_w3 (
    .ina(p12),
    .inb(p22),
    .out(w3)
    );

MSKreg #(.d(d))
regen_ddt27 (
    .clk(clk),
    .in(dt27),
    .out(ddt27)
    );

MSKreg #(.d(d))
regen_dddt27 (
    .clk(clk),
    .in(ddt27),
    .out(dddt27)
    );

MSKreg #(.d(d))
regen_ddddt27 (
    .clk(clk),
    .in(dddt27),
    .out(ddddt27)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m53 (
    .ina(m45),
    .inb(ddddt27),
    .rnd(rnd_bus4[7*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m53)
    );

MSKxor #(.d(d))
xorhpc2_p8 (
    .ina(m50),
    .inb(m53),
    .out(p8)
    );

MSKxor #(.d(d))
xorhpc2_p23 (
    .ina(p7),
    .inb(p8),
    .out(p23)
    );

MSKxor #(.d(d))
xorhpc2_p5 (
    .ina(m46),
    .inb(m51),
    .out(p5)
    );

MSKxor #(.d(d))
xorhpc2_p18 (
    .ina(m63),
    .inb(p5),
    .out(p18)
    );

MSKxor #(.d(d))
xorhpc2_p27 (
    .ina(p10),
    .inb(p18),
    .out(p27)
    );

MSKxor #(.d(d))
xorhpc2_w4 (
    .ina(p23),
    .inb(p27),
    .out(w4)
    );

MSKxor #(.d(d))
xorhpc2_p19 (
    .ina(p3),
    .inb(p2),
    .out(p19)
    );

MSKxor #(.d(d))
xorhpc2_p24 (
    .ina(p5),
    .inb(p7),
    .out(p24)
    );

MSKxor #(.d(d))
xorhpc2_w5 (
    .ina(p19),
    .inb(p24),
    .out(w5)
    );

MSKxor #(.d(d))
xorhpc2_p14 (
    .ina(m49),
    .inb(m62),
    .out(p14)
    );

MSKxor #(.d(d))
xorhpc2_w6 (
    .ina(p14),
    .inb(p23),
    .out(w6)
    );

MSKxor #(.d(d))
xorhpc2_p16 (
    .ina(m57),
    .inb(m61),
    .out(p16)
    );

MSKxor #(.d(d))
xorhpc2_w7 (
    .ina(p9),
    .inb(p16),
    .out(w7)
    );

// Output nodes
assign o7 = w0;

assign o6 = w1;

assign o5 = w2;

assign o4 = w3;

assign o3 = w4;

assign o2 = w5;

assign o1 = w6;

assign o0 = w7;

endmodule