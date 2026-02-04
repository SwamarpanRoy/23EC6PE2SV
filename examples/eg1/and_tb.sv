//------------------------------------------------------------------------------
//File       : and_tb.sv
//Author     : Swamarpan Roy
//Created    : 2026-01-20
//Module     : and_gate
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: 2-input AND gate used for basic functional coverage example.
//------------------------------------------------------------------------------

module and_tb;
  logic a,b,y;
  and_gate dut (a,b,y);
  
  covergroup cg_and;
    cp_a: coverpoint a;
    cp_b: coverpoint b;
    cross_ab: cross cp_a,cp_b;
  endgroup
  
  cg_and cg;
  
  initial begin 
    cg = new();
    repeat(20) begin
      a = $urandom();
      b = $urandom();
      #5;
      cg.sample();
    end
    $display ("Final Coverage = %0.2f %%", cg.get_inst_coverage());
  end
endmodule
