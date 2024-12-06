module Instruction_Memory(rst,A,RD);

  input rst;
  input [31:0]A;
  output [31:0]RD;

  reg [31:0] mem [1023:0];
  
  
   assign RD = (~rst) ? {32{1'b0}} : mem[A[31:2]];
// initial begin
//    $readmemh("inst.hex",mem);
//  end



  initial begin
//        mem[0] = 32'h0040A283;  //lw x5 4(x1)
//        mem[1] = 32'h00112483;  //lw x9 1(x1)
        mem[2] = 32'h0092F6B3;  //mul x13 x5 x9
        
//        mem[3] = 32'h0011A0A3;  //sw x1 1(x3)
    //mem[0] = 32'h00526333;
       //mem[1] = 32'h00000193;     //addi t3 x0 0
      // mem[0] = 32'h0010A203;     //lw x4 1(t0)   xo=2
//       mem[3] = 32'h00012283;     //lw t5 0(t1)
//       mem[4] = 32'h00337233;     //mul t6 t4 t5
  //     mem[5] = 32'h026181B3;     //add t3 t3 t6
//     //----
//     mem[6] = 32'h00402203;     //lw t4 4(t0)
//     mem[7] = 32'h0040A283;     //lw t5 4(t1)
//     mem[8] = 32'h02520333;     //mul t6 t4 t5
//     mem[9] = 32'h026183B3;     //add t3 t3 t6
//     //----
//     mem[10] = 32'h00802203;    //lw t4 8(t0)
//     mem[11] = 32'h0080A203;    //lw t5 8(t1)
//     mem[12] = 32'h02520333;    //mul t6 t4 t5
//     mem[13] = 32'h026181A3;     //add t3 t3 t6
//     //----
//     mem[14] = 32'h00C02203;    //lw t4 12(t0)
//     mem[15] = 32'h00C0A203;    //lw t5 12(t1)
//     mem[16] = 32'h02520333;    //mul t6 t4 t5
//     mem[17] = 32'h026181A3;     //add t3 t3 t6
//     //----
//     mem[18] = 32'h00312023;    //SW t3 0(t2)
     
    //mem[0] = 32'hFFC4A303;     //load
    //mem[2] = 32'h0064A423;     //store
     //mem[3] = 32'h0062E233;     //R type
  end

endmodule