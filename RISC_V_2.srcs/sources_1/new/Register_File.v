module Register_File(clk,rst,WE3,WD3,A1,A2,A3,RD1,RD2);

    input clk,rst,WE3;
    input [4:0]A1,A2,A3;
    input [31:0]WD3;
    output [31:0]RD1,RD2;

    reg [31:0] Register [31:0];

    always @ (posedge clk)
    begin
        if(WE3)
            Register[A3] <= WD3;
//            $display("Write to Register[%d] = %h", A3, WD3);
//            $display("Read Register[%d] = %h, Register[%d] = %h", A1, RD1, A2, RD2);
    end     

    assign RD1 = (~rst) ? 32'd0 : Register[A1];
    assign RD2 = (~rst) ? 32'd0 : Register[A2];

    initial begin
//          Register[4] = 32'h00000006;     //r type
//          Register[5] = 32'h0000000A;     //r type
        
//          Register[1] = 32'h00000005;     //5
//          Register[2] = 32'h00000002;
              Register[5] = 32'h00000006;
              Register[9] = 32'h00000002;



    end

endmodule