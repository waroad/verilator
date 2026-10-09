// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Wilson Snyder
// SPDX-License-Identifier: CC0-1.0

module t (
    input clk
);
  bit a;
  bit b;
  bit c;

  default clocking cb @(posedge clk);
  endclocking

  assert property (c iff (a |-> ##1 b));
endmodule
