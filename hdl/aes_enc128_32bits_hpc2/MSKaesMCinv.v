module MSKaesMCinv # (parameter d = 2)
(
    input [8*d-1:0] b0, b1, b2, b3,
    output [8*d-1:0] a0, a1, a2, a3
);

wire [8*d-1:0] b0_ps [3:0];
wire [8*d-1:0] b1_ps [3:0];
wire [8*d-1:0] b2_ps [3:0];
wire [8*d-1:0] b3_ps [3:0];

MSKprodMCinv #(.d(d)) prod_b0 (b0, b0_ps[0], b0_ps[1], b0_ps[2], b0_ps[3]);
MSKprodMCinv #(.d(d)) prod_b1 (b1, b1_ps[0], b1_ps[1], b1_ps[2], b1_ps[3]);
MSKprodMCinv #(.d(d)) prod_b2 (b2, b2_ps[0], b2_ps[1], b2_ps[2], b2_ps[3]);
MSKprodMCinv #(.d(d)) prod_b3 (b3, b3_ps[0], b3_ps[1], b3_ps[2], b3_ps[3]);

wire [8*d-1:0] a0_x0, a0_x1;
MSKxor #(.d(d),.count(8)) xra0_1 (b0_ps[3], b1_ps[1], a0_x0);
MSKxor #(.d(d),.count(8)) xra0_2 (a0_x0, b2_ps[2], a0_x1);
MSKxor #(.d(d),.count(8)) xra0_3 (a0_x1, b3_ps[0], a0);

wire [8*d-1:0] a1_x0, a1_x1;
MSKxor #(.d(d),.count(8)) xra1_1 (b0_ps[0], b1_ps[3], a1_x0);
MSKxor #(.d(d),.count(8)) xra1_2 (a1_x0, b2_ps[1], a1_x1);
MSKxor #(.d(d),.count(8)) xra1_3 (a1_x1, b3_ps[2], a1);

wire [8*d-1:0] a2_x0, a2_x1;
MSKxor #(.d(d),.count(8)) xra2_1 (b0_ps[2], b1_ps[0], a2_x0);
MSKxor #(.d(d),.count(8)) xra2_2 (a2_x0, b2_ps[3], a2_x1);
MSKxor #(.d(d),.count(8)) xra2_3 (a2_x1, b3_ps[1], a2);

wire [8*d-1:0] a3_x0, a3_x1;
MSKxor #(.d(d),.count(8)) xra3_1 (b0_ps[1], b1_ps[2], a3_x0);
MSKxor #(.d(d),.count(8)) xra3_2 (a3_x0, b2_ps[0], a3_x1);
MSKxor #(.d(d),.count(8)) xra3_3 (a3_x1, b3_ps[3], a3);

endmodule