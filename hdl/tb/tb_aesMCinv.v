module tb_aesMC;

wire [7:0] b0, b1, b2, b3;
wire [7:0] a0, a1, a2, a3;

assign b0 = 8'h8e;
assign b1 = 8'h4d;
assign b2 = 8'ha1;
assign b3 = 8'hbc;

reg [15:0] ib0, ib1, ib2, ib3;
wire [15:0] ia0, ia1, ia2, ia3;

// MSKaesMCinv #(.d(1)) dut (b0, b1, b2, b3, a0, a1, a2, a3);
MSKaesMCinv #(.d(2)) dut (ib0, ib1, ib2, ib3, ia0, ia1, ia2, ia3);

assign a0 = {ia0[15], ia0[13], ia0[11], ia0[9], ia0[7], ia0[5], ia0[3], ia0[1]};
assign a1 = {ia1[15], ia1[13], ia1[11], ia1[9], ia1[7], ia1[5], ia1[3], ia1[1]};
assign a2 = {ia2[15], ia2[13], ia2[11], ia2[9], ia2[7], ia2[5], ia2[3], ia2[1]};
assign a3 = {ia3[15], ia3[13], ia3[11], ia3[9], ia3[7], ia3[5], ia3[3], ia3[1]};

// wire [15:0] in, out9, outb, outd, oute;
// assign in = 16'b0000000000001010;

// MSKprodMCinv #(.d(2)) but (in, out9, outb, outd, oute);

// wire [7:0] myin, myout9, myoutb, myoutd, myoute;
// assign myin = 8'b00000011;
// invprodMC test (myin, myout9, myoutb, myoutd, myoute);

integer i;
initial
begin
    $monitor("Inverse : %h, %h, %h, %h - %h, %h, %h, %h", 
                b0, b1, b2, b3, a0, a1, a2, a3);
    for (i=0; i<16; i=i+1)begin
        if (i%2) begin
            ib0[i] = b0[i/2];
            ib1[i] = b1[i/2];
            ib2[i] = b2[i/2];
            ib3[i] = b3[i/2];
        end else begin 
            ib0[i] = 0;
            ib1[i] = 0;
            ib2[i] = 0;
            ib3[i] = 0;
        end
    end
end

endmodule