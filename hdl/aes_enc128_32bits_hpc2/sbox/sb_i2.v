(* fv_prop = "PINI", fv_strat = "composite", fv_order=d *)
module sb_i2
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

// Internal computation node
MSKxor #(.d(d))
xorhpc2_p13 (
    .ina(m49),
    .inb(m51),
    .out(p13)
    );

MSKxor #(.d(d))
xorhpc2_p2 (
    .ina(m54),
    .inb(m62),
    .out(p2)
    );

MSKxor #(.d(d))
xorhpc2_p0 (
    .ina(m52),
    .inb(m61),
    .out(p0)
    );

MSKxor #(.d(d))
xorhpc2_p1 (
    .ina(m58),
    .inb(m59),
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

MSKxor #(.d(d))
xorhpc2_p9 (
    .ina(m55),
    .inb(m63),
    .out(p9)
    );

MSKxor #(.d(d))
xorhpc2_p3 (
    .ina(m47),
    .inb(m50),
    .out(p3)
    );

MSKxor #(.d(d))
xorhpc2_p11 (
    .ina(p0),
    .inb(p3),
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

MSKxor #(.d(d))
xorhpc2_p4 (
    .ina(m48),
    .inb(m56),
    .out(p4)
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
    .ina(p2),
    .inb(p3),
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