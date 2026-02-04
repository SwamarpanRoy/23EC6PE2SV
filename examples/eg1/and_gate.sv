//------------------------------------------------------------------------------
//File       : and_gate.sv
//Author     : Swamarpan Roy/1BM23EC305
//Created    : 2026-01-20
//Module     : and_gate
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: 2-input AND gate used for basic functional coverage example.
//------------------------------------------------------------------------------
module and_gate(input logic a,b, output logic y);
  
  always@(*)
    y = a&b;
endmodule
