//------------------------------------------------------------------------------
//File       : SVA.sv
//Author     : Swamarpan Roy/1BM23EC305
//Created    : 2026-02-09
//Module     : SVA temporal sequences
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: Arbiter used for basic functional coverage example.
//------------------------------------------------------------------------------
module tb;

  bit clk, req, gnt;

  always #5 clk = ~clk;


  property p_handshake;
    @(posedge clk) req |=> ##2 gnt;
  endproperty


  assert property (p_handshake)
    else $error("Protocol Fail!");


  initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    @(posedge clk) req <= 1;
    @(posedge clk) req <= 0;
    @(posedge clk) gnt <= 1;

    #50 $finish;

  end

endmodule
