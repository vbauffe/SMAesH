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