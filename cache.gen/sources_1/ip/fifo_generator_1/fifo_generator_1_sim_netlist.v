// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon May 22 21:09:14 2023
// Host        : grigorev-mp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Coding/Vivado/cache/cache.gen/sources_1/ip/fifo_generator_1/fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_generator_1
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
  fifo_generator_1_fifo_generator_v13_2_7 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_1_xpm_cdc_gray
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
module fifo_generator_1_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82176)
`pragma protect data_block
fd2dN3AN5Tajy9ZRzcLu12uKGZAivU/rYd54pDl5vey11wvC3/KQeJAsMKTScLZi6FitAY5q3l5I
roDDh6WPRwGxE2zzjybrtxgTeX4phbGfZw6hPwHz6xVZ12UT/zeeYMasXCIh7K5Cs4ueBVPJ236L
8D2BSPnLi1ug3c6nV4xltR5FdO60rZKL+OT7a9S1oXmuWm4Os6OwWfCAc8fJGflz3yLAHJuSriZF
hgcCfBdpSXbugYEFsN8zD12ha4Hc7cST+NfP2GUVXYOZj7HulFq9SX4ReKl309cXgAEzIeBPalHa
xIpXDF90XfFiAuzVJYM58A6IyLh1dn9CRfPGDqvt5ITcQ52IE1t9PbltDOid4Ui8O4f3IhICeQFE
2le0V6v8dY9XSaorFwRrf/FQ6rn2NN4GUrqp3qvXL8WqAmQtm8Iq2D8wosLbegy5wp0qE29cGMqs
dvCZVGVT8ruSTh2ic5HQBgv0vjypx7rRmLq/MJDWUSj/wtu7Y5ZHpPibV74mrTEy4rzw6lQf0vRr
QcaaMqwsxl3Cz4ASnmsaWSslQUzHQyhElmMTPtsi/Efga3IKoajWERfVY+vBsZtC9aooraTNcwOU
3ag8QYjXE4p3C0u8fbq3O5/O4O9L+89VhhY/l44ywOT9qgAk5+Zl7FAvaIwuE5ItzqbHOfgZP/QR
K0rLHrT3+iNQUJJxWq8CdV/PYa4aqlxAaIVvkfBOnszLL4dwpdpLGr2AvZgQMb03eCQj0hcPIHJI
hJl8y51vZ1LhzosbWwxQPKoYExXNltn6bygRi+LdoHP0B7SdS0k8rK5/tQ8BHLfTqcFI6Mfq4Gd2
u5Y6D/EyHH/6fPDjNQE9bZLHuJ340dWXIh3dwPF4yuWUwfubejRsVsUhV8P7HmXgyKnQIou4ifw8
aksdSuofFHHz1G1/pDSRSaTDGHBE51/jPuTZutn/UBeLf9LfE0kyKXJ1XLsX6tIH2rFVZn+P9BT7
gnYLLRBXx+cUYOzEmMh30u6cEZMCykiLwrhLZlf5j7d4mtJHkomsoS/I2SnK2gTb8SJFwkJ+Y9wn
VMcYdyXqKEEn2+5bpH65Ko/4/PG/5QwAvb5TEkVRUzi4Z/U72K6FD44KXce3Guno5tr4vndExQdF
bSir5VgEtB4dlMD7Dt1C8b+zWkQOVKPqkosbZYr3HZKtqNzo9zCSZNRKkjGZg3TuB1rDmLFNzwSo
byR6F5duCBdYCgpoHO9unIJzJpL/og1M1Hpp8z3kVjCiefF7DRLAAtk/4AI5zqp2Ig1mqYo9yBKG
ObAhn5ip+bINb12mERuCxwQ23xTYvpXYvSekBUvIkm94T7bywZleAV7qXgCB7Jk8jJJ4ROgrWJG9
bFmm7XM5cxwz/K3+7V39TbeDT06yJrR4hhBEZGF0cMhF2/pRItEmiEaQhSR5bE7tO2DKYvMtoXuL
EZWVSaw9Kb8wAN+WUbLy8ZmT3FwZq+gtg3bt/oNOhfuxsSnxvPlYONX9/FIHZ8xgXZSYOa+94WTA
UkmEs9cuTJ/PDP2aOwFJtBNOW2JCoKdY7Vtg7InbL1ZlVMRTAXUzeSZ9ZRd4fFwXmzYkXzdo39Qc
bx5SjaGXMplJc2vrFMLN5CexW2vSU0GT9zpFFbbJEw2A2+DHAPTsFMseeXUSTl4Ka0RV2c8DQCKx
NeNaubsuKRnHSqvvm/glJf05NnxFgx+WCaNtTH9G5fnVKNCd99aftfJtLtS68E4gTyc0lwgS2LQ5
nYRmpNMz8iR3aRC4lv9VHMayijF1R8pSMdhwrCxxRdlAYHh51Z61tXhah4rQdHG+mR//KapzxhHt
EILV9YHtrNQ2Ar7cdnodsgOsHDcIfRl8zzEq75JUZVaNQgVuKVbFQKWRjo9zKkyRaEULoCPIwG7y
3YpxzwIkvRUupmArBx9TYFWTtdUp96XAOTKameqqHssAJtKla5Xm8kO7yX2aY4vkdBRJq+u7CEU7
k3BccM0OMFFb7arRTaplx1jibqDLK5O1tTO3O7uLOvRZOaYYB87SPW2iXt17bLQ1aDV9o0zzHkAt
Z9QqL3SWKpXvbBdxvuyXzvY4ehUQ1Y6E7PV8QA9ISFKtM3Io7YaNY28PbHyFCDWeit//fc9vx8WJ
w6Rfg0ZY1qpfPeAHsXXDvKbopcauabq6zr+grd7M/2NgvFpo0R0VdOUmwhKwE1Bm2w00K5/cLFVA
2O/LhLR3gu4rbp7LKsJgd4OzlTkkMIqUbhGWWGTlG7HaF00NaEk3oeoeU77Z2Ea4xOpiEPwM0p2x
RTG3hROhmzjoh2JNaam5hokf3Z6js+LBgsdvTKMjNMm6FBR7zl+mRcRyl5BEeLMD51EDgNI3f0Qc
ScBxx9ccI9c9lHBDc442OQUWum9RC+8AE29wJg4/co063yqiwTQc09dB6YRgw+xzKhADIV9Xhhd2
wnhwbuW87VFf9fqC/ULw9FJM14P6LV6wiZS5mtrS2s8MSoJiqXclCRuEGmSN59kXA46CH7RuyoLE
1D9AJTdweXlCdmPweKjYjhOH1J73/HGOQjTc/ATMcRih/1FxC2Vxpeo8L6Noa9/u/uhghGb6M0Y3
kimMOVb7/Rj/AwXFUpe+yzyRcrrXnDLWjNK248PmMbdWvTc78w9CqEJGiP9ELrbYiX1SAhQ5lgCx
3E+0qW2w36tjYeA2mzNhrfyp4m/3g4/MfHB2om7at1o7cRCCMML5qDJP/fjc01F9Dif5ud0GfcL4
zKIKhTgSDg6vaBbxCjBJiGijKCpCk689pc6daTxPgjuAivdb4ZGHu4UbEp+tmHGdUbMqf9H+m0dv
ndQiEFW6Galc7RRTfW7YN8JrEEPv/Qsl090LQ1V9afgaWxlCmwkfTU0eelAUXu4L7wCwaR0KSGYH
cKpJDKNCMyOiP7OjshAyPGPtZDaN5WS8fSe1t/d/0Iug/OakT9U3lwEdytE/ozhZT+uWu0aFQozT
WZmMKTxNfXxJI0CYSl7DwZAWm1gjPLCVI2fKVD5pIlbCxRcDHXCFBANIoN76boNdJWt1emSEESnE
pMNHgUgRi822BN5cseunkXwD2iakY40u6tJHI2jjlya+5eKnKEFo9ra2ngYP4Q9AP8enD1oAj2sF
jIaL+b5OpBWapVR700yIQ2VhbJUy41TFaSJ1RH9yd92ordHYg+CuW9tmQU0mHv+yrcgmB5tDlmO4
GNXEyIHKvNXPUNWaEHiN5HNRiZQg4S0zuw37DRtY731xCI+ukbG/+UVJPWzo4HKijEIlf2Qy4t8d
aovKjQf9TlSoaR+eHmuOMwfCgpapm/yb1gewzW5TOxDJ7xoZe1TqGE3pCxuikaGiyzPVIFJpK1iF
GeOJk7yhNDVFLZoAfxLSlJcow0ZVjksO6EcWuO0ODlYZ0FCeXW/cs2r9Fxfug+6sFTxqmiZ+AdcE
OGfx553PgiVrcTeFOgHr2aAOkzoWQ+sorcg0rl+YmybhFR6Ps9dr85HyH6iDBVSNuPZfXisIuYX3
lZYet+/hL1qwSWKZZpEuBr7dHeUJDTPmI9y3ZmMBF0ttAKrS8ISNPv7j55rJhxkwl47rbhKCjquG
/qFOkVNYvEEx2GO2A/jrD/g12Nx1T6Yl3kqozZLJ/S/F+XWN1NZGBX6igI81lkI9vpZgG09g7pvi
3O/f9Fqa0hiSzBWdpcCfbCxqzGGUH/e/bXEi/YYpO7o4LmIYAL+EowPSvLMUfqFfP2uAQRDKgFH1
WVFkIrau4A3+d5FlUMoDzYsCenY4QThVtiBO+HKDu0FhtdE1lC4hyu2HKSp/YgYZGxF/cG6UsQh1
GzskkxzZ/8qzm6G6Q7GrzHily6XXDLfNghKuFOhFoioHI9CsAweDZz6a2Skoy6bcLPwdKKrCMUpX
VuYFxVfjP5Sy5dxMJtCrOG4Ssm/Zwa/h/DOIKg03O7D1fP9A3ZN5Mty95v8IgloJAcfw3K12JwZu
8f7raCouGnpfYLnTzmPBdemPoNcLRs1JA8eekUqGjDtQaTRPc8UHba3gR704B3q64wwMckfc1WqH
C4KvMH0JK9Stkep4P8TvCaiSOEqUJonw79CaYaHfA9CLDP48Cb88pPBetLNy5K+U76CWBj4Xv4Z+
NYXACFFBtdJ0XodtoWEv4NLroCXzOiiqlhoS/01oI00fuIV9jjI8pjEx59l+SlpNWaoLHPb2hWYM
3GmVWs41yjcrqT9ZW8qkTNdGLfK6mVA/m40WNN5eL4LGT98sUJeOY4dMNeZVYLhyy61jcAL8q20I
s8E75fV4VUnXKQuZHUD4iDi40LmuC4ddTAwHvz7oH21cbakGCU/qvOOdVaUr6I1xJ95OTYk6KD7q
3/OLq9ThPwzcG+Er9EQn1oYtQhg4heyu+MxVyTVdYESHjeX0qR2lzVcGpxzyf9LMalfVyap1AI8a
YNwB4dqPavFjQCD0Bn92sOjo5I/ZEyTXAbQhfJKxBoO7ufNenH1us9iHg1JUR+MKdDGigmDy/Eas
2Lpc2G8bMNn1VZoCV2A70HmHbkgSOPogEY0pl/vG2e/v11s8I9XQcBcDYvThlU+sObHUb9Hwhzu/
v7uVRjbJ5mdliuN++uaf5Ypv/U/ClGMkVS2mZL/YnSLjMmGK2zNSTvFw0YAF+qELSFgOpW115KcL
fwf9P5PfvSyJ3e4BXSRNsppNz8RcxoQdYVXhfjx3Vc2KDyY8n5Wq7qx5gXil+EAUWVkW05EvGIvN
OtZ2pcwbanO5UvP2rOtbpFsJ/ZfKWhAkA3JoE7DXz2G8qOKbBEpRtnOPyYPP6C0b2UoyS6I2EWXk
LP4p1/nv3uLo8wiF45QY88LTa0Hsipx5JHi06ZV7+JAWiOlxhK5WtLBPgpuHr5TIXUqcbf/byx0n
NlQ2atM/zqzczekdljG923ftYSLh+jCB0bxONvt1V/igowbvGVXG+YqUkLrQK1oCiuzQnhjHvtha
bQF2YF09yQw9AF4BBBLVdNjsnsjUlj8RzD/AtwbbeipCEeUh4qmhvN3LwI/cujFZVV1n/4RAeZcQ
mgwIK70hyim9Qg7WLMGaq/hi4HzbZvvE6mvjokAd00x+4aFVpuHzmRh8rdzfHEVk5fdle1o3C3B4
q270bdhTm2xXIPs1VHe5Wdg9NZzxD1gIX4bWNBDa42uN7seN3fKoJ0YLsnDC1vNssucxXjD6dwbl
vCUBvKIA2SfCf65ja8Dz3G3se51nF7kT+bMNRbMW/1btujt0QXP7jXusDwxNL5gMuAKYAXqHXLr8
mm8OcZfKLrVsXdVGbcOcpgp6XFH1xLA4RlIfGpyQLKzOTP4IeHRGcRmvyukW4pRBK/t649po1FNa
pOj5odRdX5FzzJDMUq+EzJnfh+pjtjWM04EJSp83qNSIiB7H4XVDrmF6X0G3KkhKTdUwGZJwbhzE
xqtxW/y32UpBFubE5WtF72ATUGx8bPkdmDZxrrm1WYSsLFshFFzmPCfDmk2dO2BO2WMnj5/leAj/
xYswofDz7ZzBR65fzdGvfMZNJZ1OKS7CMIhywnhnm1NjOREVrxAJWyRvif2YnBjQkvhWm4DhF3Hq
64ZAOxY8qcb9RP7RqW/fQXzzYmnrc2niopMfy3eb1zJUD4SHDCOnbFd4CiOPfJdxwyM1TPW6B3Dl
jszKedX2QaHk39LzwI6bt+LGwsz+f/opt8D9xjVYt1e9jF9ndppztNofEBxQhzjUK9h+CASlgDhz
Cx67uRgjTSa26LLzE3PZVHnaHFSfUfvmatknOjpnG57jc2DFTS2lYdu63ulyNM55/6HlDlI/rzfR
ANCH03rVoULbYAzLw3Dn7i4ge1OXaKImOIML4LAbVlSZW1SGFW0/Xd+k6IvfrE7ZXjSh0pdy3lJH
jn8L3hTCOHNZlrfEFOGYvAGDdVnShz9gv5ZJpYsK7ucwZ4jjIi+BBXb+O2WnVgLhRoftWLD4RYYN
RiEDFWpVfCc2v0UGbxLkFgmhC3ACTr8WzS5NLhJ0ScMMnEXvuF0HFESDPQJ7JSUx0qCI3UhcJInH
C7HyNMl7gSy9Q9ShN4VXMO7kdwDtoOXSTDPEFtlW1dxpKGYlU6gQ3PL2IJ5/H/gYsXSViceO63fN
ijyS4mJ0JrnOOGDXyQN2dtkPsAHhrhGpGjkzffmzi+iAVUMJZnykL+3zqJdvA5brkmmJ98GWr4BE
13bC4md8Pp0fopDnFN5Mu+vQfiMsnei6kSaBRdip7eaF/4CZSGEsx/zF8Qw+n8P5yM5We0uOA0wM
7taFNmo10SabtSnVfGB8qzQH+RZ03m0927Brkjt1x+FwSW+L7gX/0pLkI6qJ4UFN8mzjFgq5JOF+
jZQRH+6/zyCJAfFgKk7jGZTAgYLjwulqffJOLVkbCJtHP8X/GNWuPIVxMulC7xIPYN0adgeYDL1O
9lBpTNEaF0tKKpROgCXjSmrTszJptwFPkpTjVRtvrXPdsYpmy1EPzRfYMmln7jmDQOY6cEn1z/0x
OHtK89Ibe98rx+UvEdpcBexGeaUeyZOLI0RfPDJaZs3YpmCTZMItv7QI819lPxIIDQKrjcs+OHap
F7dQ9RQ7Vuw32dCUnN6u2HfZexQfhb0iUqTU9vYzHNaaHvs42ts+uv4m0XpV8FYwLXrxBDAbRUu1
7Si0IfYISnZESJwtPkUSGCLXBNM8gqv3lcZa+UszwWGvJMHcS5W4WZ57I82wTfZy6NzQ1qJUJykS
Y/DSBYcv43x619rskPfz/MAEq/6b6q8haMV68710kBXJ63bD7Aa5Qs30z2YYO//Yg6sgBvjtuNZ2
FTBb2Lgtsd9F2zfyIWFPg3GLk+c78i7IiktnGyQzY9fwZpVVXxj+K1LqDFzTpxhXWrkFexNvyzbG
MBysaUCxX6uc1qjEHMjSeF5kGT2C+pxKtwdYXTqoRMykImvGSTbhozooM9tlgpVMa+SHKH47hS5s
NhHocT7ZGJBZGWkW0222m4eBpeOSN0cYtIr6MmfnJ70qvf7PMvQ7IY+Bm1KZzsuQwGyFP6yEBg0S
asSLy3E0U4lcmnDkCQ3IJCfoHCQWSGkLrge+8yftE7cRXDqXl1RLsPQl/nSyguI1+DF16fMTQ7UG
w21Kd6vT2KxqRUqEtkO2EKLe0WjAz8SNXHSLNRskYg7V2fyslPuxOAl+gunbbMnecif99hOQTx/I
3lkbf3S2P6Wan2EQVnGX56JgJdNCjKzrtw7aRhR82wyDTR2deHQ/57HLIih2kxIR8ek9DYwnStxC
W+SeJ8LVYjv7l74loQMIO0wsUZnc+tuF5ymFFHo7/FbX72sbGKWoL9krBZy4RbuAzbh5L4N4D4tx
gnNvMWNSZreRJdCfZBzDMEJL1VdV2sCmGBurdCeCfHtdNSEImn31s2k7ydcAg9OeXMblfoyYnyJc
VBfsbFM9Lt17vJ+6BRpDNGmV5M33OhwKnCUvMoM3jF1PV4iGCj4SDD+2sSQ1FAQYJPGJHd+6CAap
XD9D8NFuM0yGLXOHq3RwcEQ8n27ERuApKYAaBvAGx6B4oNxfVvjzburkjTS5/gyWV4yJcikT53gU
T8lGdN2ZRzL0pgWxCyKbsleFR6eZ/ifTgKIRz0NvGd6EMsBHjo32CHyUrn9REvgnRavRlmi+U647
MaHuwUK5B6cwn/dLFHyhKn29y6GeULwOgvuc/6Ie3DaPKFAWof+ZNAH984IIyjBCmDpLQKN+91Pq
XIYgDMOo2EjaWB92Vl5vd0q9RdXUbiRxvhMytKcJBrbFut+gUeZla4vsO4QW+S87eJFfq9D4iDTk
x6WvdBnkLc+ePqlF8gBa424vPeOUbwnlRaXlgDb42v6CeaghGIp14or2u0bgabyaYKrwzItBzpaV
AbJKrEiQG5a5HGko6DIXWhVIXGHBIyQjo2VjVn6pa7fwbWkHO119SvVdAd/up6V97tjJpIPAlROe
p4PWWP0qUJctI803aI2diP8xO5zphWx6Oo55bEY4kIc0uQgDHwsXY8ypPDTD1DIvUyV7M2T2arny
WCfME2Cde+d/muUtCJ1nOp+lTWB1IfXdWkYKR0WWoi3v3gp9Xln1RGpm+v3XJjyFCoD7av8/BCef
FUTsY6Ad1d0x7xZyO6xoS4ZeZtfg5iAn1WD903vOw3ty45yYiy0NJfT6JBg2oNDDPfnwSnDOWaO/
M9Kg/mCxIq9qdhGT5pG0/JlGnr2RH1ixHKUnwSqRxGgZ8nI53Eyzywllnl8Jk8tfe95Dl78nx3Pt
g1zVSJQtm3ElAESjhbNrVdH8RE863MBbp/VeJaAwK+OcuuAIg0io0M2OtP2gWHwIc+D9aEWgbt4O
hUNdX5C9b22m0PlhblpW/xB0ijuBIJyZuBTB1nJ9KsmDw12U5HmO+G968kTQzo7KKgEIWXOVSRtJ
jk7+VKeHvpIF3lYAFv2ilJL+UKPxXg5w9F8yosIbZWbW+h4+gvAJlrC7/oDtzuKczlUo0JmaPL4Z
eiy3d1YB6djelFzb42MjcnNWhMoNHKWJAIQCMkpWQYPRJ8A1wOVNXtX60KOOfFRgCybuM/8o74Mq
w+efj8OhnLzTdeF6DR5q7jzCGO9CfetbRon/Y7Xd/NWqlIf8fRAmTSNLvbCJSWqrA0eKoFcPgoZp
K9k5JJzMSCO7CPbsUGVn3tdidutk58HuX1hNIW+7MXNZUPU3Q2bth8qldxhJthh+KyjKShydLXAR
dzSKdSJxYCGP+zr/k2Jpr3PrGc3jrXVsFOm8kgC3ihCfH+Z6R1YcBhtpZm7kAiN6rzYEAkGW3TbG
es6akN0tv8Akx16KGF9fj6Uf1liD0i4OVqvLO49BgyzGc9d4ju0YHTZCjDYzY1LxMhpFX5pXkYWt
tUH++bsny0XlkBcSyg5pe9WP7X9x/CFaETHTngkMBxdfowtDjjPlC2/ZyJ/RPA0d2Cv1nDjWKITa
0MtfxxDUkEG8kiORucFa6KVXf0PQUd9r06M1Ned23cXUhxlqkYHcSfLfklVaB+i8+Ccnlgl8TW7z
FCBaDRT805WSN1VsL2TiXGkzwYZY/UxFuiHXD7V3diVcNC4821o9onN2h+8a/+3dRdWBhsKC85FO
PDW6awWIEqiDXtHwweeZ0lJw9kXBMwr/VbnnLrvvYAHOffGtp+i7RXtOdN0CUy0JDmvpTQSF5ba/
e95ca3z60SazA5FFx6MyPovCMHtkUgF2HpCcOS93piHWrG6Ton+v3HwTqmAeKYRRDuCfP5Jf1Kk/
4Ivu+6zwyZi717RIYRqDdNiH1pWGh75zXcummGSPy1hjW3Zo7aJKdVpsLiWs/t/OljNzBXu5ZYNX
zR1+ujbJAZ1X5/y8oBbRhjWCn1x82p5Ll2oO4JnYUeM/nphZtZsFgie/KaqnmeL4Jo/t88p05yu5
m0eXEmiIZLyONB1HR6EezQM+jyCnxKEZoPHJwCq8flln61ROf09E2u8x5O9yb68GM1amhY1sWRcf
vLJsjeUwMDsf4YM27gA0+9H4xh9wtl1ut+dWQsknVYrgR2mKXKBb875HMCq2fQU4hhD/U7xCoOZ3
qt4XqxX8SbZlrEVW49gKj6S4NeC6U0bqf+GsN8SncXDaA7NnWB7rfQtRosQRJSEsdqwGWnflT4ud
DQ9c7ZLt9LThuG/HHVP3mvu40c/kJuC7eV+ugYENBVFN1zjE4KH3uMJLbX+85rxyUoG+Ig0WxY3Z
vjUzTtTBoNXiIG/shaWq8aw5Q2aBMJ8rrWgvEIrQHxt6OgmfSTiGKLRlnlMCAweqy7W9AZFEkAtE
LljfFIL04XFAziAAoP7OchOoQNM+GR/hEBL0XskTjfsVILTs8Tqs5OSSq+8FHdXqan5ra95P5+0x
3Rq1D8y3J/6LV1D5Tp67N1cevOhkTWxUnfsRw85+HYosbPZhwSzaBBs/6i/eThyHmrKLuREBKQj5
3hdb6Wgq3RkojeWU0UI9XrKB1IOpq3EA6VvhkZ0+wF7orccXfyTEj6nB6gWjMQtmzbzGRXW2axoV
ADoISn2DljAKt8wl17t61gWnzQR55DnewqNiZeeHy08NkYE4aEPhqVcKstsvmppNGwq2TmRaoVSV
VwXyVBSxVEnZF9FoKwYCVFzdBgCpZ780SsN7mjJOM1VL4v8/ATMfWo9iOhvFc4hFMLoRABPKwqoI
hinIDf17zy5Qnq1b/UsNdGX8Yp+qaXBM9NfRWf6r1CHPr6cAucw/AVRxVopAH1zgJDMCSKKjdAEs
+YGsx+O1xgae2EhHL2UhhDFl5VQeAHfIXDB1Z6BnJbHFeJ9FieA6Jf3nFBEjp1lK6/hyggZ61cBp
43ekYrxVB4i/rEYeQhLlKysAhX9ox2LInTYBAS+jF5EaMchqDivOybeVmZDCleHK+MRJShLEanfN
eU4ERNHU6ExaixEme9fNaclQWDvYXZGoVRdhlkPPt/UKTXcBY3RFpMhGVUss0hherd/PaKFHFRD7
LU9A49CycSYnCRK7XSRaRpPhlvgeFx97XI9dREx5iGRF+rLgv6SOUtStJTdfXM0spIa0zFh05+eP
cs5cg1I8BO68GKJE9hPo5i/jxC5501xW/qKNDWjza+gaUORMWM6sG8pSu4gM66omxCRrD9HYeqxm
iJuUDQ5T9/RLAubL9ZMsi2/qZqQzun8ImnpLOOzSUK/Jq2BgOQakMikya80OcQN3XRMPgmMANMxO
mvHR5IgJQzpzugfKLFq+rOiPX+wEqeD2SpmiWAh+dww7YdZYM07oI4ULIhQSOi3N5wypkHDeoRA2
7sdJh+CyExXr52nHh0pQr5W8smcfohxBcsZfFbVGcGU1Y7AxZaizyNYhyzXVMtx0d+gb8MvVTNDw
e9leQT5l4ZosRIagKRaKKRqRwI41s0PRTBXnRUYCSEpL+/NmAH+N2wQ9hv7aSJxJPQEX1pLkSFQZ
thHu8ScSb0sC76oCIocGSYuaTxVcaZeDDYOevHk86LyF7hFwV8m6D45kpVBr2MzH1SAqKegobv6Q
jvxLOd6Dmefcng9L6/4baxAqWcaKhZMsvJ4cfcRE2apB1eLBDOSEYXP9T3mHahyspAgiP2CcssPv
zW9vR6WBl2Qx0s/lWwD4nrEAN70+Y9oS1xYliaIuln6e9ueEIHd0hTXo7qLB2mKeNUxL9o6TkwTu
fXvIfF38Gpdw3pGTxeanwA3bx72rkRtJgtTDAlEuXm6gbldbs2oMl4C38ZtTA2g4DQJPw4YHSmkn
ESlb3nqH0fzxUYyLH8trSiokKjMQ/E3D6PCrKvEMdBWaq0LRff9GCnYJAVAW4EnfQKL6sRyWdO46
aPwlpmvqvUaEkFROY/llJXItZD+nwSpUJ5LVlDJ13cPyVHV561yDuPzeCDDRoc6jYB29MdZYpQkb
4urc+SsxkLS2N3zMhtE73Aij+M4bV9r5BDonAcMsj93u28T/9yP6v1itENvnkWyleXVSZZD4C433
dN4i4DO4zedHVoDkd3Qm83SoOcQN70VBRKErZLMpQUs75hVR7PaBRiaY63Jrx11yi4+W3yZzJNRs
3O9jIGwYPGVUcaSVcc11xpqRfOBS+vaLRCpVh3Yswr9c6v5szuTQ1EKwQtw+TAWFcXR91Vh4s2MA
Wqdrww1S6YeNIS1N1Nlv3AY4HgN9ykBCja9oxejcOmQPEmR9AOlsoXzCDwAVYRJ8S02Q9eF3U3dP
UGbiamFq9amufKVZ6aWFIWS7VPCqcYCs14e1Tq9czNa2TGvcGGR1bnA6DHQ5dH2xPlP/lzaQmuh7
btENPu7UuJHAVpXYONRXY86SN3E7NjQIJYBfzWebsNB/KJH41Ek4rTJhBN0xz2ChlXeR7CoSv/6J
9gRkwuidFNJhAuo9b/3jfgnCCQVWYD7FDqHWmsPaLZpNbM76ERLFAelTfwciiiQ5QesB3IcMdrMJ
LuP+qSNpA1HbzHQDA25V/mBL3wl1V5P1H0LHupTMHenoh8DLc1QapN3W0R0QogDLlIqdsZVysIjH
Zn8LpUPBCrTKIBvmP1SH2qXRj0/Q9GFnDot/YpXGSU7qeufyHsCrH2+h1DURPQZXPvHx/2nWYlFY
Lhp75ady36GiosVCXppvyDTKidVa9QPCXA3ZZuKD0oUxmavUpzilOA9tntzMXfPWccjjf1gF8QAo
H0YITgMiNw5AFfjeVKdZ3L4+E+qD0xKNQw200lDNTB9bHzY2S6YhP0oO/dYNRjDY8KmKadH3VyyZ
g+R/463SeD4Z1KPGaEhyniCOBRfj+6fr84/5z0E36iihVpHWvL9Y8gCNPiGZzb5hlCcJovKDnkAH
GaMPNcd1Y4SMkX1JhRFjrpMQut3j1NW4KTMDt1LXXPt5UCAsehJ3nTI13lIBfP1+E5HcpDF2EGPN
Eiw+nl+lF0+9n94XqaQLykYxAOI8G8QlNNFqqjx/yRTAj4nTVMajieiHDgf0ax5JI7GOKg9tPG+b
+m2yzcmMBE04V1bTRs4a+8chXr5VPX28SaS4zSczgiaXMYXfHULNxwGkWVTdcXpkoalwhQTRWUIU
IRkZMmIN+Cpz9XBIagkv3PGn3QoZvlxD6rs36HS82I1sbcnv7wRBH9udrnjcud2ENSOuo/qIV7X9
2KBvjU0PCDtjLSQqK7GiIPZuvS3WeXiLzd/0O/orrlW9rGJ2oBua1+DEnubaezMJ+3/cD3mzMFBY
zi0w4uhdVT9U3VipiChOtbs8eeBh0kW9nU/7Y0VCzEjo6rAD/sXnwplXl6/CRyjIa+r57Vzy6/Nx
pIaxyi8pRVAmpL5gf5hQraabluekOlL/QGSXoDleHoIl6y7ZGhYDYsrzYFcZKqjJPs1vNDZSNyiw
SzsjkPy0oblN3BSKrZVqD7yzHqS41K+OZ5mjLm+3NhgSR/STGlIPLZWMTUD+f6KgYXwBnT5Xbr4r
fJSf+MQN7Q3DONdlZXI2k9wB2rMOwJR43Tefezh6OoGLy181opI/FLR7cwcosUgSDBgN0Ff6PLR/
lheoK5KAaNmcJT4bbFkvzK6hoiR2/PFvnZs6GWpvKvu3aOswAH4/nmAjk5h1RbQry1QQ5dNq5GpJ
UR6lmjz+ylqg4nBhGyA63N1A4MbJT3CNFuWEgp7pIJ2z6D/CHvverz25Br2rMLz8YFRnve5683va
2UOJEOZajNQrWCW8KBUGjuaSLBphAyMnUpJOep1k8y86bsUaavYSbW1YcsKPf0PXyMCXljlKC9OS
ntqE6OpPtVf72SHfbjZbkUE7KETOT8exCkR9gKD9kx0lK/voj0ovv/Cn0ldhzzyLG9iAWg9DyEk1
VsOerF8tzii8x0R3eRZNG8LqzkZ9qNaCYMt+SNnNpt2lbIiVkAVuCs8Lc+wrdXT3dqZ5tJxkbQek
9iTsBqS32P9x2s/7Rlq2KFfiAtfcIykjlyfQzcLXSwTjWEOBOsJCa7eVPL3xiv1aeOdt4y3pjoth
4uxThxXYN1fQ/fV5xSplXlv9LkOR9ZyHdlgG584K8eIKw4m5n9cU0qgEtfQNDNOEiCFmyzJIktHi
/dER50xrv/tPXhO2m4wYUc9IiHwGyfr5JuPZ3dI7AZo5V+fIp3y/2hjfQEmNzwhH68AJYYKlIRHe
R3x+o6GbgxQtMePz/AnwZvDW2aeLJcgOeSQn4QNskMUGV8FIgNpFbiKOwkLzXcs1S0jWGssIoz+s
1HuoP3vHvCiytamyFKO+yKi2vychlRzdI3CUszF7/k9evgt+XUcB2IZ2aJXumPjNESwA7B7d39ja
G1FUjxxBqB8sRb0/CJFvKKOcKIQzTHY6w9qXteCSN5GoclIUINBXTyPwrPMUErres6ExqJYyayuN
UrumsMxBAaPv93tUazw8tmudndO4PVU54jORskKy1qr2BsEfMJZ31kExLGffnsmT53xZycO8n4MF
c0y1fhhX1IGTWND6jQnLi2VHfIWVN4MkLgTFP4jpLauXF8EodhgMAjj+suTxZDsQwOPQbQvuN8Sm
0WHG0qM9J+awNN05aBEDodY7O7hps5B23jeEa7YmXncwrL5Tdv9d2I98u8F51WPLcBUvq9nEpJDC
3ljY8JmG0x6XJuDb7wxE1Mr+sR/6KvjppJB0vR6FoDQPMWunoUTU+TxoNAe0NEhJwZozPvN7JV7W
YxD83irC12wUpBG4cs9rU7D/m4an5eOnp/Bdc+r6iStI+yzHAa1KrJktoslxImc69lTRt7pKPyt3
Zjf2NxQqXk6zHwfYwxjMqrwX33qQrGeIF6xrguZViEU6YoIcyE1DBQ0BAaRF5sjqWqenEONHdNw/
oMmYrexZLerF4EI+jMFnhYr5vkXMWwLgQjbBFb6yGCNzCwJLjls43RsR9HjRzwBRPPB6SeKqpCyA
8Kot7M14nOW/kmlHgzsjbrfapHAeP3rjSIpHQzTDGuQ/wEKEizkWRm265EBe+/RKLORK+QRSjofh
lfjxSFSVDZ9++J+XQ7tR2oO7TrV0fyw64UhR4htU42tdqsXBzmVgLEB93eCwJE7R+GQjHrZGuYLN
S9eHrTZaPj/BmSCpUjS7uaPmh4xxrGbFynbW8h6z5RXVxwwVi1pYx+IsJy+7hb2d70CxO0/fX9iK
+T/2w8Baw3ZqjnyVc7BrQgsEB11yMcU64UTM0VOaZIBVOUqflXTJAoPJgEG84pQull6PCjnQ9ajV
1sc6oitHCm2jkEMUuNszwucaPDhsT+iYEjuREtyKjRYSjw0xW8n8N0RCgAOo2P5CDIuVtz05oB40
6qldwaHFeCOHNb70E6qOnSWbH6N+WZdpxTMwZGnJma+8KCV00oXDN5Tw8nIEFM2SpnqRf/RYlXmS
oxL62MKHcw78l0q2jFxt6L5FRPPowLvmeRgzz/MuNtp8RGg/Fcpp0lVsY91iFOXXffRqLOpwt5vB
xbziCADZ7dl55FotmoumZ3393ojpZSSo1sy7w41ZExBBmE6sieW+L7jMGpNyw82SsYddsAWfe3zM
9/H3nVM3kMOugI8RvRro0ZgO23YxbrjW0x+3sYzB7UfFGlub5f5Y043VwH2Ssd56DtEYakzcgEHq
bXMfXLsdCQ7Hi09IOweW4/K9SoktSlqpc8AtG8L28Fjmpi/uO/PjIQltHSV2aaUznrZ/BF/MA6nX
gTVxAVDp8bSqRH2VI8JHlvVIm/kSNLyw63YwupDTbeZta3XmanM+qU9Ve0S8yElEjDDGu5jzK3/v
oT8C8Cd8f6K9GXSEays64uhk95iPlTElqxjPHMt57bFv+EBASCoFmNB19hX1lzQWKBOskJPNty/h
QiaFUn/oM9Aegsdj6fPOhDsyUnhrinrAKKuk2FvI5ayIdeh1gbzT6YtrO8iWDSEe9QTlncUqGI8k
QyeZv9N3FXEDXMVVcoB7Rx+55zemjUw4KOAOvfCjzaT8uUJAibPxQKsyUUP8JTM351TdkSBo09In
UoMijgNgge9jWmRXGSw3bEanNyDerDvWdAcw+rOg98q+DjNkw9cQIJjLHpq0CMuappaOXFFfz4m9
bDVV+T4L0bSTP16beNs/1RYq7Z3a1uFQy59QAGRgVDq9qyVfaIjg8Im8NZJFpilWulkDTSJiBQkG
DUniaD66tdCd+DD4N249Pyh78e5ZBjptcrcw5kmyCkfWoAtgh8sZLWUl8/RGEIKZGas5LlOUJYR+
RWre04mCGNSfKyBs3coTbk1s5c0sb2CsK33yjx01bnKedi6cG1O7OPKspBXaQ6qgPEWx2RdT2YNN
AAdVWHYCCMzfOVg6FCfu6Kxuh+QUQf/GSMWFeQxJD2rpCr8hzUp9i29qFOXYBVR6bL57p32TRdzd
MxXrKTJFgDkoRN+Zd3UoVRuM5wD+DtCiBJgIlVcGHbBwGWEMMRSftPXVmg4k5LBUi1NOJkwW7rkc
s4uOdfBc0L5hTpAeyS9EEV1IogWNM0OBeGEa44IiWGVRfuoD3CxSGbrbY2uQv7z4ioE3bSxMVenk
kkYu8nUiIQYOysjc60S65o1NITuoANJeKgVXaXWVGrKHGYD942tBrVtqpsfTMBXnffT6Om9C03qT
s3Y9dZSgtoN16DdGg34KBOph7aqXXiqXQbbs4eLIoEOFuKGUk4J9uVzTTIy7gTDj2rAJ4ekudUPX
dTqym1tHhxob2YBaj21lKo97AEeJ3zg/eeVO3ClhGbvmSNxRFyMDYHB8yBmCaoTm8Mu3urH6JJ3T
VCJCsfqsLUPPPcTh8EoNN94B4TsLMrm5H33SqBaDzWFAgttARvtzvglUG2y5YAJeAHX0RmKwtO4C
rukfWVzAw74rCBM+1b2WFqZyPG+izumAMli9PxyDYX8HQJFFDiBHLJNUxEKDuWf3eqz9O5hiDia8
Bq05/gW/gDXFaKHparX1UwNt389a15nNDYbn2ugNPLM8Opy7+oPEKOzD3ObbkIhZ6a4DUsJH9/22
jA0xb3+MAeQHySmsSTFlAk9fUXNYXXG9fO2WPmJHWAmOqppl6MMQmLohPKj9X1UxvAxW/VbsWliO
4POsqOYsvUCeIBYfQx9lfsXK08zPXtHRuMn1YvOYT5tyHARBtPsTTt4AqJKD23tM2ElobSFGTVVF
w8r0gFTcpTPkUfraynau8qZCoxiWLOdRqg7FCwEc8sdHMMTwGA0LKvKceWeVV6WifDgz2/ElyNCJ
YuNZSyPnyaz4z6OyN4ikrQlrOCKcme0NrLR2kM13ssFzGzEYr/EBR2bSpKOJ23CCtIGIYqyZk2Sg
k29TTNRvluxqs7WtfM0WOfzp9Y76KYqIaCTcfydFrh6BXKwOxolgCZ1aBYavvwC9PHb2TyROLpF3
SEHy1W/eW8jB1Af9ZUBvEWcgFdQqKXvMicPTzHxHw6T0hE0F8KNRaTMEDiU5FnNYQ3/c3iI7DWF6
kv6EU44PFkYzT0xv61Rc3CP2zY2GSYHdJndcf7qWkZRlNfmxKz3FdFlerW4nX+1t/QT5zZviTY3S
jU/gX29598YP0MHU059kvem010GIYD/bNwznSp10epoi1T70etcSLBi+WyGqKYAz+4m49fuRWpnZ
zUW28g2YYrMM5wxmWXPLNT9dR5Ftr9Igffk268WSLZmGBe2jtevfyxhbLFXahMCRPFl00amR4wiL
S3p+/mvrASiMXcUYFNo4EOVZuNwfPn+KJ9TAsefMHIePR9A580rzv/tqJwu12wcc1XKFT9Uv3x9E
M7Hyj4Bha4CyyaZOWd3q3/oMDWq+E6zXI+oPoP7b0CUZ8l39SXfEzVe+rgCR8EVqvVtmetUGh7XE
xwq9G3hT8AMMWrOLDMZJNAUd6D6uIxpdRDLrFadSI2MhsvTSCclqFBnVavxBkxtuUH+WDrM4cdEk
5O5YhCf8d2LnHwtXlEqyF5UqElzrvJ/YGpvJ68WqrC8sfOJG24BZ5Toyqiq5vueeOD5AuDP3ep3G
yUIAd+ZOITgcCpYrp3PDj5N7l+/7I4zJHNO/QiBOW26RsLpy8KUd8GLAgp/HZv4z5e7JC21/5bD1
n5Su65G2/HcVdEJ1LsiLH1wHjIi8rX6Ysv6Fy2JtXAJNrmkphzde1XMU7xjb5NZwnwP7JS9xdl+v
oiUan+F6c8H3N3EGPGHSpTS6q4pZXxGmuhljpgjzNZj8VK3uFbdYVAE+Hraf5MWdSIkXSeOoWX5I
WDeiQC55DQsu+3zmC6BTpiQiXEjOuFmNsWDlYfbOt0kjGkuLRZY6l7ggZZ1VdaPjAWXBE887h856
5iQ5sZ8oZ8kZw95RDef2YzF9ZzK9tWNe3fgUXfzc2t1/0kT9C4SyiQJA2D5gAVe8dW1MvFVZM3H/
ZybwyPn0n8YMhZi55xNHhVaqhfdwZu5rqS3BG/Omg3ym/cfLy8zdKXQ+hNbejRDx7Xm3t231qY3a
mIu/AJ+hbCOavPt451v8PXaaRME1vd3A8xoZUTtJ6xSRNm6ubCJtMycGgpgZ45VAFwzjTvgjD0Rf
kzGfhc6lVWzJ2dHXJudtPCnqkyHm5l7Ao1jbNWnaj+bsi4+dh08dg0b0azz6I/zURekqB77zZRJl
FfLZlLB8aCgFLDlGCngoaOxVINsIbn/NSt+xp4WM59OHROLd8U73Cul8/gNUgRgLW4NGm+wL1qS/
CjCVCNnQ0X/+YpwtAGLY3F1kFWUCLSIAXRw2PPOzgFUtsV9W4ZyJYMrv2s2LzPHXd9Tmi8y7Vkqd
ZtZwsMV+9jcPqy2UBAblkhx2eQj2iEu9RSTOt7IAulU1ZwX/8twEulMTwDrAyInnUtTqxXyUt6kT
t2MAuR94lkejUBAGX1L96MWqLVsE2/nnQGcdRBZC4Kb4xp+o39MHAmpogN/dBUTEmUwQPbbIcoY3
25bfbR+JOznGDPxZvxI70gUFgU/oHTa+Zaninx2kbmxVMcMgYRZX97xuNFh1WrfSsTatgNNCXiWC
6AGqvXkPYXd5QWgf4HCUBPrvWn2j3bbexLR1sGWUDzd0rbf6SDyeQykS8pf/01m059q5kLcvZhJJ
fnIkbcc/aa/uCbNrEHYNHiVyhvgmajBFNfhtN2Rma91ZpK+vlmkjGZEFNno3HesDxS9/7wUpMbES
TovkWXBUcoUMZptpZBgW3MPXil+tnJ/jP0sU71eHkM5ayBWCFp70TdfvXwbdDeQzvir+sdohmHEV
XTHpORrddSJOBl4Jht7liYnin2pHAw8yeCnD9d77Uo3wHMpd/RpdCGAjYBTro70RXYpy1zUM3OiX
JMnXuJRJ0+R6H7i/m+HC6qq/igOW/O1rybXEsNsmzgHcBSVaHWbl8BodHBBW3NWp9X7RAnFTHa1u
hkuFiM+cc47HKVNNJjIJ4Chry/nJn1AbtXGUwoiuOCu46XJYfp8Xy2k9Joqdnm9eA7I5Ez4KCZUm
Kqahm82+4WWHP0y4y9zTQGCXtdaLyhNtW4Ss4bnlCRsXElyGkkRgqH6xGZeY7PFyxlSRPJ/Rgg+f
dHG7VE/xYWMGzrgN5YuwXgNOd0ADwT928dDN3cXwjlSPanr9yyX9SwfaoSh7hDEJLUhN132wLH4x
Fpv/tHra+PWntsxr4/BjEftL2EGxeov1qJuzYt3IutqfvkitEfEmsrEhp89+6yd47gZECnAjE8R5
DEhUkaTN3o7RwcLYZb6tkfnABCil9J0xFGGvZc8F0veC5Ms1nXcJFJbtBhg1AaB95Hy5O1/Q/XmF
2p1HWl626bOXSVRg8Hh42OP/HHKnx2idHtpolzGswm4ovDA82MFvGPhbdHlpTGpXTJYB/l0Q3Cni
33VslbRrwDQmOkNAfOZQb7xDSBsIvgvDqL10fUTHB8baRq0dcO7zCycr1ZeO2luTi8rtlUAZQWWS
S4nn/+Qxg+KZq7ilL7s7Oo5uQK0Vag8ew2fmMnYX/3MRTniK+qb8RnVP/g954zfPJSFNtkrKuesi
Lk3ixyiipZNZ53Ui+LnYlGYNRSGofo00n8Wp3Mlveu26gHcRT4XGMtD97cOm4eMMcZAQVxXputoP
tEDneBA/liliD6wkwsUqqJZrrfpXZu45T5AcrS35DmZFX3G5HmiLVjPbML8BUC9ftRuvzy+W0CQf
wK2mSK2/3ItYDdQS0jW3lE8xMo/Vvqrt7HGIWRRdVfgV+wgdSA+CXmcZ0ljy4mrX3ZCwWWIizSxT
tP+kksg0cf2DncgtRTAHLvWg9JUUK9Gath2b+2QhAr8gLLCcHVMFvsW0Whbti0OQ1+YYwWZ/WJIN
i1dikG2RMrW7+ZRNdjblS09jDB7ixiuLDDepntWP1szutKAi+plz3hE0R5iIOc4TifEWaIr9tLYO
VbTqx4NFI9MOYjILTO2uSdoPoelZdMNhqUDr/uhRYLJBM1Dbrm0Km0hlSq/HQENbVN7wIywK3wxo
6bkhLwr/Ok1o4C58/pzHHXtMgQcu4dzWsiIxUFRlwZQKP/Zrj874GEidMkcZS6UdUEPeQsiX5G3Q
mafPuyifAiCEU6Fcleo4izd6MrNkKRzABYI2tDcjzL0PQ3ZzWOm7iHHXzPZDprsajkwTzAdgy7P1
ddkbbEwq+BGd0FJuE9l2VaZ+2Ao7S/gMbwgc3Mb2A7fEcN1z9i0NkM6QTV5G8oASdLAZFanJsXgP
Bd8JiWCH/tH364K/dax89JRTcIy6NjpRs6ikd95VD0Kbmf5t7mNYtfjZsfzxEL71FDyEqVaH4QM4
774E3RBXsDwEbKCeOZhHUqHQnEfyKsnrMy9LfVNkri47xRc2skGh1JzQE2oYcLX02jImedic/VYq
iNVlMHKZLIEXiJOakYnGbhoPlP6aGhilwAiDyVqpytrCedKhV1t/UgAosv9buq/JlVeQkDX8KITU
jwXd3dnxXFtFQA82n86b4fDv40tosDPbBsU9L24O83wScxyncLlCK10d81/ctcvZDfDGoNxUD2/s
bLx0dRxng6cmODGep04orZx/FPPVc1bqQdeqNQ8ysjusBSnMgzARd7/OYqH0MCjlg5ovvOBa9IPx
tdtzZuLg0a6VG1zM72UWbXlB+/OPS97B9kg4oeS6FkX9YLq3WNy3L3cOlEVW0OM6qbkneuoV9KmX
WPCXkd7vNQfZM2iqPQyZ+pYYv1RxEiocxQ1yEKujYOmWwWJ3FQh6g5R2qF4xiiBxcFjDvKHflShU
aKaZCrO/6nijJXCmPhSSeDHtILjJGon70dkMBlRMfqp59JH+7Xs4t41daSWwQCw5jclxLpWWnd61
cpfb3mDuBOz6fWVQeFQFnXj+ly1gF1YNW9KgOtEfYWuT8fQUXXMVrOFq1Hg63LxyvzjLomzoqjdP
CEzo5BhtRtn7vRg49bq7WKpRQbCS9JaL+B9GeyaS8SOgwq3dHlj/iHmUjPYdFxNmzC85vDM6B6wZ
bNKUW6hjRUS0/jEqoegkEJDBUPtHIe1i+Xk5cM78y9DkW3E7ZnvehUp4PkU33sUPtJZ4TZOzKMoj
c2DWrdK2Wgk5Yp/5boBva2ecdJEadnFmIaq5Bj5VSn5Iqv6Y5El5hKxBROARmZTVLGv5hceHix+M
nK38lh2md60c6Wf6j6i6MP8WInIrQ8ePlvhK9f9dt/oYq8U+ylWo/A9/CGD1+UoFesABnX3cODJq
wNfpWEVxLSlxirqpKWGedaIwosAHFsc2Cvdg0eGiEBApPViYq6Lq6lYZQuPccD9ddqKb7o5IA0XK
MBkh8CDIH7U448Fb7TB2hk0q3qCe/I6mD0lpPR0Ij26QRTIzVgfhxUDqQXStaXaRaveEFQkHTRuT
66R9IpK090+jMvjI7oRHZSOAPsWjiPCtT8iXgUWmYBFPgtgNRc5AQt3pH0/ryDqmZp73f2AvQVJU
w/Iv4qxwLzwPlBDX6GpRi3fSSDWGVfFWkHQ2s981EBsS+kFx9UNtEub+25bkYW/MfYgkQmr6RrmL
aWUiI8GUE8SKQ9ZET/PwKTQKvgrD4GP92JmptOzGZtxVjctOYRB92Vy8wlp7LgomnPbtzD3pwWtI
MsNH1Y7TTSF7nvkzFOZ1C2cfglncKXPrpjxT4E4sb78xUbUw5tTT51TwcXnX8FrgEObAs25fHQ+G
z4i1ivCnHb8D5Np0W7f1j9WgWZpMA1/6d+PqatBiXa26mYHfCdtSvFJkdMjsHAdCiT2XTZKg3dwq
Gili0D1v7rjL1phN6Qt18J70Z4i5OJd+FpJaKj6m0agiwMLp3YznQc9CPqW6VQMy/G/8mZ7b0J4P
hU18EOkqEU1Dm/bA6f5gEGi3l8f71l3AhMwa14WmZcz3mrZqRk0uE3gP/irxZPM3TUYKQEnODlWW
AYZYScMpiYR87NUYrFsfH7j8AaB4fZplJY3HMH/uALLg6XXXgv1Xc6qZiswFdbxoWJZQGhN7prl/
oXtM2+9G+Ax30JxfxXgpCeyWXgfREX7xpp9Ky0h/HRyH6oD5iJ01L6H8w/u0k+e/zHMvkylFidOm
RzhOjdCnbifRakj+Q/lvlHwt1IJF05xR0hvTNxKjiHxgfTBHoLtxUrmgH6A7iaR7q/+j8Yz8A/eD
voU5VtLBLFXr0xQX5T2M2seewyLN1xBGyWdJJj3vsFn5dipT/Vp2nTMubPnykdpoGFvmIPwx+60L
epZfesqfp8UJnkLGDu6iNDBONXo5SVnk4ALSMIsVYoNRt9xTR6V0lcNFlzQQRHiuzAux5Z95RW6v
xJ8Zvh9kNCEN6pZszYeAkO9QEnl4yiv2x2dHdVS69z1PMx/sjibBWlUJ/sYD3URVZz6AeD3l4XEN
tkO78xJy21fNrz3cddcNoxU9KfnzAX2gNjL7HWZm6tDqSEvwaSPgm8PNXn7trma+3mH0E0WMXTdt
W8ekQdhaXZ3THveA338/dbLxUiW9wjloA15XDGDuIAJ3LnSZ/4qi0duvgP7yODmRqgE+twl/GjSM
Dh/vUmHRiMfqd6+bC9ju+q7RbqM6kLiItM0CUzDFPo8z8vZZzASOn/hJ9lT9keISjzwepNU5Vzl9
j0DoYnq37BUWLmpIUUMYrfglEG7XLLYMPnizlBollLiD8bZRHoylj2J0MiTLOHQotqTmQEDmpZLI
CB968RnHz8yQ1s/M5zTVrzLkKuBP4UminZ33lkIWfdfzq1DcxICkKuRSK3e4YsCX6fopvpVEUBJn
U8M4ZFKxrZjR4AoDqa06eM8I3Gd21oJ+t2GN5fZVfTw7viIfg9D3/vyiNiNOZmWhpDTd/LjhVpx0
+6AKiYJI0clMpIZMC4WWoRDMDdLtugmPr+WOxxB1FC2pasEUb7pgK9VxZj82OMIYz1CL4VxWInTo
ku41MrqOr4o6Ei6ZGb82CsGZli5BWyQtUWIhI/TKyFf6/c9tO6YwG9JFlnAUWT53VtjAtFsYN0R3
I7Ff3Qxp7ed26j7V0+7uAw1pcHCrUkFrCViv15qqyEYJZnj5E/5Tu9oEgnacwVaG9tD9qUfLty6N
owpXt7wVw37vuZJbtr+dj+1myoYvycaa8gOPd/DOLJgoJV9Yic/wp7uWsWmnAZbhT4mtI1XLLKnA
i60v1dfqmLz+HkQDoKPAXcfnmk96lQgU8wGzhiEEt6jBRauriO+Se11n8z3RY0Bk00FgqM5CSRV8
zA35N4jD1/PlcCbtj7IN2TwqpHnBCpFCqPgrtsKFFZn7+4YoDos1JPTG4UzghXPWjOP+W272kMYD
ouNdmQZS6b/GaL52McWjiY3o6tmgM1Si1ZfbKf/+5hsGFdUebbSfbCGf8CaFo3BsRa+vY0ad+MQE
/5mxI/sj1q4XRwoSiF1UjUmChSEh7H+OUvu9VlSo3lFB9mS/YRPUI1sVKCOS30X3gJFQwT6VfYkz
hLM+vFE6IC9FPtxLOOXodh4XSrDXccY1V9YQ6exXVkgUMjAPMoFrtqNPIxr+F1W0gzbW6Co+ATKq
NH3MJEvITs68QgWVzb1rlIfjmLnhtBw3yB5EzxUm5BIr0mIXaRpM/eCbzJpMnjC72XAJ50J8muEj
L25eZ2U7gFf0OPVnR2wCbRK67aLq7E6gzvlJhc2EoSuH3gCFi+7u+TYs0nGRcF/WHRTjSoz329vO
0ftKAwQ0z5xC92xWDGMkX5LmGooxyBcabSHqJqGqOfue40kQRS+REaGv5ocfq0TdkF+NnlzGw868
b8qAN0viO2D5mKLNzhF6PLDitC9TU3j/TldnabjNXl8wiB98Ys0kckgrcW+Da67JlJDN5kL1b5cq
XHdAmGkb4K2xsMpUNREdhiucJoxgEwZ3tP74mQwYPP0Ky1n37Yfh73fHMC27lHlP4HjyWBA2EckB
P5n7RMh7rVbSnynKo0mjooeIRCyTZt1bVuhI0Q4fsfDiulutUu0ZC9qKIqFXGGxwdK4brWD5zi0J
NgmTEctMp0mG9yH95zKgmbTpoeZr8WopLcLHjF9ipMcmjgYBHXjewQth9humYzcIM51Q0/OHpmUH
k5ht0pM3TcAu35rA5BKJ3qNgeDuHgh5SKaRfRV6O6l6Cpbek3h8tgWsrPMOpb3Ibni9CdVBLAW0P
agIb1gVqzvx3lt7SJyDwsy8PCDLQfUFMZzPEP6Z14/2kOf28x4SPdtIOkAv6zzY4/l1V9hF0OKBv
d+WWJXRy2t4IpgKaelsBz7eHp6TbYtaLDViv7DO+HMZSWF1lNBW0Z9DnVRn2wxng1ssxufYKpK1X
d6Y/tvAg63dP/YatXU+78xkz1vHjeeqGez8QvsPkJ/VM6ytj+2o2jyYUS72PYfcLb6A2j4jHL67B
JkzUlBVRpAaLJdWEulZgmALWdqCZC5CfXHWFUORj3C+4itGPzTPKO1XtLY1+EwD+i2z96cKZf7/W
e0R41LQnYJH0yLlhIWqGyegPvZn5ZLLhEYN9/Hn8+UbKIQMxScpdhWsqnTZkenX1vS+GLDJFJ5Oe
Qi9vnj4mvm7vnD2lJCbOY3RpugS7arGN7dXpSWTTRKac4OTi5BVSTjmtkCXJediojGXFbwkWlDvr
r/CjitWfFlxf1YrvoMtauhWDhqrVwtfhDpbvxLEKRYxP9vOlk7xazwzqyLhfmr3wIs1+JuzwoIxx
DWOXXs+iCBkmSzctLebm28+RCcv0lDO6LemA7DJ5GHzkv4YUVfbmo9DTEVC2ddXcbmnF2n1/UYxo
KvyWOavJU3qU3fGkCDWvBOPIDAfX5vBMDCdCrkF9btSDeP/5D316L6K1/YYbzSUaIsj1Sj8XJOfE
a90rw5GEAGfZ2KX+WIRMzzVR335sHjg+XB90gH7YUeM/7YoIw7Q1GEfJQvFGYeToPuOVz0DwisX2
LOQlGgshFBGp3pQLuGeYPCkE63JslxD/rHegNcbh9XiTl2yDk0KfeV8sdWVc7pnU+6qjQwZFkjwz
u+mQrNIMObpTkD3i+whrSJpdl1ucsccaX/4ewUM5QeJ+ESJxDBRql0ICkUyBPVmkiaF8c/q9SfLe
KqInu/fMvysVSytXmbNq6FvsQ/ZjxqfYW3bGFEv7lDcvOHxnoQ118+R7RpUt3PCKSgr1SVqlgZbn
qyjp9U9vTZJyAiwrMI+uFR11Ut0V8hqOC+luxKXTj+XQXEsk/WVka2gBi4jU+/2wHfp5t6+pJCye
vDJl8FnVXl9czwTl2b8iJp5LvBvxpSQuzRl+IYUlW6fUijVKPJNISLrG6fKlgXF7zwsuDGRaUl3g
SG7ushMwdLpZIe/EBLAloUYAHOHBX6W9pRI/HMvtlaKLbOcpWc1J/Lw/G/GTRFdxlMB+lpGH1lrR
MiyYuNgj2954tX5R9jKkSLK/nXLcEUPX0TDV4ijW7dpq1KTSbAWy0Jt+4na3LFjTRcFB+w8ca1wn
NGHt8l0MxC/w/1m/hJTI7jzDshh5F8GCSJbXD0nK8VYahX9bh42dKNPCpVAcr2Fot2MzeiGfXQGT
6I0ZKaovVgXKupnN9cqTJEiwIIUeZtaw8AH29dxiVscRBrb5SD1xRGSWjszshlEGDzVfcmAAsPCL
bNhvPaH0pJLy/ZwbrncAP/xCFAMBoJV48MRp2IZGL/6Bbq+St3IPac8QJ06W9cn8Bng+ooT8GWOD
cT/kYT87FAlFVxzb4eABmI4ypaT76GQXSjqh478cRU56XADcFnKDOgws/c8EAcv21iVrwo3cFv63
VU1To+DXhwbZVNdORLlsW9QFe2Sr7ZwFFehB85Qny4095DYajIhlgD/5N7ee+cEG+mgC3PolYPr7
IhdHdYb4SaXAosEGe997gYOAqQ0sa6g1SR++KKVL+c6ESI7pWEk/aiD6YQDnHeWHgtgE/BdIFtMe
lPfzvg2HLW4BEkvGRBHxC7kVE0AhMlDcAmsBCgDPhAlnVyivJzdE10DPs7ghgY9Q3Ie6xcIDezPZ
LMqzGQvcHkvAIswC098wyGkAhXDIBNizd/YisMyWNvElUkYnljchWe5XMMNFG0+mebwqBlwdlg3o
9IrIwklcXuRZBC0LjPj1oe22qTqxzG7ZSJ7GTB9/pQWgnOtvFpiTVVtO2CmTWbcMuV9f1evZLMy5
DrhdOGzG6ZB/x8dLk8u6rxTpI/4zz/HxFlLCj62RbX4IW2gzAiUY1a9gLOVUMRmJrY7zHfwZjASQ
ZU9zbFnKwU5WDPM4JnWhJNo+UvLNK/4H+yniIquL4g9e7YbAaG8jtmS/Vj/bv1D3WbxkFQ/S3hB7
YwzL0qHXJ3KtvAxJqk0h8Z4xc/lidvReURv1tKB/kv1H+G9zq6SZ+tzOr3e+0CdYTsM+sEvGK969
l9pHanEKR3mg7mYpfyZmvzx0pAuIf3McLBj+uMwb4bXhlGLgPfTjMcO5UIJx/ctAEcIthOU47lmW
7G3OwOw86YXooUOW9S7YH9Y0KSKBQyZARj0Mia9Az4ZtUYuOTED59s4tItL+1tlDoF4JgtXQSLiy
B+5iTbtwQ7Zb9B0zeLZhBQ/hDr7XXp07DUAqC9HUtRmw2RimcDJBtJ/FELcJrdDzSN1fOLCvolCr
dYFcCYIGrDY6JSspT4S6ewEh8zbO/f2x8E1DN5KvibrM5Hpba0n4N4bq8GxOH8S5GSMIu3U7p7pj
PCJ9i5dn8ChTd+nhvqf6Jt8Mcljpm1wkPJogOmEEeLPt1tdyarznRJ9YBGNNHLRa5AQKNX3izJMF
9aB319xZPJ+t6OaPdIfbJ7E2nHL1klGG04VHLqkmRxBe9n7Ofzo4AnSb02JDrqfigjkZRKP7FFG7
iXeCNCZg9NZU/eP2Uwx67QxtrNvOB9Pxky/5OjemYRuJIPulaQ415/8NU+vjlOz3QJ3AM1L0bBMQ
fSe23nXBBgAMU7M5ARLlB+bvCyPZDMSNCmISrUNlV22ZEY3cdf0Bmhmu/mOuwyoPN5LHpxDd0A+A
M+aYwpKQRzGis1mdT2nbR1V2Gy3QZinVvaWM5PRGxrl4Yf+EQQV82Ikh0HbLqUDj5YaXJZZrd5VI
WzCUzQb1qJut4Fx4ntLoFuTStv0UTZuGBNWV7r/wiGFjyAP5U74nT6N2ztJa9ZGfluRCvsW0cSjO
vIuzyb7+3NRABx3d23xLMv+aLvcTwk2DJXVCElqv6vyiRLyZG+pZLYsJZK1ktEQIF5dP47wPQUf+
5YMygYHllvNdgjgZ1JinkHTb/KTWePUeP+8GEp1hr+hbfBZrlIv0EkLdJeYTZK3X+bMeD5IhGngm
3xINxMtaH3l+ORACHb+Sb6ecLGGx22ChJAQ+88Ise7K70Gp6xJMUgljDXwOsg/Ul+CWxPfVYeaj4
OAOp33JbapBEHjwGoYIA0DFLKKqVkOdnsf0eOaVzK360jurb6Lw7xSOiJ/3arSecNyUcOPfTQyLQ
1CcTZ3IQBpwGoCnrYbAp42N0Bp2JnVHv11J4y5QRcYmVqF9S555sRlRWb9Sc9Kr871LgJVaNOt7w
ljlzwEzXogIT/xv14OISGMrVmmlcRruqgFSdl45YF7eZmLMCqPkGx3rHbXNQAcsVMupSRBT0UHK4
DsVZAN5V66b6T7YwZCwWWGy8uc6UwJ/w/6wjtbBDSyq2XNTTiNfmlN8FYvWGmqvptSYdZwiFKnDh
ngG68nYkmztqCi/VmOraP4+VIPNVyhme4FKUOOWyhvraRcJZXYw1mgDPLk3hAlxBjgJHQJRNciWs
wqJaoJxhHNwpP3jkxT8WEgzBy2OlvbZMivjT5LBlAgLC0Krp/7IYtUMzzGt/VW+2z2+EMal0zueK
ehWYiLCZhMZ2R9/MeWD10BoabS2xrUuW3qSVERIBhhVk3H7nodi4bNV27sk32BVkoY/RlVE1XuI6
jfF+7Qz80xW464Qm7pc8eDjCxm4G32UPq1IiBM5bTdv7phQMmuw9yXu9TMorRqkWowBk4P47vI6l
v4W1hHIec7WLNHI3kaw052peLpRNcObZpRybHQ9BlKFTAxzQz2bI0XVPgWuZjlGeMOMwTTYRUZFx
s1OBkLAXzj4E2N9HqYL8ooIu7We8ADIUwU1goHIDiCEMQETMEpFEcNAxL4e/Zezc0b0157W69TCf
elOf/em0JgDUeCTG5IhLTp1YuCVDlH9TBQ6kpW8wP8RMzQr/pSUZ8WUscnWA+PBt/dmLEn+Wmjsm
sYtQgy9uT2SGEkGX/oMwwxwgVv+40FJI8uuV42NPrmgxR5n1kwIREYMTRHI2njlYrWXkVqFm1V3l
e0Yx8mvtjpOQeQb/clTIRIUlrmwjrN2uv82hVtrewvxWhfQXPKbogUdHsVljilhvaiIZR0RxyY78
bA8O4U/+NdwoVZrv61VdNfgSmbIS6w7czasZYeGaJ5AYflKlynzK8hT6zoC5p1nSHc+JvOIlqhO2
46w93UkkXjf5tGYXRaY92cbdfmx4IpDEsHNs9NN/a6bTxuT9zF46f7ntWGU3jSNHn/PgjNDd3qa8
D8lptjFL1lQjJ7aTmVg5HZtSEUl07m5AJCIa68AS0DoHU/Lqk+htykJ1Roar46duARxJctml5NSB
5lksUiPIi2WnE0pRnfhSgcQsGJYQnPZII+2Vgmlmeh+/sv78/54qwAtLzhstoZRVrq+edNI5qrBc
ufq6Irwv+wdDiKEAg8V5xh5C/DhiQmIZvaRdZJFexES5Us+MZ0LfUTBF0U4w0tUBU1IhElLK/dVU
CN56ColB174w0k90hV2MEIJhDEDzIy7CPiB5Go7G7eson0IB9fX9LnVce8lQPUBFEDxQIKyCGD4H
DUnHIhpr79Mm4+PjBSePyBADo+w9I90tt8Dgrte2XUWlNTbwxO6qIcqJsywfqeSQg2ZZ1k2cbg2+
BGruBbPslWiIC1/z+ITE4oQ7rQnOc0XAmxfQGkZPlj5bN5vKxI+Itst2JpbDM401zPROE33mZpRx
B+dK78F4Bh11Z5Ywm8uNEdILRX6WYNyMCa5BFzh1eB+nQDb8kqWEzsYyzHtTGbs94vB9Api9uTd0
RGP43ED/lJZIqkAbijUFQDLTZ98DwIN9mzmnsR46w2BvzEt9Aer521VxvESD9oJbqTnMSpAt/iCf
M6QWFSYuiUrc2VCqr9X7Ka8zQtg/lGEkf/7e9rnKiVdMbQpqkOcX/1E5YA8QX1LkzMJLuOArSm9f
nqEo7l4N8eSBHNDoMd6a+BNGtihQscBx5toLIjpMbQZZKrZiDjX4E0RVevXgurO+cEiF3gE0jdRm
PCgZXpIcnRdOAKRMwhZ8pMGJ5uTRa15IZXMV+EcFCHzN9Dx0ax6jbCQHSR9+qm/mZOT4ujvitG7J
Gq/aG5bFEEwZODv57yzGB2sj6pNf1LRMHCvVXOAipRaPhRXJvfN/DwhHkgrgMKQ+YEBNO3ZiEvxA
5GFFFSdwDgxrnDMKPyRbLYgnvXWvGjgAqHOHWi9he6GyfWqdNFvDGn7S1zs1DKriufpfpy2G87hs
xX/CaMtXEpwPSLHyeqy+3BYkZ4iK8EfqAdLC1760SiUnI3RXdsXdDDKuK067q8ZUy8LLidan16JZ
fm/hD5XvVgCxLE3i4SbZpWoU4JPOrtidG+Fj9UJ3YNi93ROR7MXb3SzAUsWyKd8AWt0+zMkFRJzk
OARShUkq2FBglU8iG5Vww5cV3/1CqS2LDsmXM9ULRqzRxk5KkzCeG5TEGF1OBY/dvemyuQWH4vC6
vXbo8Sw+b58tqwNgEKNiRO+CoZYEZz1uSlX9A/q0G5ApEf/Xiy3Q8PqMVCsA2Y7Lk3A29YHrI5Aa
ungCkREWl9vD1B5DmD5e/gHJhE+IWUht357dQYDFBWhVtJm0P5thl+GMvkuyeIx46tE97YWP+jEe
RTxAwfTuEPy4EjPHaFvQuS5BiLy+Rg7DBLGUkzO7txMjkQ7pGBGMqiNcccX2dlc10dRbgaQSsUqN
+0pML/3rqrXOomMbAw0ony2wkqh+iRb4cz8am+EXQavFxrIY85jsT8vRFXALBSk7qUNLE6rLEFsQ
aWT8ptWpZKwMLGhymdb6u0ZSX5YD/WFDXofCBZwUj/Wb1yyM/FElt2+XLTiMU9ffPDDbj219eckE
GGNDjfJpxr+1YzwuG67QkejxX5l2OJDQktTXWl1smPm9tuQXtTis5DDgknJQvhj/UjRxhL60vAEq
llquBQHbCse7edJ//FchAPJEXhiWlDtkNJCf38uONk49PfehKTHFk2+N6ZzpMcJGTtziQ9ZC6RZH
alB9Ul9cBWoj/zjcTmZMI6BDPsN9yS/CmPbbSsC0nxb6vqO2Vgu2lq/x89Dn/vzNGOvIUc5QAe09
WGkt84VB60VWY78YmbxGb1DwQodnaRGvHvcueRF2sqq/zPaIipuHmfN35t/EWRdK2p5uzxxueiHW
mzp+BHUl2yhDFcpjeRmQvP6vZSd24uzOQ8NGxKXat0DxZnizhXc2iUy5Pbmkz/CTU4Zv9ERtONN2
mH+RSO0TdbuV3uftEYcR6AUoIfBQ8QSGI3f1StR8Uw+KV+LE744Fvs5PP4NBbvZ8xUOuJS7RCxNo
DD+8qCxR6r9CnfsG/6j/Td8XidqII0tHJBF7d6UZOmK51OyMbkSmzImR9Kgdrbaez7drWJV/lmOI
hBZz9lyTOSP1ry77aEVt3TCT5QU2WM2hcIdJhV47ZXoA9f76WSS5KSjr9l2PjLlwotlFW50kpkKJ
YLg5syVGdsHRwVyFl/wEhFbjkC4915tKrwFDmr3mOrTy1xvOteSeI1HVVqO0NTQXqKZwizQCd3/H
J9QMiM6G6yMh/xF1xE1lfY8qVKzyieIlkxRzCrp7V7be4+uh5wkqxhSXEHeDRInxQ7G2ycp10+1a
3c9vesWQ+WOmWTFJytP1F1tXURg14cfTGBMPeox3KHNSp7XDEQ4u33oG52M3ou7XAm4WgRpYt/xN
fR2PEc1TjgW68HcgAKaBwdCw3XxSDxWCf91lydCfg/42sMS+CjcfUkc+R5uzRlAX6dE5OMF2PeGD
R6phRbyQeIHrMWybXTJYP/9kkbuV3+KobL36CuRWIMHDSaBuvtz9RdnzCKQQAMXbVx/Pl5hSDPTN
VtFnAHwe6lJOll9yDhrEGl2H++vBqd5vSZ+r0ia+BW9jILDwD2Jt3xgO/Rjzu0j77QPU29W0iZDZ
MaJGGIvUqNKfySAbmqM1FKQzPOv/hKZPYAFW4drl/TCbio10cVeJdTtuG13DpX4JKcoJMFwK/74m
68ZnJ+ifALEkk4oTGwhpw5WRU5BejonatAafRVxH9tnHvjx4sIUNTjQKk+e+TKUsSHeNh1cYVZgZ
TsnXhlkuGQv0LtCFFjOJZY3npK5ZucGuyhebP0yqPKsVB/jkzfeFhJFNYovEiQGLrridhVZEq/oQ
VJQqJDJdo7NSfzCFWph7lzp9QNtkwHIS8ljIzu1iWw96XaJfHN49kwYwdI66FwLclu0EZMAdGu3h
G5VeUxfxweYldnIqgyCOefqMnfwu4n7vSBnWOqW3c82SVsxOB5cTIJPOLXIyFn0x2x1rQ5mvGhW/
TakoBOX+9/TXSkZ8frjzSNwqscTBEoVw8CJqy4K6icNtrfGyl2mpZpgX6wyIoe90hX2mXoHAoSic
z/EDXqZhZTPNA6NNggK6QSMI92RTZuHxnU7LcBBvLWy0UvMfIvBDWllIZF10Fmzkcg3zxFuUTiXX
J9OaloXeYsnGlBMkyDI7CSC0SbTsoSae/Rd/qGmoTkm3vIZ8Vr247mi0JONW5Pl9XkiBN3h0n2GX
ZlDZojn6ECY2xjYhWg2psKYnmkhNRtOPdRXm7oNbZRXDtaTO1v99KqmgJ+3Hfsw11E1HyUe1/+HR
WB/fi65TEuq077zCZvRphMsVl7F5yJD3ZPOKoIMh260n/D6ga64eXyBZH9dvy3bNgyoqpffDWx0T
SxTZfRsMfCseSCze7Jc/77yPdbWEup1roervevg3hDKdpXoE/41wpAVnz7J7sAj8a/Hx55+g/8kg
rbrysVosq0Nl3T74KD6qB5k048fq8y+KOUV4+kJSWfHBHXN5nh4JfMpQVJpENJXE7RQW77xS/9BV
Ul8E1lMLljsZ7+EBmcDFBSnuIF6hhMWVwoehxWHWEyFsnukizHOfACYG69Eem5YIFfpso+hVlri7
AYm1N6fO1j8pyQXwl5enZfiLEgJa+hTuv0Xup2B+2myK5oPl4pKmVc1JM10nEttYY/5+NbC8Td48
BhB5vP/vvIgUveAtvCfM4CIqpqKvsX7nhP4hFl3eNBiIv1flPB2eudXN4XssWwK5WQtjWcQ8lwn8
3lJMpLclHlQtXLTT6Fd7Y9gqJwA8b9WBMv17iBkDMqpKrhMMi7wfT2TdFtdeiVkzdI64MqZFITn8
vfFDKCMX776Qb+Em66aiZjGWUAsBx4bxEkzNQ4TP54+6iwUtgH457PemgSysUr+bstLQMJFeFp69
Hx3pyBvJRgjitZUeEj0fbSZd3341PMNty2CUIvWeZ/w5GAR85t+TjYX5olr1gM9+wqWQaEIHhqXR
GvDH0CYo9g99Ot0tKftkay2jo1sIlxonNo1OBVrfQXt0Wk5h/vDvGngHoXZ9BEieo91ttdHY07Qg
Y+52ewtFI71RtUw3H2cBJT3qTD4+SS+YWfZhuy7UyvshtXGBZA7Mj1+XAOTtq7KUZ0WNAv9D2E8O
WWHltHgwiUodQ9EaLc5/AHvMzRZ8Tq6gyaYGKK5IMJiv1pfBe3i26lZDK8228xPZ258A8Yi5U01F
K1bWVtQH3sGtlE91jKWgw3w4f2dRtfP4Owj+BOWsXS1i+RxST2LQ6MrEiErFbTxElrFWFa8uRIRh
czfqJYBoG7AG9/9QaAUyUMZ3mOYoF7OxFu4Slg3d65fATulV+KmDrZ4L6vPV5yky11ev5f2asEbl
2C2+u1yVObVjMSfGiXn71MOkQqWI0W3clwvS4xMkVmmQflaLVBJ2qVJlthYQV78cj/acKHDQPUL3
PjpszzHWmARBS5CdRDSIhH4myunNXpKQgAV+b1mERfFcmscqCApJWCmBs5TjaLftywEIOpX1e3PA
aGBeA105CEVycQiveUO8GP4KiPeP0dKWf/Vh7CDz8rDmJN26eEs7oDdQIQQvbc0s14dHK1pg3d66
w9rcXvgyUmFuSvskUM27Gd/gaYZYt4Om9FnA6rw2lGDG8ompAk0j0zTcGGcw7vB50BBwQCWInIYi
497Or004F7XnPyfYYM79+9GLfgAtLMM/I0seKH3z1JBGZtt1dnp1VsSznppU5MhI9wm5I3px1IqX
PEHcKA7/CMIVi5ELyp6vE6w0GRcTZfsvknhRJnfCegkqdYLPS+g4VNCgCfPCKcyejRSP1XkEr4Jo
ox+qwpHsUuhFSV/vXHHRbi4uxXGaHQs/ozxuIoxy17CUbZ0t3jpVdUOQN1qWlAij1CUG09T5neZ+
/2Z5QRaYsbCxqAIi6mZlBpoHn1vNgS5/1OBvvgalLK1mIu+UZDHhUhPSdX6sfEyL+QAai5NNymo4
A6SHz21+KjyWTqzLM3ONe6luuOMpEExIGmtRfjxEu96H91x1mMK/TNkMJFrywdRCdcLFaP1Cyj5Z
wXitB1PuQA2KexMtZbg8HKsi8/ewi4+k0urDABJB9qCyfVxFnqZRqkq4mWjZrOEE50PZf0q+pmHq
Rf1wKX6aKVljP/LzpyGn/QW8ruBaMn8I0aXS/4OpLk6ttZCOepToz37ocqraMS+rpIZc8MNB9KD7
k8PLmxmlLbYZTY2uqjYDsBVgo5aiu8oja2bp2tHZXbPWhakAs29uh/EjaqBFqJhSYLrC1p+Pla29
fvLm+ydlyih79V2vWyvIiFuskth5wO2mcBEMfu8DCY3CTwK4vvwM8Ukw5Nm7etGVUVbVe4r6vxi2
XE/PyogkzapMlfoCTqz9red8JD0XWkSq3nbvjxLZ0RkH5su1cRVSTCcunCNH3hqhGV4w19AKX3CQ
3Rsq7vzdB2U19L8Xdy1PBxlI7sMsatX3O2zXUrJ6R+mA3/uuN7qrbTiPgG88V7gJNaDPortXt4za
S2KTzu90VWvthn706Bj52qkjU7ykx+Ud/yQ3apM1aZRBKohaM6O2iBbFYTQSNv7DOrxkaDDOzPvk
DtnnoVpx9KNWH1OpGNwp//SQb3Faf3kUNCVYQKMgzctTANbwc2Jmr+JgB2UP9HbM+lJQa4CyzneZ
auZs9WnWiOLr5QFHMOstUoDMxH+Cl8T60jEF1GGp1SyRAoO7NMFXaej2SH7BPeJwleQiWx7yDWsp
egbHccruFYVkdptkHlugPoCKN8kCyxhiboZSZh+R+w6mZTZZvsW+2QkmM2q5wpE4tEKTbpMMF1JP
Z43L8Ts6/s+uWh40RVsqWAgb404abtsuFkj90F5G/J4RAW6Lqz8RMY/Gcz63pYr3r2pjIKHUvGmf
XgLjJiBi5ylGBwpgglFvhi4WsQLIg43cYLe+TiCK0+3ZspOQfJ/JSudpATV8KwliSy8UuFUq1YaW
Uwq43WVzhgDCVGCzd+EvJxUhdoW10btSGBhW4wNrDPOGjLoQ1pETdCo6DwjMEymaRqE1r0vetNfC
uWiZrEelNCoK5atILBM3BmB1/no/V98x0IjcWfxr2jznljTR5CdqyjRQqapK3CJxP13sYH0Yv6tb
h/TLaFhXVmNbaeUDhTzi7bPErfrjVZiqG9qCuflKkcO+N9DSOZIDIaOGFdyiKwrUHeI7X8tEfqZ7
l5cS660B5N9FBWkiQlOXFMXU0R2G0GUtqyarPrg+hp/pOtvYxex036EzGCCCiXXq18spCaf/zaDb
eDh7SKIMF6pACkip94sqnE1Fg7SKurqJFwq4HTnPFpGdIwCAmaUwgrX6J/+sdGh/Lt1cznfkw1Z/
ZfFeujX+pVZkN/P/thsNw5/PoOPPQTWImSNGm0XiZTCFayJBTxX9LRDv91Q7/Xyyi4UMUfZD0pvE
sgSouaYCHIc9jlmr3z5Kc8wzC5lpOR42NrvdnjHq7xr8dwI3tIKxR+w4f+T+OD93wYv0BINJ9nAS
Ctbwg2RhJALtWIHtbkrN79vwDpgYvX3U3jkeCT1t35nagPxnRFkh/T44dm9Y03YgJrUo07sKalar
vFuBBLIbb6KkHulW0Rs8527s1Vs9l+lbzf5LfkGhtqzcPRzxYI0NAqmxGShPvdfSgB2+PqllM/nA
sk7JVK+sL2k6JqTdnSvHUd1Z580S+TKp1iJkyp1ubObsbq5v2lzsO85+rNF6Km5MxlsIH2mD/keQ
HOYeEN6U8Kn0OytIqcLzHoGD4Algc3/tIoIihAT1NDmoQjj1Zj0WBe64jCYphgUeArjzbbnv3hxe
MH8vPYsYmkTY2GQ31yCciu777Klk9TRlOFIl0gV998oq1pFygUk8sDjzodGEUeWhr4TT5xl1K6Fn
X0sZ58cQ3d44edMk1e8jR3zo+HbKN+pdp0Jgqgwmo/4x7CublDa/pqgucrM+Xp8pF/+yR47ePqTL
7dc4Q4tuVNSgpiQOTP/CketkLc+QdOcBUTh/bURd7Keh53E4K5sM3ftY8AAxRaBmHGiRPvKVIZHe
iwSKBBaSgW3HF/HU0mS+JIkivjdB7J6azMru4TvE3654i6Y7gSPU0xVMAUFcEBrym5gK2357L0J1
tYN69XDLy9XHeSmpJsi8B0OGVBax5Mj8TCTutpeYmi8Ii9a52fN+ugVASRr8tzsXMvaH5kKrLUKF
qKQAr6hCqlQHyFN1FzdXvKNfHfVM1I+oYZyUCfRNmghQ+L4C+mIWeYbJL18HMiRaoD8TCrLjYfss
9oMua6XdUB9kJEkh2eWN1hTdhQxYS+LwO/pZ5rl+dSBs0NFuZ3kjYxHpy3D4HAwndvoNX5dDjRq3
mTgGz7JYO2EvMCWW8J/oj6hY18E3H7s1enR9ag02yVKZATSnLVoiOclxfxuxWxOUSO8SoMS0g2Q7
KXOzVOFk9bCRGnYKWSadh1qVLm+w0ICV3B+yeUmU+aGE09m258KldomYA6A5PsOSf8XtUj6qDNCB
dtsanjQj120zI1UsAlOt6akdKysOlT8kaUQTmTbag0D7D4P8itSgPuhJ26wv0O9eqA82wpTkWwUB
mS6SQRVWsS5mR9J2Ha/aMTFtZ8VoPgAipap6FCz0XJgnwqBXCHXmac2K5z2WaE1gTVx1hM8FzydD
2FhQLiB6IbEwO7b3Avy7eIqcKewZsAVLQDKT7vfn+TYd0nWAuBRifkXRRNSOKoQ6Jv8e7xvRJ/Nw
Jxel4ne/7rX1MX3ts+AtDFZYPdeWUYvoSnnGJh8iEFxCD0i8NZ6r6hfK9ofP2IUx1/hmtEy6i0g2
XUxsxuH8vS+2jWKjR9ecIuQGMBZ1zyVir9+x+WrCCISltlx2FiArRF04hYO0DFZNB5W3kWjwWZVk
ipVjgcv0WIKViry8F72eKY7vL9lUqJAUt4nYKIPIJFs/lNxDO7kk0Z8EuVWNq921T2pMfdXeDd6L
hC4Lk/nsDEvZCccz8pcbVu9olFjdfQOsse4hRpkYiF3SHfKbixG1E3APQeKguOJt1PMbEInjpzcl
AHvF669bucq2ODfk9DF20i4aXzYj8dYWTWStVXGIZNsfNSgkqapJYAEub5UjOUZi79W8FfmSHyTQ
0daeeHhLAUyQ1lMIk8Yp/NTMzZMRyIri7FD9nSg1kvbMK1PTN0rzoAksBKl0m2j8Bn4YaLiiJ4E7
kasSAlsec49O85wXV7bRfcM5NcniiEj6cmZPB6FsniieYwlXt+Kb+j0w8R8Ge5aMms54m/pqa/U1
SfuYl52PYYJUBdKisRW/Ou6vlI6qxNdNpbAtFJN8n8E5EhVCcDaHi/ehzs4IqKkzlMd1wqALKI1r
mMhqPPRaJeseF8GkbZIqWUwUe4ADkDBsy9hSv9u7Mu4PNbgwY6hUG+RdyQ0pvhYNO17c3GxBmiP8
zmHnBm7Ez0sTPMCRXwLCBHch0RW0nMF8fY8TF3mMVxFej7iZ8bQaksCWG5ohs6gJx4rcHhIbnrnK
E3xa2FV/D5bR6AsksZtK6PjLQmH1jFVQ7ApDvdRJsM1lMatDHdWbdFmpICO5nxeqwB182cpelGQu
OJBbWZ2Z//6nCxuB3tesqcV81YC7dL6gkC/Vvep8BeR7a2L5858LUT02FvQhEr8IQz7j0EGvtotK
JknzEuw7ie5bS14CpaVewINlPwebytnozuhkaNhV4dAcnMsWO5R0JrSeA/8L8aL5sl2v5jOVVmM1
MLxoHzdOu5g7O4qp8Df4rfD9MhWcBITfZoGxgPe5rlSvVvJDrJDFK73J9lgmce9Ahq18lvY2KAf5
mcuCgraVpBbspNSbsSVtKgDg1RF6z0UjbWPqsLPBRCbAk/C8XLx1JAvmcFNmdQB81TJt/lD9KQqO
QldCZN0N+a/J6dgTAMV+sEFDnh/meMVjTLYn1ZFSrlM/wt4xAx7NQ6V/JF6rqYhGQKWudfx1AeKr
cMqetfMO+krCTtudzRLYPBereRmmuqaabOofynmgtbACoy54ewChBVNlwaxLCc0kbHtrxOMbq9Oz
7Owp04r3viJj7dS997JGaPSGzN1Cbl0Z9IayA+FZ4p5dq/4PhX0p0gtA3dXWqtLwpnLmWHkBqQdL
Tnf5+Re4uKi7lhy+kSNM4X8gse1CU75VwQ5qiubYJJRqeXzF0tMrx57XHKDSAvsoT+RtqZz/LSUH
m2QpdkbDDEJ/6y5Egm78VmUOVFMM3KFNXY4od+LduMpjF5Dm03nqs17yiR/sJSwOil41sQ+HsPT8
9C7nyShUGk8X32AqLPZDDym6WkHaepLPPSij991CG911XgLQNIYo2LJ5lSfCCe6SUpLMYQv99a0o
8xAb96U1dPISj/B9XfiNtco2KgJk/O0eDO9c3I6np6lo5qHGUOUmqeSkfWSam1FiDGbsWDsWgGrD
g9ewg5egZLPLiAJlFOjgIIS0zOwJrmAC/t/d4FSrM/i3diz1ePXsv/MnTrVJH9sXuyvpR8o7NYFp
EPiPsvCltjnZn6JqaIVjZD3twBvnd1tiIqI9Ud5pBBJAzEyXsZhW+fUpyeWFDMxHnVp5RO7LohWR
vf3b1574emRTZCqDgRTpSRvZBn0tl38By52+T7YuPEdTlzl7XM9iFakPyNgORHkuKJ58pjeQHyyd
jRFIgkMO21jePllvf8wjJyUYC6iY19OWxHQ6FQFnPKkAt4wyyDD5pSaA+3TPi3O9o8sjUetZCKUB
mRmo2X0wKETTVrE/NrjFcU1ZBLnrcAu6U8m5svjGRE1V+0747WKblDkYZvhd3JTxM/1b3BAy4ZTq
72DtAvvxIwl/lf5FNLE6S/IShO9WuBQ7DjC3LQduEZseV6CUq4vcjFsOY5eaDE7T2qX6CW33k7RY
hKbE1poPYuo4i5lDW89N7qCek3oXLq+f/hIrNo1QUaO7SWiBoZmz1DNCMQoN/NeQFsXNaTTrKH6y
x5hLrPgHduyqBZ31KXjTlAAlnig+gx8GnrTRYHJE5pI4/gSTcwfOHsmC6ZS/if4n+GPooZ/7VPX3
Tn0iwbBMOvwmli8bCc+AOrSoeEqjeP9o1ZtkcyQoFeYNLWfoI6U66fv90Wvb+xOozssDWb1Fuy4A
9bCRjcYHqavSRVixV57L8m1scECvp53EAiRmFoDC2kJ9YVqV3gYr/4yFGP2jlJh3jnLfBtnkCcXZ
0aOXZRvciP829Q1Qv0DCiWs8ziPjZplB8PK/ksmM50Mtap5Lh/JOgS8qJYTUUNsylt8Bv1ktRbXj
a+nVkFIfhDQ3r/XOR7xJJGuKRIEURBFKXF45gJWeC3ftYu84k1c+reK2lmTN92Rnj+OEYX54o5Z/
qCI7hRr48LIXMfk36u54T+irC7HhueD+NUuk6L+oCuDkRLIlFcu0Woxd9EVn9WTPypPxi4c6mb80
HmhSeXEZxM/rAnDNrhk7pR/v2Rggpf/wXiZxHQLfRgz2clq26MtlMDhM2bhIYzAByBPN8NnYgMtQ
Rrbd7LTAqP3Wxz+Fou8ZUVrpfMBMyZPccAAPnE0vVXBVUVgYzLXaEIjv5W5bUGJctvi6OB43wRHA
twL2oQgnlFFNov3tBauObSJE5zbpWB3G2U4g0SEQWf/R0hByrp0uIIwDbjsNYbOiS9sasJJ8iUZ7
3d7E4dzVc7nd3TCA8E4bUCuJLukmdWqsmiUDA5E1ET6VzGMyxXYjf50GtIPISURdfpB6KwjJZm95
2buU6ZPNV9U1U0ZL9hHm/TqUfSlvd/tMDI50zQCPNLC9E7vn1mcS4CPuF7duFCvyPBN6cfwj54bi
sc3QtPoBIbKiTVjZXpTlGNH9/f+rWHr1ifFhsKx9ZvjVmsymxp8GvCN7coEKkBIuRmRm0/SC9YTb
HWkW9dqbEYM0TLDdMNKGUWHRJE6+Du2TnxllQhb32dRj1hjf5oFrsrdSpbLKcgqG1Cw9a9eF9FxE
W7LGsDcYz844r91OYsTzlmxef6R12xkTFuz4bsjFSIlY9zjGi55+U56AqypX1FVz62wp72xF+wyO
RlQpoocG/0pxdsIcaAfhc03YKqw+c1lLm3ALqNyYwLwJBS6Qj5Pg4ARDSoxfAf8DgB88wJcXWISR
AdnLFTyxVsyiWfQTbaeaZCWFJcMZ7bAZ68NGKFpKnj7wU2A4ypwHoGGoHmGTUkS96tmGgx21aGYE
zT6tj/vZRHcC14mdwyt0jdmovk9xbp2W6U4QlfwWJQqyNLNh+Y/SYcP01FrCvhWAdOwy2H6qGxoZ
PwVD0PfLdabPKm7zlmmYMenlMCIjJ1pPlaL/28You+PRNvQcVqS/dET3gcB8LbgGkI4pF3WmEyZd
7ve9tVnuLisHReYRdc0ngOTXYbUcLq7TwBDELARwpHKVYV8nU3JppM3TEfTy7H2wvJvQxcmhlc/x
t4yUBOck4ryWR1aTUF2dR3SBOfov1OmFGtxkgfIkXhfGLRRTx55XQMDSb7Tf6NFGL+K+sly1jsCw
iR7bkgUnuz/S/jnZ7ZOvHEDCmuVsBqpCl0huUuigaeCfUVm3xQAbvrWkVetxwyQEgUjvA9ADON6u
EVocbyzbhH1lcKyj7qdRi6YOt8ECs3KkIJmxZpb3PFDtgZFyTD6BWcedxtv4kCwg2euskjG+P55q
XZVx5P9yGNZQVCT1ajYjBFZ448RtzHJxnB0Oo30aEJY9/fxiTRC20nyENc/WVdKP7UasbXLOQ0+H
jeYHzN6jHX73cj1PQSwY3ihn1Byr3qtYLO5JdZCxclF4UDVRwHn26VaeK22fYhKG4/L3iNNQ6LTH
ayIVxWD3q9KSGtEFE2dtGCId5o1ToUWmN05IIbj1doCLGrVg16wOga6dxYRft+ZxkJ4fXIBdqk85
f94EXf10CYg9tNmdGxQe1xIuM8A/D5nhVi2GhLAlDjzyqsdIdOTj/I+mM3NJT+7/v3woVYlKXpmQ
gO6743yTdq5N+KCVqD/xK3vhNZcF7Ssoga3qGLT9xnHBN88/PTEUXFOJPyJCL2j2olPHE3DR7eoF
dGfIJf30IaIEsZi11HyLB567Xe6ax3cauKITQOIW6xvg/Zd9iIiqF2odNMy5I0dAVi/aY89DBeij
4ZUMza+Dq0c3sdL0uOvVfAsoj+ImOC9o0H6mcM5TaCn+98yZfflVXsE74+DicAZRpSITRXd8Ka1Z
0RVgapUgRnSbM5sMXl9dlHImyr4r90k1AzyxuzC+QfNMXd1ew8cbRMLUAIY0/rPI3AYUtHswq7Oe
gS3WV2Uff6w05LKAZUkwF/iuoFNP0M7VlxmxoqkaFAVnesFsBfYQe6/SomoxIA6m6YP1deyn9rib
8CrE/x3QKEPFe/AwkrkYlt1dyztYOMNcU6PDEi6NSFhxFCCKrxKCBzpRd70yCH98ujUIQYVERTxs
piCOYFLh61D2yFwILVE4d3QNZDxSc6HkOPakUlmt1aBJh+px41RUBEAkUCR/skE7uSADJpGtC5M9
OnwAOnP+C3Hs+G0T0+e19jk4ytcc/oSQtpS0g7jCVG2O59+PKl563Xk1Kp/yLwxN5mKEGJ5+HjVD
ukx3JkhGzWCKrPvNO0zNic4NIRjwtv9RhE0E7X+CHrn9Kvs/Msjy2gO8ewe6hZchD6Tenqsl9PCL
L5Y4IJeD0ZM7Ops9qq7vX/eS6guyTncwQuDo6uiXk2ZSjgIqk6wv1V31PBLjwgR8/RYlpcPBAYc5
YIS3wfEvnG7mAKSFGO3LlHCXOuyMbrNs9Igh+d4it7KJxj4kAwN3cYuczPmbYyaHT6GDm0Zps0fI
omqY36hl+CegDNxbjbpZarR/WVaLkw+bh6RU5VJ23IwkeAXqpXTCWQMv1tJKiAJXlGb6rIU83Ryg
Dikcs0p/XDkkLBiD7x68VZJjRTBDaOEmx1mBAFcqZIurya6aPKGNbQ8pfLvcIBZI4Hy8SGRsT97c
sYmlyR8QYmZXAeDaCNJVh71B6aSW9tc9M/tf472i4jUylBiiiR4tgBo4W738mPEcd4EttJ3HM7EF
GGOnVT0c0frHUGDBGaciOJh533emX1UMuCQ9gb5AXUjnM1w0FOCtEpk7qTvZYKI84uv9QKcbcgB8
XZNBY9J7NktJlyd7YGZgAqdlQjRb3jB42SFRwTa+3d5Ikkg7hlj9YgqCowuxIgHOJqUvC0jfq3qb
KfY/6EuTv4GcjW4q30PwJzBBPpku+8/J+MqCClzQL38sQxoAB5XmgD4pM6ImYPOb7p88bv20EOUo
xCFHodud3/ybxGnzzUYjyCKDgUU/NBMYhaPWhKAKMuVecWifynjXFMps20UDA1/500zJ1g7jeIfE
tuOo1NaAuQ7eHodrBHiMsDko0gTBly34r85rOaYTvxfnbQPqTcQ52+DrFrqlGmQ6WxaACpareahM
mQXYAWe7ap4ojIhZMSeAjzBCSclk0IsWIHuhjgvZCYeoARQGMG6j/S7+iTSWoYDtttRrpHb9ikvE
EYrET+PHKOn0p7BDqNj7kQj2G7LORFP/hSTu9etn7Hus+gdB8YTMvBkF5LC5DeOGLrf6jXKBPOPP
jaNDqXQ3SoGmtP4JdiWmw6U7wzDkph2UQsMFv0nkqOvqgJr4QVVewci2eY8MDJZHmrDTPyzBtwFF
B2y07OHVG11lG8K21d1+ZZ7Zivqvnrd1LB9qZkDtj3vCs6yXBzu+DtvufH6ZJH1TAooXC5lVSgyR
VvOyihvBCmnXz//g/VZcZA9u//UrmUPpGDSTWhxx8ZcRKje2kzLQrM+SMua/albS+Vu/agY68GTw
MB6FAmLMccVS53JGCSDp8DJmJrxOeZF5Du4d6/i0aByMsBICMEFJK3QV0WyC1TxFlg8glFC30vwg
BUIvOR8pp067tOdxDvyPJOoMmpwZK0vZk2J5uHLcgbCpVtcozPfQr+D28cY5Ybxt3/kPVxnqQxBj
i/QC8VAFmK+Eq7xipK3sSsFjmQsBHRFC2roB0CTdB3GNNCPA+4LCbVgefhKk5IJUNjSUY0qrN09H
+4ogVIROLvTgmrh2L5ZkpjE/h7sbQ8b84V4mmm2N6zupnwnponnLvHB+uE3Wp+q1nSp00TzLWfNk
SXFAz4FuAOayCqDjrHxrKvnCW2wPggKkoQ4Vj0uRFc1FxupGQ0ZVSllJTyBXmyGUm+YR289jPsa0
xIeg/2HU4uuXZONkdLIkeRJwoJh6l0NueQORf40gbl1BlSCxvlcvPh9JH2K4DKwKY0zPtZMd+4ID
oBrbKuXGO8Hah3RMiBKFZ5URfJVxw6X8HgJ2u2mE9HyvNScMejvshLzN7MsdDOIykj/3yxV4QTaQ
20xIeb548BGcqYDj3SjK+oj013c0AcwgJj4/uX6EgoAvUT9aXIb9KICzoLB1Nnv2vFnmujPwyY0M
yeDT/AFtra4ZzaoFhxerhKgKPSPxiGGn8Cz7rOgQGmvr8dYyuQre7AYQ7/hwW/U1JsJ9hT0+ARPx
TmjKKqKB/EUtgpICwT+UYCCzkzOdVURt6Xb1qLE0G00rBnYtPhYtcDwbDMV35HeD3kjFXOwDFUX2
Fj1fiysVupmOemAgLh1q2bjyFkb+Te+Ha29UFo5n/ftfHSR721x7lJvWEo8/bc5Of0bsETlDYquE
NWEaIu2776CuCOmrR9ns4wCrPs/9k00gcBWKHjdiCN9mNo/gXlyyt3dP1aydd3MqtcQhluhIMhIH
R/r+6lf+jeF6mtBIYNhj8v2cUG7Hom9TBgU8KDSqCnPycfxzjraE3JlTpz+9Tpv9sJS9LUbH1w6t
2jjFigz4zsdw02cshpKdgnY5zJtTqxMxau5EZjAWsZ201RRpqWeI5k1qJ55uJ9+/t0kPKUnLVZ0n
UZ4QqXWSQCuBdQ4OWY/kCJEJcyQqK6pAHeVmKt46QxEzYeYiDwrpeTfJY7AuZ/gf2HGZd5cKyn7o
XbbBTxcYCvVRK9oNsYSfq89EbltKwBkFnhFI5eNAwlnPLHrLTbVcKHbjAmgFSNY2QAyjenU3XSnJ
AAnlHHAvmjjpinUQ+/kX9/LfoEzjEq+d6jiboMjLQqOdYD2EkhWsCN+GxR+JxDRRhYxoTi5tHLin
ivt4+F1WaHH3obaYP0sXbI9VAKxrATjRIuwAA1bz9Uu3YbXf9x3L6cvSwubMhEd2eZ3VoFJGhV0G
Cgz9W7Tj0gVR7vLh2OcQjiJMVYgkyNWsEf+tIgyJbb2JhBPXgou5zCdBEkpzu1gAfxb31B9ybVWr
IMNqZra85RhWp6vJRAZ1vZTDfyEYC8g89/vC3fDlwI0n8QkG3kDHCjyGuFSi+X3jVNMyRoOFAJNI
7WgqB2ZToDzfHWvgaw4IKoGLUHi73qmOK5/+A5hUfA4DnCGPHyRo1Y89qWoh0X8/uwct4JLYGQwJ
iDfUhYFZJOeTRxlRrYytxkoUw9nAHHqladRhKDkqm6yqmdSVIv3zyPVg/DlanaCfQyV4mohO+Ded
3nX7dS3Pi8UkxR/Em8OIXnU62zLNShRQFGwNEw3I6QzZcKiGOxHxl3lq4D64IKAcJozehyXildCi
pbcaQ+OrUMUwdjdGJiJvWe4J+lvT4kD+KvGou+lwmwlTX14fSz8VEfwt1sMGFF7PuEyAZy/NvyvU
UzyZmxMNN/jv19428B5q93PWwVukCIxVoJ5f9IDFDhFLrmbUcZGOjyh+yuSSbwLbaHcRLuItWeZT
PoFiRi/UawOMczczaVWkyhorTebLWOICbkYkMxrEJxxzYmjWC0sOTbz7jIob9gUnr/Y7uAkFQg7N
YH+0C2lPaHpLBZZXv+WWF5aclZu2Q3ncejDoHQ5Dr7+8swdX9Tgr07uK+V1Ea1VcyARmolZ5LWW0
FJj8gLez8qBqt7352VaFbCt4sKrh77FVklcuESbdeA8gpnY4owcmTWqg0VrL0BAtJ4TEHpopUM11
6VW9z3u59cqynI52TGS1AgzPbcVSMcjaIp9MOGao0e3ccrSXGGzbKIBSbOL4DdsjA5722hM/zhVo
TzqOQuTt9xbPPv3/38bEBNWC5T/7Sm0OHPS7vkeqORUdfMVoHgRF8TfY6ngILvC8aQ33E26AqZVK
SxCKVqyHONdEfRQ2UzPiWjBEDLCWCp4TOuwkL0r8UnbZYqoZvQkz/e1UAlidrENyaF/M6/KZzMdv
3A1rzNmx33pxq+z1L6pRVMXqSp0JUlrcKon2GLxemzMbvn0Cq7pzoEeFUcqTsa0fyng0zRLYBeuu
5Hw3Ex36G79CgAZRtyoPgXzU+26pddUDGPNCtEu/TYK2iGXQlQ45XYlA+7M7IDj0fWzUzDyNNhT7
ZZWGG8hPYhiVfORALZwG77icHqe6ekIH5VRyRVpHTOdDdE7/eCsBw0YeVGJB7z0nPptwkMbxMnNO
NXlcsM3SfGQouNzoqzFytMBpOqlYXJ6Xb5MlH4Xoi3/v9MD824g0O+eXSJe0jYCX3+pLhsEi6sYo
ttW6/s5i28icOYyt5kZKqf+Wgri4pbPqbPaqtn+ih9Yt5IewENL5sFVfq4k8vutJE6OOBIXwk6RW
vWYL1FnONfsrTGY3YvVtZJ7K+tGoXkvsBRlfqt2qbjblTZyyu5NticRhL7yjWJtIcQyAQzywMWE4
xp8FQTcc8TX6OrVD2T/JxWwxy2VxjlCaxs47BXzfjIcVEkW3FX+T7FPYb7KU+qn9yhmBk0AerF7e
yykWCNWh6M1GJL/XKp684C5atAYzUoyJ2QpStGCdRd7Wb3cFrAlWFxg/onUzCz4RNhEg2rEEzgSv
vDGQ1FebMMQ9nOAAyrckOVIXrVUiZTKiAOjynZR3Q8jOg8NJw5ZlwMNhT9vevHUsIhq36LEOGcUA
FmfAnbruebHfKlfy77QEQT19Yw/6cOCzFLWXkIuN1qJpk8lYAHJOIAs4M0nyyXHtbrztLq9sTRmg
Cgpe9I5mXm2tEgycKFv22fch3JKNIlRqDtLSr4eIcb9dU0t3w77mqX3slEiHLonh/IHNbWxG4mfS
Kl7I8RaGUMLKw8LAhHAhPRdC0VyxVeqZsmGJFmCbVIAzAgEesrKtFYlUWi/6fPRDPIWiYorMAEEd
NqdZO1u6ERJAq1Uka2iRyl+e7qWfDN/bEN7sKtFqJgn/hab7owumVJpCw/ja6h2Zlre90pjRB1ww
8vK5VGL7H4/RDRrC9ab8MsTNtzwGWc0u6k+/9JAKZ7uT1sKyMsiUJBafIAqw8J1tPlBiLqGPc6Tm
LSpJMX3NUSN0bMLg12agkhfB4EaGzHSpwFrl+tOsMI9PkdD2C1K8gDdXeHlnJRyezpfb9QYcXDdo
gU6b2ob+sN8U1uQj1Q4uS+2TVClUwm4JVThwGXgDkU/MBUa5IhJL8SZAgN3wwq05ZF9B1gBsnumg
08kZ8a2g9sWk341wwXPjN3VPbu1Ux3Gnf8Qxj7ihvlJ/xNlx6WXDHS3JSz/XMNcm6BelvO1Z580u
WlVyzziWoFE4bBFwcFRvYA6CcbdFkTWpHYXdyi4eXUp6a9Hzc07A4wIQwyrkRx2IwPggHYar+/MA
dg72NImbEV0bEZomOzEDBQvcGBBm+LBVhinkOGixnmFwUbXk2eniSkM/OvbBtptIDawVoVq6pWei
D/G5uVgdkc2RcfklNAFcyGyUAyDqaTAQKVpVolLCFn/orlDhwprUUAVzICCWaZ/WrvlTVUTH/ra8
DmCJevWVW1wXQr+KaVxmvHMYjBFXTY1FdSqLe7nlsug7ZlL+44nQ7G90zJEgto/ZZV/1OyigyNVY
UczIeWIsuGO/YSFYKMqDN7bG9wrydZH7EE9i51Ky/MES/mTz9++RO2Z9CASwIIskZkgBCtyQjMx5
EX+Le+l448NjEpWGv78HmBrj5OaRlRHeUMPmNrRllsP5t6KAiggVRjiNmiBVIzFjkP6gU/cjUkz3
l9IrATHT+Z6gZ0PDDYVH9CeKPHmGbY5HjiYZnn7A6TjaaLiuIgEUzftcUXSvyLtu/kQfb4Iv16ZN
0Sf8pDbZQVti5IOQ7zhNyazxJXUkFo6qV/hYvDmEh0EqdjKulQuNv74YbIFH99ru10r/MxAUbhcS
7R2V3G5I9uWppdxnyqyjirdn1NgFgm8Mm7Rqrjm+rxyGMkcvUSnNf2fYemWRB++1o/7bvT2ytWXy
E9fxpqzolEoIU5/GNHRxjwKLEgwzlvRqmC3EzuDKmYlOjS0JMBF30Aw+AQ/7OvNbAmZUoS2T+gvN
epq6eps/IsRCSSy46ArIWxU2K9xzII26Se4gyztprkZ4fdL5zxt2WsXZ52CLhxwoZREErfRwuJMZ
qlvUj4G2oLdxcg2+uosRF9Y9QWWcGwB1NIh2VqEdYYXhx2DBMAzWykjVm0BC9PoLyY3c5PiJOqi+
cS5Gck8ZprDWSG1YrVX9EqXUggjJ6DqBcl1tDYzZFGukrvjz13RxJNwIDtFdQ2s/bNo88j+ry73B
MxMrDQLy3/FXvNP/lOzn9ZiN7rMDfMayrJJOT4my2bU1vnd0x9+KE2Cl6OL1o4dRR7wQx3UC+5m2
kVHZ5b+ufXwUdxFl+LB9Hmuk6Nrh54VacUt9tF05bIR8ltpSvUjMjrjCO9adHbdmIB8i96WoVPUw
farE6nW8U67/lZazqvh9mWemINDEGTnrgw8gjORV2SOLNIpJtVod55Yjk4P/uSZKc4tWpx2yD1MT
w5YlbPRX8wkXlXk+nKBRaZTgtW6JK/vIIRNuEZ0IJxJhIbrlmiw2t318redjw5GcR7bmYVMBQF/A
/ttlj/6wdhjO9Wqm+om7HeU5qmBzyQmv34MLJdMVcLH/1WDlq540JOI//n3HWF6E1EEhulWH5qgh
k9Km+m/olf+YfnnHUw+oJkcdqzI2mBybNzQ3vQkT1ntav88CvXOVjzBuqMlIRen6cI+TM2qG7iWG
gYvk7pC6oGZDKlWxjX+VbeYnT+lSLQ6YUb2xL/E4S2NpZ59n69U41cKevDr6+1lVjc+OM2R1Zw7M
iB158qAvsGpvOoXq58I7wHonEKHct4cGzIsVvbG0bsqW0i6lUyrLJDq6E88WBLM102Fb6LVw7Ff3
/a+8cBPllOAEjxrCDwB1+XUjOBj5p0Ydh0U8w2pstZ/d1iKxBQjEVYs3nnqsdGozIyCBmLYoKKVd
QM3QAHjhq4g9GyjmEXySdRpHX+ZQn/7ZJHVgYZYyOYjQwBIepumqh6hJki1IfZOxUOjy2EDm5QSu
jGJRSnD9AK168R4xHKzaWz/2ULorEQ2dqKXHU8b3xpLwHuJIR2ohkNVx53kBqaMNqOb7T/e+MPg9
1Oy+aBVu7iuK2c9trzFgbps23jKnFlqOkCHxnPQkFzDCaymELVJL3/C6YoPO5ycpFDaKqxaZ7mT9
xMyOJMbXvtLdTcRtWSsB9Z9FGEwWgxovVkTUKvLFcyblEjGvS8AeYtb8G144w1JEMgZV/trATwD6
JPHNhiKPqGLPMyuCo/ve6AydRFvNoPmOHEqCZU0WC6lOncJohXaDWt46jdrx7zQyeosXBCAVtjrN
tBWv+iItXaqbNIktBJccy94kWdWTIVaRfpm/MoUnqj6PUR1Igt+ZK8VBMjEUqLL7QbVWt4bIt149
u6Pq69fjoa/d8Aam/QIWES82jRu3QhpxSF4PUYrYsg8zFc1beupjIet4Hw+JaMP2TU5Nrg5LB294
EEtVAjLEXuZsYukJaUixklrVtbYdgFd85FKxkIuIILExoCaUU2WA713hrXj4XkHX2XN2pOYw8rxG
6Y5ca+QaPIu2UlYbfvAOFlbX9s47BLL4T2MkxjVvbkGQM88Gs96aHVQUu4WeKoamuBxhPW6Nyry6
+ibCfS6wug0lvaKlCc+lijRSwfDdQnrc9RZ9WNNnR1VumnfoDQLTtaPsxlDCZReABt2o0ui9Bxh4
qD2Q4NTkg81WDfuoSNBakxZ/yg+y+gYPFpI9wxh51+j6JZyXrBU9cTJnaXN1e1H/P6S0yWdovrCt
ZQZ2b2T6ZGPOgZ5zVxCLxMX78/HnKN4rCLya3xJyvdY4+4flDzh4nEzN+MqhCeCH4Uzd1T+0Tc0h
8ZttF5hQtFK/tpqOKygWJ/Vb6P8y1cAXm6kTTA899IaRZ3LiZNhZDXTlD9M1hHrI7KAUVtmTdahT
htEzzvY0kuWjj6iY6IuOaeg42ZVyDZFgsOzB6hRLOwUwhl7REzYduKehLVxEzzdWNxBYvXOw7Db9
RZ7zO+1V0vSW9sJxBMQ192RY0bFPMkVnik5vynoPy8hf3fnlzZSsu9je0P64ovE0rV3bWob2Jpll
wUGzbhscG6Hw6TBg2X9wVBGE/aygduUJJ+VFhA7fUIYyuQFo2ezr+SWzRshet2s0nKncXA8KVLzi
k5cBa7KvRHmILk9VVqm8q7xkFCG+YPyjsqBTiH54a0O55ggoNO4MPCM4nbFFzsJXXkcfw3w5DkhS
6KkGP4kxTkYSFA72wnuyriE714U7Ue+R2G1Ymwfiul6GzrtPbmZENIMZwhiGKYsn900MuBqAnNeX
b5c5pSnl+n9yP3fmbhAPe52JXHX1qckHQaYMIgb5YpoTLEO5hKxc4GuftiSo0G3sdv30gY5QmRnw
nxH/wGeIhe+2V/e1hjdhthJh5Tf5k6z66ls2bUlG1MWOODhDP5sc/M9HH6XAocQuMzPB3geb3H09
IFTL69PZM+gayL71hbz18H6RI8T0C/iC6RaMYpP619BaMvZOcGEcNF3gKqktxpIzv0J+JELNe3I8
coeHT6GzTtBTa3wX5rDJoiBTSxRzfDJk0c0asDD60ie6eeVa9pplryO6DGQfADk16/gaQgG3UeZ0
JKdS18h+MHX8Pb77DhlgZ1sgaz0WnbxOvDXH/dV/3O8cn4vjrTMtqQKKhfT8+hdYMSUHHPom+x06
te+BwXEl+Ia6D4KXyKIY+DXHaG7D/mvkBA8S3zorhy+BAS+nK4BF4NCTca37HNTYc7do5pkIJwgG
h1FLK08KMrycn7WLirqhd9vxdNT9X4r7UMxFHDJD4ITV9FCvse5o7Fmj2hCiLLKLinafqFxCow93
9CRJWLCzDR3Ug4ep3lOzqSCOrw1KowWAHlVEhfhtQ0tpWPeAE10lhusNvBr/brYBBu3Wr95sdqVG
OdS7fHbYy0jdgafxiKfNqGwBmxAYyPR/5khEV+u5LJHh95qusr8NQhb2Xpp9c5jshsBaY4oaFAnl
7cmGVrWe0/MBpuwYErxGcCn5AGDr1FolnN0565msefkqEJDwVSovoxss83AqaG05dXvax2DLm2SS
GbG6iqp8okqWrimMnZOyfhoT8leWDftMg5wShtJgQ+9c96Lp9BVwQXs/CaXMVbhMnoD9AU+9xeng
XzUWyLofpjF717bPxo9W/D57SI0BKR27onfYHPVzAKkR/F02p9HFtiwCOf2XHy0X9lml62YJYo5C
GvAhi6nOC92y9q13b2MqtVvDCu5bDGMD6xbehbDhcUGz7TSO1VS9IbSiuacnnnc+aKHvBsza5Jhe
EST6qJ/LwpntdqVUKi8MG6QZCTWhBXPTb4CmtgvQ0+/8TabKPGJYriXMcjuEl6CfUBebGBlo+Ohz
IYm0ziQFc7atzOc/AZgpnvhTxxG6S2ICnrkOV5xykx49QMOtvRY9pV64yjUKVU/lGxQHn+CVpTka
jrTNE58rxcoSE3YGuSiOBxR03ZNy6dYunuD5qR0N+7FE2Aqr2bpB6dnrY8jaAovEqlvhKo3ijqo4
ov221vmtx+uzZ/7W3lF/CELzqM1a0HimTqMiqLaQC/xHgWEVuJ6KXVMxDQy48RG8T/BdUiwbzQsO
9nLGjYAiwP6uXaB8WpI6Fy1dnF8MLuqIlSfRFhbMpNPQhPJNsOl9+PAbbAUcxtLad9tUO3vMQaYw
Tp2QrDg1alirjHwL4PAp4WeOXDHaMg6F9sPSz0wsW48N/eV637r+hWKqqlla1XkiDMWlga6JS1nu
zr0DjkHxke36ELRg/LWOfH4YAqzw/r8HDH2iCaAK568adLBxmmDVX0gdDGrU+KihEBQ28UZtOv56
xuSyP8t+CfbpbzzLHR7WsHVOpHRgaGnISkR28ZBqjMt5EahXLFvROWB7lSPVAcDqcYyKucALR88w
BAtffnqdSoI2mJT96RKidMEjezYD67N9j+EniNr7z+6CaN239fnGZUyC4Z4piSn+p9wA1afObSiv
Cin8lgMrhxzixJfNOSxAfgsQmWcNl/HxbRSXOfWdqWmXG05fmbI3XKoKc22ZW29ecm3nmLNWDFFR
fOAGQVxs4eK25dvBgL/1jdBYriusShkNrXDmUo4LcmesnVNUH46o6nU/wEP6ItD64k9fo0aMzCc7
BWwGWOo99Whw2CJ2cndXN1603Rz2d7GnsjIo8GZquDEAyABgmutqRdrZvr99L7IWvipn1X/TciZC
nl7YjUz4CC9Y3xwXp2fgCmGsdDuYBMqy6SVTXfmnB3eh6sm0XaM5JDGZUhMdMmfOvjJFd2yv3t/H
0s1vHCcotJAUP3KX2XvzgwRGMAMIlblNAiP0dBbtYDT8nclZ4FxxPB96ldbvv4dMaqpqjdIqC/Uz
sTarWjcBpX2Qxr0tzGhtU77Iz1tIPBBhsxHUowhkxGjGEvcvrwFgvh5gw+ps22oSzVHUotEwxDq5
puF1nplanVw3wEYCbWE/vaqWWdluXjgD37+eeSC3EH6e1KYnjxvHU2AGabrb05iwItRa74+iMMCb
0cNYNHVlEwTKQcC1NuY3oSAAhTp6twk/IcXmI8oVSE+yr4w8n/GMyyoo7UsdvWG6N23EpfUOG4fP
1m2N5Qj3p8KmOAKz3UdynIA891vSEnJc8cKA4msp4E9dzKt/3Gk1/x7VF+9kBFqydTlPKparJE62
TPHPkaNGBIkbAvQBvxD0AOs0QP8VwFbb8POrrPu26WDG4lK0yXExsjpvOpnxS7UJv9aKOY3Hacjg
lWBsIhdwvnJBbav+j3DQiQTctOEUELpQ0ygL35vIDMUUSGB22mJoP5N6vukvIxgXFrStqcfW+qu4
gK47tsrBdIz8K/mGqDBmkrJEjDN2krR1LXCGqZ1D1O9SxWQPceXweV4NX9tdVQ47RC2MfvZVgmSG
CnIszibstWFaxSdFqZWiV8QHdox6EskRKpUzAELMOyPeNB7AhS3Jg5WmvdoXtUrPJxWU664PahCV
33ijsOGE20SmkJcBYSzd6IYKaxvYr/d/7mKXrrd/GvTRixzY8RGU9IlPrs1fwR26BH5IXKcqdW0n
fcyjBScMDpDdRU9beLVb5lmSyE6MQ2sESv7mYKHzfcUYYU2xcnw9IibtAUvlxK5P51KmEfIo7xlV
THXB9JSKhcTWqWSaKWHE/qF9o1PvdhFbcbZSNOtiw2dXMsKCVodLGIee1pdIZhn3kQUm2lUgoaL9
4jFt0SWui1u/TeQ1WpVg8MQ/6Tr1gPCXaNJGN/H+YjbJyxvhcStaHwBJIY1W5skZ3BndsPlSrlMW
JjNGMiJ9OMuRhORHNm1Q/BPnZdWtZXsT0UqKngGRqrklIosd4hXBtGndFBWlXomRWLUUGTfhPSO3
I5p6fjrWUX9D6lh4Wa75uSD12+yW8ybfofA9f68aYA7vUKPXl4e4YmHt0cHiQRiAeDY8IXjV+wSi
1QidMANzLZHZWqRXWmgbji6hTaNeeNkbt7baqOV+tsgFfp0YI6LhpADbJkfuQ9RkPtdBaM+SPRKB
5pfB0Geqvb2R/y2tMcMIlEkqaBxkIz81BBMJXqiG2yETlO662vVuGRWk8AjxKVIUGmJbgmhNIwN9
4gtRgB/vljFgg3Hb8jscOcP6PqiR992Sj4oj0tbilDe/8xgm162VdLmRzxY64mRXJ19v6Yw/Dzg4
zwGUnXNIqAFVRoTzcpXH8JUEHrcjPyeyeEvmgwS2f6g2HbT2c3UhHxLaDRMwizPijf7EKhD4Ae6H
tgUc/2j9EMohZjenxy66QJwAAoWMOqbI5LRutHRTKBCZU+8xRInM4pegRhDOKXMnfJHbnwUwpap3
NcIish2CQwyLqDJJ+j6aktM+7mZLIB/DKO2LoxY34mJRXJvTibKECyGfoVCaUmNoML44VhiZYPW5
/6GIhuS3I+pmEhm+CqQbUrGnalV6DBbq3xaCy8XmTJRfF8c2KrLP3dY0PzMDC2ZVugg30N51t1fs
GvyjI7f8U8NpPti2/b0/rRElp2oiVTj/PARDCDmjyH0vQh+BdfuyN1wONsMuHTG4L5fD13bnYax+
tLrN/6hnoyySdNNNGzVl6iYIvGT/726KERslg+ybZOXRYHhzt3xiLxE87+eN/2afe4NKdXiaMDKU
1m+M7HfyYXFDXewpQx9SmS2HCbYBMkwuZpxnc8EuQ9ZiN08I1LEFUEMCqJc8pUl/yl3GrFWovLh8
Y/qF3gHbsWlKIesBIHN+X9UiD8QWWZYAUf8PsdW+MQ2KfuxNmhAqbwYmKR++TLRtdGMD9NmczG7u
lFw4oxmhrGPJoXOWo8lu/WDvIS0OSTr60lDew8mdFS4gkggBeydY/oreoh4I2ulWAh4Xct8ITTV1
RNdLFoirNRbhqjZIPCqQ/M8qCHTozj95qseKR60Twbf1apKmR5d1VHTB/LQSGquN/OaOMvt3zKXc
lTDoWJDnKu+ykQPokHpnmu5sPnOL/ccC+IjTFTRHbtp5Xt9+K9pXztrsrDbvfjKgYF1RV08/5yTB
/htWKuSVM0uysHZmhDlN/5YS5l7IY+oVHa0QeghO8jQjimRG/M+T5udTfY6QiGHHtZHCkqJH81ks
LiB1Q9WE/H/4/+VFCgT4ModfSk0Z3zvc/HFdkXXlc+IT+AewZNGnyAz7xuZeB2T5mStU/JyOJMOy
6Gyn4KDhiKx3NyWQKhUUKhKc9EoRIWhlzdijnPvhFciyTCsaMFuQC0VDa/pU8omvo5D+X5v+ukVT
gqPBaV5HASbcqGXMKmPkPKQizRq8DLlAgQWPyNMGVZrJItH14adUvG8hg1xdyBOEZhXybtEH/oU4
PipDRJRIv78AMShUjuQFEppH/ffH1X+h6immUg4F8iQSoB6qKsDjoyoUAGhGwyU+heaMfBbr7mNC
cD+fa3dmZAqn/bE1ghBlnK2oYGfVD6cXQKdH/QUlX3/5U4+ofq6YamRl8UW9IR8wbhsdy1Qy3YUg
tOBRjk4gBX5td0DhpQsyX1lTA+sDVA0p/sypncMquZyIfyl/h395bbqdjj9ULqzjXJ9JYehy8+u2
5vdLtCYjlJmn2nLeZFOuj3YpPfV0K51KN+EJMOTQbhQ3GYM/ngXkiYlM32t2upA9tCr+ZcnDmHO8
R+uneyVsF7UUkMxSw4PVt0+utu/7uOkB/Ad6ID8W7fC6UBbEZfONbjOJsP3Q4yPXPL/c23rlrIyV
PzzM1j31pG/cEFsJlUHSVc6IjQDU7gb99w/tRLfV8Vy2zbVea51adUtustWDVWzqngZ/uxxujo0v
0Np7fiai8HGzs2CIskUgBSEQ2rXx3f1rR5oaiaoZv1vYIWTlj/wJA1MLiA8/VnxLMqM1G5Ac4XZF
sDcF5u/lQF8hMbh6lVyo5QDWBC8mLFFwc70FNbE6a9WtrD7pXEpAKtX5aZp9sV2KzrWYirPoKgz6
YUakYxLMJWWh+3uKyeOuAr6frr/U7naYlrwKvBugsoEJt43xXMAmY36VbNR11b3PrLi5S/xIpWv+
Xe3WEHbMNK1WJWJvHqtU+k/TXvNhacTkIlZuwPpX9tG/HKZnEjVPOYFFD+IhJguRSqLs2pCWzdPI
x4py2M7p0MVcdxD6NkF9hZ8fnk3UHgH0jaiuPA13TFxnihK9HICNojJOLf92KZkbSMVTtA1RBHuz
D+bvzNWTrjrtaaSl7wHHhlbUor33W5PM+1Wcv3G2l9/ItBL6SexGaAvtFFNYUonnMnrCIqwk1WOI
If5AAQpVAiUscPDILfRvOKl/nb5pnkBYeifRKXh8+IShzIetXSVjjt6L2fMcrMu4nrdePBLUnBRI
LtC+D5al6DwicYhet8YJOlMonn7qbtj3BkIJVqkozoGlTGIIAyBb1EP97OjPiyHXqOTJSQxQ50LY
E1mK/PuCwNE6Q4BS7cQhirWowTGMkRkg+4y/bxvev66WjvfRdL7U4R8u2nHxWpBMVi9iXos5BGPl
r+qHY66Nm5Jg87TmLl4jOE424DtzFvJQHyb+mlkVaXsYM/moWylgISpkAcMB6MYoXVsTVstr5LIF
lwE12qORgjstCRt6oGjGnOCAE19j+ja68rFqvgAlmkeKCWtn4ZqQMPMgGIFjchZKcwcwIGFLdzp1
5LIPMcIVHZJMqtpyI0GsBfDvQ8SOfZol6LtGltVRMCYrQYrG+hlcxhLvps7w9Eb0eqQ4TnRy64vt
06uzk7YjtkhpJWJPsdKfnfBvYVNMWYGpanFf5DSASfHkw8vTiICn1VziuDMFcYaUwagF2lypfZI8
2X0bfK9TG0RltauJvreBiZkqBDXlI6lWDo2fNE6o9K6syQ6D0vFF0B93bgE5fbClLIn/3YauqOKr
Zx6xz8NmSNFgx3tqGR42CFgLyeBw7EgO6f73LNpqz+CywAD8OPoM3Bw4IBCtl/Ce1ygHd10QtQ1u
ZFE7kn3btrALNWq2mffvQ5VYFKh6V6HZ4r6LB41kqVMYMWgdZ4w0qt2+C97kDh8cKWuYeMlJp45V
vURgKQKq5FPmaQUU4LvDNaIMoB7mHaHmywCraQ7NkWNWhPp9kgCGnroi3oWBtmZvA9sRlNKnDoUH
sL2uM4fr80To3LgF4qhHK1imVVPb6kWuf305DELVD9nI0GG+vfaZEnkB1N1vDjVB+K3UfnJ2flg8
7PT89hk8UIl2yycPkYEiANOMDSzBdoAxMQoV+wVChBCIwo0o12BwwId9nE7Yi+2ZysqWu9rDTdnS
k38Eb7pT2c2po/MSaK/HuJWFjA6vFdH264g5y8OIMivsyEGC3q3O7bVKGcbL1eUIKO1BGuxfhqF2
mDMsT+h+xMpstSR7eQxePRuwPZrIiaBXPsrUE5PqVVXGydakKOKV4R/cpWS+i0j1aD1Y/OtuANQG
ej3ru2YvYAfPAK1a9Gg5yOYFN1qkUgn3nQn9gFOCM6Nvzr6yqXF138iAZwt9Z014C5kXJeXQVq2R
Gbe3Cv9kybSwHGqNu97yz6uLotkOc8nEupOZpHGzwu0jBVMWGTrfks17ctmzjo3QltYBahXPIjS0
eBYRVTnrTQB+kLYfG+XuirTyW1C4AiniMqEpDy9cX6vaFjHr3MDOvmakyiyudSivB7w1w1Yb1Mhp
UmfxYf8PMi7Da1p3xg+vhma0A71Nnh6QE1RpyCNZQhyN+U/1JpfbH1g1T+xqXrktST2n/Ox5Zf/f
Hc1q3I/+Ryvc1giYAuhVWuAifE9190rwwrjScrhjPBu7m5CXMa8EEG6Iy/php7hZEDn5u48UZGEA
0ivswvs5A2xidQ9G1zlA/6x05Pglg+copAlWgT1CZ6QsUgby2WZnD0eJszctevXLbkqV3gBWfIOc
khFDT/qofOeWc5b9ACTEX/+AJ6hy0BZUE7IZsC6ZPxaC4255zqk2HzDMzEvK/LcZIJcfqC17VZ+s
AUM4iVry3rLg9+FmZfeEv7Zvjp4PDD+hzRyj15mYKDV9pmXUJyGMz9KjxV+grN6ObBOAEBnRnBVf
oMjpJ1WSKf0tcgf1h+3ySBtBSm6IbclV4Mg+pJMf2b1TTjsBSzmLeXAYfEFMysBOtQ9ZflbIiamc
jtDR92YmM6NnZTg7EKVgzE3WMjeUsgQU8CrlbYKJElNBic/8rpy88XS5OGxnn3mfxF2lef4nK3hb
hwg4t3V1GpO9ql+a5tHl0XCyAyVpb+sbNrrotcWEMz7O9wPBBTScb1xbb1SGdR6BTb3gGvVgxho2
Mxa1Wfu43QNePiNhFKqWR6Jc6DA1JVkWSwX0gVbb8OO0pkwe5j7CLf//LVjvkui4mQ78VVkfkGNQ
P9LMmY5p9OJEPveGGJ0YiolsyAa/6WsuHhv7ugalUu4OvN6klI/bbw/Mr5XOfQxk4VhaY9l5Jf1L
6eojIm2hGdq+Bn3b0TocWsq6Kb4SJ4JWYQeEmdH8iWbNIkgQ4VzJi39YFnQj8pYW1vGfEPlPl1Ft
3+5eZEly8qSsLrgNKsm+b7mFpy/UxczOZi0NP4gU6LwYVxcRSf9QoqdmkKUgS8/tETlOLb/avEXf
FIOWtxTEbQX/kcrqqTP/zSeCRZnzhSdvqMLya1seq51FMssOUyBGsrf+lZo5VCa4sZkDkMYZEa9C
a7YlJdYuR2ftE+06ogkOzr5CXMrehidVdJ8od1lw8Q8Pi5ScmtHZh9KobO8k8wGu+lHABhj4vqdO
DeC08pZatsOw3CDzmi36l3SzzkhzNjXyPbr8ggUCL3hO9PCejO6tFVODiNNfOflfQxhG0Ved5EQ/
+pynGpXMbeKJvf//TzXwRxoIX5BXlHJ5JXcQC6lgHj0zSxQK9IOKGuR3ZqSAvnJ6FoVrWFlK5//0
9z8PpKqU52KWAeAM8Z8WWCJy6vUWYPnP+l1XeoE2uGiC8ppeeda7K9xX3Ha4YpVyQybF5H6HM1LJ
upVoo1sQu6Y9yOEaeYOKy5geRmCqBsKOCMRKgfF4RBH8LQptQcnTTErAhdU+RoZ66mAaTcAKXLhP
awAvoGZ1ZXDXJR7ffG6LdZa9hxXLyioUU/HLC+S9WbUiAi8lJx5e0OzWW07R9awD6zAykRxHjYJ+
G2hzLw4rtzi23ty49cYPWzhMe5tb0wHoEZi76gFqOkgdvbjE87w3m11WA7SCNqtmu7YzqXKZvrdk
TRBBFRMUEnQ0zpakIgy0eT+bdG6rmFdzvGvTMvoC+HwLCGfT6qI1umlvIUVkgZJ3UDSajq5KmRHn
nV0akL6z+EsInybJiHPOF6W9wyIpSRmrmWc6V9NpRp4bzg8tECrxw+yC4GXp3zcguPtYXPudsvk0
s4ZLWGR/JduUsXEcFkUNDMn6jjKAPFmZhn4cPAvAusUAzAes7qHPEMBfeuUU6EvdofkpMOWP9q4a
uxVlGAigjwsMKIHFs7oaQiyV/XDnwHCJPqJF5dMVtefqoCAzZmwNhQFYbUp7cOoaUf6bYAuiNXez
IMBVfQ21tBPAsj5SEGEkpjzNaWzcJHofLJI3vNkHmnvjmwkBhbVBVkr7XhGn++T6g731hjXnXAFw
dxYAVGVQwxmax4ZeXvGsdMnMVDekFiLgL0nXCRaffZGC+2nxSNuUnTXhbz+y/hVPi0hyXy/ZRmQx
/dBZAzZXwfr0V43JHmvPiibjFdgSmNnIw0rQgRHSBXpkXYi3C7jfKvR+VoQvJHc/qK3pibITOJyV
SgKuG0aTTEAiepC7EFd/OuV4iY3Z/5HS1S8fWFCkkIwnu1pWISoUYA+qsOh7+RWOpsJjEgbzcRqO
MFX7pVAUVLVDCG9ff6tmsxkk6bkyCD0V32OQt+BXDDSnWC9BAEUrqyc0VJT/QewP3PLLbhHSGEUV
eeeD7JBVKhOjWcvBFPhc4k8Cwd+jQYjbm/Z+HnIP5QsvcrIvUNtffqVQ3P2J5ImKbNMa442F39le
7HMNRIa+7ng+UAUAEuyTB8mFqLqDJd5yIgOALgV9Ed9JoWdiIKt8FfS6IUDil/y9gANT2kUq2rSu
OMMG8AmKqUIURHy7J2dc5Z7TkSLFzld0TIp5KvrF5Yw7Mpl5D9R30Y1BkbmtmaWKimUlPMy0tcjp
6t66N4ClzuQNRZxlQGZkFyRgt/WB+ReiHlyy9ZAVE2EKbXPlNz0m6VY9O3PB7+jTme4ePV/mQEZ5
tR5s4UkwYmQE0BdUw3m9X/7PQu6cA0CXGahZmo6H9ZIGkxU8pb3U+qpmTG83QYXaLO3PBMxf7Iu2
ax8POpaDA4sxDVihiQM3bgizNFLz1rLeUJTqEqN8bpegPhaa3bX+EPDDqetf25w7+mTxzCWQodSX
v2SmIr9MmPFPiC9+pEPgJwS+jjy7q6SR0Vj7+QA11BfIYQOXslsCfZIDjTnh0hl+gLgHkCXn729I
Iomc6DoTjvlS4Mwrteds49lxbJu3+VR8gogL8611EFz07TvJyFOvMlP9O4WV+DvBp4Yu/5+KI8Ff
6UP3+dZCf1d62HCAfaeDg36r93n5LS6Lzg2JuWW8ZVx5HtxtNAVrfgfodrIo5sc9KayVZjPNJag3
RDxEi+JHWsWIbCghujOHAobnzba9gJ0sZyEYjwYWv9I0h+ta6mW0oqt7l8siuTxAWJJmzJ82I4OY
AkWPm4Fw+PQMfymh4jX/xHO7LVZWko/Q7lEVkBqTt7ZzKQ5vfOofiKzrvIFS3EX51bfvbKLPX3Ss
bzGucWl2/2d2JGYM6jmQ8wNKZ6iO4r2ugYn/2KsRM1n92zFKm11h0dMI4hv8jc5zjM71jVOxE3er
XdeyJLTIjW/RDKzq2ZM8hEj38hU2JzbAr1fq3501kMKN++TDY8tObDoYEnUWo+K1BWV7+eiqbTF0
LpfuBorjGS8d8dizjTD/bHrBaWzitvi/ZqJSaY+FR3UCqUZ6qFh6SR+0ugXuUIFe85Z7oebN1BDd
esRqetlOyCdzmUl5A+y445w+5S2o2DvKH01DxGe6G3DO6tghdry0LxGrkzNpgt9bS/L90+av6PC/
QwnH6KTxmf9KkHC8TzDxT1/jnXR6bmEmWFPbRs05yJ1sK9P/r1xfiWgfDZ2+dxH9L36CDIY96lus
FUdjJPoEsQdJ8ojA9ko6ullUvB5mYg9q3vkFidmB3+oV376frI8Ycp+0REU0XMHVNs5UZlqhzyKV
hCiuM1QI1XHOzbHOrETSTAPr9uM+alydbFrtmPzOn/npfNGRgtj2WEhjMCwQm+T9feNbR7MK0DON
Sz0LzWZa314xI90ZhDe61yGY3ngQudghgPBcgV7gPlKDdNI7tP9Xq6m8cfzD8yEzB+N5Wz/ko5RW
N1XxrMAkt56X9XB88hvgfygXLCiSuKH35aQTCJAxff0kef9ct3kdSNmLBArrzQto9L40AzDSjOTR
zPOcFn9hSAMQ6Y4+FsYeZDO3RYN39pVpM7v9X/Z2cNV9WigQbUQoGrAgNID5ZNbBmr/ZgvaoH5aF
HuG6AGcCtsqpRIkWU196udJW6Pe1jkYp788GIW2dP3dTvBlDRCY+oByFhf8c+QmIKp5Y2N62FsqV
pJbBtfaJUpc/GmsmGcYDJkN+kUPbjW7kcOgk6tPsqN4vlKqaS1A1Z1XvWVIAl3NvW7zMiYackOr0
LNYRSUV9QexzaXlmXpd13juepWTYIMX4hpTcq9AAvfuWDSWk6cZbaG3f058JVkR6JseiHhX7XXgF
g1CpaMfw02Z+IXA9NmP2zOBPo0cBFerFKhTO92Bp+neu/7dD5kMv6UoHAseM54YYqFsaI53g2XT+
mTPSz72fV+eynKYHLQJRv60umuzfz2weF8e+vnm9tzUh6ygLw+I58AL5zFyejcpBNFLqTU8XHt73
HDzI2os3Bd1IEq4LrXYVJiJ/zsnNTjArY+0kMchGvMmDgRgLfuBp5p27rLCHtt7FzY10tvDR1p0d
PdASRGloPnAM6EIzgfvKOQWCriVjVYN/mKxYw7EuwwBMDbLRF4y5sluD2f0TOJJiZjWjzdqFd5qO
/2QfKztVnVwpW/mHKuEEoGEkX1X99HevsCUDHvfdXEQHbPrDalj26qQiDBg5mt1r7FZW+RTRNDTy
Vk37KOpYraAywicrBXvDEPVv4fV+GUzCcv0wUcFoWprpKIOnGdAVZV31gQHPs6c0SFbVD3MNWtPs
PFc3Y7pnb/GMP+5wZLq6r/pg5jkR3hWnjZr5rNduTzxHKnAlcNUppXNDZCFYy4JYBaMNazBcfrih
uUVyBXmXK/3AsnreS0HXCDQIlHY39bg7hpPydTnFZtwxQtDdgdCPSvMif/W0iWC3LKsRBCrUrw+P
8QR6FXFNY/gFYGhTTNyacdSElcPfElKsG2MLK+Z8KsYZUX5L1/dAtn86ZtAcIsX1VBl1M7E/+g5X
fG8VS9Qf1bzX64HXwnkOoxd4pewp30aV0Wt6zFbmhUxZ0U00FxxBgVAh+q9HJi6dXtxmsXDXMSdU
zAlDNpZShfBrbAWpi3usaY9+zP1sW4KeB0MaGNu4MY1cX1OqNgVW3Vy0W7/QWxiB35Zil03bIx1L
FshZd1OiTmgapThazPuZBtfZ02RRWYSJ/td5S3BTaJAHiqcg8C4iiUVHufpdoZrdAv1gXW0dwa83
roPP0TLCDioAQwHQdasYTtOw8a7GWJ1qV1w/EyxE12nEVFef7EuPNO4Aoba6wpsCvCbW+VIMX30x
lifLzubKFitmflqH//SjSfp5jWHfsczLkgMZFNbNFfM+M+Tsm79HS7V8ezITlCUKIRYG2Hl4kW3x
FaKCAMX56a8TSVMBEvr4q/+gsRBRrihgqVviaVxSkzNVZhZm+XSEe4QoT1C31rhWvwA/kcv+XYgn
3k76DzPtjFYL/YUHbW2twAswm83SWY4Lf7+F3IUgg04DQWHcOViPrPThEFgWRmK35tMNxc/yoKbY
1VG7qDk/D5OkZrD2XrfZmVa6dlAjrMTK1HCaOwRXJtmwSfiTS+pIaRcg8tjPdUzbv9evnKU1n/yl
GSJ3IMAeb5izaXyKOk/COMndvdW0mhB05aJ4eUOnJ90d69lgA5mCMiikkuM8U2XdI76i393ci4l5
2nrACJtRu0cV/jqgXl30eqpox3k4qsCjj86YR7Nh3P1us5Dl/Gv1zLINrcTNljTREFgk50ohFipP
xUb3MOuADUNQyL6BuSrGJ26hGyDfeRw+jy6/0yJDC8xxAUiYUJEomsnW64Sun8ukXfBj8J92NDtR
xpaF1yA6ave9XCRc7/oppayoF4LIaxIc+ax/+x2GVEHDXQ1aZsMHQfTb2c8xYYMvWMHKeVi6PhCW
JSWRiroPqXduGVBKKLwURVFPZhxevk9KAeRJ1uUCXYYyIhVnUl+gRqHAWRY1+BS9CUPcc5jge22a
pwYdWr7whutyZDiGWG82537/HdtMhXeOTZXSAeilDWnzaaVg8yLjhBYpuFz9yjQVtOCohJ58mfoa
HH3nfBF9X/9T0P6xh5qiOkgNKQ9NYSYwcQAKHolhbmLDKDkAoanlW11nD5iIqdTATZjQbn2f9QMV
3dJUm3iCjaabPdUD0YG6NhvoIiU2GGjJSSpYAveKWxp+wExajgSwIhcSIiOmfw6zOM7yhvfwct4v
5kjEvFQDk8hS5Vxojz9qw/0Z/vt9QaaCrYBz31W79mJWzwGHxdK+UvqHWl9+UcBxSkKmMhnX/ir6
kFL0uEZ1S6vn2Mstbm/thuaLPbKQo8FRgcxEkh/LApl5owoehk4NAuqnlmDmx9I4NQW7KB0D3hZ+
Tyi2N+7XlZdlwEUfFtZ9x5mS25cE0DqZSRaEheurFRdoFCFTEwvQvwDsiGUxXMEMTN1g+4iYB7ex
ySu9sqrqQ8cR5b6oNaaobj7zxCwn4tb7Dr6c/GzIwNj+t9C4x1a6WpFONjehghKZkGayjapXqvYZ
UDjWjmsOR77oufMY6MuWCjV+fZlZ/nC+NdqyXPeLnp9Ex6e55M3sdtBMNoclVX9Qhz2bVn3R4HoR
fi8slGQb+py1omNMZtP4uZDoSfdePNZk9jTMg9SvBl3cKaua6klLmFMWh2e5TitBjvDbiFcGGtmi
fQE0jQcZfY3CxRaVVND2w+NCFire+vYxKBGwIGLpPKRDh94GMUKrDgVqZAm338Z6W4GRSLfiMdI0
/wXNGp96dtxNf/JCnMj3/AL3n219/tu8NcgQ793LVcx1wQlkMeDb0xAP/A7kYNGOTpkRyjJHYect
0Q6T1pwxoM66yaUGsrWcZl+8yUWFpmD5XWo949BpCSl7JGX1jbfnhMqflx0Kamx1SL8z7B1K6qed
ul1C1KE3EXExf4b3Fw18rXvhTMOdXzDQlv/wyMmGEZdLmJwklkL5iuuM8A6vNwzK9P8cwLbjIR35
x/GrMN/VS+I1Gb+YHPLOv1JQEY9IdWMcvPnbN7hxmD8CQbs1MBB0GXZ31HFBuKbnAN1mT++pVAoS
ViAgDEHaI+aDj3GK7iAOtcAUHmiO1XkP1ACG5qGzR6KcIR309n8wIm+zWsY243d+Z87xzrjtYTMg
otoLYU4m7FUeloCYWWjYyp71j+711rs7KH4PYDHXeBKUC7Fo02wogFsxPfqmLuTryadK4JXNLU4T
GHKYIXDNvw7QLH9PiZ7kSxpsZ/ZXHb1Cuf/znT7bjyWAjf0Zc7c8AJK7ckL+XIGa4DnPvNEHhYPC
DWcodrSo/Hzl8mYpMtqatBZAN7GKycfku2VW1y3Jsy7CmKJ2366F6Y/HEhFFU1WBetEIpceQPf5z
EsbEPKYgupMAZAVzF41MqEPFySP+cuITmzJTAxtvhuq4hxRtMSgSyMu6D9gx+AWwc7Q0d0IXt5Jq
zCIExTFIgEOKpgh7pCVE7gMulL8sNPSD68wNwzstLR0zNTxh9wthFuifKDvPnrpYo5pk/G6vBKV/
QzRiqv1PwQi9bAbpz1dJqor2kQzeuD+W4/9rskqBaPeTocGwkmESSAfglfEcUUFLBjziiuI5SBe/
BLsVFU8f1J9BtvhKw2IwDyKDUfXwhSOGIYPBGLbAmetT0CmmdeufyoXKSQQRxShRJy7yxLPoW+Zi
YSEUFuFy/6MQUHNBuVa7LZXJOtZJR4m7/xzsbYTelieHnhVgu7mHaoK7T6b5XoWC+lK/2fMv1XQL
UM9s82eybpserp4/p9n070JTmw4eympl3KKaaDJEhKhv5nwxZcEqQMauWTDH9d1dpoA+oTfuEvTA
HZ1ScTLubO8wcy/xIq0h36ixtWec2+8Id4WS0B+2usm2Q3SWpWnk5C5aa8df4JCIKL2SZQNu9QyF
weaa/6Z70yPqyV5Dpz7kxA6AESY6MEA0F576EtBY1mLsVzZKLuA/xMi7flLU6qsdvP5X4knOJfDl
OWLASolt6ZdHv+DwodpPG8h6odJ5JTEovV5G/SPiSQsOY1+Ua3hIV7BP3qAiA5IZrhiAzjBj7Tvp
1D4p2kMfQp3SE4p8ZeSSc9ep2TmwCjqg9CLZdAyAQpoYsBfDJQtQgtpRX6E0QfCm/iyF6c3+2KcM
+LtYZW81Vw2RB0QIMS50iv4DjkCc8COUKksPnot5Kq+iMvs0P7uyZU+0wjCPT/9AEab5MIqUJFLD
sK+FmSP7yuTLbGm4c5jtKe8eI2U4V5cB3lZO2UKnD1zEmIiYCDyIQSDlhk4p6Z4Z5iaI63GeekjL
Pzbpnwy9jvky6dWRQ6tV0DJpawqw1UIaXio0RzgXGt0dp+8dXZhJUq/S2+4i52jRTlMlHRQHk2Wo
gJQODXFDdLa9izDqNeth5jpjXy3sqwo3mWmOvhbqkalBX++AbJKqvXighrSCVtIbUoU6E1ajGbqV
G4ptz/EgX2mJ4Hu8WHW8USpJlmH6pTwBV0mnEIE+a20LNhwJZZsfWRiEtFiXsCtVdaHmE875My1H
+tF/0O8ukJaUZwzBG4ZKpFq/yQQow8kqwhJK5UkASAE4QbGOM93Gmw8+PVgjc201NLIwFVA6vMmB
yp03twUDKm9V06EpnFnabh0XT7aH1l+7z2MR7FhHjQUVPqif+l59TFRE+3QbYvW5ihXd/DTAG1OM
mbAj7wIOLbHxiDPUHJ5XyowdCXpQ7rKv3mSkSqvCE3ljee+bKVmdiOonnSHg6tKgkoNZ2a1BvfLE
GcS0ylKl+Dzw+39TH4Xrubqz69PNV1oSAPVXZWpFxKqCxSpaXY8IxQWc/Dzrw/lBU7BK+bTCTopc
JSPCS2gYcsyyrWMGphkbiBOTfzUNvjsCRJ3Davi19lUHZthpgxWHkIh0JOZcYM4/5hHHUnPr0BtT
J7JdDMdbY13dYBDMVe+ISDCGssduF8MjypY0vOnkX2J5GU4PGra4mHAzaaJ9S215tcLl9VtEKTDz
Og0MbcRc5YpGSncAVaMGKLN3RGtl+HQrQF9P9nTfNFie4CU5wxW9QOREHw2Dst5Sl8PK8+t/1mF9
6U9o/8pWcSjAq27q56eU7cy5Hxs8lLCrVUf0r53l+kPLJ+GP4Dt42p5U+BiM7NMHY9FZ8Aqp7pEb
JokqWfXcWOzwyZSfX0kf3bbQJ2rZezCTcX/0ihO3vNFxbAhnqnOZ/FOgVpy/60e9VPlcA4fbCb+8
jRWCd5AGLwhEfulOygLlt0ikYAr98hKoGFDDHqXAtFvg+PNN4fmiewwSKqJ7phqnRbO/wEWE8bQf
+xxYF0g1ASrevE5OiG1PD0P0zqBjib1215bMyYTUdrbiNbpFWEAjI5HDYsqjHUmwBoDSljZjmDgZ
iq77rBDLgRYO/CquNltMVzoO/LZk4tVW4u/CaIGzb38uXMJRd5WbL+8bEcVq69mX33zgfzkaBPHu
xl9qglyzQX42mwiQK/G8XiJSMab9TXbOtTF3Cdb7uhR1vIQuE7Z3quThPwIY55gWre9f3g77vWxi
+i98VphKiDqJdRUo235ajrUQ/RXUXmbjEJNSUMpCvkXRlFklvRuZrnt2WZZ1fLn8Yj2zaembrfFP
0m9tSCpqAtC6mck+uGmxh+XuuAYhPhyapmVtsOoLs5ZJx9xZb6m/fy3M61A+ZqNZ3Tx1ryiYECgn
B3ROfgmFC2iMqqM0qO1/pgPmjchsuV4Mql9uHFbi6VvnGgdpf1tDLhqa5sc5IEPQ1UhIJW+OIdKC
53txe8DG9SDB2qtx+uwGlQTaowr4hh2+w9Gpz2RRk0NQJO0hHzFCL7pNHSodtDHM73w1G1RxwDwP
zvg4GJjamAZEOAt+xIjKP026U6AwWhUjvsPQbSy2dBdSzt872lmODBR0fncYjTv8NMqXsx7TadNi
0d6oyMv2ofkAq8XlG4oWwnWOc+J0lPfXmDMjCpy2ahmZ8SJEO15viw538hduouYiD9WQCeWkn72L
X0jehGacEO6vi0hU2J1yuGAS0S56BmGkaCuGqyDn8Ba6MLFAWZq8jXGxzcSOTFmlNuFDWE07cwc3
5PqiVYK/O0WYPzsX5LBRgAX06c5Bk9adM9VpmO8gn7bJmooG137ljGizIYDj8DVvi2NPoFhExpcL
M/afPlq+pPpLnfYQHzkAKeCR50L/nQV1oYvykNE4H25YlYMQtBrO1yocKxaeGToqAiFcd9r+K9/w
d4dyydijaDjhkzHN8TrpRJt1xGRJ13jGy899L47YNm0i/l26ZfxkonyqeADqOQ5OWU82xnSJKPtw
xWxR+JS3QzfUr1QZkxNviDY6R0zkJhi7iM1pICs4M63NWtJlcX2MKVJXmy//e2A1fu3U6ItWUZqf
NKVfzIGvrhFtEs/4HCVrmJ7AJxilZQDCdehVKSBEpWCsrFSUbX7sicXEWBDIDCRKlA1laAOV8Wi1
Ad1MYsHRQNkUL1rEn2Gpxn8H4NCgH1yWJQ96SC2ibgWhbYVe+wVLdSPwW/mtvZLAlQBitPmc0/Bm
7vT/uCWo9NlrP5OkaYU13veJDrm1j2RtPvl5KkcZ48uUgGxnERBXjvge3ZsOg3ygt20JgFOrAkMM
Ox7RbL/U4PNx9a1RfEqvo6HWBK8RZUPL3e3bE1YSJH7746hC6WkRZSshPx7R9GqKy4rUNQ2DXZJa
EShxyAK3MXzp+9nHg0ZNrBMIMfMB4ktmQgjSHg6DgFBz5Sd6We4S1yeJ+HO8OTW5HGPi9vIKnIl6
wG8uurDJTAgs9iU4DElWeGCJThvM3xiq7emHfLLpad3FhoIHs0+E3KxOUA2o+NkqTr6M5ignycvg
DUcDv8Dr9rz24kZPZIf2IYG1Ad23aj980aOucANYWhSl8NGjzufTqQxuywTdS0s18mhccR6ZsMqk
piVdbMPYnVULhqU/M7/6dJOxr/259VYN0GEeFpJ3009B1d1dq7l26afhJ7gcqTGfWEWOoSvEoz8H
DrBtAd3QR4kFhcUunphuWpOmORoEc6AdRtDxyfVKfdweHmpLCxjzmWBwdp1XpiM7G+NXwIMyHW1J
byI38GO6L1ytj7BbFbeJPfMaU7YWu6gQVmQ3BSOn6Mja3BXK212wIeYAAmb7iXLmsONbr2ciClbw
KNjfq/xI5Q+jy/yI4gazLS93qEM1zXEHdQwjiHcUkblKZtb3NBviLV5K7g7aQ3c/NqjWcMtJUOgg
LcfhuWfBlxbooY6EfrzIDcfteV+F7ZREdjTk7lFzlPI2P+sgTGiZtUMc78dHN7wTZKkJcGuUnp6p
cDf4eAr3aqTWml74cqPtdqPpnD85W+ztKBVwiepzxZU1PN9tsoLyCuXOVsCDb6MchMZ7xEbiSo03
yvzDJEEEBvC3id4+PZu1olUUzfOt027CpzC8Mh4zRRktGzRGU59tCT1tw7DM7OlKfJhBkbOJ11ui
tsh18op4+s5HkVZ4ZqBxr4oSL7pkgJsAtCpf15uI3zIYJRfDM54V+TFk2bJuOioqPZ7eHPyezu2A
+Zk5TYgjf0GoZEUcKa8R7CtJt8O93+wtWGomNFfkc1WBNquC0fo2wjIITmZFlk4qi7IOiSiuyxNf
AtTVISCgYmLjvBPkZ54itEYfSjpOdmmlQ9+E6htWqD8B1JuY/mMstZvw86d+y/aGniiJ0iLzw0Wl
Ciks7oJubG9uubXDhnibdeuWpiiH/19ESvXOxqo9mxXGOtMbQYvne+UzdV/PksmuosbMsy8vamvH
YoZznt8oPR9mPnT4e6ZzsZzSxDoHRmGWIPMCH5lVTtb/X8xLDmOS20kbxsnzgqQJBhKmi8RCmH42
tMMSprQPa2U/InL7uhXYvsMfOXd8aFTaeljqfgwAVzqUZAEgMs6MXHBc/NxdIhxzpx6GKIpqhCqv
6XcHAZQ2lDsrPhysIAEjYH+8nA1Oy+3ydNQkros5sooY4RsfptR7qQfsFKYuEhiqZmi91os75WhJ
bfloEBH/TQccCisqqueQ+Xf1qsSecDdsBfy4fflO+6KZELtEgo6hPT8LaFcKsbJXka0p/UGU4zpl
BOOrhhKONQnkWJpceQyVNjL4gGj9D6AtryYimS+F2oug3slaPKIUYXG1/T/VcJVuA4qps7bRxEm5
+4qWVkMd4K8I1dWruaKjT9R9pFCNP4CqNiItJcBNaqs7gUdWkWPUGmgEct2DbX1jmGmQfyK2Tad3
CEZdxg1RyK4bdpwhShj0MPByhWVqNuiGvT2YvuKmEksKKX8++1NQm9rfaoGOGeDqZ2He8OTpZz45
JBa+H+ConyUKDsKRlH4yJGBT7aJKssPrrBQPRbizMkg13RA8IKo61sIaHAk0w5TaZedIf66VVF7w
XXWJefiAF1/W93pB/V3OlOHmswdNDpMlFoe8vgBj7IMDuc9g+FuTbpuCDvlnAUnkc3CQgxEeKJGH
2P6CJsjNRdp2lK8yYWtnCldUeEC99PkSf5F6AbY8YVs674ztp/J43p4MpbTqmVkUD4zRsVq/z+Fa
WvgfTAuypL8QVTID/0qMYaHFTJxy6aPycpR5LNOLoY3IfzfyWCj8oWzXShs1Xt73JLJzUfYroixw
oiBdSw4mJYpmDpcF2yf0+DV/W1KLdCI4In/D/Njum4DzY3Ni1iBhk2cDKFfmdKySLhYB7bbp8/Hu
xklNGW60BQSMSbeyCfEHsBipvIYZJp5djb0XVLUY8MkFKGQ0GILuf6XQlXSQ22d41uA1jqShav2V
3cr9K1gr8aUKYf8PR5Zy2xRcqNtCby028zg2UG18oGRAbZVRkGHtk4mK5XxvM42F4naCesIMR/bZ
Frwu4IYx60Q4GRtik92silxXOEd4l614KAIV4HWSJWaU5xwjO797tZCjA2oiPmW0OgMYYfuFWVt/
Q4Pa6TMJdXHjbEMlqGKfVCyzc4JUXTWUwYDBDzBAN7K1q1TIsWVQd8X0hn4VwW3VLkMkfAd04tkp
5aeC19NwkX4Mpa3iMA2kxUPSHx3B5LrWjVKAC0tmD06NrgA8lZ50Dn6ZEpfwlvyMhm8HZViZqW/y
wJTQl/yLzL8ce3i3FTIOTvwTGshTJjTzzl6YAMPSV/sKFCGS0QJ72qVwJnpDR4EnCwbrqLsEO1GE
jBpYrpEuArgQyV16vc675vBHJHf2/sU0wSzFhtGM9fqwKidHmdlQhZRPENIwg/V2yP7lUUWvfwwZ
IbQ7Xil3vNdheBVY2wLAs7q88V3WVD3IBiT5Rjp2Y/K5cLZ9ka8TYCfmI7PSW+3rjhoFaR8bOPPD
tUlMG0M0DctNvHRViXXu0zV1TiKAKJANAmHRL3J6VpYY2NiDqOlR/4XmdPZWvUbowgVZUw+XGxlB
G0EDKp1zWXn8eBsbrfty2ShHgxBP4ZXPSY9LGv83p4mRzWicBEWIl3e20owtB4R7fVBCPF93iFBL
tiK0rn5jz0lqIpoN8CUo3W0xLtrD81b3hGu+/RkXgac3Hd5QjpVrofvMsiCm84HHyUjQwfYLA/6t
QuBdOooeeYFZks+xcLHXFNqCagOHcnqylLfmrHqtY1QJzLdyG4QGxCMhqWLMXDQwIMd4cOMXWV2t
e7+7XhZxEkjzWtvQg7fW30lQDvqr4xHwUBxuq9GQRWPz4hJL7Z4KEzayeLyFpY+Y1Vi8dmWkgH0z
ABfRSqIbgMvL0FerAi4ZPS28luGzW2HbJUR2S5ahLUUz+1AEI1Zr8a5PzyTxfn30vPCES5cPgZOA
kZPQh2Sl6GYFxmoMBhmsoeVQUdR/7nP1Aewj96LtLjpVeyH7p+35fnkCTGTBUcXLDif8NZmk+Zuo
jOtM6LiEfYN3d87m0OfiwXErwuUOpi8yd91rdtqUDSOhKwkjQtvsAwZ3IvOd0lMrCE4XDdu2alRh
+vkHZ0jjXqsITV99L/Q2xfexFazvk/YRClnywbMgGm9pe8zeoQvArkYD0XLkoBkgvK4Kc5nuGzas
GxcWaP0tIntr0wGFjzvDTG7O5WQEeCka/jZPk8V2leUb0OcIcs3eZFGgt8hOPFtEnludYyAajNya
stCOEFeXTxK3kC7g8huYCLijsRmorSt+orjTBPy4cwDAIhCbEIsH140rV4zs7Elx1CdMkcS+jc5V
dWYPlvuW09Q4nU4P+XupMVeLGUDDTXO3kkQTjUQ67WdNYIOOWMwvytDVcaTj2fSaaXaM6zLHrdmC
NAfLE54hZ+9RZw0Gu/+z0NmN3ZptH7+40e/DJFSw0teM8Uk7Ufn6aa3NQCy6mdPAQ2YlvOEfXyFJ
iaJFStz+H42nI1Kw9jIZsagAKU92bkFWkeH8inZFGEw+KiLpHAKXZMwFgD+p/zAuf82DTW0q7tkW
pJEtphkPFiNqhZX9CC64TWjTmjUZs4+Txtzjpw13vmIm5JBqwQBMv4N4elZ5dS7ImKR6Q0ADSlmO
/pXSEjdUkUvc2CgN8mDpnF/8U3N6ROa8+ksrQyHktQB08ydIUsBdvQj4MN6CKXsZrgk+GUiMxpth
zudA4EukHhyRkWwmc+qAdBLlPILkKU/pMw4HtN72ZJ2YB14iE2wbsCvhVQol4hlBk0P7JIUV0ilP
bJaTqBlQ6CKjKbLn+R1CeYWOIHWl+hz9FeOmzy72oxewTLo332aYUaZnX3v/PPlWBspuhnvzUhKB
DdwvvCXQQXSIWN8Y8shuxU6B1uGEVnstb87FJgrpTOZ1edMbOdcPRQqJGwVw/yYea/T6a/U84A99
VVwp8r8UhqKK+v8+G+LrSYHY045FzLsT0Sj2+R5fzv7I4drlNp1JXQThjOErIbHZVWAxosSgeBTC
fj8YJ1OrWWgSc1WwFahLymQ8TioVIKCFd3bAbYZLZR8ECnyjjQwOqgaX54cSjEkdSjR9GZNVcfVl
bRQp3DJpeeOSgzyvfXLEYb8TFdI3wPYGcgQ7QwH7gS3hhax4F0ZO0ZXIPbrn+26CA6JGnZpcv9ss
mwjQcf8Am6tYYpc5onh4XIuKLZZFmz1B7EQfI0QHnVO0HaxWUIuHG4lwlpj6sZ2u3Qy3mFrCbI5B
3vgYEfpX6F4/0Xt3oU0a2QZkWzYzBBvU47DKxZoqkcy8g9IYju84mbx+5O27izoaEaRW1Gejgeo7
zxR/Pas/TD+UgbbSPOR4Vn3tyr1LGZOktbvWdsjVK92dFQxk6IHYCQkhbPi1T4loBSeiyOs+agkP
RCVqVtwLmFRNWuvUfdTihW1hUS6FKYldChsxX03Dwlarduwc9/lp6iaR13AaWWP1M3rD5gHRkAMx
EHck05wgOXhIRj8XAxrt4BT4gz56sFr6zGORct+leFyO9hprQMMDyo0QeKAfNjlYU+I07wts9lpM
PZg2jBShljE5rzOS/N+b6w128svDuqhTSAroQt8ho1wn/Vwrq5eIbBZmVzMme4rPi4MLCdXMiqr6
b9Vjy+XYMKyJ9+jm11PvlHCkxjwI8gXErp8uXe4FM37Hs3CCM0/D12BMu0hvyLHJj0xsAufJ9RQn
H+c/p+FCDrgMBN8Fvpr7yH/0UKXm8lHB1avTuQ+a0ewGOODYMLXlMuJj6mCDim4JgYEx3VWtEz2+
FONgXxs92GszkYsKdg1ismWZbWlTmxI2sA8bzpR/sMvdZ8Ncfdcvmb3TX8midKN+l21JtPgU0mWv
y6GrQzVqBvEtaMkJS+m9BV6RGreuuUsdq7lNTCVQIXTw/lG8kvra6g0+13LhfIZ9enUIg7wSSDQB
DzPyPVQttgw3G2O9IAef3YsBNclS77qZKOb6cF1JlyLT175BKLB9XgDWKsfg7ZK0OIDIl1Eo3xEb
CpCmeS5AbAqJ1Sdvp36CTNKkcbkzXSDD9FW11rXyOgbNjKNJqR3WReLafCgLNW64HgH5jC6vWqEI
ggdVbGK1nSg6+d5HmKqEEeOU/XTiEitjhyvtl2HRImjl62aU/TMZyuzUSdK6rQyXk+wxmZyoB4Xs
MerZu7H+VNAL2Mpzx5vpP+G9TwwIw6iJhiKT84sdu/c3Y6/gkr7G4q9l/wHBhIIk8IsyccjxTKUf
xjwzoxFy9DXzF2PpF6qlopPEbFk05kSYmI3y9PXblEPeC6Njy7e2LYEpYu85WvEIU2jruv4xt2JM
dJiRpdeIwkJfP2a5CllxIkYU/McrBRERFzc1C3LW/PZPZ/qkIcvDBmzhYv4KM+QSj90/4+dwh/An
rHGzlLKq2yq268banPYYDvEDONAToKwZDggLzATmRxED8OJedP8xTNSmr/C586BXcppNtNdkGXfi
2aBftfoZZ9lmYyhyK5bK4f7MS5nkxVQBucbPBsRfv0H+XZofYp2sEG9gWNaz9VN2HCH/gh6AOLvc
oGYsNROz9suXB+CpAlDfqIpv8dU+bt5OtrAeEsolovxuKwxTt5wX2UuRjkIScjaD2RVjCcDUEIWh
TOUB/DaHapmFrPSF/ULsR16N8xkG43EXlzXkoMpNDjSHAvTtHtFit9k2iB/sBwvwtfYGxcALeUgE
0wCUoosP/i+OVAFMUJK7Vurd0QThJJOCXyBvFaYrJ8UyPL0taubO/34Ik0pfY6YY1fC4j/BkC3W4
doZXDMaccAbQg06RutjNJVYxgQrh7gV5Fx5IgYOn0pFy/POTvFR8HthbNKSTcXd3r0eLQnpxKVGm
4KWFw/su0Tah1kQ4LRGzbQU4hI/synbxKKtWkUi6Bs29HjVFAw/0DwoYmCeSFmx/sb/FLKWrDh+D
MolZcSK/CvDRnqgfTyQ3GB5xZXvg8GVTR2ukaqytSAMcxJCX8NRBWsdAPquhl8ewRqe53kSS7lny
IQ8S8rPVxta1UWcVG2mJOxnpxUMKurPj+tARtNGgf59A2UYEVd5MW4xWWJIR4KrS0HYMDaaeocBU
Qpwb82P5yZbeSCGH1mrE3dvPFxzanc5oYtP1ghZpEP4RetIA7Ds/NFmZqpDV1WK6rb55PjmyJNNW
zop5TWV791d5uAfQ+csjv5FwEknphWlxcVuaZEc8ZIX0YQ9rTt8h+bli3fIAzPsHaXZmkYc7UkSR
oxAzkqJ1TKP1+n7aiXOcfU00OMvU5f/1lkvx/8S1CvHHdrOo0AtbuFfd+bTkxreY4i6hhx+NAO7o
BQ12oKN47rboBIZdB4Jpf4rh43UFiT/R3yWDT8jED5/Bmx03hsR3O7Ks6lTrJEYlBv0DXPWCIiIL
BnkEMTjN2gQJBrNgAl8Hr7uAzCiEFOTR6WLpHd/JRm5QobsYwU11fxcLO34zA2UG4ETxHuSInSu4
EIUWDa1zsBE79Jaiwzb3bD4P2MNB09Ce483hE0kHkTk6vw0LNTFJyok4emYS/NuMe4HXMsdmAsMO
eMO/9fAmldvmozTmug2fdtXKFrGYz2avWbr7Ud8FeyhPaF1CHnKinvOQtsuD5sG7V2EUXBChweGX
s/Fm1CG97JXT0EllFJ5lu8SdDP8x7FER3RkYd7xWcS9+jsnn5IUyauMzbX2J08iUwxhO+N35hQxt
OKsx535Vy0i6NL07/PKnhdm6nMXkU/xw5OHyT6XonbFAKEVJ5qHRKOYQY0UpPOmHJV9zwRX3qhyd
TuZpse2ykIoHng7HWgy61rUWpyaQBToLaS+Le2MX3//PWKBGPUyZDFppZpe6DN5sw/neAoJND7vG
Ea7bZkCeohaNDgU3wGVOCUDLEhCyvkMuPAz8RtbfJWMoiwylLJALiuBNPk21e2vcX6E26F7YTUZ7
t6mIQFZw/yQhtndQmlugt1lQMRkrLpH69wGPGRum7ZOLjrPrpzxnMiufIDV2esVnyTjIU5d0VPdB
1OZhDlQ1yPUrHPHUd2WeFhyL62jEC0xn4py8w6Fqnb15wwyHXChuL/T7V0f/DEz76Uk+WZxjLtde
kB9odfrfvR7/7bSmrBBtgOOdHpqNRl1XmC9566QNH/0iPDSgXOQTxUYz0l/Zvf3LI3Xg3gibnndO
9nDLq2UIGvCjVM4Q9GLo2bFK3cTjFLGJ59A6+WJ0qsD8J//k5pkXQ6XV6igetKrip2UmIjqdIqbv
YGCweeQ9mCDEJbQ1IVJzeITpWoK82UJfwqs0Gr33fyvMnL3GJchZGz/xEd3M8MRCUz3VoB1mtRTA
tE7mqhRdtsNNGYycuoOhR8Q3qv6JBDN+Fb3tJSCfl+UHfenPhdMJcvNOa2ym6kkf9NQlTAxMVzMM
ZmpoYR3NEHFJaH4vYJwsHBgOZ7O74DSGCwD5HQqa1hO6OYQcd9+uXIDjYVmGTrsshgAos79jylkc
mV63D8BM6rg93Vfhc9JFDmIH/GK4CJ+DFBvKWvBEwxEuWFRc6+5YRcaBVkc+7f5VVKADATsDabzw
++LC/AYKh2TofbdHxckttg0fytaTt0ItwuW6WOD9mYwKTPkrVVHdpbrrqBVJzcudUJsYyaEHHDE9
nmHF1WiCLothuAym7J/Crssu9CMh3pbJsQe56it+iT1YnLGLxMS5kuMZQxooh4t+P9G4FwvvxuOK
azq9NNgCuPQ4pHU4Sy50ygOuQ46iqH3q1+Hfn+qAwsCg+KtH2R2Jr2pPWUGmKtlQlOBfOsZ2ZjE5
yVcazeA3R735fNQRMGX5RZJpXh3OBCIlXKVWeM5veFNY1Tw3XBZ+s8ETcHNFZ9NmuDs2F/jt/lWU
AnfPl3lg4L/u6343hOc1N4aFSuasbgrzCaBdEBWdRB2rFcq3aDDEadd6VrTzGTZTZCTlFk3IFbzc
zDEWKM147nNfST07kvGsgv1wfZSDm0v/eO2vsf1ViOWddWk+ivDpPjfFKCCLXH8PexK/CJsbhBXm
cHhxbWTF3qO6QE7dDXzrKlapvJnblyVCZnf42lhPHuW0exzfjnbjxIqq9BrwmzQ8BpjLBOoojahw
jEx+9Y6MH1iR/VuyoOWO3YTou85KNXbOcagbgCGKwj77f0jGa1RjRcmGI2rXMGqTTDJazcketDR1
QHhjh/9VBx928/lv32Wo1ATxgboEGQ+zuk6Il1dc2fJ/YPNl/hmWmCnbsNZdirUWKfiZDIa1cSmv
HLiN/oZe+jAzdP4O9kMoKcLv55L3n+MjliezpvDXif9NLztV0HWPQqXRrh/Jlih1q5EE0Pq/3gGj
h4lZL8gQfc0qcJCmu7mKSxru2fA4h8DQQZO0Ra5c0Jt2yjAMyLGe8hkOppnaTdQfVUQOsqwbJLyP
GyXHz5XN7dtfJgzhLCCCdUwRhlGyK0VKIv4bOt9RBaQotdYuZp1zwZxhEeqSDDvCBF9qlZOdJfl6
OmAMztxknWhSx5V2LorTqQjoudC/dxCUqMPXsppkYZ32uMw64c8/hq6AB/VEAqWKV4iuIX+OjNAX
rwMhexka3NGrG0ZiCU2JuC6S8Rk7dwZBhWrY9CvXBbHmm/TOBWSdAqKHcdebEZNJCuF1mODVI72k
27+hf4EqnXVUMrOOrVdyFo0Wp0vBVv8jtQdbJZTBDGk2ue0vqXzXrnRQTl4TJF0pIq+AaE6N4DBE
DPVBQ2yvjJ3VnSk3Rb8AeKaTs7d4SjtjprcS6YbbsuW1Qj1Ak4nlae8mGCA6wKp8yitJu3aOAfiu
6v+JY1D7/OSq+8AzSACm1Wp5a2wtTiKRaegei2uAre6ZxOl1Fj7WmGF4qnRfKYeyez/7Sj2EgYYr
ZFiIOQMHr4bI1aWRu5NTWGzqVwOkAABEGtM7xJ9O0yI4QK1SkxSKR0YGcvMzq8znbrzljVHcrDi9
29uX3jgCX4rrhY3L1DuPESxq1sL/UAJmDKWDlmpcbkHxC0Ar272bGla5bnjBwvfSx0j1SWuzFuuO
2ZQbFoShnXS4l6oCZBJ/2SB1jab7LSyps198rrY0KPcZuQgsVPh7wwFQClljt2i53TMbxuktqEOl
Vt2BVQ+U/i0mVQgKK7D4U+NaTMvQH2AGqG6A/qPTDKo/gzpaXIvS8ghGVluX26jO3PDUK8MbYRBd
I2++kbOaO+ZBV2fjR+OrZa154H3P3XR4HN5KHx0LvAbQxkomY1DSDlJj2P0GV/6fIQdLroXSjppl
O+0BfYJWwjbme9haMBXz1uFQ3bkayzgCntO2tIRyghMlrv3EZ5ZQ5UlisEL8OmSZcCkL+nPD5/rS
bSE3/MTOcmQWiyxPa/IODIEfEhau5iCOC4hPQpYe68Nknzc7PjBE4zUTZdPrCXAdrWFc+1JCoYGe
JfioRpmUqEzHxg2j1aFKh0evmp+CffIcPhJ97ZKsLq5weElMEepc6LnxCVtQAAdrFWMi2rqfpAOI
ungbYWSbtu8VPERKNEellzoSg7izPwjG+8bq/GbQjSx1UuNgzGUBiC0D12FSze94rAlPMiXMuGBe
DxdNhrOEoh3FWmuz3R+vffxSCrky71JpgHdZvDPuK05JeSzLR8K/bFDdQM32zXu98zpFu/rKV5YZ
b0LnU9CfrWKMvl996lc+cxnV3q4XMlhGPvVyXE01issD5inSq9dKoQIcuG+azgEjMujt/5XgNRwe
22rgAaFC+t5fn3YL/TnzmNB6NJ6FbW8KeBsR7IZk+vgA607KXftBvOugLoy5ZoDKxpS0+WH2ndpP
5rbREo/KeYIrFtyV5Rx9jGTfS8z2HsifAd/K4efepSJxhR3TDehBE4omZ9x3arxN3OdQN3pxuY9L
RYq1EExz2SPJFvBQ/9UzlLadcbVOHQHG6B/TDP/xSdInFmLs3uICLko9kKr+qA8/+rRBkI9tCOL+
0wJJ/kq9mpKqvm22dtOfC3WZAwed1yg56wjXS8WtVbLFOFyG5qeXjZuSU643NDa0wQc9YP2cNJ0g
YJmUPKACgOtw6e3pkJpnsXir/4U2HlnAVEBXBcPhbMjpKRlTc8zW+IHDhGvglwH+8hWYM8KjSU/C
fWbYcBxFxev5wIgZjE2IV58QsWbZDljorU2NyHvSSRBJ81qnRbH7O1Y2eRHwkFC9BOAdzkE5FNwQ
LpNrhNrvueJ5YmR2M1ArngrXEGO3mjWAlZoWj/fpKILPBbtRt5Ai+wLHLl1zu/3Br5e1Mnm6ZjMs
LKADQNqWwDxoXNb+zAOLKaH4Ys2OtdgPpKNgdD0Lox2qPYxj6vE1x6Lp8Exzl9v3vFb8WibNc50U
rSMg5JnA5Vb6+d6h0AGYLMVOxPSNwNmX7HOpFhBcLUlBv3m+QUWDHGODWS2jlKGZlzH+UvXmDKMO
fnm69wDqhbAhKbz0STBGh0Nc+UyQ0/P9tJeAjRx0AKP+1tksyLRwuM61gOT1G6qbLUX3MNy0lyYW
VHVmEbadOH25f6iJ+gKRtlQm04ZojVYhuWAg+vss7lXFQCtlpLqdrkNSPsKmUbyQmD/lHvG8Db2B
5OgVvaA7jEeu5Ux0N1dnjEZmKCOp9IqDZU3QUuiVeYvwptU0vemzMLuLjMve0IWoukICZPwiLjFS
hQH7A8W9AJlKiJkwmaABQPiLLgZnpnARHc6RTbWzHY7dp2h32dmMcm1fJh8RdN2MlX2NpS3VRgfi
IFK5o0ORbrHwk83mVYCmi32vWTjZ4Web2z9wl5/T8Zupr0knlDRaTvrA+P8H1ZzPRX4vcSn3BEZJ
d8IxV86x8SW8sWC4hr/e6Qcjsk9Im7keR48SHLY8l82Q/af/UN6EHz++bm3nExIw9xBCxW215pU1
mL45Dfg1I0y14SbK6wtQsdHjQb1IqfNgW8YAPCZ9lsRDfGxhusOjDOboSXtiukdAS0dRtM8kF9LG
WompN1ygY6HBAahFwiKC92jzwWfepEGE8uwwFOgaWw0BOAMve4VmT1IyZrmYUmjwjXFQBQcOPolv
XlSsEOsvAT7TtSLpiI3ZrqsX3L24yUfd+wcxxyVaZvlZ/6H3+cvxxuKaRYlvQLec0Gx9NRMTVsOp
74MyivQedlwOIfBM1MfNrmG/ySyhtXYbiReZbtz8lX5mqchYyokjEDT8U6BbZL+K9FlOqh77SsVJ
egPixD8GiF9OadnB9PBwEA6UX/LNC4W5cBUpJrenY0o7ysZZHZVYcIhzSGWuxngkU1ShiNJpok7h
5rsQN1SJ/6krbHGSGUtZ00Bg8QFoP7nwkFo/E/YuPHuERFgs9NS+BoqPk+ek+L/UGG87QshQxWe/
ee8Ew25ATHJr6yUIF2rBd9LgCX4+UF1qY83egfLgQKPsRoDLTu2K16wm9ywCQ1kvVXGQW+Kco8TH
nJ2i6+yEnU208JvJN0OpAx4npMTxZjQDM1ig8nYeaY9yiYXushoE3h2z+0WEZd32oZWb6UTQz5td
nnJfg9KcGoxUKnUw6PGPpVdVIr0/sja/E/W4E6IhOagACpka6OQj4I19ChGlS7ZCRAiLfzMuNEfr
sMTRl/QH+DNlmyZX6l+u6mrMNh99YKoP9OU2KZ1PsaPwYyV5dfF/g7I9DdNhjcMgf2MxACaOSnaC
StbPke2JCFDVix8HnSpFac3VhUktbMnfkugp13xKnRXLC+aBVVeNkqkeDZGOMQLB5SOp1/gYhDIu
XisuHqzSB4SjTNxhn8Ko0KaHQmFRZ96g03TRm6e03iSOpTOG00UrOqoZxXL4juYDf4ZRepbVsldQ
QcSsjRNYqOfrzrsoW9ldYo+5U+DHk5yveM+4WrMcEtC8pcihNjB8k+vKYLzMuGoD0Mii+kujAuBs
zwLc062I4rDGW0d5SUDfZQLUcnLc4ALA4hfveNQfdVs8w75v9v3MZ7LUB1qPKidqWdOHSoIqNK+9
5b9O0HXztpn2XYuGPuCU1Z3kO/QuiXdy7+dGBstlv8UC5cV2wC1GIjNuw4b0UJBh18laDtmLTCTz
xkYqH3cc8gW4WUctqWkyWz7HBbQD9emLQOC7hZrsA0cuqiy2AT4MFolNU790uAhw6MK2AHoYSr6+
a9NC+XwsGi+buJG1DnPM1cD9pdRbofprihMnPH2xAy6bpbduVhJlReFtQBlrGFM3EzbJ/M4ZGjhJ
ADnZhoS6rD9HC7Mza2xykRnlT3IwcoJxxpruUIq0aHQsfKxpT9I5dpo+1Eqe1VKsfgNRknqIqFhs
ep0X2MEH52sS8rLGLo0LSsvEjes+W9m+wwjceFdsaVV4bn+8ZW7xhH738f/1MGbrEN8kMsLD4Oje
7KZNix2p9iHCVkt3ldBHhBSa6uuRRmQaed5g6wu0otORxW+DJfL+h1drS0ZaD+WR7IIpXirk13xu
XMYCiffDV7paQCrTF+WJCnD/SMM6ZFwA4QLg1WGCtw0sK0JDVgRG4fNGP7k135XBTDku1kQYbQ1X
vBIvKVVMy9zLxgSjSPyMtAeV56JRoBGxFsZJE7XpjVmy3IlDuwakkXc3Azvg4dOCSPYVeiRAOP87
kAyAURei71OcB0urK9H4G8VNS7WKWSpP3y7c9PsQ9FWjm46j/faB5nsEo/FV78qnlpQ40FJLdBL0
y7g2jbzFtT8JQQYnABY8gBi6C2juznzxFk3xuUnzOGg9L7WmfOLEOO2fqNTLMZMY6QOU0rk0E0iM
A0oUsZP/SOcm03/EpJcgtHI5kARoJ12BSZUq1EJTjHObzM9gFUCJdQe5neawrOEUm8QMMIU5RY3E
efvslVznHvH7w7RJWcrn1STsqPfLVLu/gfdoq9oHijOai3azK5jW32Xlz7WUFpdm93GVVWlFOJSe
Icjx3PJzqy/dBqGStVHoFz32880mwYrvYXDwO2twbh/u4x0AkjCtJbTJCz45E4JKlceB2J1QSqIj
QqKZ++MNQYYZLLT/pqapCqeT0mWPhJx3KeSbIgt2U4WSBDmoMuqAWYJ4+GyBHwq+3gGL9JnNkl1w
hryUXloAAiR+Je5yQNTqu5LV42EjC7k6a4+Na94VvLbRO5UNNGQxmekAeG9d0ErlsBXysaWC/UGj
/WSntSSRJUrJMegL2VPjEp550LWWBieHZxu43/LeXjt6l/ESYMVlK9aCJyB/Pni2uXlSfNQgyt0U
M4E5bfCvpbscy8GCZGGymEGIT5lewRnPaBoZ1HvkLpjeBq1Bw/jplWuhX893y1ldkIm93n1LtdRQ
vKs/lipfNYIEVfq/9HP6o7ZPBe/8BYF6mCYfb0/PNxvvq9VJ3G4h6H2xa8P3m0bdUPrdOFPaANYr
T727Y9u1wuA2ZsWEzMVwm5agJ/cWjYY2Cw4oBMyJK2u8qErAcaozUHAOGLb+3lMdOflCPzHNygvA
IaDLLTwPY1PsHaojsuPz6MENOvdwHY4q73R+QxXdhtac0pvswwoAk8jPEYFgqx5x67nywC6+dx7B
FYFjVcMgzX7gxuFjJE1PW9wX7Vob5XJtkOBGgkkhVKmw2eF3JT0AKWzIVhjem8a0ySZNf1VC7aOc
xWh39CZyBwYYr11rkwAIh+XqnjvUQOfvvVXlF1KLgzL90LSQGHDDv5VeghDBQdCObCqZxrr47YpY
YUhR5xCe4CPoLYKdhPHmu7P+9u+/63+udZwMU77FWUOpIWSDziM/Ya7gb5di7JKSMze4RKgOiWTi
Ii3VmqJ+tmlutNy6gMRnQqKGuYnStF/VuXMIFYOhv+gQlC/X5ycFrrahwVdUX1Yi9N9tEjJdMP1G
dQvJ1LqyihM9UeMu1bCWBD2PDajh1FUJPwooIyqN7er95mep9pV9M3WC2onu7CGkAc+Dgpu9RJBJ
r7vT6Spamo9QLgNs6jUut3e1Fge4DKt/d2HmknSEeAEn2K/my42hyAKkpHdubz01TytBCI9+9A9n
7w/NGhHB8ZyJSvA5lsV/SMpgD4UpTMvzTQDJedU55WkQk6Ar8A2rV5n5gIvjLm1n9XYf0nCFdBYB
4FmhGTfNEQPKLiZNKfE3KqRtkW6YgDtbxdr1GbmQca/hgZ1ug8J5+VE5DMEm+HkQdH3jWgdm4Hf0
uy5lKC840AEWqINUDJW2RdKj/DRK1D2l/CBjvKXdzbadH3S0bn34IVwnbSCudLeh8QTpnaModvRO
kjSL7T/EOAplmAsOixWQeREzGuqaO/vWNQ9Y0O4Mk/iObwOnVR8T2U7gtq7+VKPXX6nTcAFgMSxK
clNdYI1UHckJbSu70cUXNs58TryQDOYb4Wu/CNl8dukLEIxadrEcRWcnjZUgiWqVyQFTXF1hS/qN
v2euf0Df4PeoMuQXIlwZ8Yh9jrUr5jOUqnXZdiM7rOLPuLA/mNrPCEhEP2IVtZnIg8tnhVHzdY3t
pLC1qVo1J1FAmlxRA8iNbE/cOAL4bvbJiybYJxTMR7MeS/Xkrs2GsUA5WQdaMFKoKDTTZt1Xi8ry
58vPGYFV/v2WspHbjcn7Dq80xQqbTXrk7B8uIrQUyDKsFEuKB4T3lRcmNtxu4wK4YHu6xgM8Z3nm
BlYt6u7yLQFqDVjN8Pm17GPLBdxRTW4/r57nqoPsJ71rzCmq4u01YnOJeZHM6v7gEiQ4ZxWb0qLk
J/BoiL9sUtgUw814TSfvbKoVPknzQguvxE+G1j93Hp49CmC8kCfMTeXTXFnrulKIeGKDDoEJejtF
dDiYuKk3x3avEaAH3mUYPZMuQgtnVMyjkCFFkNcmXThDiwqXLqYZAyWW1rAvRcOLvezjV0uAZ4ov
t7o4TsV9BfnoxoAVkdH9BtD86sDxR43KTVFYR8/R5sjXCoIimVgMr68ln7VV1JH4sHraJ3exZIC2
G7nGo6mozGkW/UsDLq1l5t3go/rJMTG+dQzjESi27OYvi8Tlwc/PSE1WhYv2mAfefWrRaCWa68Nz
MhG/WCWwKhpRypd3KQf4JN6ABb+cZTJjELeL+hgiR3JmRIqWIhkuGIMjwOUbACJrybmkKr+TULya
HY1eLT00QaJd+BUD7giE7B/gpKWnzbXqO5EJP+Vs4J8l6LvftIHo//kDautICTtossQ91IS1onXM
OMSfJ0PJ2ZFs6imJMaBr4/gTYJRFLKB8xwWfyL1Mwb+/QqCniEvczF//iinwpxPVUr6IJIr/7ro8
pUtyGlTs507pxMjjdBA2sS6bZcgH28XFoMhHLKQswdew41dSSfFIc6Lz3XQYnkqYugziuIRIbA9g
z+mKmY+JkjNwBKHQX97pxZrkzKZ7Ck+5WCxyj1qRLy9C5hBxuTMFdeJ4yZlIGSO3Otb5O0IplLch
QEL48dpbxCvEPaEla+CiHdxpjiX8DCXKSBVh/Xo3j4BhboioP2SKhF9cIPnCgNYQzwN5RIaEjDc8
akpTVQHIvRyzhehcDMiopyGDA+it5zspD6P4kvw5YsZNcJuRQUf4lUaG9Gfk0wueMAN3dEPhc6eY
pzU/SplJ/dXJ7p5Alrv01O6cx25vM0t+WvOGWy7oxTczlYfhW/VKWCcK+yLg8cIWGcq6einBgeLS
adwWezGDCxgp6LT7hd6P3+ww2itY1mxt+z/vHgqUHUPJx2ahHCAiYluf4oodA7bGQws/8NXsiOm0
VpM/abK6h2Gcns84ZeN5zmF6vDXWpwwDmzZaDcb+hteqAXVd63VucEQEIUnrm780bSMAl8Maa3im
iM8cgY5cMThN+9sD1NxwymbK9nMAiAkeiLCZSX9Q9NbUlkr127mZd2Jp8YkoCWZnF+0XfrmSk/l4
WQZubDuiXKACWJDxVZ2gQNv2A3cCRx5Isk1MOO3mAMsPUjz81wr/QgoSMCSNusrHLZE2vIH0kHSR
nBIa5FUErD4PQZbHVSL2tIhBSsqeEzxNcmqUuOuBtxMzb3v+/qgogGzxjIbufsoKoHEz5CJyyM9L
t882VAxg9z2/B0ZBDqyc7NEG/KMKDmEltnCC6gNbZZn2YcfaGWMgOxMDMeDTQwWZ+fW7vri+ECTH
6uMWbLcyjTOqNJrJ13Dsn/FOWs1RC3Foqk1JJBdaJMQ562s0syFeNnvW6fTYBq7gmaXxNlvz3GxX
d+euJ7+c6pcNu8NDfjZwaODsdBcbtR9Olya90fKnbGH7BEE0zz4g5rQaZbaE/LOl3qBzsERORfsJ
h46IKudwja3c02eDYcW0Q6Hm203FdAq43CCxSmasRwKmV86M4GoxwMVMTy5mfRtCn80M1RFtdEJl
7h2OQilc2nsEgTUWPDBoJ6ATp/X9KjSSCcwWYgHUpTSTKX22MoN+ao82dWP3QY1rTMupu1BfTpEc
0cTP0dFkeLqNrAupexyObqTAm+sctzz7gCEOyxRdr/Pq8teck9mLQdDqenR/UDkcu3kDvdXwRXXY
7bGeqdr8TjebaAFnfzcv3NUvc2Keyg+G/tj7ODuQz4eOV16CzgJEk5f99msQQ20L/gEoXgEld/7Z
F6xUnllFpzCFaEyDLiiSZpGIhUaW8O6CjOIgCu+vjinowjAEJP4WLxqx8KALqnmhMD+UCtHrHySd
gZKmlR+CgDuuOkRejGWGIMrtl1OD+S5WWMX6bg8yl6B1eIafsSei4wwqykgKaj20BlJv6mwNsfKP
05Kr6tXE7JcV01c4BiD89A2lvV6o5TOUnikMFgs6fwnm1dYTrRhtknnfci2rR3/jwVMbdmYxk9Ha
HknOBZQHK3txJmmMieIaPqTpHvdCo8vdV/5OLJP/hCMq6c+MHm2f0nAloeyN+a1SAf7KAZOI+d0Z
CHRkVqS7IK21l0i/wWPyNE8zSTSlmHWp0l0KmTqdjbj6bVxUsGMrN3/FJipfcXZvmiN0k9t0xAgr
wFVhgbJZnOYMKDNEA1Z0NgVTXENjzuCIdLOUNxAcMc6NYSMATekCnsGyimO2Z1DOdNQdVGzkLr81
o38JAn8SuwyZp/22HeSQOCBHklGO4bqBeF/DHiIZutveZ43mq318NbtpC/yH/uqa6BXvkxbYz21+
Vv+D5CVGEXE7T5UBGgFq1dJk8PWyYjxBUO0AIzNM3zgzDJX98Trtcj374PnNopjk20W1wBgHo3KR
5imMVeq2yb2AIXtps+HNUwuPUUCqYvWAmmWDAE8w51Ro7+pZZJhFTThrsSu7tf3gJYILQaR154yR
hbi15cdUgC/BmZ8fEIPNx3sWTJ49jlP9uvnupMVCE+zEQK27ezYNT/n6XYCU+vJsKDAJcAmJfFcj
30fFynNxz3MVkok1RPUKSyP4afpLpC1WoVVKqWht/kU+wLl/tuLP7KWb43F8yps3o5+eCMoG0mce
ApQ+jtF/jTTjfQ2j1d7UDCqtkWw4+G6ppx+lTeXfldpLvZym4VSBBaJNuKaZ6vVIROHiEBJsc8qk
LYqj3jN6VFdDYWtIHVHbKJA3fZlKeZUl9q8Av3lY1i5KDeo4ICocuOrr5BN1I5QOIcn3rOuAbRIg
UySsq5tgYh2/+bQMV/f9z2eqxjRwR5OScuc44b8C1yvpoXSphrGwuRw0y6b8CCMfO1PPKNclukPh
R7EbB0vzANc19zcoyQEZsYgznHis4mwqgi0EYcrGNlPVnCcYWIDnSFXe5icFvKx5YuCTMlaCY21y
6iCIcQIQHejm0u4BwBYGCJls9SBrVSXwxxUSoDjbXZQ4JKyoD8cQqgoLX3/wk7dYX01762PuKdqz
dbE/f/L5lKjuN4pGP1nHCOYC1WIqTos52yG+jw5CUFPvg5tQhP+p5QVEtxw2M9mncTJSTMi6Q8gE
pN0WrweaFeZkqup2FNfM7zIodIqXsDaLdkfwFH1vH1uZRW292tMjPYb+djMy29ud70HQf2toHFNS
vQP4IolZxNI8dnM08gBrez7HvpqcFdFiCwRBW1v5teTC6Qc9dvsiIfnfm0tNqlstzgbSwcHsnoJA
gKgbx+qc77g1fFiIABwTPYA1dBJfGC3KEtVDZaPi+gO2b63uDs34vvKyFHvd6fbktBaFupee7R1m
M5A2ncF9gvDnx0+pcPSXj1nQ/KdexU4ZZwTWGkN9N11EneP5CywIcnQnnOWchS5J2saV7OQOE+YD
X8riKMZ4mGYOxuaqUKxj4R/g8vOv8ehB5uqFtyF2MVmPcOdvzRp9Jmu3yPoGp8Kvw9WJCtU7NYSZ
7IgsKTGPxoRiQmTHnpRyKPaewNZjjQkelbnycirr9k+85f56AQ+9b9riT3pkuiJX5DFUHR3GgsLj
SUZg74/1IXaIIlxvLANxiZq4eBCBUz6Yb/OK1P2wu0x9gCYj7ifFBwsTkXSxkNenUrNqHUiXGkAa
Ff1HbjO38HKsYf7RrU6v+/WS1DvSZzssM4RxBaILRX/7Pb51mc0nhu6io/tSvgoDmvrINfciKkwl
Fjcgvdwz5lZeaxA5qTpGVUwTS9lvdmNNm0RewNjpad5X9DLsNEEk5ZC4sy3E+7uPTPB1oV/HjkSS
wShuVU7cQ0K+qLy5IXU1Ge40Bs/2V0cJHdo8Gf3BrxnqBq7KN4lGZ+dc3ERjYsbv82M7AfId79xQ
OG4pa//Gjw67sxIb5kQG3TKC/9uZlYT5R9z23486yATpwpvCbtUhcJSgPvXjAlGuaKEii4PVUHYZ
smKlL7hl4t16xxeypb6P1jEAZRPtGIp6WWRZ7uiYmIJdKJxGm0JeEmDXUaIXEaSe5C9T7Dpzo86Q
fXEjBDLEUIZXSuNE5WjznHrC00GZPb+PVrYh+79S/hYdEuJUPPa7MA6elZOF254hLODjZlXKC99w
RxbVE2TKLXqaFj9Yuh10+LRDtlyoK87JBI6AMSgdePREd5TK3RWqK/m+qPb3SfQHKfV6dxyuZywp
j8XjbLjhY9lOPJ8AcXplZpsAxZLaThImp2/V+/cVzgiLzuAk2N8bozqq4cDksIyg9xgAuSzF1PwC
rzqpbGd9zzm1vxYmBQTt7ZKbtRe8E8O5dcD1ftR4h0Ndr/iwykrJeBBTqFf9Yzp4sd/pLD4nqvFE
j4hld6920gxOdWUGd3EvXiJC+yXFcbIs3fyMVcFBzJ/xPr7C3mPtoY8PZi//zgFeOyUt28Q0xpb2
GP+b8U6tlAE7Za17UAdHCCyTDWW1AScFT0zmpuyrFJJEYQ71pfOkX6Tk9djqwnR8eNRnz0QBx2Q3
4sqtD3Kh77S8FwcQh1zCXkwRMwx4m5zn2UxvvXeIwRWirsJz2E27tKc6bmvxHdsVop93ad//AsM4
mfh569cq15xUdGehnnNB82Gtf5WF1GQLcWtKdT8IpEp8c8MMLFZhuSlV+gnT/qkCZm12j/92j3Jd
/aLw4hOTmHKaqGpKhO+aHia7eXSRTH5tfdSMWvaKNHcWAsdRJ8TFzANWvzntf09beH09HAtE/lid
ExUxwjrg7uJmRmc+RTdwxu1DhQZoPKWOwky2pHC7VKUGjK5NP7Dhauoth3oip6rJ4yfdg5WH9NlD
vipKFjbD9TCEafroox1eN90CvPGI0leezZDIl5AnqGvLXzzwxN4AQX0v3cnyjLcodcM8IK+A6HkP
rC3btMyJc6eAKn6NgKbK2ch7Wi84Jz5agsJigaJv0d4QzR048Kh1jT37RLPihYP8N+p1shBY+qAW
kufk57IttygJ8nOZ07VYWY9KWy53b9wCvnDieB4+8+VSvZxQGVPdjCdAZZideMC7QnhmaBbhQ2r7
vBDMVWp6dhEBhovaSmAA5fWWJJ0V4ZWEKGi8ip+FR74lGqQez/76WRd6Ev3DgFTh4kzcYJsyLXyB
tCQP5DA6AAzXBGtvfqRxtdD4jlSgKQVQ3xcMUK2zQY7+BUaICW3otR0/RidwGMUmyrrwkzOkRMG4
zf1KUqZO2uWoV594cmoQfpSRBGye1lKvngscwVNv+b7lyUZV9X6A0HAPCwWurA4ldxaOFLcTjfHR
I9t4C1GxjK4R2+NqFXObp2qq+iy38vtytBPQ7PymeckDZi8wZhwaRe+zBoyugiIFb4L3WYPw/nX1
XUPkAiOrzxidg43TI1wNm1Iia2Iz3cTRUvw+6Fdjxr2fu1ZK3URPzbfeuvwVoGJBlqtRafrGu/d5
l3dmN0NGK4QJ5hyc/tdhWpa75NCuTZFebP89JGM7EUeUlOYdpKD5EZosoLiFDGXq9J4N8MdwK1w6
s55qf4T13BUWsh4OrPLl1Lw0OfAFcg+IE9vKjQYJiFXHysJCkRpnn/vwp6sPiFbz/i6tcIL+LIzq
qtrnNx9jgpFpJxuosk5x22AiwFTm0+ZCTG3e1YTr2dqR8F/scSE9FXvo0pSt4m7ZqUpN0iEBi8jX
AcLmMaxuA2nXsu1O2X28YHcYDYFBwbSuw+BTfLMK8tHMzrzaosPH1PggwR6w80h041+5usa4Ib+R
9Opc0PEu2AbxhX8o8f0bQgjZYz+diuk77PO8H3pcVL8aW9AOjBGRqvq3m0izyDXeVREx3ll1YM+y
1zPT+tK92qnI0O6rLaHBijNKx41tMoEEsv50Yd1eXOHfp+UM6TPog0sQt+YiT+pMGb9dKGNMxW2b
aQATYVy8QbWzoOjlO7WKTzRyDulLgBPHXwHVNM64CZNSCWsvHYjDf0JvQk0RICsNwnFSy4c5B50F
FGh0C4rgQQbiF7pP5s4MHv2pAxmdOqbc3bkuY530SwLg74znTqjHfdND2yoW3ktN80mJ+aVUFu9t
zKXhA0cHYym3FumgPy64dahyooKlZhBJGRb4P7ZY3AsmSV6lDpD7kNbPiEHEJ04xQl+ycDDHCiBd
RxOAB0CKI8cTNwT5I6+6B9TFH9dnI7cXVhuc54Z9cq4t5osEiI8biU4aKWVghM+fH9vBUWokuJ10
DIMkvf07268aToYmigeeerQRHFXGwD0hrmrHe3yn+DyruLidddCCXbf1llkNvO2zuSmTlGwDJomA
XNXvA6/Y73UpwMKeuj0kC8Wk8VB2MWLQotAK/eF/ndmADtfLP9VW7z0ghk2VGHLIe/zNrTnlXeYN
wfUgaAxugbuvjetzPqt2IIBp22tgtaHqnPAw06BImEc7UgpaLKH3Pskw8trceq/juyWSW/4F0TSv
OOL3CzX06+3NBq/W4JuEQxvmm+qOdUHIUAgwckZ7Mpdh+npvC6YB2qEqewld2ru2+wwrN+buXEUT
xrD1E25r4+8cTeodWrXj10T0KbP4W79LrYrXHtousCIjPqb8IgUg9ZjhhwBixNV28meo8U3PDYhN
RF4aFsubfvTrT6HDoBViRcxarrOzh2+5sQRMrlNoJ6ojW/LilDv3Yzviey/A3LtyEr0f43Q/M3oO
NUD1da3Lt6zlwZ4vyAIB1PAhP+t8illuaM1ZKZhLn2o0Fh4C7/Y3Ma0Mt+L9ZsUuyLOBTyrJ3Tfe
OEKfpdubXpTCr9wN1m7JqL74FvZNEbWKnAxm6IzVNipr6Gz63thL8yk80GJBCnxWOqAPb9lq1uRP
apuT8ORD2frpYPY7U7A7QVezLmkHUcP66aavs9A7iIEfi8Gx+UCn0uPKoolRZWyic35/THdgCvXg
IEjHowXs+csGX2YoMdVhWqvDn5zKfKYvQbIys6uzA7Vsa3GxgNg8H/KN730kG7dyfdwhAtnTau3A
pUraunnhHW5G4o1AFiKTMo+4fYqqnTtPX5Igd0YLepaMs9OvvDG7q43NoSBjWFSV2GfBqh9/GXb3
D0SvNIblAatG8WRYW+U1Q8Mgqe70Ddsgpne8/Nz/6DTbgBIJz16OHBTDqKtrg7Ld4ZC5WnhXWZJj
JKmMG1e/kkDRDmjoNsNpImNEGCGDExH5rcOMTj43kcu0UAD1ZrXbfidUZUE0m2J0Vo8CFWfSgMlo
5H98E+GZqTzTbfpAbCSZfNdQjNqbthydkD8zs4n2fNm1VypgfjL5aufpdDILG2CHei52OXt8PJTl
heLIxLK6c010sO8+fy80JSh/JQ+QWTB+TDMbVDNCVJ2olzduS718hHlMXSGU91ekRFYZ1+rKKGyR
bhavmgSeqe+q6W5fDMJM+UCQva7hH2XoKrOOymBCfJV88r7BtGSHtRUMoKjf4B1j4uox7dA8pnd4
f+Z/4b6y03H50D7F193/3gg9wx0cgSKa4Mq3BYuFw1zZkFkjRhlX8SNTVn5+Jd8ZJPNSDmp8viq+
Je3wzriyu40D8ebCEKTn76So2JKdDNvFuqic8UZUVMSTTDywOWzfxG/GfR1D0LILEq0i3ykhXbee
7chaCUunqdLPwPkKAS+s9zJErTlZhuy92HfnTGeXQ9OAxIP8ZhAKtmp8NEsh0jGJf6srNrpy7k3r
GpWzGjhHaUR+sDAMo3OqfUJ424+y2q4AbWq8TWI/QPqbkVMqvtOJyXdwpccZ1x5Uch8zQKy62Np+
QlNVIULWx5jvQvPIVO9fAyhOJkQe6pDYFQwVaE9Lf24gJguKuAwXI/rc+ow7xmqUjAVHDiijnPu2
6ZptRrCMnDZo/tvI7Uw91O4okpOQVQhTBHwvsa05OTkKQbnFvGGSvJPJdVStXyjRQtOrsNICPhz7
wmejlJbgfH/h/C1r6GJ+zT2U/CxHjUw6piY02MzEukzMhdYelfrs5oy5LeRF3CptQKuGxvU77X0Y
JrL2Q32gwHBSqiEMIzmwB05Z+N9ZV7nUNXNp8G+/nD5aJvLZrTlMIlv4FLSFJyCT1eJpOT6u/JOi
mCZlvi5ruNaNGTBFrmpMrb9hlktf/gWunPOvcy3oycyavyDuf0jL/00Z1B51ZK9wWgMIVunkdAz0
jrnysjL5teLEWpp7zBlrMPMxCVCPSwl16j9liWYmg4usYJ/kqI2KWHehPuol5bs9N3LrKan+J7KW
z6PlSUgDiFsgfuTbwPd/ZLt/F2jgrAM40dMUOLiTgXoWwmmwUpfG5uY4kkh0F1M/7DDVZJhZPOfs
tb1yjsKIYE4mulxiBaSPxuvNoNPkvNAQ0FFwdouKaW+Ke9ZJ8HpEFrguWK1/hbOnMY/rtU0gURSK
t8BgRBlHfrigBLKx6cP6TNrKDCGKmwpd43gL/9LThF36Kr4brL3Nt9/XXq5di0bgw2r8Ye8nw91N
kwgDinDH0jY6bcnBCDHWMUrET7QlVso8y1J+QPm5L3Jbo40Ag1EgHJPFBlelf0S/0fl2eK0exM9V
RPytJeznlCiFQeWk1lvDBK/5hO2D2+PSqdCFO2h4VC9x0KyMS72P+t4AK5zaxdStufVa4XdopLh9
Y3G3k9meFczQwmiscIuo2cSeezJMKScIv9DptjVvk4y4tWrfiPyC9WJkFhJyum2yxp3gXiD9qavo
lB6hJyWZTotMlGvSgjq3fVPYXwEsymw3avVYNVC1J3aMxjS3cbWQoHl7Eeiig0+TZGSLNWMn144M
CqOC88uG9khXuRT0ecNv14G67nRRhy6RoWvekNr7zPRoCdZcUpvuRd9SSJSa+pX7GJtbfPzS0M+q
MkPCvMhS2QYP/UXFBEw2LsVEqnaRnt999Bz6PW1AvoZNDMcTogLsX9EUMdgU+eY+IITUYpVQdsLI
+XHLFGwEQyhTprMqFxqsWi6DVYviekwsbEH0ycAdvTVrKIREjWZPEIP2vYkUKuK2ezV2R7MQ93h5
x1Meqoj4AHf5TWjDGSN9qSimkV2PsymBgtVFD9q9UrYpaQl0kTcMLi9fRbcXGSBMBQDCc7sbghgM
DngIEd3oiELOSSlIvqoZRe5MdHEPqJtar1t/hTOE2i9+CpnH7KkK4Wzp3Nrkh7liBHpck/BR5al4
0nxiT0X0FCfHtwu0/Li2LYpusCVRPFlvsbFLT2hsCdm4h9JskhBf9vfYCmJA8cqCD+uvQmWaHD51
tQUtWi9QnHkQkUHwhbLzI1Ih2tIKRCYYGXvYcd3SzhEZd20WpqftxpKTGpZ+0t2eIrWzQ5Jfnuom
JHs0n6urSe6loT0qHK9eLcSERbfxHplGOjUrDeLHI8nm0X+S/rVrskAjmMcVXuoZ6WrGqRq6wsjL
uli0/q7Fib5YB2pSuLWpI9tu+x7MFxTFXHJkTXCnoypmfZG/lgQijM/AGdzp+1SAZfx0/qxn0pgN
aBijacgUJZqkgWtAKs0UIzifAqKu968GRVlU9xrm5F4Hb/bLC66qRm+yx85z/b2z5SZTmMQcUkx3
yShXKrQUkvvpN6SY7BzrlGNWFHOe2h16GmHyhtAiQ76ffa6XXBT2uXFwbmi7lz9pgW6vH72hBDvR
U6aOgBEXvrfE2w1GK4ubAPnAKHCQAAMoxmzmX06De9RST/L4JhaIiqn+3aZ02Y38xlK2qKDeze0J
5+nM+EucixWbYBrM9Uk57R0ALTpnRQRf15bn/x/UdAkg6skVUI7ZdnUzNO5+gZCjVOpVdW98C7xY
BiwFi85K6/CDvgeBmMg+pyMaxpgFfaSUJqKn7mnkdl0wP/mNU422dYI9Oc8L1CTe+fHFFfFbEOuT
AGlmCs8fE4DczhHvxAxLRElaEP/NtuHv7+YnoBJN8FEy8kO9PyUTksevN/Bvq6v6EJ6ZkLCuC4da
GN+f37w1JWY5jBG4De+uwN0xEPNTuw6Y8TXzZsEmFf47Vgz2U/qSTxfs22PBRUQilIk02WLPyqSv
Yf4V+SKZpPJmdi1Y3Y9PVgg/I2fZKyPJcIZCOCzL+EQYWq0J8cAw2MO8kJ6dz3X6pYH8RU3ioaFW
B4ZcsWBm6qhx4tLKb9nxzJJs6kp3DKD3ohM8Ytaz7B1pEOKPuzAcsgs5hgWpmQQkXlgnrq4oBxIc
Nn+EvXeeqZRlAxtfuplgVG2BpWGzR3VoWOtZzi/o0RORdnBL1If5L+1B3vm+g3mRED8R5BwfyK4r
C8ikVmoOcq/cwj/i+pkBsG7farVFA6OWThVo6a+qPX+eXk7nKUrijASwi8Gy9VbzpCYf9dJ9UnCl
e8rB9GEckCwRpHFpqe7+c0hvZ+GrBNumcKmTKh7vDnQFLg8oeiveKaljB/4dky6RTTct/wBPBf0Y
LgK6/QSmebfxjBCkiJje8SylE7QuG2NfehHlaFaqdcnwjc6xiZrVkBSU0M0i1zmpkuc785kPNT+K
EZPUPIbl0YUX//tSbIFbmyjoiKu4tCu8FrEzlbaze3iqeKc9CS6r0vAayWYDU+rM/rzGC2YvIvlb
mBPXvq1B75bZ4JGHLDH4X3t9TZ8m2XEqMX2qWarU5Yxgafua9Gavh3zWedBBPVFr28Nx9j/tEwNh
gxZJHTQoxUKdXU+4aZFOuinHWxA5nK5EjVMUIJDFBN6qeyV1XVhkNBdCJEqHNCVB/Tn/+YH5+LC7
YZ5gKGPqZlZ2V34pzZL65Yxq8xdLmIb3zgCmJgxti6Lv5CVfksBCMgpvI4OxcSW3J1r6xkVXMKwQ
DxZhVbisftyi4qG0FoPO62MouAfhbruURAFa7toIrGokMFTFQgQKsnn5BwXD388yWwNQ9+D+DYMl
oyzqGgDPN/UGoQtXtqUBm97fqCZvitlBaXX5iyX8YjMsDNAI2QJWLchGsvvWFEKMvytXqG627Jg9
UhzjtMBZIdGRQr1exa37ADc6HB3gpHlxKkfcSmqqGlmBE5tsafWjo8/HaVlGdpbMOVgDzYASgUoB
6Meso+deZ86qSYUX+R2LGMkuaAYN+BtIQYiixg/SRfzFGYqA4fFpeqKo20rN4bROSPrJRnyb3Qqu
dc6nxlqooMWiA0p+nNK+vqg3CTT4Z7CKbaTn/vHLq2XDclmz4Ep1HbSjVgY9v9Leclcj09wqWjAB
g0I1Q/BRYZdg/zC7epOQfI7hIu6NQ0phNZKvWn52EDdSZ+slwpEtK8Kh3el9zMf2TXeJs1ySmFhU
xRegKbt4akXiC+QTnGsBHzKeq7EekMVcx6C7qPw1keOLJ5KYvfXy4gBiR2aHHXQ8EAYs38Q5sipL
obvwlXOhSUHp1jT8sKmrqfccT0nUilRiHNFDUZ+4q3VBZZWOkYhI1A3oAWfWEQBcvDSgHa3mBIOS
08iKckckPF3Zz0nR7UvbwRF2VJECwzwkQgsyECTuaVECiKcRuo6r1xx37VlwIgQpcJo8j2lbCoIm
fu6B8sbNWZa62wFvXM5h2eDKD6bryt6fvmEzWMMCLfr6Uo5ER1GltMrH7zw2FR3jVwa20SmqHHbU
tHCKFSBfV72UUB7CF/ZfFYbwDDJg+YM/bXT9SaH4Bnw9oq31ntoI4LaEaP8ARm2cP3vTuF+M0NKh
e7B2ZAL8ZMVGrMFDf1U5CVDEGr+24WzcMihYIr59iqUKeL4HwG35xxEVvvzoIS+ZkwxAJzwv82ig
Zb/lP+QICMjCt0g7JCXGG/ZKSWyqIQynPfqs51HnzQvcvVRPUdjIil66Vk/2a9rsyBULxDS1Do7H
j1FEa/IJYNYf1zhbTk3HLfq1e76bSukECROAbOLd9KreBqHr+MeMOrqpet6gj94kAcSXvYwmlr/q
cIvJoBV1hZ5lcjV1nvBdENSyBH29RcJvdyymeJICufoK5H//IODbyr9M5Swm+9oBo0ob5A1gzKhF
mx6kWClqGExiNmMZRjCz7fjUU5A/FBeGBkly2FfxqORqzhdMxf6oVYvP26A6chHsQ/t3h9QxDmWI
wRLquAS3coFA8MyUdPB1sw+kWZijbVwLwbuBtj37hS84dj2y4nuEe8RbH8NP39QLkLRb8SwC41aG
yD84bmZylKZjgLAbn+9VOAInkSwtLMmJjiiuN5Ckvn/KKc3wL6k/h4VWxfwzHR+Sx3LYf3oXgyiz
iNgFzdTUGLG92cMzEVpreOwVpuv1roNi1hlfegsvt9Cz0zgSoY8nwh1XCMvmTw9kNq2nHGJcdIgI
eS8JOQ3b6sw/YwhyPz9HtRIo8QDkmoH1IC8ZX4FJdptQuOMWpfxUMBYGjKqDDMWGpNgsLhQ59eT7
IwAHmlUXnXikuOAfS4uSAc66cELCpNW0t/BQNJn6QxS5AnFzx0VMR4PrLIHbqL+e/y0INHmNt5q4
nl4pSzfv0ZwzqZKHLHW7/Qi13sSximMjwl6R7bif99LOZmNiMxkfhWJTLo1UAqFzqt3IyltOGO48
TT6gFaZPTIXKM1yDmW9PtpiPsSvKYwWRGkgETcF6ggjlskINo4bPUvja2uTDZL+xHBhi5HCuyAiT
m11IrlfIa97GpWfdzZIE5ZutNnvQU8TZr50FvE7Zrw6ZT2ZVXrzTOK9neoXrjkamINjaTbhwd2Ad
6ktiRV4Ln/u6UMy/08rtKHLFhDti4FBN8U7+jFA+dltx4FZ5wDgrZKo4CVJHeFhYfiaUY224pTpj
fE9WA4J0zJT+8GrrveEcLh7ZMctm80DDhF6r8j/RGp6QNbqHO/y7RZavb1OfZ4noPQc/vjFzSpSS
2ntMLKgVHoXN2Y5vmSv+4ik099UGkCgF+6Ov90ceJcC1XcTaQodA5EBtbkSASV3+1RP6DsTjhLRe
zkDhf3mpcOcoWyFKQtLdWTk3XaUgFsS3yuNYq8Zg1LOlPWhoWjCMbIRRZZNjmWn3Rzou/UKmnY3J
rq/Ju7gSCH2/NceM+Sgsj4JDs5AX7zFtYzdOywSSc0VnT1m7DnuQEVErUaHPAszfMtCWUKUnGoIz
UJvS7useutL+GaQwfwlXhWUW/p3YBIAIul8OIJeY43nC1W5nU6BxDep0RiVilKoMhHlp2htCJWCW
oSvPWEqeVttbVC5hroiZDhkc3cI2XbMKB1e0V9fhLQHCiX6s0/fe575x3/p5EPPHw5g6gXsgYQpG
SEwJ8BsQTcxiTzhK5mk6cUf5sZ7u79CDcSc+ZZ9KVRrBFAzMsZevnFa1GOdC/SHdL0MPAcs3Mka6
4wECxh2507HCMi7fRe+0LpnWtN/FzP0lhexoJ75jwjMXx25HPHHvgqOVvD/mQybdxt0EXuNMmNTP
fSaGGzX3dOgJtBY9sf/QWSXQMl4H/nNt2cUJkG8jij6ArALQCl2Rm/Zp0XYDNQFTRjJrpbqDbZol
+FksA4Yve20CAp2wx3ETWFB+qyoL/HWL0uTY6cOIeNBlyyk8H+RdZiiwPe9hptsQriKVh6ICP710
1QlWWfINebD/b9zoMaw+c1/6VK36UW9UIlXTlG6CshnEyLAFEkGLf7tMJbKh6XHBFBYv8dT372ZL
lcM3WWaEn9tjYY+AYYOgshKTN/BfzN+760psZg5N/MYaoCW/Y+smZ4UGwk6pXY8w/xrFRYn54diX
fTXHAlRBpWJUE8AodBNYZyHgnQsaug7gc4uNhi3HBdGcl+SWZ4wJn2uMRxKzkOf9RKn+piUPiUts
+wSOWIxk6+s0/4ihH6w2FgZfGdelgRUmCuJtctvXh7KWlpqeZKGZu4y3pqmQCer54OL/SM1cJnvx
Ao3zi/tArJ0LXAwy5D0j3vRoJ9TjtvfNSAdTBa12kxILSoc1gE26zQTlavOYfNnm4fUPjF1QjuKf
EfbkdSutpIk1w5nMty50OnPKbePh2C7r0BsvWvUMOMdbgMdRWP/aLOEltbgpCGNYJJY9nqngkOz/
WTloBk8cNtxNxrB3HamtuoJ8ZfTOFL/0ycws9Tj7vH3r1ES8BkxYq7r7Hl9ebzz45BgE2lNjfYFY
ZWVE16r/EWlq6WshB5//su7S2f6T1YTwuiRW5S1tdGYjoie8EsR+7YkS9NbwKSgErWoPmenaro+D
2Dg0YsEq6rQdcuGnkW3MXTKpH5zF2gdcIdBVqUUmt9VKSP+MTLG+rnP+x2ftMduBwuAIMsDTZj18
OoP6MHt47QNAVSfdaf5Ie6BBYoiGbKjSvqclO71J9OP1u4cMhW1RcHaRuCis4GknNnTlqyah7trJ
hhRm9tsIDHRY8TZr/glNXrQIUm/lbv2bWSpIhQ2FMO9+WvPjwiNR3zjDlI4GYWIxmO+afWyawuAu
4gFaXZr2pi2MbGksZK92tZi/2PJvEfm1VP5ZfA9qm238EjQnd0YqkVGUBk7YQrAVfcvKFXmdmgZ/
090lOTQBujTAQPZ8fsU9XjfouGmwqMyhGPkjCY8gCtEinUKvQdEfrGJwC4akw5reeMZm/McPnctq
8Ry/gQIenAunG9fUjBfegvYiLhqcTbuXI7e+VDckDMNMU5G+dgdp6RJjeW7RWaTZKAove986SGS/
NpBVj6Xxlf+KmRkjl6ZJNRaQwDs5b9jX4jbdpdAoEM7AhzSXwtABWNRubJgu7ojNgheK3DwC6ahy
AhOivlst4ypxsNa7yCnhlX1dsPwVMp9MvmHaRlUt8qJhhOwXsP033XzuDZTlJrtvkKxevXvKhrGE
xZeRBeQqjjnWzu81TaVHeoQmz5CuXqFKiyBLENFhHCFT/CTVqNaHs47Zi7VZQnw24rYuaZPgMwIi
Sp4EeWwbL/Qakk4TWi4tkXme9PafuC4ctkpxlFmrwQhXrFAQ8LcA+01HEW0aYN+G2TvD2l3cc10o
lHyT7einXJEIhKuuKjw8QHOZPpbBOq6EanIL+I/MnaDTJCy8OHEz75zIfZ/W1lczquj78rKcbppR
pNSEzx2SCqG2jmh2UVL08ie89VYPLNPogmxU5koIJ4ko+WCp3E3Le4TWC+y+PGdUv5X3bYFwbeJ6
9KZYF5VUn8CpZZFJwCBoEdujRIdmjPTq6F4aHR/IUgpm17YEGs0N5wx7aSzWtAoVF9lso2nEzflu
XGWOv1B9n6LGqfEHih1eAgEeUJQhr5uP3pNkoOrdimmfW/yanYVVCHxI1WkVvrSqazsx0J7sa7VM
6Kanb/HIxkUJ6GZd23ET2mIhtSsPSOHygsl3v+48+btwuqnPaggcZzRDtLftLdfqaoKaWM+ttlBp
k5J1RqGEtFotZ3/SsT+J+u+s1nLOgjqsx9aCWx/JniQTD2tjTANMFfHwDgEHc+5Q4mMnckVZzRRI
3OMzfoWuEMeuJ9M5656oOE4PKMorclvx7ARKLO5HNV8TI2dw9+BZiIpO7QqZqxmf9p/X50IYqTub
DuacskDsNfjfIw6Ahh21Q05wf+ft7nn6WlhRaDQTS7qfIXBYA/FntOxz9xVa5VdbGPz6hcDgcc4N
iunPz0rHL1WafbQej+zd7nW3XAtBTaFyk4CPpFcmkFtNsqkqWQXJ2ng/ncXTlck9fDv7ZNKGVefm
oYeswBtZbIK0LEnrm8f72w4wjmVNsDjnmuWnX4hqiMESoSDGb4oYKdAyEuzS1ax/zaXUUXQv8YeV
aVYUj6tT+JCuyewGdsvLVSNkoQHdlLIjKARzCG0Tgv4Xk4gyULydmwF9PipMPGdTjTNcc1vyCwQN
GJ9xLzoF4ObnGhCIscNpfGOFkMJCMdw4/8CFitDyx5cnefDEQ2WIuS78IKj4+DEGH9uEbUFL6q2u
rf2ozV3mFc6PkTJh+xsuT1tnl/SglA4MdXuD/AJE9pHHvnX/+v3FKhnBm+6aAxesqx8XmYomp3ip
CJ9MJzEk9jqQnmOtByr6V1sN4T+2w10lRuXcmdcJekLB9oN2CBAePQXCJpIiJ6PVn3i1Oweu3fnG
+OyN4NDZK0DiMen83gxJvxc5zNgSP4J8qT/4ssR4AVEtaYFTAFcoI10dddPJQ5d4fcouC3EKTp3X
QZBMt2JCNgMt/mAm6wBsCospyrH8R9MQVE0mw+8D3Cc4JSyAM2ylqzSBLNtJVztfJKGCuPJbo/AF
kLxe1l0IGW2w2I7wpEh9E6+bZNbB5PlKziYtDUWOr415CJ0TipmWnu2qPLQdXmJJiMhHOQj4qrDm
Eu54MZkju47wUYXOfmN+DtjNUyVrj83JolJK2bThO7I9+fXgL8eLvQRhwKp9hcqo3o2Sak5fsGd+
ZIK1APh7E9hPTOrn+0EZEsc1bLRgW347WA6kTmfrnDKhK2p8MmQ1ZwBJpc/+tucpeT8mdXteWNN7
m20UnNs4LJOd+qS25ogg8QE3NlQIgqQs/+rkxstb0yDmAA+YBWus1L7tUlo5zmc77xOx86TeeAhz
/LXytyG3+c6rC47olIVcaN6PllfbfIs70v8wWeUcoUQSO99v7Ui5uCvwloqwGJmpc6YQZ/YlJzpb
GohLYTyesCIo2ipDDdW8b348DJ68CM1kPVy6j0yCnDJWyW+T61rsLPyfLe+SfIdkHq6ui6jk4rnA
85TZSj9aaPhSp4DIIUgvh+RSYNd8/VQLLubScGdIpez/HY57Kt9zNmk+3rZ57pTi8S3/9eEK2HAS
y3+HZnXFyI6kVwPfucRmXyUY2L3WKmAhpRdJFDl9Ynzpv0nN8MihR5jSMbAdmIDJFxXyAVifI+5c
N0oy98YGjucpcgeJAkYIaFqQSrHgHHe+yxlVg4D+A+CwCNgQF2zjMmcUW5R5Rzm8zLDzkKAKzSoc
5s8dP0UM4BFk2G68ZmxuMNM8t52jqaV+KjBIkvvb2Mx5tKa148enUFO4/lJVCDXETMpkn+Ctn1r0
mR6bTiOU/420m6SBBuK5yuLDdxmEq51GTxa6+ZZWlvnFDURAP/6bjGDUNpldpqSZd5LPKQFSEZAo
mkHnmD4KXXjS7bonKEW/BsXY1RIdpCyRUMU6w3+23llY9BCdZyYyCq5AEYQqdWx/jdjo83j4ywe9
JWSG8VtpnHYGTFbzK5X9L41k88Wu2rRP7WapZUmnLqPTrAdeq/rPaa+cJ1Is+W0rVNfbS8zRDLM/
Aikv0s0ueBIZkKdbeHTS+y8QIq1uMY9161RajexqEwAsmmUwrqxsT4RHRgD6Ypec1BXVvz78J63v
5BY7PBL0HmkehZqxvJE6aLT6UeaHGb4NXvcGyV9Gwsf5jkS5AEdldDfxC6XuXf0LTIuC0ZGXe866
5LtKNLntDRp+kB8JxOJjM/nfwYKqB49FpSHEAV/RKA0HRSbOH00D7AsRG4JY6MAdkPhTJyo1kVuh
XNvRCtv2T9G6pADcLCztSS71KkpEJoT44Im1ikbsOqBLiLRt3M+fE/n0BoyGZYi0wNR/lXOH9F0N
2T7RuxzQxUXjLBvfvpCUo8lryqbYLc2pLCi0RZt6iPQ6ukbGDvtt58wsE4CKjtRGc4KeLl/Ys1EW
Hwk3TAomZH+EK79C+Rjo226Xvo+zQaBd5+FEmjPFBB9Tz+bYv1P6CFpDnpCKam2TdX0LraqXMzYc
8TFAeASy6FnxbpKAvs3mGW1a3I3T5eyRcOehzsQBWkEUPJkqofZiw2yEznhINDdnCPGEvfoYWeha
Yc1OqLmOD6jxEY+iIsf20DV4QAYmuRd9E84GwOCsFEcHyanJcTGQttiS+ZGpl4/7T+3I8UufcPWW
QE3H1K4vxP3p1LakIClXsC9Wu6oVmkdVfjDW3tAgMx2kp44bfLHFxIdWudfeIuKMeG2SlB0cTgGa
U5cEUIeOzKfNoU3gwKU2/J0EndHznZ/sowRWc6ZIcrAjuuLB8ok0WnXyiklSLx7PtiFFgSnP6kiT
3Zxztj+r3vX9ifS4AHDJE5px6+ZRUlqdN+wVlea7Z9qODUSapg0tjhedJ7JKBTWRyUPGNysKNSOq
b79MRndaDaSnH3TJttuZKpzrE+gWjzfsVP2WL3ajFxeNEDezVUwDIXO0IRglRIKI4VPQfx37vked
FlwcfjLzc5+HQR/JVjt/5ttvDyBiPhzRsOfGL7KeM9+n1N0CoY8b1hsf65xer2Tlb85fztsf8DmZ
ky/EJbphjaERHtc3DaQc7YS3JrGsbs39zcYCnpECRgfsGAx3J9ppK3F+ZxYrJ7JecCFVbSVzxoEy
IIqZY8CK9rLGDMsTXG5kwLPAuSagnX59q58fC273gcoVsVWFXuGom5BjUZMQev4MhbMWdQ26U5nH
z5+tk4jKGiUybK0efeOPlCJES4yVPEhN/0Q3SHNNud+HAFWnDDqplPrt9FhokAa+WVOE4Fvt+ZSJ
pJQmqDhwz5i0BS5FwSUagWQ16FGmpHKVj5Lv3ESabpMXgNioD8rjhSnqR32cJ4oeywdiV5uQSjuA
RhXi/4KfVw6UI8VrS/UOSHDmmzv9nzr7+E6bqKN5UrRWDlfm+eszqJrPuTRj/o1lL6iqF8FQOgII
FsxOfWAHrCu6j7eFaHWyN6z64ieLOcqZSzleWmTpbh6pVLXVM8im4jfewCv3jxDcYc+OXqtVNnPD
S3ZIGtMdkU7uxQG0LhjXVCafIkydf1xwrmh8zG7NX0IMisfE5QqZlcT1HuYHGBcxXdS1VEfCbBC8
xNPba+iuXtXyRbzfwB61ddbenPFMqr/IbXigMGun8OYDGL/nOGSYDKZtCas1OH22dRvB4Q2+ijUl
C9inz6rjUpuPInO0N//4V6FjZ7WV0sr7Ypd2JezTCCe6xHrsAoMz4wS3wjQZ7HlrUebshx2j9a9A
o94A8EevYVbB5oOGce/tEJxFhq2WfQXAEhsPO3/JNYHMZeuZs7f3tGlcDXzGqSy6vU4XigkQ0a7U
IFhXvkYFKm0OY/LuI7xcZD3z7xq+Xs7KNMZJc4lKIEwfW/g/1rzdbUaP8S3mUkfxXs9nmQN3gdk3
6jNKrAyw/653h2CMiwBmEkNqOAreqMPdBfhLX0eGzwv+6fcwD12QJCXFjDGtPBQZ7uW+RAaPouwy
XMLaWf/m6UvaXWgwVDorh1PSbbUuDbD4LCrA6im3fUZeY9ZEWnIKHH39C8lF20h5KDc0VO4fa++d
zQX7I5/Nqo1V0QFuboAqmm6Ngbh8grybnuOA3Nl34Ow7YYOmMTc8DlJX7tT3Z9AmiLRGAgsLSnXD
EynkrUYANN8lzn0hWX7pU2taGjd0DCJzBdERIEdOfcgKrWr50/5aqdqt9yYlHqQXdPTeTeuDeC2n
a9OoExmpgqX+DoBtCNbXBj5S3xTpCZqICczXToxuKxa6cuPdzf69f5fBmdeVWl11On+oT71n2cId
d8N3r+PeQ8TCNr97kda9ZvlMwWV9T3DoBPLpCusRUaSOwYbt/E6ORhqf1Xfz5CtDgVDc8sFYS+Gp
dsDSPbUhPBfsEMcOEvWBAPRwi2DmXAKCLfl8iwS9nEG84b6mKmK25pZnqP/Zhmw9dV2VOO/s26d5
cGUc6abRgguNg1oE9JbhISCxY/9KsY2nc38iVlb+QloVoyZPYSRZt7sCS3p6rRqOHoGJJhcmLP8b
HDOR27OtJBnaKTa2i/31cRwc68qqAxryHyhN47h/usjlcVRlVraCOe+2XIME82xmFxJicXBuNCE3
Tg1YqDUr5Urmf14fa72o5SWBIoh3U/wbri7c6bJTqDjS+Nj5LPTmCfVa3hWoAf/r0SIC9urAbzBR
XgUyYj/TpqtUpCP3sAhac6jcSzQah97GwVONi/ZAfl0ljioNq7Kvle9uOOtlQX+KjwwqyviypcrC
aWnss6saFg5LCp9MrrWDL/230VEMA1V8Et9fowdzx1IMLO8WAmanAqjUtGWiBSH1ocfKJ0StMpgZ
2irzpwKHcHVNOoAWxceNrBtdthC+pns30uAI8XmS+6mAolo69JrnUopghX+2uvjS5oPIeq8DF+lj
EusYgeW4V4qyFYsPLECeO1AiCaBX7VKqHVxcDXQmQW5bLm5x9XPiatEpTevIAza3s1Z4y6BUUtan
wJmfvsUxD/7eXX4wWc2qUKiPdVPLavudfK0BunPJ27CRCFrLvENMTVxBObs62fVKQFcgF1jc41a6
S5u0XitdZVFuiqSyyyZHbaU8rwRo3Bz5YJ5S2PjudcmQVCz37lJGlkzSw8V7AG7LEwX8VpUTlJNC
HSqH5bHEnF+Jr5MrpKzivrBUk1hcgH1q33FBsevt6B3aCfpFBE8u7VvFYrRQFk2nEMPmVu1tx2Rl
bIvPIlzPfO+hnhaSj7X0zXBJayxMj9vvrDh87C426n3uFU7P40+UGWa/H8tQD0kqpeh7sDOQ2U28
1D9s2xbbLzBe6rli+oNZLXGViEakHBBVbiJF4JrPJh9zHLCs4EGuq3XjzOrI8MMwz3x3o80H1iup
ARlSnaDugg35QgcD7Su7ZOooVMOLd51J1v9xMK9m1Z4LGmz+o1VbBpMf7xZLfNfkRmqPhGgm1+Jx
yPqc8GBrlETvS7iL3iMwjrjqcytsgAq35sc3Rz0fSp8h38QQkuKuAzNjzNICBO0JpwemG2ZFFpzD
h8PEBYRguu6+kLVd7JlaVt3OHv12UStn+WkUfmg65K5bGAwdiqshCB3BAOCzq+xCqRarGDuf8oZ+
Q/H0HJ779IE/FIReQRBJs7jjS1JpHRrs+SC3FpmXBHnoc5xh/E+bnbYTqgXlRBuBvCjt0qfO9Gmr
szymnIF4Y47F+uOfOXhTijSWU/NdaedtTKXWg+5kTb/iAYeBNP41jxumrl2o40dVDQ7DsOon5Km8
DP5LuwakrUC3ocCrhgxBGX3CpTA9JeKEjuaYz0mLtsc4ff9aRLOW/Z0qBHvYwfLZdyAyoiZ3YS+c
u8oTElyM5xBI9PYI1IbgHpGMnFEEFTC25lSOx47ivxkJ8FJ+5+nhjx2Qoaf/pqHAZVXONnpxoAbt
hcwDSVTBj55GgJcNhMIaslSQz3WY0xeRu95rXHwU5UEIur/mHN3gWEW7BTTFLtpXWYabKh2GCDlu
LivZE5ajxg3+/xljEt+K6DbZeunf3EyaGUD07CzCeHoq4Q36S0bxeQ1nTLl3izX8pjx0Ilx42xQ3
7Y8PxtkYIAJMdOxuAJ6SVQV8OhHPUM+yVxfwMWyE98CUpkUyDRyAhPqARIryszD2PMrtmNKNhDu7
CKgtk0uWUMSg3QshdUqGSTZkrKgvtlqqbIaHTDCHzmPsJntbp4M90vwQQEI8pfK4VqcaG0HnxpCm
tzcGGU5o6+e2i6GKgzrzttYpFoylSMyQ+LkPkGV/33YFpkool8Hifa7hcFRfFKDYX7BUlEQyOvQb
hJEjhIr5HKjS55sqJ8Gv3qsLPwauopDpMUvPbLJ0+RmIYdESs66dzx67p0UItkAmkknBY8mbqd02
/QEItmWJ1OOSww8zyqxa+6DccQjP0OhaAKimqvH2y3GGvceMXmdXHhSntHFN1e7lvftpla4WBUA+
MQ8AO7k2OrbiInaXXCYr1eW9dsak+TqzCJ6OSz/+wePdL1GUfXTY+2EyBypCPK4QrTV3E3LHDCY0
zqI1SiQmDCNt/USnrmZxAs8kNU/g/0VrlxYyP4oUy/VTbpHcpyA14Q2axyroYBHYmuFbFaREHKSs
mjZ+sMb/x5ycJrVO40KxeGwJr7iVEh/LjqcuNco8suOOQLAYZkw6qNmfmjBMyCdgbYKB4aPB4a9h
psbGbxLxT7Fn7UqpBgMwD87KZKIThmXCF8GJJXCXhFpeUHPgxRhShnvO35mQXmfCDg1S450lZNYr
HXgcdThH4IzlHDBM8BoVtyY6rF7/HXVH8ukgv86agKBh7f2QBGLU9PZmoou3q3vX+OmwAc1Jxule
tUB/mx+K4JTH/yx5v7qwwnQrHN/2SyM1+JPESAimMn5teehhIDE4UiquGH65sQutOpVsHDdcRTYL
1tLl6AZ93MY7Zip5WwDZKGHXqDkryfxRHy/rq/UV8FEize8NmuFJ1xGP4aXDKW4EoiBuvWPh8Uua
LebSjNbDz1hUyODD9RqICRYb9NE8uSzX1V8Tp0kC7f/Wiab10vZ+OVTy7ALLpNhVqDWsTyS/GF6Y
wpm6NDDUNqN2W5IkdRwYw1GP0TCRLFSFZi4c/1dv7k+xxA1/9TfkRSYtw73GT+OQvTk7al/2ROm+
blBwp9bYP+ac46L9F5bGnQPMEdOyI5ukhDwzcHlVk/LQHtj+CUEuV6zuhyPztz6JQaJmVKDyLpfP
7wG+JUFgdFKwEsQ3oRIEP8ihe0ydp98iozU3j5wHyXL0uXXDCJkfdmw6TN1ZM3/isdtZIfNDC8UR
o+5z0xRJJH+hgu3T8GNNXTlNjzT4zaoZ9bo/xX+PCqTHc/8uDfsjI9dnqgg5VZCsr/rOu3favsQ7
DGFNrKyZS7s7J6cF3jWWlKnIBpt/NuFWdPeydORO+21jJzts6b3XhE28Rw85gF7kCvoytVeyUJv6
KIw4fnd2IQX7VhJixFielgwCjmbbtPLG+VO9TLX9CTvzpQvju4bMM4FhQMqJr3520Usyokf1tn6A
Dt8DOehQ2o0Gsap7kHv86AJ0ImO4YEdVtOhQOgSQleToRLYXvIrzvdV4pTb0M2QRBx0larhYr3K8
lack8VH+/tSukYT1e2z5A7kJgF0tRDHOogGaC6z+I+t0pCiFIvKc/EiB5MGovUarZqVg2+asAUr0
gz9zjZkUZn+UbgXLhERHwaO7f4EO0x3tQCX0vTePaTWp7pfcSISnXFqm24U4U4+W7WD92U+h3jFU
20edp5rQLhS2QGU1czVO8r1o9dTB8DtessV8zanpLUKQ/FOJyJjAKzeO3R0t1kUX1VMH+Eik2Xfe
prrtNxu2/VgFj4nS6FUN1CXwuJMROZjdAAH3Hxl1llqAERgY7a94zAIupGbnq9oK19181iCfS7AT
8fZa8wtnAd/pHixsfQmxoCbshYFYzdRjOXp+kMVOXtGyyYUP7sqghghsJRarPKl3Ps5zaUegZuGP
u8hJV9G5qpnedAqBpcKnQWgHiy23b+HWH+wGSDawIlIAugaaPCp+y4AgyYTGg6rJKbpTJkLoMaoX
ppBSGC+WQNF3b392BlXvIkKaILcLpsu0UOnX6jGJnBFiIZRxgTB440jcNGuOate+12DZjkIDHFV5
tF7bX++TlIsVZUeW3wrVVCST06SWK94l6HtbsthqOCVY1Xmp3LZC9iWiMsNt1WSlXgf7YzYrvKzr
7IVyqAnzS1wVhssx9KjEUNKvaYuImCwSV/30L4KZEl4uTiwRf0VWovTPlulIw/+1B1Lh/+diLDci
HAQODmOuAVVm4rUe6zC83097nuZM+awUBKTtvCXbMdk6K5J1JDRgW12pQpRl6qB8g42lP0WcT6Gb
VgzC75ClqMQspklTs9fTRqsORgUaokmdnomxIJiErkT5O97XyAIRFt7YUDtfn/qfBfVlTm2Euy0M
TbtqRHFgOu6UJJN86j7e7Alum2DK93IXdSLHg3kJvIDyjtYMEbyUk0WtzBo3aE5BtkW5YwbIBdOy
qIDq6I3V4m+IaBnvi/1bDGYlxJftJs/Z48jsm60c7/uhDi/aJ42EajL4PBshDtoBfdVnxK/8IaLZ
hSysRZz/M8ZI4Uut0dqOLI9lTo2fd1jKnCWTtwx6tLRcSJSRm1BAIs8NKvUwGPfFW+ST7XpvhSqq
tgE6tmVUb50mEeo+QmANqvoLvtF6rLRik1Ity0rb9ZqDdFPlEb60hA+0fmWwrJ8pGugMRYV+MmWt
TcV2nSzXs6UdZOGPOSVnpOQiYk4d7nVD5Kn2RM22IT8yxUAvfqZoBpMaCgXNmpjA7wvmgZqR3okE
EFV9JfIhHz/iHdbluY6NSGIs/anDZ4Wg57facHB4/VtkWBXQ/Z8m237rIAAdGHYZGgWCpFU4kjpG
udG1b1p0wnVs7nbafFEc966RMlDONXK17BOQsItFEdEqxIw6PJUmdgX4b7uNtIszazsr1a9uQO+W
DdURX1p2c9tmQEjAyuvuKE2q4RxCzFshQTc6z9iiLuckRjMVPJYIulqCB9SQPI9yUyIMxt/6NFGD
GjRQriPFeMbQX6k/wi07AE29OONVo/mlFpN9DsK/Y/bIpoPzEZL2caVaJ6KURwrLzxIGbbG1tD+I
pE1iv6TG6HdIG9PFY8Hsok7T9tKw2i4pDYY0hJEJu4JgNClTjcViAXPkjFfHIOQAiK2bgJusXOvg
SYGvAfhKwLMkV1vyaEXzFypdydFgST7f+pjbqZGn99H4yvx6zdFCW0UGmAOKvO8sSmOYmYlNVL7s
fmWlRy+wIUvman5RCqkMsQoXPwc4xEtO8WydIb0rc5S37TAaTqdRc6VV6SmXHaC0ToL/8tl4zHce
Ff1sOXvaNKctsqv9MuJaEYEB3sZfy5sd/iqGi8NHNllNrCY5DFVUCxnwJ+xjowBtyY1AIXP7VZ9Z
c1o6L0lle4NtC4d1y3lXbu3cec/EFKY+rB5x3/uUDdOTBcpC/Qrbv6yFU6pGTQwecfmTxAxRw/AX
ZK2ckRRt39Kk0ERKgOBJDUmkFuWNldQ5oOIuObTZTl1jg8OcndbOCkDaB0ZE6hnIR1qKjpKJpQx2
1Kk0cybtjxeWoSUnO8yI1eBnTLnWTXcsixztr7wgR2E2SOq0OAPI2XyfobEP1H37fWkScwmsQiPI
HrEgZcpQP1z3vRF8CTegRTdWaM6hdriQixQZUi8KtrqDhcsiPdqg1U8R19Jjnwsh0kZR6MGG2KNZ
DWA7rABtqZC7adwxuruxp9BTWB1lKhrd9zYrVllTirqblBXC6uJNBVpiw+xJHMq3KC0aRFO92MJX
TqAXEma6Rk+WIN/cHnlqtVOnYeT8hwIf6WLD0IvZ6cuS7tEtgHZcc5Dbeggm+dWLhwPp2v7cjjpu
paMlPoeCnWNXVOeXTs2apABllk0kSnD2tTqfrbiD0kudepcwQ+nqi+SdI8/7jUB0hl+D0WS1rLC2
MA8TTKKw/wLBXUXSdFvqtfrdsfZpPp9IbXB8XUOdq3siyCFJL0xOOlVkfm3zrkei6o15hpYD/w6/
77U15Cx+McztMBLvilIUzemsQ7NQDt2K06dVwPJhz472XxOuK1kXOUZSJykcyU21TEWZTEeo2AMs
/nnsYsgSUxJdi1RY/cfQNLiIjV5Rc3JwdbZS4Dm+quGWk0mPuVEkzJVnaVYC/ZqFXpfiEJD3WU7K
mYkZF3nQojO2JlnvJRPiuTuBp6iCQIhnR6p2jXFwH6QVhid24LD+Q/d4WsrqqwBdw6WlKr6GVbMm
ZrTyBrjNSPahHf1Ab2GRYDyX9eHrmQK17z7lbgPLVCpOW8KPtZaSifhlwg1T+lMyMzxGNZnmUgSb
/h27tV2mwDeddOOS1td3CeSd2nbCv+YTy7psZDvIHrLiO2r7Z5VeQRP7gsYDkuUOqmXfToXO+X+F
SGU8qtnoAn1BoO/Qv5Cwo5Tkmsu/jKGMMnR6SsSu9xb4tZUNW0wP5WGaInU6XYUywx2FvkS+sPd0
TjTPbDmkIpZUq+6HBTDyuOo1kzgveppFyWe0lTiJGy1AFyaJr3az9kp9en+19UuqXZk6y3Pc5HGI
RerIeGdsYFajznq4qQzLfqR91IkhMLRtEYNcBrQz2cXfJvTLszb69ytAoP1WHzve0so3JDZbOm0C
CgwPUUTLM5wHhEYOlnidPwJqJdmZNqRf/Iu70ik4NoMdrJtAHXFnchuLRd+hdQP0BlZV0CDuVWPd
4516AcyXUFc1wgprLRWdj+BNSTGcITj8be3l5b5yMV84dyOGfXjF7bRn4ZfR5bUsqgOkq5u3p03v
K67c39dbNHNa7XJCqYpp/uWgbPGPCFkjJQq6GlvEuPE093nebNdMsnwpUd8Z9rz9v20zqnhOuLdn
qYsfiQ92f5gcoMuiOZ5l6mdVAW5ylAr9HuTbvfT6+fBuC2NephF94a0NVWAzhfDGffLyL+YQrzhj
uMXUxy0NwcbqUmNLrlpJElNyhdkxgf1Iz6qZ1mxrFBU8w9UQPEui0dYJ2BWtwAEjtsa27zDM2abk
B16Yv/7p4CKc5QV+r8CJyZfHjUune1ziz9j/V0R5g3dPn4qsNX/qYWiOWxZX1lWDbHSol/haOWDO
Z9QehscAPHRiRZSu6vywpKxstnFEFvF4A4NMOCP2GXo2La0BhIOKpbTWNIJTBazQnrAgU9HEa6XN
IMUJzzaC/RisZcAVQEXWGNsRI9R+Yx35qt28LCP4P7K35urIn5GoZXySEXjxXpUv8ewgY5Da1X1O
1YxAKFLbKVTcM/c7mzmSNsU3Ut50euszaWjDLIIZgTDlrDRwE9xPPsHW7A7sTatRZdj9Lf1B5rcm
OEDhzTYk/PxpYuBh3LRKU1/pnKvlSpRFLFfsGf9e/dubOQR97rGsLV52ylfiOrBppP5XBypVQ9uX
qvjH4CDLg/UytLO8tr2XHa75VHlLkxdxi57ek8zQDx7XUTKPm+JERy0Z7ZS+spGBqE1FF+mYoj35
VFB2gKfYE4aIm+lBATWZikpjkQnvWpkdPVZhCtWRr+9c4yizAzfS6YjzFz558IJCOq+AFTpLazfL
AMYUoKKijxvMFD3cqs2F9+4jhj+DIeimnJMo65DXccCHeaGBLw9ijpCfmi1PSye4LV6aK3ZySB18
JZOKyMr14vh7jAmT74kMnHEtyvgJBeDwJL62OVQPPNh5OIyJIa6NjlBfkwzikkLcXjrKmjmfmnb3
kkH5iPx3QVndDycXix7RJdBPlFDnZrqzEnIWZ8cDqCmOQOvU+YBnVZP2osI5HAI0tkBUs9I3nTM3
pb8fmXg/NXzTxg7H/sbc7PI/yKv21LehbAxBtiOoxnT4FlObOqsoS7JLNHwHT1lvWwCQLjQ2FATB
8vVEDmzetHihZWzZ+a/H0qDjknvjJLP3e+QIBkfEOCNAOxd25HB83mRkGLzgb2a9+iYncQPq5Lub
uWh2iuZ1UQCUnFVPe6aBD0KqtIVt0vZbh/fThfa2to7iLEnQhXjr95kdiuWKxkFPEUqc8z5/eQQO
vgjIFY6TxsxfNIM3YjyCuzbnoW8kTXviJpRk21GcBsoYTnQOcD91wqIPp+XzCxfr3ypumypYPwY9
ktVPCL02YWVWkPy0fGSgsddvMDl+6ua2b39C/ct1MFQ8Xzu4xMiQmW0Jyaw/tyec5RzSBfkdYDni
eqOQy7Tt+HyaL2R2QEbHS0V4uHx+mXPXhETLguEq0A1ba0RA4eLU+cTA2SeNQ9GaIYAn9I3705iF
tIm8+LT3nnAo4mFsP5kcHnwGb+XizmaikQVoApSWBQ5xUZ9No6hUYC/NlgLDNQgcct7s1OilA6pG
pJjabcxcsPUv4Yd1pPlZCt4UxZLRIrWXdlINd/4Pws1gjNDgbKqpJlosowmh7yCGdHC1uQovsRzG
ti7m1wK82O+zFugfl2waNyHs89SXqEpQvK1XzWbniTxP8ehgF8+1x0B5bQTe3gXmEM8+YHGXU+XP
672hbNKnRiqYJ6nuvKRLsk2aNI+HFurfDQ5vAgl8VDyYDoig0tq20kd6wUsh7PYceWxocLdTb7WD
bbdnbvBRI8DPgN1uEL+kjvST8KsFwfU+TDkoI17Gs6XfzX2gQ7spNxheBC5kM4NsfuksuYyfxU7t
ThHE14KXCZTP5cDhgATw7NbV5CPsX5dXoqXO7GQANOxrGlQJozJE0/NP/h1SUpXquSkRDrScZ46e
ChN3DGc3cxcxpXXB75n/Jz8Exqm7va2sVpnLl+HEx1t41tJflBR9yiW0TqXgqwpvHoipfoLpJUJt
qbNvVYA9IawKB3XoAGqwm1j6yY65sFxOk6IbtWpZsiuOGD6cRGrXuMz+EeDd8yc7+/8MwxuXEt5n
einzPVzme7URQC0eq22ShYAbTzfaFwBKjgmW+3tv6UJ8+xsP5XjF+cqseiuGCyqCEX0YMfSE4t/C
jb7srXKi+KLV7X4eCW6lvOx4wGyrgReQ4d37hC4RrLjUg32e4bN270LJ4dCd7C+nKEfm8l3x3Ip1
B1I4HN29mU6Ju5rnJXcbfOSWUO3Bcpo5s85Xvo37Dd94T+IxHQ0SgKxX+5kNxgNL5DYVASzuboXA
3XgrE6az05bl5kfGk05/NsjbElRl9fCrCwez8FPrM05vHQgi8qMuv8nOPu03MYpJijRu6IsfkXe1
OMcqe2fFXcS9RQMCHnLSOXzbyCdwIADKBkPdfTsiz4VhmrJ5U4mLxOWBOBTiUdjKh4+8yUvhHXtj
M48Em6QAJgfdXCIHHmHxQGmhhTF9q9g0VaGc2D/64MdqQLQJsj5Bz89jJn+jJspZuBTpIydpPsVY
+a4/2EUqTA27A8I1FCEpq31Xz6R1MGF2CjoWSkC57fwe1wYnsTEeiwanfSS5gcEJ/u0/Iu0U9B54
JtBI0nv57cpvXvwoVROiCTtNRJCrNTtZVvvvMCZNtqzyUoTxWyASOo0VREK5fxtADYJMSDWuAQlh
hYxxfctazHLmYATfW8nX0KkvmoSRQHlRSs6LQJJrlqkOhm84Eg5FtIAabFlTJ39bU/rED1TS+BcR
bR3al5KwZQgiZhaZ/PpBGfDDd3LCw+Lws+LQE0V+zVlLydxuJTdBTayVLZTZDQ3/M7adQ+umh519
j2FQA7CxTjdHXsen+YXw9zVRpntvKoLzEbm+O4Sl70go4w8GVx5gGcTJFiac6NnKrh0xC169+hWi
EY1cNjqAo8P2SuuBWd2TxpBIG/lNGvsgBBrWXQoqjFllLkk6/ar2/sWKWgJqVuuoKelSFX9m56Mr
91YKvy8oTQIna6cWqgcKeh90p5ngOrYgyy9MhlRq3w/qn+PlR2SyRY2HZl/PisRZGNBWLkObKTKI
3U5DE5H6yHGPdYDz15i2xwq5B3n6UmwZ3hQChx863SfN0dIvJYDtwPUycj9wsWb5puFQw4JB24Mb
6wjV0+zvefBqHIxXxbQfBSDLxGBvUPyh+2Fn76pJ9mCBBIImBO/vZIAsanc6LcdEmt2gvX/ECntX
/Q8V73mUY6mHOpqwBwVIAoZn4l+aWjOboh4+QNnxdqepLefTp2TdzCXNvMxpes49w87KLVSRTt11
5tc6gmUUKjITdbHuyK4GJvmrj1VNjZXBJQEAajhMwhzfO0KQANcxDDcc2DXbAB0GXSNHetfVEKYV
zXDwlq6KfdhclTPuYeXB5bqwrJ2cqA00SiBw3kahw0dv2X+uloQU8tEGP5OH7vbyZYewJnlIDSYm
Tr/sqTRkRz22jHyzqsaOWcyvidKSCHWCrq4UMH2ocPuRrlyFYDP4TmpIWJkiEVd43roWLKiQNBRb
22tg7FRdgll/2FGG9MCx5BT6i37GaLAPIHAlQJanWA+S6PPROq3r2lFzgISmxgkhnIl+dDIE+BZu
lCpC9Ytctip7m6rheXErmMBfFlA8hwVu33Pc9MDZUewqxrnB8wRPITjw2f2tTu7cqHdy79sI0u8j
ZsdVXALu65/3SiGh419OzxCWfZlT1BtCTR9e8h6VtDF0EqL5LkqG
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
