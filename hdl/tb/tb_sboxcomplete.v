`timescale 1ns/1ps

module tb_invsbox;

reg clk;
always #1 clk=~clk;

reg [7:0] test_data [0:511];

reg [7:0] i;
wire [7:0] o;

sbox_complete dut (clk, 1'b1, i[7], i[6], i[5], i[4], i[3], i[2], i[1], i[0], 
                  o[7], o[6], o[5], o[4], o[3], o[2], o[1], o[0]);

integer j;

initial begin
    $display("Hello"); 
    $readmemh("./hdl/aes_enc128_32bits_hpc2/sbox/test_vector_inv_sbox.txt", test_data);
    $dumpfile("invSbox.vcd");
    $dumpvars(0, tb_invsbox);
    clk <= 1;
    for (j=0; j<256; j=j+1) begin
        i <= test_data[j*2]; #1
        $display("Input : %h - Output : (actual) %h - %h (expected)", i, o, test_data[j*2+1]);
    end
    #10
    $finish();
end

endmodule