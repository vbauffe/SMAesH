// Forward : 
//
// b0 = 0x02*a0 + 0x03*a1 + 0x01*a2 + 0x01*a3
// b1 = 0x01*a0 + 0x02*a1 + 0x03*a2 + 0x01*a3
// b2 = 0x01*a0 + 0x01*a1 + 0x02*a2 + 0x03*a3
// b3 = 0x03*a0 + 0x01*a1 + 0x01*a2 + 0x02*a3

// Reverse : 
// 
// a0 = 0x0E*b0 + 0x0B*b1 + 0x0D*b2 + 0x09*b3
// a1 = 0x09*b0 + 0x0E*b1 + 0x0B*b2 + 0x0D*b3
// a2 = 0x0D*b0 + 0x09*b1 + 0x0E*b2 + 0x0B*b3
// a3 = 0x0B*b0 + 0x0D*b1 + 0x09*b2 + 0x0E*b3

module main;

wire [3:0] a, b;
assign a = 4'b0001;
assign b = 4'b1001;


wire [7:0] fb0, fb1, fb2, fb3;
wire [7:0] fa0, fa1, fa2, fa3;

wire [7:0] ib0, ib1, ib2, ib3;
wire [7:0] ia0, ia1, ia2, ia3;

assign fa0 = 8'hd4;
assign fa1 = 8'hbf;
assign fa2 = 8'h5d;
assign fa3 = 8'h30; 

assign ib0 = 8'h04;
assign ib1 = 8'h66;
assign ib2 = 8'h81;
assign ib3 = 8'he5;

aesMC forward (fa0, fa1, fa2, fa3, fb0, fb1, fb2, fb3);
aesinvMC inv (ib0, ib1, ib2, ib3, ia0, ia1, ia2, ia3);

initial
begin
    #10
    $display("Forward : %h, %h, %h, %h - %h, %h, %h, %h", 
                fa0, fa1, fa2, fa3, fb0, fb1, fb2, fb3);
    $display("Inverse : %h, %h, %h, %h - %h, %h, %h, %h", 
                ib0, ib1, ib2, ib3, ia0, ia1, ia2, ia3);
end

endmodule


module aesMC
(
    input [7:0] a0, a1, a2, a3,
    output [7:0] b0, b1, b2, b3
);

wire [7:0] a0_ps [2:0];
wire [7:0] a1_ps [2:0];
wire [7:0] a2_ps [2:0];
wire [7:0] a3_ps [2:0];

assign a0_ps[0] = a0;
prodMC prod_a0 (a0, a0_ps[1], a0_ps[2]);

assign a1_ps[0] = a1;
prodMC prod_a1 (a1, a1_ps[1], a1_ps[2]);

assign a2_ps[0] = a2;
prodMC prod_a2 (a2, a2_ps[1], a2_ps[2]);

assign a3_ps[0] = a3;
prodMC prod_a3 (a3, a3_ps[1], a3_ps[2]);

wire [7:0] b0_x0, b0_x1;
myxor xor01 (a0_ps[1], a1_ps[2], b0_x0);
myxor xor02 (b0_x0, a2_ps[0], b0_x1);
myxor xor03 (b0_x1, a3_ps[0], b0);

wire [7:0] b1_x0, b1_x1;
myxor xor11 (a0_ps[0], a1_ps[1], b1_x0);
myxor xor12 (b1_x0, a2_ps[2], b1_x1);
myxor xor13 (b1_x1, a3_ps[0], b1);

wire [7:0] b2_x0, b2_x1;
myxor xor21 (a0_ps[0], a1_ps[0], b2_x0);
myxor xor22 (b2_x0, a2_ps[1], b2_x1);
myxor xor23 (b2_x1, a3_ps[2], b2);

wire [7:0] b3_x0, b3_x1;
myxor xor31 (a0_ps[2], a1_ps[0], b3_x0);
myxor xor32 (b3_x0, a2_ps[0], b3_x1);
myxor xor33 (b3_x1, a3_ps[1], b3);

endmodule

module prodMC
(
    input [7:0] in,
    output [7:0] out2, out3
);

wire [7:0] cst_poly = 8'h1b;

wire in_MSB = in[7];
wire [7:0] shifted_in = {in[6:0], 1'b0};
wire [7:0] and_cst_poly = ({8{in_MSB}} & cst_poly);
assign out2 = shifted_in ^ and_cst_poly;
assign out3 = out2 ^ in;

endmodule

module invprodMC
(
    input [7:0] in,
    output [7:0] out9, outb, outd, oute
);

assign out9 = multiply(in, 3) ^ in;
assign outb = multiply(in, 3) ^ multiply(in, 1) ^ in;
assign outd = multiply(in, 3) ^ multiply(in, 2) ^ in;
assign oute = multiply(in, 3) ^ multiply(in, 2) ^ multiply(in, 1);

function[7:0] multiply(input [7:0]x,input integer n);
integer i;
begin
	for(i=0;i<n;i=i+1)begin
		if(x[7] == 1) x = ((x << 1) ^ 8'h1b);
		else x = x << 1; 
	end
	multiply=x;
end

endfunction

endmodule

module aesinvMC
(
    input [7:0] b0, b1, b2, b3,
    output [7:0] a0, a1, a2, a3
);

wire [7:0] b0_ps [3:0];
wire [7:0] b1_ps [3:0];
wire [7:0] b2_ps [3:0];
wire [7:0] b3_ps [3:0];

invprodMC prod_b0 (b0, b0_ps[0], b0_ps[1], b0_ps[2], b0_ps[3]);
invprodMC prod_b1 (b1, b1_ps[0], b1_ps[1], b1_ps[2], b1_ps[3]);
invprodMC prod_b2 (b2, b2_ps[0], b2_ps[1], b2_ps[2], b2_ps[3]);
invprodMC prod_b3 (b3, b3_ps[0], b3_ps[1], b3_ps[2], b3_ps[3]);

wire [7:0] a0_x0, a0_x1;
myxor xor01 (b0_ps[3], b1_ps[1], a0_x0);
myxor xor02 (a0_x0, b2_ps[2], a0_x1);
myxor xor03 (a0_x1, b3_ps[0], a0);

wire [7:0] a1_x0, a1_x1;
myxor xor11 (b0_ps[0], b1_ps[3], a1_x0);
myxor xor12 (a1_x0, b2_ps[1], a1_x1);
myxor xor13 (a1_x1, b3_ps[2], a1);

wire [7:0] a2_x0, a2_x1;
myxor xor21 (b0_ps[2], b1_ps[0], a2_x0);
myxor xor22 (a2_x0, b2_ps[3], a2_x1);
myxor xor23 (a2_x1, b3_ps[1], a2);

wire [7:0] a3_x0, a3_x1;
myxor xor31 (b0_ps[1], b1_ps[2], a3_x0);
myxor xor32 (a3_x0, b2_ps[0], a3_x1);
myxor xor33 (a3_x1, b3_ps[3], a3);

endmodule

module myxor
(
    input [7:0] ina, inb, 
    output [7:0] out
);

assign out = ina ^ inb;

endmodule