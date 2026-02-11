//------------------------------------------------------------------------------
//File       : aassociative_arr.sv
//Author     : Swamarpan Roy/1BM23EC305
//Created    : 2026-02-09
//Module     : associative array
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: Arbiter used for basic functional coverage example.
//------------------------------------------------------------------------------

class Packet;

  rand bit [7:0] data;

  virtual function void print();
    $display("Normal: %h", data);
  endfunction

endclass


class BadPacket extends Packet;

  virtual function void print();
    $display("ERROR: %h", data);
  endfunction

endclass


module tb;

  Packet p;
  BadPacket bad = new();

  initial begin


    p = bad;
    p.randomize();
    p.print();

    $finish;

  end

endmodule
