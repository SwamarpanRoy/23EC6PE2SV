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
