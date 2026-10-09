// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed under the Creative Commons Public Domain.
// SPDX-FileCopyrightText: 2026 Wilson Snyder
// SPDX-License-Identifier: CC0-1.0

module t (
    input wire [7:0] a,
    output wire [9:0] y
);
  // Breaking this cycle traces a single bit of the sign extension of '>>>'
  wire [9:0] s = $signed(y) >>> 2;
  assign y = {a[0], s[9], a[7:0]};
endmodule
