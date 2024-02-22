(* fv_prop = "PINI", fv_strat = "composite", fv_order=d *)
module sb_i1
#
(
    parameter d=2
)
(
    	// Circuit inputs IOs
	i0,
	i1,
	i2,
	i3,
	i4,
	i5,
	i6,
	i7,
	// Circuit outputs IOs
	o1,
	o2,
	o3,
	o4,
	o6,
	o8,
	o9,
	o10,
	o13,
	o14,
	o15,
	o16,
	o17,
	o19,
	o20,
	o22,
	o23,
	o24,
	o25,
	o26,
	o27,
	o28

);


// Inputs ports
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

// Outputs ports
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o1;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o2;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o3;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o4;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o6;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o8;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o9;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o10;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o13;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o14;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o15;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o16;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o17;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o19;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o20;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o22;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o23;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o24;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o25;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o26;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o27;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o28;


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

// Internal computation node
assign u0 = i7;

assign u2 = i5;

assign u5 = i2;

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
xorhpc2_y5 (
    .ina(u0),
    .inb(r17),
    .out(y5)
    );

assign u3 = i4;

assign u4 = i3;

MSKxor #(.d(d))
xorhpc2_t1 (
    .ina(u3),
    .inb(u4),
    .out(t1)
    );

assign u6 = i1;

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
xorhpc2_t27 (
    .ina(t1),
    .inb(r18),
    .out(t27)
    );

assign u7 = i0;

MSKxor #(.d(d))
xorhpc2_r5 (
    .ina(u6),
    .inb(u7),
    .out(r5)
    );

MSKxor #(.d(d))
xorhpc2_t3 (
    .ina(t1),
    .inb(r5),
    .out(t3)
    );

assign u1 = i6;

MSKxor #(.d(d))
xorhpc2_r13 (
    .ina(u1),
    .inb(u6),
    .out(r13)
    );

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

MSKxor #(.d(d))
xorhpc2_t26 (
    .ina(t3),
    .inb(t16),
    .out(t26)
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
xorhpc2_t23 (
    .ina(u0),
    .inb(u3),
    .out(t23)
    );

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
xorhpc2_t20 (
    .ina(t24),
    .inb(r13),
    .out(t20)
    );

MSKxor #(.d(d))
xorhpc2_t19 (
    .ina(t22),
    .inb(r5),
    .out(t19)
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

MSKxor #(.d(d))
xorhpc2_t10 (
    .ina(t2),
    .inb(t24),
    .out(t10)
    );

MSKxor #(.d(d))
xorhpc2_t15 (
    .ina(t10),
    .inb(t27),
    .out(t15)
    );

MSKxor #(.d(d))
xorhpc2_t14 (
    .ina(t10),
    .inb(r18),
    .out(t14)
    );

MSKxor #(.d(d))
xorhpc2_t13 (
    .ina(t2),
    .inb(r5),
    .out(t13)
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

MSKxor #(.d(d))
xorhpc2_t6 (
    .ina(t22),
    .inb(r17),
    .out(t6)
    );

MSKxor #(.d(d))
xorhpc2_t4 (
    .ina(u4),
    .inb(t8),
    .out(t4)
    );

// Output nodes
assign o28 = y5;

assign o27 = t27;

assign o26 = t26;

assign o25 = t25;

assign o24 = t24;

assign o23 = t23;

assign o22 = t22;

assign o20 = t20;

assign o19 = t19;

assign o17 = t17;

assign o16 = t16;

assign o15 = t15;

assign o14 = t14;

assign o13 = t13;

assign o10 = t10;

assign o9 = t9;

assign o8 = t8;

assign o6 = t6;

assign o4 = t4;

assign o3 = t3;

assign o2 = t2;

assign o1 = t1;

endmodule