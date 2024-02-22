(* fv_prop = "PINI", fv_strat = "composite", fv_order=d *)
module sb_f2
#
(
    parameter d=2
)
(
    	// Circuit inputs IOs
	m1,
	m2,
	m3,
	m4,
	m5,
	m6,
	m7,
	m8,
	m9,
	m10,
	m11,
	m12,
	m13,
	m14,
	m15,
	m16,
	m17,
	m18,
	m19,
	m20,
	m21,
	m22,
	m23,
	m24,
	m25,
	m26,
	m27,
	m28,
	m29,
	m30,
	m31,
	m32,
	m33,
	m34,
	m35,
	m36,
	m37,
	m38,
	m39,
	m40,
	m41,
	m42,
	m43,
	m44,
	m45,
	m46,
	m47,
	m48,
	m49,
	m50,
	m51,
	m52,
	m53,
	m54,
	m55,
	m56,
	m57,
	m58,
	m59,
	m60,
	m61,
	m62,
	m63,
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


// Inputs ports
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m1;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m2;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m3;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m4;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m5;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m6;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m7;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m8;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m9;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m10;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m11;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m12;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m13;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m14;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m15;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m16;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m17;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m18;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m19;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m20;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m21;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m22;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m23;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m24;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m25;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m26;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m27;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m28;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m29;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m30;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m31;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m32;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m33;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m34;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m35;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m36;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m37;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m38;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m39;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m40;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m41;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m42;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m43;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m44;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m45;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m46;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m47;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m48;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m49;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m50;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m51;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m52;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m53;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m54;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m55;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m56;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m57;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m58;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m59;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m60;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m61;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m62;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] m63;

// Outputs ports
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o0;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o1;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o2;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o3;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o4;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o5;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o6;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o7;


// Internal variables
wire [d-1:0] l0;
wire [d-1:0] l1;
wire [d-1:0] l2;
wire [d-1:0] l3;
wire [d-1:0] l4;
wire [d-1:0] l5;
wire [d-1:0] l6;
wire [d-1:0] l7;
wire [d-1:0] l8;
wire [d-1:0] l9;
wire [d-1:0] l10;
wire [d-1:0] l11;
wire [d-1:0] l12;
wire [d-1:0] l13;
wire [d-1:0] l14;
wire [d-1:0] l15;
wire [d-1:0] l16;
wire [d-1:0] l17;
wire [d-1:0] l18;
wire [d-1:0] l19;
wire [d-1:0] l20;
wire [d-1:0] l21;
wire [d-1:0] l22;
wire [d-1:0] l23;
wire [d-1:0] l24;
wire [d-1:0] l25;
wire [d-1:0] l26;
wire [d-1:0] l27;
wire [d-1:0] l28;
wire [d-1:0] l29;
wire [d-1:0] s0;
wire [d-1:0] s1_tmpNXOR;
wire [d-1:0] s1;
wire [d-1:0] s2_tmpNXOR;
wire [d-1:0] s2;
wire [d-1:0] s3;
wire [d-1:0] s4;
wire [d-1:0] s5;
wire [d-1:0] s6_tmpNXOR;
wire [d-1:0] s6;
wire [d-1:0] s7_tmpNXOR;
wire [d-1:0] s7;

// Internal computation node
MSKxor #(.d(d))
xorhpc2_l5 (
    .ina(m49),
    .inb(m61),
    .out(l5)
    );

MSKxor #(.d(d))
xorhpc2_l6 (
    .ina(m62),
    .inb(l5),
    .out(l6)
    );

MSKxor #(.d(d))
xorhpc2_l1 (
    .ina(m50),
    .inb(m56),
    .out(l1)
    );

MSKxor #(.d(d))
xorhpc2_l15 (
    .ina(m55),
    .inb(l1),
    .out(l15)
    );

MSKxor #(.d(d))
xorhpc2_l9 (
    .ina(m52),
    .inb(m53),
    .out(l9)
    );

MSKxor #(.d(d))
xorhpc2_l24 (
    .ina(l15),
    .inb(l9),
    .out(l24)
    );

MSKxor #(.d(d))
xorhpc2_s0 (
    .ina(l6),
    .inb(l24),
    .out(s0)
    );

MSKxor #(.d(d))
xorhpc2_l0 (
    .ina(m61),
    .inb(m62),
    .out(l0)
    );

MSKxor #(.d(d))
xorhpc2_l16 (
    .ina(m56),
    .inb(l0),
    .out(l16)
    );

MSKxor #(.d(d))
xorhpc2_l3 (
    .ina(m47),
    .inb(m55),
    .out(l3)
    );

MSKxor #(.d(d))
xorhpc2_l7 (
    .ina(m46),
    .inb(l3),
    .out(l7)
    );

MSKxor #(.d(d))
xorhpc2_l26 (
    .ina(l7),
    .inb(l9),
    .out(l26)
    );

MSKxor #(.d(d))
xorhpc2_s1_tmpNXOR (
    .ina(l16),
    .inb(l26),
    .out(s1_tmpNXOR)
    );

MSKinv #(.d(d))
inv_s1 (
    .in(s1_tmpNXOR),
    .out(s1)
    );

MSKxor #(.d(d))
xorhpc2_l4 (
    .ina(m54),
    .inb(m58),
    .out(l4)
    );

MSKxor #(.d(d))
xorhpc2_l19 (
    .ina(m63),
    .inb(l4),
    .out(l19)
    );

MSKxor #(.d(d))
xorhpc2_l2 (
    .ina(m46),
    .inb(m48),
    .out(l2)
    );

MSKxor #(.d(d))
xorhpc2_l11 (
    .ina(m60),
    .inb(l2),
    .out(l11)
    );

MSKxor #(.d(d))
xorhpc2_l14 (
    .ina(m52),
    .inb(m61),
    .out(l14)
    );

MSKxor #(.d(d))
xorhpc2_l28 (
    .ina(l11),
    .inb(l14),
    .out(l28)
    );

MSKxor #(.d(d))
xorhpc2_s2_tmpNXOR (
    .ina(l19),
    .inb(l28),
    .out(s2_tmpNXOR)
    );

MSKinv #(.d(d))
inv_s2 (
    .in(s2_tmpNXOR),
    .out(s2)
    );

MSKxor #(.d(d))
xorhpc2_l21 (
    .ina(l1),
    .inb(l7),
    .out(l21)
    );

MSKxor #(.d(d))
xorhpc2_s3 (
    .ina(l6),
    .inb(l21),
    .out(s3)
    );

MSKxor #(.d(d))
xorhpc2_l20 (
    .ina(l0),
    .inb(l1),
    .out(l20)
    );

MSKxor #(.d(d))
xorhpc2_l12 (
    .ina(m48),
    .inb(m51),
    .out(l12)
    );

MSKxor #(.d(d))
xorhpc2_l22 (
    .ina(l3),
    .inb(l12),
    .out(l22)
    );

MSKxor #(.d(d))
xorhpc2_s4 (
    .ina(l20),
    .inb(l22),
    .out(s4)
    );

MSKxor #(.d(d))
xorhpc2_l10 (
    .ina(m53),
    .inb(l4),
    .out(l10)
    );

MSKxor #(.d(d))
xorhpc2_l25 (
    .ina(l6),
    .inb(l10),
    .out(l25)
    );

MSKxor #(.d(d))
xorhpc2_l17 (
    .ina(m57),
    .inb(l1),
    .out(l17)
    );

MSKxor #(.d(d))
xorhpc2_l29 (
    .ina(l11),
    .inb(l17),
    .out(l29)
    );

MSKxor #(.d(d))
xorhpc2_s5 (
    .ina(l25),
    .inb(l29),
    .out(s5)
    );

MSKxor #(.d(d))
xorhpc2_l13 (
    .ina(m50),
    .inb(l0),
    .out(l13)
    );

MSKxor #(.d(d))
xorhpc2_l8 (
    .ina(m51),
    .inb(m59),
    .out(l8)
    );

MSKxor #(.d(d))
xorhpc2_l27 (
    .ina(l8),
    .inb(l10),
    .out(l27)
    );

MSKxor #(.d(d))
xorhpc2_s6_tmpNXOR (
    .ina(l13),
    .inb(l27),
    .out(s6_tmpNXOR)
    );

MSKinv #(.d(d))
inv_s6 (
    .in(s6_tmpNXOR),
    .out(s6)
    );

MSKxor #(.d(d))
xorhpc2_l18 (
    .ina(m58),
    .inb(l8),
    .out(l18)
    );

MSKxor #(.d(d))
xorhpc2_l23 (
    .ina(l18),
    .inb(l2),
    .out(l23)
    );

MSKxor #(.d(d))
xorhpc2_s7_tmpNXOR (
    .ina(l6),
    .inb(l23),
    .out(s7_tmpNXOR)
    );

MSKinv #(.d(d))
inv_s7 (
    .in(s7_tmpNXOR),
    .out(s7)
    );

// Output nodes
assign o7 = s0;

assign o6 = s1;

assign o5 = s2;

assign o4 = s3;

assign o3 = s4;

assign o2 = s5;

assign o1 = s6;

assign o0 = s7;

endmodule