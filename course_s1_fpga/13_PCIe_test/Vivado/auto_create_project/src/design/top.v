`timescale 1ns / 1ps

module top(
	  //ps io
      inout [14:0]	DDR_addr,
	  inout [2:0]	DDR_ba,
	  inout 		DDR_cas_n,
	  inout 		DDR_ck_n,
	  inout 		DDR_ck_p,
	  inout 		DDR_cke,
	  inout 		DDR_cs_n,
	  inout [3:0]	DDR_dm,
	  inout [31:0]	DDR_dq,
	  inout [3:0]	DDR_dqs_n,
	  inout [3:0]	DDR_dqs_p,
	  inout 		DDR_odt,
	  inout 		DDR_ras_n,
	  inout 		DDR_reset_n,
	  inout 		DDR_we_n,
	  inout 		FIXED_IO_ddr_vrn,
	  inout 		FIXED_IO_ddr_vrp,
	  inout [53:0]	FIXED_IO_mio,
	  inout 		FIXED_IO_ps_clk,
	  inout 		FIXED_IO_ps_porb,
	  inout 		FIXED_IO_ps_srstb,
	  //pl ddr3
	  output [14:0]	ddr3_addr,
	  output [2:0]	ddr3_ba,
	  output 		ddr3_cas_n,
	  output [0:0]	ddr3_ck_n,
	  output [0:0]	ddr3_ck_p,
	  output [0:0]	ddr3_cke,
	  output [0:0]	ddr3_cs_n,
	  output [7:0]	ddr3_dm,
	  inout [63:0]	ddr3_dq,
	  inout [7:0]	ddr3_dqs_n,
	  inout [7:0]	ddr3_dqs_p,
	  output [0:0]	ddr3_odt,
	  output 		ddr3_ras_n,
	  output 		ddr3_reset_n,
	  output 		ddr3_we_n,
	  //pcie
	  input [7:0]	pcie_mgt_rxn,
	  input [7:0]	pcie_mgt_rxp,
	  output [7:0]	pcie_mgt_txn,
	  output [7:0]	pcie_mgt_txp,
	  input [0:0]	pcie_ref_clk_n,
	  input [0:0]	pcie_ref_clk_p,
	  input 		pcie_rst_n,
	  //ddr3 reference clock
	  input 		sys_clk_n,
	  input 		sys_clk_p,
	  inout         si5338_scl, //i2c clock
	  inout         si5338_sda, //i2c data
	  input         sys_clk,
	  input         sys_rst
    );

wire		done ;

si5338#
(
	.kInitFileName                  ("si5338.mif"),
	.input_clk                      (50000000                 ),
	.i2c_address                    (7'b1110000               ),
	.bus_clk                        (400000                   )
)
si5338_inst(
	.clk                            (sys_clk                  ),
	.reset                          (~sys_rst                 ),
	.done                           (done                     ),
	.error                          (                         ),
	.SCL                            (si5338_scl               ),
	.SDA                            (si5338_sda               )
	);


design_1_wrapper ps_block(
      .DDR_addr               (DDR_addr          ),
	  .DDR_ba                 (DDR_ba            ),
	  .DDR_cas_n              (DDR_cas_n         ),
	  .DDR_ck_n               (DDR_ck_n          ),
	  .DDR_ck_p               (DDR_ck_p          ),
	  .DDR_cke                (DDR_cke           ),
	  .DDR_cs_n               (DDR_cs_n          ),
	  .DDR_dm                 (DDR_dm            ),
	  .DDR_dq                 (DDR_dq            ),
	  .DDR_dqs_n              (DDR_dqs_n         ),
	  .DDR_dqs_p              (DDR_dqs_p         ),
	  .DDR_odt                (DDR_odt           ),
	  .DDR_ras_n              (DDR_ras_n         ),
	  .DDR_reset_n            (DDR_reset_n       ),
	  .DDR_we_n               (DDR_we_n          ),
	  .FIXED_IO_ddr_vrn       (FIXED_IO_ddr_vrn  ),
	  .FIXED_IO_ddr_vrp       (FIXED_IO_ddr_vrp  ),
	  .FIXED_IO_mio           (FIXED_IO_mio      ),
	  .FIXED_IO_ps_clk        (FIXED_IO_ps_clk   ),
	  .FIXED_IO_ps_porb       (FIXED_IO_ps_porb  ),
	  .FIXED_IO_ps_srstb      (FIXED_IO_ps_srstb ),
	  .ddr3_addr              (ddr3_addr         ),
	  .ddr3_ba                (ddr3_ba           ),
	  .ddr3_cas_n             (ddr3_cas_n        ),
	  .ddr3_ck_n              (ddr3_ck_n         ),
	  .ddr3_ck_p              (ddr3_ck_p         ),
	  .ddr3_cke               (ddr3_cke          ),
	  .ddr3_cs_n              (ddr3_cs_n         ),
	  .ddr3_dm                (ddr3_dm           ),
	  .ddr3_dq                (ddr3_dq           ),
	  .ddr3_dqs_n             (ddr3_dqs_n        ),
	  .ddr3_dqs_p             (ddr3_dqs_p        ),
	  .ddr3_odt               (ddr3_odt          ),
	  .ddr3_ras_n             (ddr3_ras_n        ),
	  .ddr3_reset_n           (ddr3_reset_n      ),
	  .ddr3_we_n              (ddr3_we_n         ),
	  .pcie_mgt_rxn           (pcie_mgt_rxn      ),
	  .pcie_mgt_rxp           (pcie_mgt_rxp      ),
	  .pcie_mgt_txn           (pcie_mgt_txn      ),
	  .pcie_mgt_txp           (pcie_mgt_txp      ),
	  .pcie_ref_clk_n         (pcie_ref_clk_n    ),
	  .pcie_ref_clk_p         (pcie_ref_clk_p    ),
	  .pcie_rst_n             (pcie_rst_n        ),
	  .sys_clk_n              (sys_clk_n         ),
	  .sys_clk_p              (sys_clk_p         ),
	  .sys_rst                (done           )
    );


endmodule
