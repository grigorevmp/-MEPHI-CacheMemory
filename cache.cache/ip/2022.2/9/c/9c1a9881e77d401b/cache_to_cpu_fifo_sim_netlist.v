// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat May  6 21:20:59 2023
// Host        : grigorev-mp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cache_to_cpu_fifo_sim_netlist.v
// Design      : cache_to_cpu_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cache_to_cpu_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81376)
`pragma protect data_block
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
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
