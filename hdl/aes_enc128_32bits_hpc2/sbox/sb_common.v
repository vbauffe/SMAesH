(* fv_prop = "PINI", fv_strat = "composite", fv_order=d *)
module sb_common
#
(
    parameter d=2
)
(
    	// Circuit inputs IOs
	clk,
	t1,
	t2,
	t3,
	t4,
	t5,
	t6,
	t7,
	t8,
	t9,
	t10,
	t11,
	t12,
	t13,
	t14,
	t15,
	t16,
	t17,
	t18,
	t19,
	t20,
	t21,
	t22,
	t23,
	t24,
	t25,
	t26,
	t27,
	ds,
	rnd_bus0,
	rnd_bus2,
	rnd_bus3,
	rnd_bus4,
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
	o27,
	o28,
	o29,
	o30,
	o31,
	o32,
	o33,
	o34,
	o35,
	o36,
	o37,
	o38,
	o39,
	o40,
	o41,
	o42,
	o43,
	o44,
	o45,
	o46,
	o47,
	o48,
	o49,
	o50,
	o51,
	o52,
	o53,
	o54,
	o55,
	o56,
	o57,
	o58,
	o59,
	o60,
	o61,
	o62,
	o63

);

`include "MSKand_HPC2.vh"

// Inputs ports
(* fv_type="clock" *)
input clk;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t1;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t2;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t3;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t4;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t5;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t6;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t7;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t8;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t9;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t10;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t11;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t12;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t13;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t14;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t15;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t16;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t17;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t18;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t19;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t20;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t21;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t22;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t23;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t24;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t25;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t26;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] t27;
(* fv_type="sharing", fv_latency=0, fv_count=1 *)
input [d-1:0] ds;
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
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o8;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o9;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o10;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o11;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o12;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o13;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o14;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o15;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o16;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o17;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o18;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o19;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o20;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o21;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o22;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o23;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o24;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o25;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o26;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o27;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o28;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o29;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o30;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o31;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o32;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o33;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o34;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o35;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o36;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o37;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o38;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o39;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o40;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o41;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o42;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o43;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o44;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o45;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o46;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o47;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o48;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o49;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o50;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o51;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o52;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o53;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o54;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o55;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o56;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o57;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o58;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o59;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o60;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o61;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o62;
(* fv_type="sharing", fv_latency=6, fv_count=1 *)
output [d-1:0] o63;


// Internal variables
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
wire [d-1:0] dt6;
wire [d-1:0] dt8;
wire [d-1:0] ddt14;
wire [d-1:0] dt14;
wire [d-1:0] dds;
wire [d-1:0] dt16;
wire [d-1:0] dt9;
wire [d-1:0] ddt26;
wire [d-1:0] dt26;
wire [d-1:0] dt17;
wire [d-1:0] dt15;
wire [d-1:0] dt27;
wire [d-1:0] dt10;
wire [d-1:0] ddt24;
wire [d-1:0] dt24;
wire [d-1:0] ddt25;
wire [d-1:0] dt25;
wire [d-1:0] dm20;
wire [d-1:0] ddm21;
wire [d-1:0] dm21;
wire [d-1:0] ddm23;
wire [d-1:0] dm23;
wire [d-1:0] dm27;
wire [d-1:0] dm24;
wire [d-1:0] ddm27;
wire [d-1:0] dm22;
wire [d-1:0] ddm24;
wire [d-1:0] dddm21;
wire [d-1:0] dm33;
wire [d-1:0] dddm23;
wire [d-1:0] dm36;
wire [d-1:0] ddddt6;
wire [d-1:0] dddt6;
wire [d-1:0] ddt6;
wire [d-1:0] ddddt8;
wire [d-1:0] dddt8;
wire [d-1:0] ddt8;
wire [d-1:0] ddddds;
wire [d-1:0] dddds;
wire [d-1:0] ddds;
wire [d-1:0] ddddt16;
wire [d-1:0] dddt16;
wire [d-1:0] ddt16;
wire [d-1:0] ddddt9;
wire [d-1:0] dddt9;
wire [d-1:0] ddt9;
wire [d-1:0] ddddt17;
wire [d-1:0] dddt17;
wire [d-1:0] ddt17;
wire [d-1:0] ddddt15;
wire [d-1:0] dddt15;
wire [d-1:0] ddt15;
wire [d-1:0] ddddt27;
wire [d-1:0] dddt27;
wire [d-1:0] ddt27;
wire [d-1:0] ddddt10;
wire [d-1:0] dddt10;
wire [d-1:0] ddt10;
wire [d-1:0] ddddt13;
wire [d-1:0] dddt13;
wire [d-1:0] ddt13;
wire [d-1:0] dt13;
wire [d-1:0] ddddt23;
wire [d-1:0] dddt23;
wire [d-1:0] ddt23;
wire [d-1:0] dt23;
wire [d-1:0] ddddt19;
wire [d-1:0] dddt19;
wire [d-1:0] ddt19;
wire [d-1:0] dt19;
wire [d-1:0] ddddt3;
wire [d-1:0] dddt3;
wire [d-1:0] ddt3;
wire [d-1:0] dt3;
wire [d-1:0] ddddt22;
wire [d-1:0] dddt22;
wire [d-1:0] ddt22;
wire [d-1:0] dt22;
wire [d-1:0] ddddt20;
wire [d-1:0] dddt20;
wire [d-1:0] ddt20;
wire [d-1:0] dt20;
wire [d-1:0] ddddt1;
wire [d-1:0] dddt1;
wire [d-1:0] ddt1;
wire [d-1:0] dt1;
wire [d-1:0] ddddt4;
wire [d-1:0] dddt4;
wire [d-1:0] ddt4;
wire [d-1:0] dt4;
wire [d-1:0] ddddt2;
wire [d-1:0] dddt2;
wire [d-1:0] ddt2;
wire [d-1:0] dt2;
wire [d-1:0] ddddm1;
wire [d-1:0] dddm1;
wire [d-1:0] ddm1;
wire [d-1:0] dm1;
wire [d-1:0] ddddm2;
wire [d-1:0] dddm2;
wire [d-1:0] ddm2;
wire [d-1:0] dm2;
wire [d-1:0] ddddm3;
wire [d-1:0] dddm3;
wire [d-1:0] ddm3;
wire [d-1:0] dm3;
wire [d-1:0] ddddm4;
wire [d-1:0] dddm4;
wire [d-1:0] ddm4;
wire [d-1:0] dm4;
wire [d-1:0] ddddm5;
wire [d-1:0] dddm5;
wire [d-1:0] ddm5;
wire [d-1:0] dm5;
wire [d-1:0] ddddm6;
wire [d-1:0] dddm6;
wire [d-1:0] ddm6;
wire [d-1:0] dm6;
wire [d-1:0] ddddm7;
wire [d-1:0] dddm7;
wire [d-1:0] ddm7;
wire [d-1:0] dm7;
wire [d-1:0] ddddm8;
wire [d-1:0] dddm8;
wire [d-1:0] ddm8;
wire [d-1:0] dm8;
wire [d-1:0] ddddm9;
wire [d-1:0] dddm9;
wire [d-1:0] ddm9;
wire [d-1:0] dm9;
wire [d-1:0] ddddm10;
wire [d-1:0] dddm10;
wire [d-1:0] ddm10;
wire [d-1:0] dm10;
wire [d-1:0] ddddm11;
wire [d-1:0] dddm11;
wire [d-1:0] ddm11;
wire [d-1:0] dm11;
wire [d-1:0] ddddm12;
wire [d-1:0] dddm12;
wire [d-1:0] ddm12;
wire [d-1:0] dm12;
wire [d-1:0] ddddm13;
wire [d-1:0] dddm13;
wire [d-1:0] ddm13;
wire [d-1:0] dm13;
wire [d-1:0] ddddm14;
wire [d-1:0] dddm14;
wire [d-1:0] ddm14;
wire [d-1:0] dm14;
wire [d-1:0] ddddm15;
wire [d-1:0] dddm15;
wire [d-1:0] ddm15;
wire [d-1:0] dm15;
wire [d-1:0] ddddm16;
wire [d-1:0] dddm16;
wire [d-1:0] ddm16;
wire [d-1:0] dm16;
wire [d-1:0] ddddm17;
wire [d-1:0] dddm17;
wire [d-1:0] ddm17;
wire [d-1:0] dm17;
wire [d-1:0] ddddm18;
wire [d-1:0] dddm18;
wire [d-1:0] ddm18;
wire [d-1:0] dm18;
wire [d-1:0] ddddm19;
wire [d-1:0] dddm19;
wire [d-1:0] ddm19;
wire [d-1:0] dm19;
wire [d-1:0] ddddm20;
wire [d-1:0] dddm20;
wire [d-1:0] ddm20;
wire [d-1:0] ddddm21;
wire [d-1:0] ddddm22;
wire [d-1:0] dddm22;
wire [d-1:0] ddm22;
wire [d-1:0] ddddm23;
wire [d-1:0] ddddm24;
wire [d-1:0] dddm24;
wire [d-1:0] ddm25;
wire [d-1:0] dm25;
wire [d-1:0] ddm26;
wire [d-1:0] dm26;
wire [d-1:0] ddddm27;
wire [d-1:0] dddm27;
wire [d-1:0] ddm28;
wire [d-1:0] dm28;
wire [d-1:0] dm29;
wire [d-1:0] dm30;
wire [d-1:0] ddm31;
wire [d-1:0] dm31;
wire [d-1:0] dm32;
wire [d-1:0] ddm33;
wire [d-1:0] ddm34;
wire [d-1:0] dm34;
wire [d-1:0] dm35;
wire [d-1:0] ddm36;
wire [d-1:0] dm37;
wire [d-1:0] dm38;
wire [d-1:0] dm39;
wire [d-1:0] dm40;
wire [d-1:0] dm41;
wire [d-1:0] dm42;
wire [d-1:0] dm43;
wire [d-1:0] dm44;
wire [d-1:0] dm45;

// Internal computation node
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

MSKreg #(.d(d))
regen_dt16 (
    .clk(clk),
    .in(t16),
    .out(dt16)
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
andhpc2_m63 (
    .ina(m41),
    .inb(ddddt2),
    .rnd(rnd_bus4[17*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m63)
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

MSKxor #(.d(d))
xorhpc2_m43 (
    .ina(m38),
    .inb(m37),
    .out(m43)
    );

MSKand_HPC2 #(.d(d))
andhpc2_m58 (
    .ina(m43),
    .inb(ddddt3),
    .rnd(rnd_bus4[12*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m58)
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

MSKand_HPC2 #(.d(d))
andhpc2_m54 (
    .ina(m41),
    .inb(ddddt10),
    .rnd(rnd_bus4[8*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m54)
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

MSKand_HPC2 #(.d(d))
andhpc2_m49 (
    .ina(m43),
    .inb(ddddt16),
    .rnd(rnd_bus4[3*and_pini_nrnd +: and_pini_nrnd]),
    .clk(clk),
    .out(m49)
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

MSKreg #(.d(d))
regen_dm45 (
    .clk(clk),
    .in(m45),
    .out(dm45)
    );

MSKreg #(.d(d))
regen_dm44 (
    .clk(clk),
    .in(m44),
    .out(dm44)
    );

MSKreg #(.d(d))
regen_dm43 (
    .clk(clk),
    .in(m43),
    .out(dm43)
    );

MSKreg #(.d(d))
regen_dm42 (
    .clk(clk),
    .in(m42),
    .out(dm42)
    );

MSKreg #(.d(d))
regen_dm41 (
    .clk(clk),
    .in(m41),
    .out(dm41)
    );

MSKreg #(.d(d))
regen_dm40 (
    .clk(clk),
    .in(m40),
    .out(dm40)
    );

MSKreg #(.d(d))
regen_dm39 (
    .clk(clk),
    .in(m39),
    .out(dm39)
    );

MSKreg #(.d(d))
regen_dm38 (
    .clk(clk),
    .in(m38),
    .out(dm38)
    );

MSKreg #(.d(d))
regen_dm37 (
    .clk(clk),
    .in(m37),
    .out(dm37)
    );

MSKreg #(.d(d))
regen_ddm36 (
    .clk(clk),
    .in(dm36),
    .out(ddm36)
    );

MSKreg #(.d(d))
regen_dm35 (
    .clk(clk),
    .in(m35),
    .out(dm35)
    );

MSKreg #(.d(d))
regen_dm34 (
    .clk(clk),
    .in(m34),
    .out(dm34)
    );

MSKreg #(.d(d))
regen_ddm34 (
    .clk(clk),
    .in(dm34),
    .out(ddm34)
    );

MSKreg #(.d(d))
regen_ddm33 (
    .clk(clk),
    .in(dm33),
    .out(ddm33)
    );

MSKreg #(.d(d))
regen_dm32 (
    .clk(clk),
    .in(m32),
    .out(dm32)
    );

MSKreg #(.d(d))
regen_dm31 (
    .clk(clk),
    .in(m31),
    .out(dm31)
    );

MSKreg #(.d(d))
regen_ddm31 (
    .clk(clk),
    .in(dm31),
    .out(ddm31)
    );

MSKreg #(.d(d))
regen_dm30 (
    .clk(clk),
    .in(m30),
    .out(dm30)
    );

MSKreg #(.d(d))
regen_dm29 (
    .clk(clk),
    .in(m29),
    .out(dm29)
    );

MSKreg #(.d(d))
regen_dm28 (
    .clk(clk),
    .in(m28),
    .out(dm28)
    );

MSKreg #(.d(d))
regen_ddm28 (
    .clk(clk),
    .in(dm28),
    .out(ddm28)
    );

MSKreg #(.d(d))
regen_dddm27 (
    .clk(clk),
    .in(ddm27),
    .out(dddm27)
    );

MSKreg #(.d(d))
regen_ddddm27 (
    .clk(clk),
    .in(dddm27),
    .out(ddddm27)
    );

MSKreg #(.d(d))
regen_dm26 (
    .clk(clk),
    .in(m26),
    .out(dm26)
    );

MSKreg #(.d(d))
regen_ddm26 (
    .clk(clk),
    .in(dm26),
    .out(ddm26)
    );

MSKreg #(.d(d))
regen_dm25 (
    .clk(clk),
    .in(m25),
    .out(dm25)
    );

MSKreg #(.d(d))
regen_ddm25 (
    .clk(clk),
    .in(dm25),
    .out(ddm25)
    );

MSKreg #(.d(d))
regen_dddm24 (
    .clk(clk),
    .in(ddm24),
    .out(dddm24)
    );

MSKreg #(.d(d))
regen_ddddm24 (
    .clk(clk),
    .in(dddm24),
    .out(ddddm24)
    );

MSKreg #(.d(d))
regen_ddddm23 (
    .clk(clk),
    .in(dddm23),
    .out(ddddm23)
    );

MSKreg #(.d(d))
regen_ddm22 (
    .clk(clk),
    .in(dm22),
    .out(ddm22)
    );

MSKreg #(.d(d))
regen_dddm22 (
    .clk(clk),
    .in(ddm22),
    .out(dddm22)
    );

MSKreg #(.d(d))
regen_ddddm22 (
    .clk(clk),
    .in(dddm22),
    .out(ddddm22)
    );

MSKreg #(.d(d))
regen_ddddm21 (
    .clk(clk),
    .in(dddm21),
    .out(ddddm21)
    );

MSKreg #(.d(d))
regen_ddm20 (
    .clk(clk),
    .in(dm20),
    .out(ddm20)
    );

MSKreg #(.d(d))
regen_dddm20 (
    .clk(clk),
    .in(ddm20),
    .out(dddm20)
    );

MSKreg #(.d(d))
regen_ddddm20 (
    .clk(clk),
    .in(dddm20),
    .out(ddddm20)
    );

MSKreg #(.d(d))
regen_dm19 (
    .clk(clk),
    .in(m19),
    .out(dm19)
    );

MSKreg #(.d(d))
regen_ddm19 (
    .clk(clk),
    .in(dm19),
    .out(ddm19)
    );

MSKreg #(.d(d))
regen_dddm19 (
    .clk(clk),
    .in(ddm19),
    .out(dddm19)
    );

MSKreg #(.d(d))
regen_ddddm19 (
    .clk(clk),
    .in(dddm19),
    .out(ddddm19)
    );

MSKreg #(.d(d))
regen_dm18 (
    .clk(clk),
    .in(m18),
    .out(dm18)
    );

MSKreg #(.d(d))
regen_ddm18 (
    .clk(clk),
    .in(dm18),
    .out(ddm18)
    );

MSKreg #(.d(d))
regen_dddm18 (
    .clk(clk),
    .in(ddm18),
    .out(dddm18)
    );

MSKreg #(.d(d))
regen_ddddm18 (
    .clk(clk),
    .in(dddm18),
    .out(ddddm18)
    );

MSKreg #(.d(d))
regen_dm17 (
    .clk(clk),
    .in(m17),
    .out(dm17)
    );

MSKreg #(.d(d))
regen_ddm17 (
    .clk(clk),
    .in(dm17),
    .out(ddm17)
    );

MSKreg #(.d(d))
regen_dddm17 (
    .clk(clk),
    .in(ddm17),
    .out(dddm17)
    );

MSKreg #(.d(d))
regen_ddddm17 (
    .clk(clk),
    .in(dddm17),
    .out(ddddm17)
    );

MSKreg #(.d(d))
regen_dm16 (
    .clk(clk),
    .in(m16),
    .out(dm16)
    );

MSKreg #(.d(d))
regen_ddm16 (
    .clk(clk),
    .in(dm16),
    .out(ddm16)
    );

MSKreg #(.d(d))
regen_dddm16 (
    .clk(clk),
    .in(ddm16),
    .out(dddm16)
    );

MSKreg #(.d(d))
regen_ddddm16 (
    .clk(clk),
    .in(dddm16),
    .out(ddddm16)
    );

MSKreg #(.d(d))
regen_dm15 (
    .clk(clk),
    .in(m15),
    .out(dm15)
    );

MSKreg #(.d(d))
regen_ddm15 (
    .clk(clk),
    .in(dm15),
    .out(ddm15)
    );

MSKreg #(.d(d))
regen_dddm15 (
    .clk(clk),
    .in(ddm15),
    .out(dddm15)
    );

MSKreg #(.d(d))
regen_ddddm15 (
    .clk(clk),
    .in(dddm15),
    .out(ddddm15)
    );

MSKreg #(.d(d))
regen_dm14 (
    .clk(clk),
    .in(m14),
    .out(dm14)
    );

MSKreg #(.d(d))
regen_ddm14 (
    .clk(clk),
    .in(dm14),
    .out(ddm14)
    );

MSKreg #(.d(d))
regen_dddm14 (
    .clk(clk),
    .in(ddm14),
    .out(dddm14)
    );

MSKreg #(.d(d))
regen_ddddm14 (
    .clk(clk),
    .in(dddm14),
    .out(ddddm14)
    );

MSKreg #(.d(d))
regen_dm13 (
    .clk(clk),
    .in(m13),
    .out(dm13)
    );

MSKreg #(.d(d))
regen_ddm13 (
    .clk(clk),
    .in(dm13),
    .out(ddm13)
    );

MSKreg #(.d(d))
regen_dddm13 (
    .clk(clk),
    .in(ddm13),
    .out(dddm13)
    );

MSKreg #(.d(d))
regen_ddddm13 (
    .clk(clk),
    .in(dddm13),
    .out(ddddm13)
    );

MSKreg #(.d(d))
regen_dm12 (
    .clk(clk),
    .in(m12),
    .out(dm12)
    );

MSKreg #(.d(d))
regen_ddm12 (
    .clk(clk),
    .in(dm12),
    .out(ddm12)
    );

MSKreg #(.d(d))
regen_dddm12 (
    .clk(clk),
    .in(ddm12),
    .out(dddm12)
    );

MSKreg #(.d(d))
regen_ddddm12 (
    .clk(clk),
    .in(dddm12),
    .out(ddddm12)
    );

MSKreg #(.d(d))
regen_dm11 (
    .clk(clk),
    .in(m11),
    .out(dm11)
    );

MSKreg #(.d(d))
regen_ddm11 (
    .clk(clk),
    .in(dm11),
    .out(ddm11)
    );

MSKreg #(.d(d))
regen_dddm11 (
    .clk(clk),
    .in(ddm11),
    .out(dddm11)
    );

MSKreg #(.d(d))
regen_ddddm11 (
    .clk(clk),
    .in(dddm11),
    .out(ddddm11)
    );

MSKreg #(.d(d))
regen_dm10 (
    .clk(clk),
    .in(m10),
    .out(dm10)
    );

MSKreg #(.d(d))
regen_ddm10 (
    .clk(clk),
    .in(dm10),
    .out(ddm10)
    );

MSKreg #(.d(d))
regen_dddm10 (
    .clk(clk),
    .in(ddm10),
    .out(dddm10)
    );

MSKreg #(.d(d))
regen_ddddm10 (
    .clk(clk),
    .in(dddm10),
    .out(ddddm10)
    );

MSKreg #(.d(d))
regen_dm9 (
    .clk(clk),
    .in(m9),
    .out(dm9)
    );

MSKreg #(.d(d))
regen_ddm9 (
    .clk(clk),
    .in(dm9),
    .out(ddm9)
    );

MSKreg #(.d(d))
regen_dddm9 (
    .clk(clk),
    .in(ddm9),
    .out(dddm9)
    );

MSKreg #(.d(d))
regen_ddddm9 (
    .clk(clk),
    .in(dddm9),
    .out(ddddm9)
    );

MSKreg #(.d(d))
regen_dm8 (
    .clk(clk),
    .in(m8),
    .out(dm8)
    );

MSKreg #(.d(d))
regen_ddm8 (
    .clk(clk),
    .in(dm8),
    .out(ddm8)
    );

MSKreg #(.d(d))
regen_dddm8 (
    .clk(clk),
    .in(ddm8),
    .out(dddm8)
    );

MSKreg #(.d(d))
regen_ddddm8 (
    .clk(clk),
    .in(dddm8),
    .out(ddddm8)
    );

MSKreg #(.d(d))
regen_dm7 (
    .clk(clk),
    .in(m7),
    .out(dm7)
    );

MSKreg #(.d(d))
regen_ddm7 (
    .clk(clk),
    .in(dm7),
    .out(ddm7)
    );

MSKreg #(.d(d))
regen_dddm7 (
    .clk(clk),
    .in(ddm7),
    .out(dddm7)
    );

MSKreg #(.d(d))
regen_ddddm7 (
    .clk(clk),
    .in(dddm7),
    .out(ddddm7)
    );

MSKreg #(.d(d))
regen_dm6 (
    .clk(clk),
    .in(m6),
    .out(dm6)
    );

MSKreg #(.d(d))
regen_ddm6 (
    .clk(clk),
    .in(dm6),
    .out(ddm6)
    );

MSKreg #(.d(d))
regen_dddm6 (
    .clk(clk),
    .in(ddm6),
    .out(dddm6)
    );

MSKreg #(.d(d))
regen_ddddm6 (
    .clk(clk),
    .in(dddm6),
    .out(ddddm6)
    );

MSKreg #(.d(d))
regen_dm5 (
    .clk(clk),
    .in(m5),
    .out(dm5)
    );

MSKreg #(.d(d))
regen_ddm5 (
    .clk(clk),
    .in(dm5),
    .out(ddm5)
    );

MSKreg #(.d(d))
regen_dddm5 (
    .clk(clk),
    .in(ddm5),
    .out(dddm5)
    );

MSKreg #(.d(d))
regen_ddddm5 (
    .clk(clk),
    .in(dddm5),
    .out(ddddm5)
    );

MSKreg #(.d(d))
regen_dm4 (
    .clk(clk),
    .in(m4),
    .out(dm4)
    );

MSKreg #(.d(d))
regen_ddm4 (
    .clk(clk),
    .in(dm4),
    .out(ddm4)
    );

MSKreg #(.d(d))
regen_dddm4 (
    .clk(clk),
    .in(ddm4),
    .out(dddm4)
    );

MSKreg #(.d(d))
regen_ddddm4 (
    .clk(clk),
    .in(dddm4),
    .out(ddddm4)
    );

MSKreg #(.d(d))
regen_dm3 (
    .clk(clk),
    .in(m3),
    .out(dm3)
    );

MSKreg #(.d(d))
regen_ddm3 (
    .clk(clk),
    .in(dm3),
    .out(ddm3)
    );

MSKreg #(.d(d))
regen_dddm3 (
    .clk(clk),
    .in(ddm3),
    .out(dddm3)
    );

MSKreg #(.d(d))
regen_ddddm3 (
    .clk(clk),
    .in(dddm3),
    .out(ddddm3)
    );

MSKreg #(.d(d))
regen_dm2 (
    .clk(clk),
    .in(m2),
    .out(dm2)
    );

MSKreg #(.d(d))
regen_ddm2 (
    .clk(clk),
    .in(dm2),
    .out(ddm2)
    );

MSKreg #(.d(d))
regen_dddm2 (
    .clk(clk),
    .in(ddm2),
    .out(dddm2)
    );

MSKreg #(.d(d))
regen_ddddm2 (
    .clk(clk),
    .in(dddm2),
    .out(ddddm2)
    );

MSKreg #(.d(d))
regen_dm1 (
    .clk(clk),
    .in(m1),
    .out(dm1)
    );

MSKreg #(.d(d))
regen_ddm1 (
    .clk(clk),
    .in(dm1),
    .out(ddm1)
    );

MSKreg #(.d(d))
regen_dddm1 (
    .clk(clk),
    .in(ddm1),
    .out(dddm1)
    );

MSKreg #(.d(d))
regen_ddddm1 (
    .clk(clk),
    .in(dddm1),
    .out(ddddm1)
    );

// Output nodes
assign o63 = m63;

assign o62 = m62;

assign o61 = m61;

assign o60 = m60;

assign o59 = m59;

assign o58 = m58;

assign o57 = m57;

assign o56 = m56;

assign o55 = m55;

assign o54 = m54;

assign o53 = m53;

assign o52 = m52;

assign o51 = m51;

assign o50 = m50;

assign o49 = m49;

assign o48 = m48;

assign o47 = m47;

assign o46 = m46;

assign o45 = dm45;

assign o44 = dm44;

assign o43 = dm43;

assign o42 = dm42;

assign o41 = dm41;

assign o40 = dm40;

assign o39 = dm39;

assign o38 = dm38;

assign o37 = dm37;

assign o36 = ddm36;

assign o35 = dm35;

assign o34 = ddm34;

assign o33 = ddm33;

assign o32 = dm32;

assign o31 = ddm31;

assign o30 = dm30;

assign o29 = dm29;

assign o28 = ddm28;

assign o27 = ddddm27;

assign o26 = ddm26;

assign o25 = ddm25;

assign o24 = ddddm24;

assign o23 = ddddm23;

assign o22 = ddddm22;

assign o21 = ddddm21;

assign o20 = ddddm20;

assign o19 = ddddm19;

assign o18 = ddddm18;

assign o17 = ddddm17;

assign o16 = ddddm16;

assign o15 = ddddm15;

assign o14 = ddddm14;

assign o13 = ddddm13;

assign o12 = ddddm12;

assign o11 = ddddm11;

assign o10 = ddddm10;

assign o9 = ddddm9;

assign o8 = ddddm8;

assign o7 = ddddm7;

assign o6 = ddddm6;

assign o5 = ddddm5;

assign o4 = ddddm4;

assign o3 = ddddm3;

assign o2 = ddddm2;

assign o1 = ddddm1;

endmodule