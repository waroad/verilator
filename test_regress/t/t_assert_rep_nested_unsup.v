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

  default clocking cb @(posedge clk);
  endclocking

  assert property (a [=2] or b);
  assert property (b iff a [->2]);
endmodule
