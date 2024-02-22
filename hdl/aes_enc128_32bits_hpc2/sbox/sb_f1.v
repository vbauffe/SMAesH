(* fv_prop = "PINI", fv_strat = "composite", fv_order=d *)
module sb_f1
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
	o5,
	o6,
	o7,
	o8,
	o9,
	o10,
	o11,
	o12,
	o13,
	o14,
	o15,
	o16,
	o17,
	o18,
	o19,
	o20,
	o21,
	o22,
	o23,
	o24,
	o25,
	o26,
	o27

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
output [d-1:0] o5;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o6;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o7;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o8;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o9;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o10;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o11;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o12;
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
output [d-1:0] o18;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o19;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o20;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
output [d-1:0] o21;
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


// Internal variables
wire [d-1:0] u0;
wire [d-1:0] u1;
wire [d-1:0] u2;
wire [d-1:0] u3;
wire [d-1:0] u4;
wire [d-1:0] u5;
wire [d-1:0] u6;
wire [d-1:0] u7;
wire [d-1:0] t1;
wire [d-1:0] t2;
wire [d-1:0] t3;
wire [d-1:0] t4;
wire [d-1:0] t5;
wire [d-1:0] t6;
wire [d-1:0] t7;
wire [d-1:0] t8;
wire [d-1:0] t9;
wire [d-1:0] t10;
wire [d-1:0] t11;
wire [d-1:0] t12;
wire [d-1:0] t13;
wire [d-1:0] t14;
wire [d-1:0] t15;
wire [d-1:0] t16;
wire [d-1:0] t17;
wire [d-1:0] t18;
wire [d-1:0] t19;
wire [d-1:0] t20;
wire [d-1:0] t21;
wire [d-1:0] t22;
wire [d-1:0] t23;
wire [d-1:0] t24;
wire [d-1:0] t25;
wire [d-1:0] t26;
wire [d-1:0] t27;

// Internal computation node
assign u0 = i7;

assign u3 = i4;

MSKxor #(.d(d))
xorhpc2_t1 (
    .ina(u0),
    .inb(u3),
    .out(t1)
    );

assign u2 = i5;

assign u5 = i2;

MSKxor #(.d(d))
xorhpc2_t12 (
    .ina(u2),
    .inb(u5),
    .out(t12)
    );

MSKxor #(.d(d))
xorhpc2_t27 (
    .ina(t1),
    .inb(t12),
    .out(t27)
    );

assign u6 = i1;

MSKxor #(.d(d))
xorhpc2_t3 (
    .ina(u0),
    .inb(u6),
    .out(t3)
    );

assign u4 = i3;

MSKxor #(.d(d))
xorhpc2_t5 (
    .ina(u4),
    .inb(u6),
    .out(t5)
    );

MSKxor #(.d(d))
xorhpc2_t16 (
    .ina(t5),
    .inb(t12),
    .out(t16)
    );

MSKxor #(.d(d))
xorhpc2_t26 (
    .ina(t3),
    .inb(t16),
    .out(t26)
    );

assign u1 = i6;

MSKxor #(.d(d))
xorhpc2_t7 (
    .ina(u1),
    .inb(u2),
    .out(t7)
    );

assign u7 = i0;

MSKxor #(.d(d))
xorhpc2_t18 (
    .ina(u3),
    .inb(u7),
    .out(t18)
    );

MSKxor #(.d(d))
xorhpc2_t19 (
    .ina(t7),
    .inb(t18),
    .out(t19)
    );

MSKxor #(.d(d))
xorhpc2_t20 (
    .ina(t1),
    .inb(t19),
    .out(t20)
    );

MSKxor #(.d(d))
xorhpc2_t9 (
    .ina(u7),
    .inb(t7),
    .out(t9)
    );

MSKxor #(.d(d))
xorhpc2_t17 (
    .ina(t9),
    .inb(t16),
    .out(t17)
    );

MSKxor #(.d(d))
xorhpc2_t25 (
    .ina(t20),
    .inb(t17),
    .out(t25)
    );

MSKxor #(.d(d))
xorhpc2_t2 (
    .ina(u0),
    .inb(u5),
    .out(t2)
    );

MSKxor #(.d(d))
xorhpc2_t6 (
    .ina(t1),
    .inb(t5),
    .out(t6)
    );

MSKxor #(.d(d))
xorhpc2_t10 (
    .ina(t6),
    .inb(t7),
    .out(t10)
    );

MSKxor #(.d(d))
xorhpc2_t24 (
    .ina(t2),
    .inb(t10),
    .out(t24)
    );

MSKxor #(.d(d))
xorhpc2_t21 (
    .ina(u6),
    .inb(u7),
    .out(t21)
    );

MSKxor #(.d(d))
xorhpc2_t22 (
    .ina(t7),
    .inb(t21),
    .out(t22)
    );

MSKxor #(.d(d))
xorhpc2_t23 (
    .ina(t2),
    .inb(t22),
    .out(t23)
    );

MSKxor #(.d(d))
xorhpc2_t11 (
    .ina(u1),
    .inb(u5),
    .out(t11)
    );

MSKxor #(.d(d))
xorhpc2_t15 (
    .ina(t5),
    .inb(t11),
    .out(t15)
    );

MSKxor #(.d(d))
xorhpc2_t14 (
    .ina(t6),
    .inb(t11),
    .out(t14)
    );

MSKxor #(.d(d))
xorhpc2_t4 (
    .ina(u3),
    .inb(u5),
    .out(t4)
    );

MSKxor #(.d(d))
xorhpc2_t13 (
    .ina(t3),
    .inb(t4),
    .out(t13)
    );

MSKxor #(.d(d))
xorhpc2_t8 (
    .ina(u7),
    .inb(t6),
    .out(t8)
    );

// Output nodes
assign o27 = t27;

assign o26 = t26;

assign o25 = t25;

assign o24 = t24;

assign o23 = t23;

assign o22 = t22;

assign o21 = t21;

assign o20 = t20;

assign o19 = t19;

assign o18 = t18;

assign o17 = t17;

assign o16 = t16;

assign o15 = t15;

assign o14 = t14;

assign o13 = t13;

assign o12 = t12;

assign o11 = t11;

assign o10 = t10;

assign o9 = t9;

assign o8 = t8;

assign o7 = t7;

assign o6 = t6;

assign o5 = t5;

assign o4 = t4;

assign o3 = t3;

assign o2 = t2;

assign o1 = t1;

endmodule