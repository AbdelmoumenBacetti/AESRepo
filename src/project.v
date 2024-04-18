/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_AbdelmoumenBacetti_aes(
           input  wire [7:0] ui_in,    // Dedicated inputs
           output wire [7:0] uo_out,   // Dedicated outputs
           input  wire [7:0] uio_in,   // IOs: Input path
           output wire [7:0] uio_out,  // IOs: Output path
           output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
           input  wire       ena,      // will go high when the design is enabled
           input  wire       clk,      // clock
           input  wire       rst_n     // reset_n - low to reset
           );
           
wire aes_we = uio_oe[0];
//wire [7 : 0] aes_address = ;
//wire  [31 : 0] aes_write_data = ;
//wire [31 : 0] aes_read_data = ;
           
aes aes_dut(
           .clk(clk),
           .reset_n(reset_n),
           .cs(ena),
           .we(aes_we),
           .address(aes_address),
           .write_data(aes_write_data),
           .read_data(aes_read_data)
           );
 
endmodule // tt_um_AbdelmoumenBacetti_aes
