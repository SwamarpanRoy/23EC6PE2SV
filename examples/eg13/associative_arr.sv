//------------------------------------------------------------------------------
//File       : aassociative_arr.sv
//Author     : Swamarpan Roy/1BM23EC305
//Created    : 2026-02-09
//Module     : associative array
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: Arbiter used for basic functional coverage example.
//------------------------------------------------------------------------------
module tb;

  int mem[int];
  int addr;

  initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    repeat (10) begin
      addr = $urandom_range(0, 100000);
      mem[addr] = $urandom();
    end

    foreach (mem[idx])
      $display("Addr:%0d Data:%0h", idx, mem[idx]);

    $finish;

  end

endmodule
