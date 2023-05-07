// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat May  6 21:20:59 2023
// Host        : grigorev-mp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cache_to_cpu_fifo -prefix
//               cache_to_cpu_fifo_ cache_to_cpu_fifo_sim_netlist.v
// Design      : cache_to_cpu_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cache_to_cpu_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module cache_to_cpu_fifo
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [32:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [32:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [32:0]din;
  wire [32:0]dout;
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
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "33" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "33" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "61" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "60" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  cache_to_cpu_fifo_fifo_generator_v13_2_7 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(wr_rst),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module cache_to_cpu_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
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
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
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
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module cache_to_cpu_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
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
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
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
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 80432)
`pragma protect data_block
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
9t+oLW8=
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
