// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon May 22 21:09:13 2023
// Host        : grigorev-mp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [15:0]din;
  wire [15:0]dout;
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
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82320)
`pragma protect data_block
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
S+8+VrpoUG9efTxK
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
