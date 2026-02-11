class Packet;

  rand bit [7:0] val;

endclass


module tb;

  mailbox #(Packet) mbx = new();


  task generator();

    Packet p = new();

    repeat (5) begin
      p.randomize();
      mbx.put(p);
    end

  endtask


  task driver();

    Packet p;

    repeat (5) begin
      mbx.get(p);
      $display("Driver got: %0d", p.val);
    end

  endtask


  initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    fork
      generator();
      driver();
    join

    $finish;

  end

endmodule
