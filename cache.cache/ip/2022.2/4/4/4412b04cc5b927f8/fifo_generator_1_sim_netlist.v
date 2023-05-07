// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr 18 23:07:34 2023
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(wr_rst),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 76576)
`pragma protect data_block
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
JvOvr5oerdsZl43wnCqBxsUIbm5EqvTr5w==
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
