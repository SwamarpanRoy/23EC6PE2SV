//------------------------------------------------------------------------------
//File       : mux2to1.sv
//Author     : Swamarpan Roy/1BM23EC305
//Created    : 2026-01-23
//Module     : mux2to1
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: 2-input Multipexer used for basic functional coverage example.
//------------------------------------------------------------------------------

module mux2to1 (
  input logic [7:0] a, b,
  input logic sel,
  output logic [7:0] y
);
  assign y = sel ? b : a;
endmodule
