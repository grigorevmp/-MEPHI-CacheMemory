// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Apr 26 16:40:48 2023
// Host        : grigorev-mp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  input wr_rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  input rd_rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [29:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [29:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [29:0]din;
  wire [29:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "30" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "30" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(rd_rst),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(wr_rst),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 80608)
`pragma protect data_block
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
kK3o52K1NT8LcA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
