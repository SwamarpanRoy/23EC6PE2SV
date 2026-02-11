
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
