--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Wed Nov 20 16:46:52 2024
--Host        : DESKTOP-MARKUS running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_12XNOIH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_12XNOIH;

architecture STRUCTURE of m00_couplers_imp_12XNOIH is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m00_couplers_to_m00_couplers_ARADDR;
  M_AXI_arprot <= m00_couplers_to_m00_couplers_ARPROT;
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr <= m00_couplers_to_m00_couplers_AWADDR;
  M_AXI_awprot <= m00_couplers_to_m00_couplers_AWPROT;
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata <= m00_couplers_to_m00_couplers_WDATA;
  M_AXI_wstrb <= m00_couplers_to_m00_couplers_WSTRB;
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp <= m00_couplers_to_m00_couplers_BRESP;
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata <= m00_couplers_to_m00_couplers_RDATA;
  S_AXI_rresp <= m00_couplers_to_m00_couplers_RRESP;
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR <= S_AXI_araddr;
  m00_couplers_to_m00_couplers_ARPROT <= S_AXI_arprot;
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR <= S_AXI_awaddr;
  m00_couplers_to_m00_couplers_AWPROT <= S_AXI_awprot;
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP <= M_AXI_bresp;
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA <= M_AXI_rdata;
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP <= M_AXI_rresp;
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA <= S_AXI_wdata;
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB <= S_AXI_wstrb;
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_13XNVT1 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_13XNVT1;

architecture STRUCTURE of m00_couplers_imp_13XNVT1 is
  component design_1_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(2 downto 0) <= auto_pc_to_m00_couplers_ARID(2 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= auto_pc_to_m00_couplers_AWID(2 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wid(2 downto 0) <= auto_pc_to_m00_couplers_WID(2 downto 0);
  M_AXI_wlast <= auto_pc_to_m00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(2 downto 0) <= m00_couplers_to_auto_pc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m00_couplers_to_auto_pc_RID(2 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(2 downto 0) => auto_pc_to_m00_couplers_ARID(2 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(2 downto 0) => auto_pc_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bid(2 downto 0) => auto_pc_to_m00_couplers_BID(2 downto 0),
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(2 downto 0) => auto_pc_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast => auto_pc_to_m00_couplers_RLAST,
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wid(2 downto 0) => auto_pc_to_m00_couplers_WID(2 downto 0),
      m_axi_wlast => auto_pc_to_m00_couplers_WLAST,
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => m00_couplers_to_auto_pc_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => m00_couplers_to_auto_pc_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(2 downto 0) => m00_couplers_to_auto_pc_BID(2 downto 0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => m00_couplers_to_auto_pc_RID(2 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_RGW5YW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_RGW5YW;

architecture STRUCTURE of m01_couplers_imp_RGW5YW is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_125PH0A is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_125PH0A;

architecture STRUCTURE of m02_couplers_imp_125PH0A is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_SJ4LOB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_SJ4LOB;

architecture STRUCTURE of m03_couplers_imp_SJ4LOB is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_11Q8JQ7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_11Q8JQ7;

architecture STRUCTURE of m04_couplers_imp_11Q8JQ7 is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_WKWB6J is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_WKWB6J;

architecture STRUCTURE of s00_couplers_imp_WKWB6J is
  component design_1_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_WYWZGN is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_WYWZGN;

architecture STRUCTURE of s00_couplers_imp_WYWZGN is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s00_couplers_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_couplers_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_couplers_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_couplers_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s00_couplers_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s00_couplers_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_couplers_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_couplers_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s00_couplers_to_s00_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_s00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RLAST(0) <= M_AXI_rlast(0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WLAST(0) <= S_AXI_wlast(0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_16LCDBA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_16LCDBA;

architecture STRUCTURE of s01_couplers_imp_16LCDBA is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s01_couplers_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s01_couplers_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s01_couplers_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s01_couplers_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s01_couplers_to_s01_couplers_ARVALID(0);
  M_AXI_rready(0) <= s01_couplers_to_s01_couplers_RREADY(0);
  S_AXI_arready(0) <= s01_couplers_to_s01_couplers_ARREADY(0);
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rlast(0) <= s01_couplers_to_s01_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s01_couplers_to_s01_couplers_RVALID(0);
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARREADY(0) <= M_AXI_arready(0);
  s01_couplers_to_s01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RLAST(0) <= M_AXI_rlast(0);
  s01_couplers_to_s01_couplers_RREADY(0) <= S_AXI_rready(0);
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID(0) <= M_AXI_rvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_VWZFNO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s02_couplers_imp_VWZFNO;

architecture STRUCTURE of s02_couplers_imp_VWZFNO is
  signal s02_couplers_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARVALID : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_RLAST : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RREADY : STD_LOGIC;
  signal s02_couplers_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_RVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s02_couplers_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s02_couplers_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s02_couplers_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s02_couplers_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s02_couplers_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s02_couplers_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s02_couplers_to_s02_couplers_ARVALID;
  M_AXI_rready <= s02_couplers_to_s02_couplers_RREADY;
  S_AXI_arready <= s02_couplers_to_s02_couplers_ARREADY;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_s02_couplers_RDATA(31 downto 0);
  S_AXI_rlast <= s02_couplers_to_s02_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_s02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_s02_couplers_RVALID;
  s02_couplers_to_s02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_s02_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_s02_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_s02_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_s02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_s02_couplers_ARREADY <= M_AXI_arready;
  s02_couplers_to_s02_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_s02_couplers_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_s02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s02_couplers_to_s02_couplers_RLAST <= M_AXI_rlast;
  s02_couplers_to_s02_couplers_RREADY <= S_AXI_rready;
  s02_couplers_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s02_couplers_to_s02_couplers_RVALID <= M_AXI_rvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_17DKRFP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s03_couplers_imp_17DKRFP;

architecture STRUCTURE of s03_couplers_imp_17DKRFP is
  signal s03_couplers_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_ARREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_ARVALID : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_RLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_RVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s03_couplers_to_s03_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s03_couplers_to_s03_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s03_couplers_to_s03_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s03_couplers_to_s03_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s03_couplers_to_s03_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s03_couplers_to_s03_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s03_couplers_to_s03_couplers_ARVALID;
  M_AXI_rready <= s03_couplers_to_s03_couplers_RREADY;
  S_AXI_arready <= s03_couplers_to_s03_couplers_ARREADY;
  S_AXI_rdata(31 downto 0) <= s03_couplers_to_s03_couplers_RDATA(31 downto 0);
  S_AXI_rlast <= s03_couplers_to_s03_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s03_couplers_to_s03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s03_couplers_to_s03_couplers_RVALID;
  s03_couplers_to_s03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s03_couplers_to_s03_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s03_couplers_to_s03_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s03_couplers_to_s03_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s03_couplers_to_s03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s03_couplers_to_s03_couplers_ARREADY <= M_AXI_arready;
  s03_couplers_to_s03_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s03_couplers_to_s03_couplers_ARVALID <= S_AXI_arvalid;
  s03_couplers_to_s03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s03_couplers_to_s03_couplers_RLAST <= M_AXI_rlast;
  s03_couplers_to_s03_couplers_RREADY <= S_AXI_rready;
  s03_couplers_to_s03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s03_couplers_to_s03_couplers_RVALID <= M_AXI_rvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_YTES1T is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s04_couplers_imp_YTES1T;

architecture STRUCTURE of s04_couplers_imp_YTES1T is
  signal s04_couplers_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_ARREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_ARVALID : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_RLAST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_RVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s04_couplers_to_s04_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s04_couplers_to_s04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s04_couplers_to_s04_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s04_couplers_to_s04_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s04_couplers_to_s04_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s04_couplers_to_s04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s04_couplers_to_s04_couplers_ARVALID;
  M_AXI_rready <= s04_couplers_to_s04_couplers_RREADY;
  S_AXI_arready <= s04_couplers_to_s04_couplers_ARREADY;
  S_AXI_rdata(31 downto 0) <= s04_couplers_to_s04_couplers_RDATA(31 downto 0);
  S_AXI_rlast <= s04_couplers_to_s04_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= s04_couplers_to_s04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s04_couplers_to_s04_couplers_RVALID;
  s04_couplers_to_s04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s04_couplers_to_s04_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s04_couplers_to_s04_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s04_couplers_to_s04_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s04_couplers_to_s04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s04_couplers_to_s04_couplers_ARREADY <= M_AXI_arready;
  s04_couplers_to_s04_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s04_couplers_to_s04_couplers_ARVALID <= S_AXI_arvalid;
  s04_couplers_to_s04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s04_couplers_to_s04_couplers_RLAST <= M_AXI_rlast;
  s04_couplers_to_s04_couplers_RREADY <= S_AXI_rready;
  s04_couplers_to_s04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s04_couplers_to_s04_couplers_RVALID <= M_AXI_rvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S04_ACLK : in STD_LOGIC;
    S04_ARESETN : in STD_LOGIC;
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arready : out STD_LOGIC;
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC;
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rlast : out STD_LOGIC;
    S04_AXI_rready : in STD_LOGIC;
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rvalid : out STD_LOGIC
  );
end design_1_axi_interconnect_0_0;

architecture STRUCTURE of design_1_axi_interconnect_0_0 is
  component design_1_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xbar_1;
  signal Interconnect_DMA_ACLK_net : STD_LOGIC;
  signal Interconnect_DMA_ARESETN_net : STD_LOGIC;
  signal Interconnect_DMA_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Interconnect_DMA_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interconnect_DMA_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Interconnect_DMA_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s02_couplers_ARREADY : STD_LOGIC;
  signal Interconnect_DMA_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s02_couplers_ARVALID : STD_LOGIC;
  signal Interconnect_DMA_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s02_couplers_RLAST : STD_LOGIC;
  signal Interconnect_DMA_to_s02_couplers_RREADY : STD_LOGIC;
  signal Interconnect_DMA_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s02_couplers_RVALID : STD_LOGIC;
  signal Interconnect_DMA_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Interconnect_DMA_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s03_couplers_ARREADY : STD_LOGIC;
  signal Interconnect_DMA_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s03_couplers_ARVALID : STD_LOGIC;
  signal Interconnect_DMA_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s03_couplers_RLAST : STD_LOGIC;
  signal Interconnect_DMA_to_s03_couplers_RREADY : STD_LOGIC;
  signal Interconnect_DMA_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s03_couplers_RVALID : STD_LOGIC;
  signal Interconnect_DMA_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_DMA_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Interconnect_DMA_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s04_couplers_ARREADY : STD_LOGIC;
  signal Interconnect_DMA_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_DMA_to_s04_couplers_ARVALID : STD_LOGIC;
  signal Interconnect_DMA_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_DMA_to_s04_couplers_RLAST : STD_LOGIC;
  signal Interconnect_DMA_to_s04_couplers_RREADY : STD_LOGIC;
  signal Interconnect_DMA_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_DMA_to_s04_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_ARVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_AWVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_BREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_BVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_RLAST : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_RREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_RVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_WLAST : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_WREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_DMA_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_Interconnect_DMA_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s03_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s04_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal s04_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 1 );
begin
  Interconnect_DMA_ACLK_net <= ACLK;
  Interconnect_DMA_ARESETN_net <= ARESETN;
  Interconnect_DMA_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Interconnect_DMA_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  Interconnect_DMA_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  Interconnect_DMA_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  Interconnect_DMA_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  Interconnect_DMA_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Interconnect_DMA_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  Interconnect_DMA_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  Interconnect_DMA_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  Interconnect_DMA_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Interconnect_DMA_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  Interconnect_DMA_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  Interconnect_DMA_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  Interconnect_DMA_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  Interconnect_DMA_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Interconnect_DMA_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  Interconnect_DMA_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  Interconnect_DMA_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  Interconnect_DMA_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  Interconnect_DMA_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  Interconnect_DMA_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Interconnect_DMA_to_s00_couplers_WLAST(0) <= S00_AXI_wlast(0);
  Interconnect_DMA_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Interconnect_DMA_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  Interconnect_DMA_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  Interconnect_DMA_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  Interconnect_DMA_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  Interconnect_DMA_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  Interconnect_DMA_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  Interconnect_DMA_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  Interconnect_DMA_to_s01_couplers_ARVALID(0) <= S01_AXI_arvalid(0);
  Interconnect_DMA_to_s01_couplers_RREADY(0) <= S01_AXI_rready(0);
  Interconnect_DMA_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  Interconnect_DMA_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  Interconnect_DMA_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  Interconnect_DMA_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  Interconnect_DMA_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  Interconnect_DMA_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  Interconnect_DMA_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  Interconnect_DMA_to_s02_couplers_RREADY <= S02_AXI_rready;
  Interconnect_DMA_to_s03_couplers_ARADDR(31 downto 0) <= S03_AXI_araddr(31 downto 0);
  Interconnect_DMA_to_s03_couplers_ARBURST(1 downto 0) <= S03_AXI_arburst(1 downto 0);
  Interconnect_DMA_to_s03_couplers_ARCACHE(3 downto 0) <= S03_AXI_arcache(3 downto 0);
  Interconnect_DMA_to_s03_couplers_ARLEN(7 downto 0) <= S03_AXI_arlen(7 downto 0);
  Interconnect_DMA_to_s03_couplers_ARPROT(2 downto 0) <= S03_AXI_arprot(2 downto 0);
  Interconnect_DMA_to_s03_couplers_ARSIZE(2 downto 0) <= S03_AXI_arsize(2 downto 0);
  Interconnect_DMA_to_s03_couplers_ARVALID <= S03_AXI_arvalid;
  Interconnect_DMA_to_s03_couplers_RREADY <= S03_AXI_rready;
  Interconnect_DMA_to_s04_couplers_ARADDR(31 downto 0) <= S04_AXI_araddr(31 downto 0);
  Interconnect_DMA_to_s04_couplers_ARBURST(1 downto 0) <= S04_AXI_arburst(1 downto 0);
  Interconnect_DMA_to_s04_couplers_ARCACHE(3 downto 0) <= S04_AXI_arcache(3 downto 0);
  Interconnect_DMA_to_s04_couplers_ARLEN(7 downto 0) <= S04_AXI_arlen(7 downto 0);
  Interconnect_DMA_to_s04_couplers_ARPROT(2 downto 0) <= S04_AXI_arprot(2 downto 0);
  Interconnect_DMA_to_s04_couplers_ARSIZE(2 downto 0) <= S04_AXI_arsize(2 downto 0);
  Interconnect_DMA_to_s04_couplers_ARVALID <= S04_AXI_arvalid;
  Interconnect_DMA_to_s04_couplers_RREADY <= S04_AXI_rready;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_Interconnect_DMA_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_Interconnect_DMA_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_Interconnect_DMA_ARCACHE(3 downto 0);
  M00_AXI_arid(2 downto 0) <= m00_couplers_to_Interconnect_DMA_ARID(2 downto 0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_Interconnect_DMA_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_Interconnect_DMA_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_Interconnect_DMA_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_Interconnect_DMA_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_Interconnect_DMA_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_Interconnect_DMA_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_Interconnect_DMA_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_Interconnect_DMA_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_Interconnect_DMA_AWCACHE(3 downto 0);
  M00_AXI_awid(2 downto 0) <= m00_couplers_to_Interconnect_DMA_AWID(2 downto 0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_Interconnect_DMA_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_Interconnect_DMA_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_Interconnect_DMA_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_Interconnect_DMA_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_Interconnect_DMA_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_Interconnect_DMA_AWVALID;
  M00_AXI_bready <= m00_couplers_to_Interconnect_DMA_BREADY;
  M00_AXI_rready <= m00_couplers_to_Interconnect_DMA_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_Interconnect_DMA_WDATA(31 downto 0);
  M00_AXI_wid(2 downto 0) <= m00_couplers_to_Interconnect_DMA_WID(2 downto 0);
  M00_AXI_wlast <= m00_couplers_to_Interconnect_DMA_WLAST;
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_Interconnect_DMA_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_Interconnect_DMA_WVALID;
  S00_AXI_arready(0) <= Interconnect_DMA_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= Interconnect_DMA_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= Interconnect_DMA_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= Interconnect_DMA_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= Interconnect_DMA_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast(0) <= Interconnect_DMA_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= Interconnect_DMA_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= Interconnect_DMA_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= Interconnect_DMA_to_s00_couplers_WREADY(0);
  S01_AXI_arready(0) <= Interconnect_DMA_to_s01_couplers_ARREADY(0);
  S01_AXI_rdata(31 downto 0) <= Interconnect_DMA_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rlast(0) <= Interconnect_DMA_to_s01_couplers_RLAST(0);
  S01_AXI_rresp(1 downto 0) <= Interconnect_DMA_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid(0) <= Interconnect_DMA_to_s01_couplers_RVALID(0);
  S02_AXI_arready <= Interconnect_DMA_to_s02_couplers_ARREADY;
  S02_AXI_rdata(31 downto 0) <= Interconnect_DMA_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rlast <= Interconnect_DMA_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= Interconnect_DMA_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= Interconnect_DMA_to_s02_couplers_RVALID;
  S03_AXI_arready <= Interconnect_DMA_to_s03_couplers_ARREADY;
  S03_AXI_rdata(31 downto 0) <= Interconnect_DMA_to_s03_couplers_RDATA(31 downto 0);
  S03_AXI_rlast <= Interconnect_DMA_to_s03_couplers_RLAST;
  S03_AXI_rresp(1 downto 0) <= Interconnect_DMA_to_s03_couplers_RRESP(1 downto 0);
  S03_AXI_rvalid <= Interconnect_DMA_to_s03_couplers_RVALID;
  S04_AXI_arready <= Interconnect_DMA_to_s04_couplers_ARREADY;
  S04_AXI_rdata(31 downto 0) <= Interconnect_DMA_to_s04_couplers_RDATA(31 downto 0);
  S04_AXI_rlast <= Interconnect_DMA_to_s04_couplers_RLAST;
  S04_AXI_rresp(1 downto 0) <= Interconnect_DMA_to_s04_couplers_RRESP(1 downto 0);
  S04_AXI_rvalid <= Interconnect_DMA_to_s04_couplers_RVALID;
  m00_couplers_to_Interconnect_DMA_ARREADY <= M00_AXI_arready;
  m00_couplers_to_Interconnect_DMA_AWREADY <= M00_AXI_awready;
  m00_couplers_to_Interconnect_DMA_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_Interconnect_DMA_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_Interconnect_DMA_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_Interconnect_DMA_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_Interconnect_DMA_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_Interconnect_DMA_RLAST <= M00_AXI_rlast;
  m00_couplers_to_Interconnect_DMA_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_Interconnect_DMA_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_Interconnect_DMA_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_13XNVT1
     port map (
      M_ACLK => Interconnect_DMA_ACLK_net,
      M_ARESETN => Interconnect_DMA_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_Interconnect_DMA_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_Interconnect_DMA_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_Interconnect_DMA_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => m00_couplers_to_Interconnect_DMA_ARID(2 downto 0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_Interconnect_DMA_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_Interconnect_DMA_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_Interconnect_DMA_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_Interconnect_DMA_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_Interconnect_DMA_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_Interconnect_DMA_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_Interconnect_DMA_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_Interconnect_DMA_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_Interconnect_DMA_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_Interconnect_DMA_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => m00_couplers_to_Interconnect_DMA_AWID(2 downto 0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_Interconnect_DMA_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_Interconnect_DMA_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_Interconnect_DMA_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_Interconnect_DMA_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_Interconnect_DMA_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_Interconnect_DMA_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_Interconnect_DMA_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_Interconnect_DMA_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_Interconnect_DMA_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_Interconnect_DMA_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_Interconnect_DMA_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_Interconnect_DMA_RDATA(31 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_Interconnect_DMA_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_Interconnect_DMA_RLAST,
      M_AXI_rready => m00_couplers_to_Interconnect_DMA_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_Interconnect_DMA_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_Interconnect_DMA_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_Interconnect_DMA_WDATA(31 downto 0),
      M_AXI_wid(2 downto 0) => m00_couplers_to_Interconnect_DMA_WID(2 downto 0),
      M_AXI_wlast => m00_couplers_to_Interconnect_DMA_WLAST,
      M_AXI_wready => m00_couplers_to_Interconnect_DMA_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_Interconnect_DMA_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_Interconnect_DMA_WVALID,
      S_ACLK => Interconnect_DMA_ACLK_net,
      S_ARESETN => Interconnect_DMA_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_WYWZGN
     port map (
      M_ACLK => Interconnect_DMA_ACLK_net,
      M_ARESETN => Interconnect_DMA_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => Interconnect_DMA_ACLK_net,
      S_ARESETN => Interconnect_DMA_ARESETN_net,
      S_AXI_araddr(31 downto 0) => Interconnect_DMA_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => Interconnect_DMA_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => Interconnect_DMA_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => Interconnect_DMA_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => Interconnect_DMA_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => Interconnect_DMA_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => Interconnect_DMA_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => Interconnect_DMA_to_s00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => Interconnect_DMA_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => Interconnect_DMA_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => Interconnect_DMA_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => Interconnect_DMA_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => Interconnect_DMA_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => Interconnect_DMA_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => Interconnect_DMA_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => Interconnect_DMA_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => Interconnect_DMA_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => Interconnect_DMA_to_s00_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => Interconnect_DMA_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => Interconnect_DMA_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => Interconnect_DMA_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => Interconnect_DMA_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => Interconnect_DMA_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => Interconnect_DMA_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast(0) => Interconnect_DMA_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => Interconnect_DMA_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => Interconnect_DMA_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => Interconnect_DMA_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => Interconnect_DMA_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => Interconnect_DMA_to_s00_couplers_WLAST(0),
      S_AXI_wready(0) => Interconnect_DMA_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => Interconnect_DMA_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => Interconnect_DMA_to_s00_couplers_WVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_16LCDBA
     port map (
      M_ACLK => Interconnect_DMA_ACLK_net,
      M_ARESETN => Interconnect_DMA_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s01_couplers_to_xbar_ARVALID(0),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rlast(0) => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready(0) => s01_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid(0) => s01_couplers_to_xbar_RVALID(1),
      S_ACLK => Interconnect_DMA_ACLK_net,
      S_ARESETN => Interconnect_DMA_ARESETN_net,
      S_AXI_araddr(31 downto 0) => Interconnect_DMA_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => Interconnect_DMA_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => Interconnect_DMA_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => Interconnect_DMA_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => Interconnect_DMA_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => Interconnect_DMA_to_s01_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => Interconnect_DMA_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => Interconnect_DMA_to_s01_couplers_ARVALID(0),
      S_AXI_rdata(31 downto 0) => Interconnect_DMA_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rlast(0) => Interconnect_DMA_to_s01_couplers_RLAST(0),
      S_AXI_rready(0) => Interconnect_DMA_to_s01_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => Interconnect_DMA_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => Interconnect_DMA_to_s01_couplers_RVALID(0)
    );
s02_couplers: entity work.s02_couplers_imp_VWZFNO
     port map (
      M_ACLK => Interconnect_DMA_ACLK_net,
      M_ARESETN => Interconnect_DMA_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_rdata(31 downto 0) => s02_couplers_to_xbar_RDATA(95 downto 64),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      S_ACLK => Interconnect_DMA_ACLK_net,
      S_ARESETN => Interconnect_DMA_ARESETN_net,
      S_AXI_araddr(31 downto 0) => Interconnect_DMA_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => Interconnect_DMA_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => Interconnect_DMA_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => Interconnect_DMA_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => Interconnect_DMA_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arready => Interconnect_DMA_to_s02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => Interconnect_DMA_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => Interconnect_DMA_to_s02_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => Interconnect_DMA_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rlast => Interconnect_DMA_to_s02_couplers_RLAST,
      S_AXI_rready => Interconnect_DMA_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => Interconnect_DMA_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => Interconnect_DMA_to_s02_couplers_RVALID
    );
s03_couplers: entity work.s03_couplers_imp_17DKRFP
     port map (
      M_ACLK => Interconnect_DMA_ACLK_net,
      M_ARESETN => Interconnect_DMA_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s03_couplers_to_xbar_ARREADY(3),
      M_AXI_arsize(2 downto 0) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s03_couplers_to_xbar_ARVALID,
      M_AXI_rdata(31 downto 0) => s03_couplers_to_xbar_RDATA(127 downto 96),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST(3),
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s03_couplers_to_xbar_RRESP(7 downto 6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID(3),
      S_ACLK => Interconnect_DMA_ACLK_net,
      S_ARESETN => Interconnect_DMA_ARESETN_net,
      S_AXI_araddr(31 downto 0) => Interconnect_DMA_to_s03_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => Interconnect_DMA_to_s03_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => Interconnect_DMA_to_s03_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => Interconnect_DMA_to_s03_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => Interconnect_DMA_to_s03_couplers_ARPROT(2 downto 0),
      S_AXI_arready => Interconnect_DMA_to_s03_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => Interconnect_DMA_to_s03_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => Interconnect_DMA_to_s03_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => Interconnect_DMA_to_s03_couplers_RDATA(31 downto 0),
      S_AXI_rlast => Interconnect_DMA_to_s03_couplers_RLAST,
      S_AXI_rready => Interconnect_DMA_to_s03_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => Interconnect_DMA_to_s03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => Interconnect_DMA_to_s03_couplers_RVALID
    );
s04_couplers: entity work.s04_couplers_imp_YTES1T
     port map (
      M_ACLK => Interconnect_DMA_ACLK_net,
      M_ARESETN => Interconnect_DMA_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s04_couplers_to_xbar_ARREADY(4),
      M_AXI_arsize(2 downto 0) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s04_couplers_to_xbar_ARVALID,
      M_AXI_rdata(31 downto 0) => s04_couplers_to_xbar_RDATA(159 downto 128),
      M_AXI_rlast => s04_couplers_to_xbar_RLAST(4),
      M_AXI_rready => s04_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s04_couplers_to_xbar_RRESP(9 downto 8),
      M_AXI_rvalid => s04_couplers_to_xbar_RVALID(4),
      S_ACLK => Interconnect_DMA_ACLK_net,
      S_ARESETN => Interconnect_DMA_ARESETN_net,
      S_AXI_araddr(31 downto 0) => Interconnect_DMA_to_s04_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => Interconnect_DMA_to_s04_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => Interconnect_DMA_to_s04_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => Interconnect_DMA_to_s04_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => Interconnect_DMA_to_s04_couplers_ARPROT(2 downto 0),
      S_AXI_arready => Interconnect_DMA_to_s04_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => Interconnect_DMA_to_s04_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => Interconnect_DMA_to_s04_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => Interconnect_DMA_to_s04_couplers_RDATA(31 downto 0),
      S_AXI_rlast => Interconnect_DMA_to_s04_couplers_RLAST,
      S_AXI_rready => Interconnect_DMA_to_s04_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => Interconnect_DMA_to_s04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => Interconnect_DMA_to_s04_couplers_RVALID
    );
xbar: component design_1_xbar_1
     port map (
      aclk => Interconnect_DMA_ACLK_net,
      aresetn => Interconnect_DMA_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(159 downto 128) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(127 downto 96) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(9 downto 8) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(7 downto 6) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(19 downto 16) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(15 downto 12) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(14 downto 0) => B"000000000000000",
      s_axi_arlen(39 downto 32) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(31 downto 24) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(4 downto 1) => B"0000",
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(14 downto 12) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(11 downto 9) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(19 downto 4) => B"0000000000000000",
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(4) => s04_couplers_to_xbar_ARREADY(4),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY(3),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(14 downto 12) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(11 downto 9) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(4) => s04_couplers_to_xbar_ARVALID,
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(159 downto 32) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(9 downto 2) => B"00000000",
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(19 downto 4) => B"0000000000000000",
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(14 downto 0) => B"000000000000000",
      s_axi_awlen(39 downto 8) => B"00000000000000000000000000000000",
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(4 downto 1) => B"0000",
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(14 downto 3) => B"000000000000",
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(19 downto 4) => B"0000000000000000",
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(4 downto 1) => NLW_xbar_s_axi_awready_UNCONNECTED(4 downto 1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(14 downto 3) => B"000000000001",
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(4 downto 1) => B"0000",
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bid(14 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(14 downto 0),
      s_axi_bready(4 downto 1) => B"0000",
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(9 downto 2) => NLW_xbar_s_axi_bresp_UNCONNECTED(9 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(4 downto 1) => NLW_xbar_s_axi_bvalid_UNCONNECTED(4 downto 1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(159 downto 128) => s04_couplers_to_xbar_RDATA(159 downto 128),
      s_axi_rdata(127 downto 96) => s03_couplers_to_xbar_RDATA(127 downto 96),
      s_axi_rdata(95 downto 64) => s02_couplers_to_xbar_RDATA(95 downto 64),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(14 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(14 downto 0),
      s_axi_rlast(4) => s04_couplers_to_xbar_RLAST(4),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST(3),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(4) => s04_couplers_to_xbar_RREADY,
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(9 downto 8) => s04_couplers_to_xbar_RRESP(9 downto 8),
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(4) => s04_couplers_to_xbar_RVALID(4),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID(3),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(159 downto 32) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(4 downto 1) => B"0000",
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST(0),
      s_axi_wready(4 downto 1) => NLW_xbar_s_axi_wready_UNCONNECTED(4 downto 1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(19 downto 4) => B"1111111111111111",
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(4 downto 1) => B"0000",
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC;
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end design_1_ps7_0_axi_periph_0;

architecture STRUCTURE of design_1_ps7_0_axi_periph_0 is
  component design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xbar_0;
  signal Interconnect_Register_ACLK_net : STD_LOGIC;
  signal Interconnect_Register_ARESETN_net : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARREADY : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_Register_to_s00_couplers_ARVALID : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWREADY : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Interconnect_Register_to_s00_couplers_AWVALID : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Interconnect_Register_to_s00_couplers_BREADY : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_to_s00_couplers_BVALID : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Interconnect_Register_to_s00_couplers_RLAST : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_RREADY : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_to_s00_couplers_RVALID : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Interconnect_Register_to_s00_couplers_WLAST : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_WREADY : STD_LOGIC;
  signal Interconnect_Register_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Interconnect_Register_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_ARADDR : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_ARPROT : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_ARREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_ARVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_AWADDR : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_AWPROT : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_AWREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_AWVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_BREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_BRESP : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_BVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_RDATA : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_RREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_RRESP : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_RVALID : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_WDATA : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_WREADY : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_WSTRB : STD_LOGIC;
  signal m00_couplers_to_Interconnect_Register_WVALID : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_Interconnect_Register_ARREADY : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_ARVALID : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_Interconnect_Register_AWREADY : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_AWVALID : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_BREADY : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_Interconnect_Register_BVALID : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_Interconnect_Register_RREADY : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_Interconnect_Register_RVALID : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_Interconnect_Register_WREADY : STD_LOGIC;
  signal m01_couplers_to_Interconnect_Register_WVALID : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_Interconnect_Register_ARREADY : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_ARVALID : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_Interconnect_Register_AWREADY : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_AWVALID : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_BREADY : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_Interconnect_Register_BVALID : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_Interconnect_Register_RREADY : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_Interconnect_Register_RVALID : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_Interconnect_Register_WREADY : STD_LOGIC;
  signal m02_couplers_to_Interconnect_Register_WVALID : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_Interconnect_Register_ARREADY : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_ARVALID : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_Interconnect_Register_AWREADY : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_AWVALID : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_BREADY : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_Interconnect_Register_BVALID : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_Interconnect_Register_RREADY : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_Interconnect_Register_RVALID : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_Interconnect_Register_WREADY : STD_LOGIC;
  signal m03_couplers_to_Interconnect_Register_WVALID : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_Interconnect_Register_ARREADY : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_ARVALID : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_Interconnect_Register_AWREADY : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_AWVALID : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_BREADY : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_Interconnect_Register_BVALID : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_Interconnect_Register_RREADY : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_Interconnect_Register_RVALID : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_Interconnect_Register_WREADY : STD_LOGIC;
  signal m04_couplers_to_Interconnect_Register_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 3 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 4 );
begin
  Interconnect_Register_ACLK_net <= ACLK;
  Interconnect_Register_ARESETN_net <= ARESETN;
  Interconnect_Register_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Interconnect_Register_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  Interconnect_Register_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  Interconnect_Register_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  Interconnect_Register_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  Interconnect_Register_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  Interconnect_Register_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Interconnect_Register_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  Interconnect_Register_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  Interconnect_Register_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  Interconnect_Register_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Interconnect_Register_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  Interconnect_Register_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  Interconnect_Register_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  Interconnect_Register_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  Interconnect_Register_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  Interconnect_Register_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Interconnect_Register_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  Interconnect_Register_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  Interconnect_Register_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  Interconnect_Register_to_s00_couplers_BREADY <= S00_AXI_bready;
  Interconnect_Register_to_s00_couplers_RREADY <= S00_AXI_rready;
  Interconnect_Register_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Interconnect_Register_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  Interconnect_Register_to_s00_couplers_WLAST <= S00_AXI_wlast;
  Interconnect_Register_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Interconnect_Register_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  M00_AXI_araddr <= m00_couplers_to_Interconnect_Register_ARADDR;
  M00_AXI_arprot <= m00_couplers_to_Interconnect_Register_ARPROT;
  M00_AXI_arvalid <= m00_couplers_to_Interconnect_Register_ARVALID;
  M00_AXI_awaddr <= m00_couplers_to_Interconnect_Register_AWADDR;
  M00_AXI_awprot <= m00_couplers_to_Interconnect_Register_AWPROT;
  M00_AXI_awvalid <= m00_couplers_to_Interconnect_Register_AWVALID;
  M00_AXI_bready <= m00_couplers_to_Interconnect_Register_BREADY;
  M00_AXI_rready <= m00_couplers_to_Interconnect_Register_RREADY;
  M00_AXI_wdata <= m00_couplers_to_Interconnect_Register_WDATA;
  M00_AXI_wstrb <= m00_couplers_to_Interconnect_Register_WSTRB;
  M00_AXI_wvalid <= m00_couplers_to_Interconnect_Register_WVALID;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_Interconnect_Register_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_Interconnect_Register_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_Interconnect_Register_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_Interconnect_Register_AWVALID;
  M01_AXI_bready <= m01_couplers_to_Interconnect_Register_BREADY;
  M01_AXI_rready <= m01_couplers_to_Interconnect_Register_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_Interconnect_Register_WDATA(31 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_Interconnect_Register_WVALID;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_Interconnect_Register_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_Interconnect_Register_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_Interconnect_Register_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_Interconnect_Register_AWVALID;
  M02_AXI_bready <= m02_couplers_to_Interconnect_Register_BREADY;
  M02_AXI_rready <= m02_couplers_to_Interconnect_Register_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_Interconnect_Register_WDATA(31 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_Interconnect_Register_WVALID;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_Interconnect_Register_ARADDR(31 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_Interconnect_Register_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_Interconnect_Register_AWADDR(31 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_Interconnect_Register_AWVALID;
  M03_AXI_bready <= m03_couplers_to_Interconnect_Register_BREADY;
  M03_AXI_rready <= m03_couplers_to_Interconnect_Register_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_Interconnect_Register_WDATA(31 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_Interconnect_Register_WVALID;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_Interconnect_Register_ARADDR(31 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_Interconnect_Register_ARVALID;
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_Interconnect_Register_AWADDR(31 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_Interconnect_Register_AWVALID;
  M04_AXI_bready <= m04_couplers_to_Interconnect_Register_BREADY;
  M04_AXI_rready <= m04_couplers_to_Interconnect_Register_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_Interconnect_Register_WDATA(31 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_Interconnect_Register_WVALID;
  S00_AXI_arready <= Interconnect_Register_to_s00_couplers_ARREADY;
  S00_AXI_awready <= Interconnect_Register_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= Interconnect_Register_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= Interconnect_Register_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= Interconnect_Register_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= Interconnect_Register_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= Interconnect_Register_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= Interconnect_Register_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= Interconnect_Register_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= Interconnect_Register_to_s00_couplers_RVALID;
  S00_AXI_wready <= Interconnect_Register_to_s00_couplers_WREADY;
  m00_couplers_to_Interconnect_Register_ARREADY <= M00_AXI_arready;
  m00_couplers_to_Interconnect_Register_AWREADY <= M00_AXI_awready;
  m00_couplers_to_Interconnect_Register_BRESP <= M00_AXI_bresp;
  m00_couplers_to_Interconnect_Register_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_Interconnect_Register_RDATA <= M00_AXI_rdata;
  m00_couplers_to_Interconnect_Register_RRESP <= M00_AXI_rresp;
  m00_couplers_to_Interconnect_Register_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_Interconnect_Register_WREADY <= M00_AXI_wready;
  m01_couplers_to_Interconnect_Register_ARREADY <= M01_AXI_arready;
  m01_couplers_to_Interconnect_Register_AWREADY <= M01_AXI_awready;
  m01_couplers_to_Interconnect_Register_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_Interconnect_Register_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_Interconnect_Register_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_Interconnect_Register_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_Interconnect_Register_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_Interconnect_Register_WREADY <= M01_AXI_wready;
  m02_couplers_to_Interconnect_Register_ARREADY <= M02_AXI_arready;
  m02_couplers_to_Interconnect_Register_AWREADY <= M02_AXI_awready;
  m02_couplers_to_Interconnect_Register_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_Interconnect_Register_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_Interconnect_Register_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_Interconnect_Register_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_Interconnect_Register_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_Interconnect_Register_WREADY <= M02_AXI_wready;
  m03_couplers_to_Interconnect_Register_ARREADY <= M03_AXI_arready;
  m03_couplers_to_Interconnect_Register_AWREADY <= M03_AXI_awready;
  m03_couplers_to_Interconnect_Register_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_Interconnect_Register_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_Interconnect_Register_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_Interconnect_Register_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_Interconnect_Register_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_Interconnect_Register_WREADY <= M03_AXI_wready;
  m04_couplers_to_Interconnect_Register_ARREADY <= M04_AXI_arready;
  m04_couplers_to_Interconnect_Register_AWREADY <= M04_AXI_awready;
  m04_couplers_to_Interconnect_Register_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_Interconnect_Register_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_Interconnect_Register_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_Interconnect_Register_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_Interconnect_Register_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_Interconnect_Register_WREADY <= M04_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_12XNOIH
     port map (
      M_ACLK => Interconnect_Register_ACLK_net,
      M_ARESETN => Interconnect_Register_ARESETN_net,
      M_AXI_araddr => m00_couplers_to_Interconnect_Register_ARADDR,
      M_AXI_arprot => m00_couplers_to_Interconnect_Register_ARPROT,
      M_AXI_arready => m00_couplers_to_Interconnect_Register_ARREADY,
      M_AXI_arvalid => m00_couplers_to_Interconnect_Register_ARVALID,
      M_AXI_awaddr => m00_couplers_to_Interconnect_Register_AWADDR,
      M_AXI_awprot => m00_couplers_to_Interconnect_Register_AWPROT,
      M_AXI_awready => m00_couplers_to_Interconnect_Register_AWREADY,
      M_AXI_awvalid => m00_couplers_to_Interconnect_Register_AWVALID,
      M_AXI_bready => m00_couplers_to_Interconnect_Register_BREADY,
      M_AXI_bresp => m00_couplers_to_Interconnect_Register_BRESP,
      M_AXI_bvalid => m00_couplers_to_Interconnect_Register_BVALID,
      M_AXI_rdata => m00_couplers_to_Interconnect_Register_RDATA,
      M_AXI_rready => m00_couplers_to_Interconnect_Register_RREADY,
      M_AXI_rresp => m00_couplers_to_Interconnect_Register_RRESP,
      M_AXI_rvalid => m00_couplers_to_Interconnect_Register_RVALID,
      M_AXI_wdata => m00_couplers_to_Interconnect_Register_WDATA,
      M_AXI_wready => m00_couplers_to_Interconnect_Register_WREADY,
      M_AXI_wstrb => m00_couplers_to_Interconnect_Register_WSTRB,
      M_AXI_wvalid => m00_couplers_to_Interconnect_Register_WVALID,
      S_ACLK => Interconnect_Register_ACLK_net,
      S_ARESETN => Interconnect_Register_ARESETN_net,
      S_AXI_araddr => xbar_to_m00_couplers_ARADDR(0),
      S_AXI_arprot => xbar_to_m00_couplers_ARPROT(0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr => xbar_to_m00_couplers_AWADDR(0),
      S_AXI_awprot => xbar_to_m00_couplers_AWPROT(0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp => xbar_to_m00_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata => xbar_to_m00_couplers_RDATA,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp => xbar_to_m00_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata => xbar_to_m00_couplers_WDATA(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m00_couplers_WSTRB(0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_RGW5YW
     port map (
      M_ACLK => Interconnect_Register_ACLK_net,
      M_ARESETN => Interconnect_Register_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_Interconnect_Register_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_Interconnect_Register_ARREADY,
      M_AXI_arvalid => m01_couplers_to_Interconnect_Register_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_Interconnect_Register_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_Interconnect_Register_AWREADY,
      M_AXI_awvalid => m01_couplers_to_Interconnect_Register_AWVALID,
      M_AXI_bready => m01_couplers_to_Interconnect_Register_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_Interconnect_Register_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_Interconnect_Register_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_Interconnect_Register_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_Interconnect_Register_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_Interconnect_Register_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_Interconnect_Register_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_Interconnect_Register_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_Interconnect_Register_WREADY,
      M_AXI_wvalid => m01_couplers_to_Interconnect_Register_WVALID,
      S_ACLK => Interconnect_Register_ACLK_net,
      S_ARESETN => Interconnect_Register_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_125PH0A
     port map (
      M_ACLK => Interconnect_Register_ACLK_net,
      M_ARESETN => Interconnect_Register_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_Interconnect_Register_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_Interconnect_Register_ARREADY,
      M_AXI_arvalid => m02_couplers_to_Interconnect_Register_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_Interconnect_Register_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_Interconnect_Register_AWREADY,
      M_AXI_awvalid => m02_couplers_to_Interconnect_Register_AWVALID,
      M_AXI_bready => m02_couplers_to_Interconnect_Register_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_Interconnect_Register_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_Interconnect_Register_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_Interconnect_Register_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_Interconnect_Register_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_Interconnect_Register_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_Interconnect_Register_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_Interconnect_Register_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_Interconnect_Register_WREADY,
      M_AXI_wvalid => m02_couplers_to_Interconnect_Register_WVALID,
      S_ACLK => Interconnect_Register_ACLK_net,
      S_ARESETN => Interconnect_Register_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_SJ4LOB
     port map (
      M_ACLK => Interconnect_Register_ACLK_net,
      M_ARESETN => Interconnect_Register_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_Interconnect_Register_ARADDR(31 downto 0),
      M_AXI_arready => m03_couplers_to_Interconnect_Register_ARREADY,
      M_AXI_arvalid => m03_couplers_to_Interconnect_Register_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_Interconnect_Register_AWADDR(31 downto 0),
      M_AXI_awready => m03_couplers_to_Interconnect_Register_AWREADY,
      M_AXI_awvalid => m03_couplers_to_Interconnect_Register_AWVALID,
      M_AXI_bready => m03_couplers_to_Interconnect_Register_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_Interconnect_Register_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_Interconnect_Register_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_Interconnect_Register_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_Interconnect_Register_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_Interconnect_Register_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_Interconnect_Register_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_Interconnect_Register_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_Interconnect_Register_WREADY,
      M_AXI_wvalid => m03_couplers_to_Interconnect_Register_WVALID,
      S_ACLK => Interconnect_Register_ACLK_net,
      S_ARESETN => Interconnect_Register_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_11Q8JQ7
     port map (
      M_ACLK => Interconnect_Register_ACLK_net,
      M_ARESETN => Interconnect_Register_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_Interconnect_Register_ARADDR(31 downto 0),
      M_AXI_arready => m04_couplers_to_Interconnect_Register_ARREADY,
      M_AXI_arvalid => m04_couplers_to_Interconnect_Register_ARVALID,
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_Interconnect_Register_AWADDR(31 downto 0),
      M_AXI_awready => m04_couplers_to_Interconnect_Register_AWREADY,
      M_AXI_awvalid => m04_couplers_to_Interconnect_Register_AWVALID,
      M_AXI_bready => m04_couplers_to_Interconnect_Register_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_Interconnect_Register_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_Interconnect_Register_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_Interconnect_Register_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_Interconnect_Register_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_Interconnect_Register_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_Interconnect_Register_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_Interconnect_Register_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_Interconnect_Register_WREADY,
      M_AXI_wvalid => m04_couplers_to_Interconnect_Register_WVALID,
      S_ACLK => Interconnect_Register_ACLK_net,
      S_ARESETN => Interconnect_Register_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
s00_couplers: entity work.s00_couplers_imp_WKWB6J
     port map (
      M_ACLK => Interconnect_Register_ACLK_net,
      M_ARESETN => Interconnect_Register_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => Interconnect_Register_ACLK_net,
      S_ARESETN => Interconnect_Register_ARESETN_net,
      S_AXI_araddr(31 downto 0) => Interconnect_Register_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => Interconnect_Register_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => Interconnect_Register_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => Interconnect_Register_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => Interconnect_Register_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => Interconnect_Register_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => Interconnect_Register_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => Interconnect_Register_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => Interconnect_Register_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => Interconnect_Register_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => Interconnect_Register_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => Interconnect_Register_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => Interconnect_Register_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => Interconnect_Register_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => Interconnect_Register_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => Interconnect_Register_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => Interconnect_Register_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => Interconnect_Register_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => Interconnect_Register_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => Interconnect_Register_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => Interconnect_Register_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => Interconnect_Register_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => Interconnect_Register_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => Interconnect_Register_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => Interconnect_Register_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => Interconnect_Register_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => Interconnect_Register_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => Interconnect_Register_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => Interconnect_Register_to_s00_couplers_RLAST,
      S_AXI_rready => Interconnect_Register_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => Interconnect_Register_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => Interconnect_Register_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => Interconnect_Register_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => Interconnect_Register_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => Interconnect_Register_to_s00_couplers_WLAST,
      S_AXI_wready => Interconnect_Register_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => Interconnect_Register_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => Interconnect_Register_to_s00_couplers_WVALID
    );
xbar: component design_1_xbar_0
     port map (
      aclk => Interconnect_Register_ACLK_net,
      aresetn => Interconnect_Register_ARESETN_net,
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(14 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(14 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(14 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(14 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1) => xbar_to_m00_couplers_BRESP,
      m_axi_bresp(0) => xbar_to_m00_couplers_BRESP,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(30) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(29) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(28) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(27) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(26) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(25) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(24) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(23) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(22) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(21) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(20) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(19) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(18) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(17) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(16) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(15) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(14) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(13) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(12) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(11) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(10) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(9) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(8) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(7) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(6) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(5) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(4) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(3) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(2) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(1) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(0) => xbar_to_m00_couplers_RDATA,
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1) => xbar_to_m00_couplers_RRESP,
      m_axi_rresp(0) => xbar_to_m00_couplers_RRESP,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(19 downto 4) => NLW_xbar_m_axi_wstrb_UNCONNECTED(19 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED_OUT_1 : out STD_LOGIC;
    LED_OUT_2 : out STD_LOGIC;
    LED_OUT_3 : out STD_LOGIC;
    LED_OUT_4 : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=32,numReposBlks=18,numNonXlnxBlks=4,numHierBlks=14,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_board_cnt=6,da_clkrst_cnt=6,da_ps7_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_axi_memory_init_0_0 is
  port (
    init_complete_in : in STD_LOGIC;
    init_complete_out : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_axi_memory_init_0_0;
  component design_1_mdm_0_0 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component design_1_mdm_0_0;
  component design_1_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_0_0;
  component design_1_axi_dma_0_1 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_0_1;
  component design_1_axi_dma_0_2 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_0_2;
  component design_1_axi_dma_CH2_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_CH2_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_0;
  component design_1_processing_system7_0_0 is
  port (
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IRQ_P2F_DMAC0 : out STD_LOGIC;
    IRQ_F2P : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DMA0_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA0_DAVALID : out STD_LOGIC;
    DMA0_DRREADY : out STD_LOGIC;
    DMA0_ACLK : in STD_LOGIC;
    DMA0_DAREADY : in STD_LOGIC;
    DMA0_DRLAST : in STD_LOGIC;
    DMA0_DRVALID : in STD_LOGIC;
    DMA0_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component design_1_processing_system7_0_0;
  component design_1_Channel3_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    LED_OUT : out STD_LOGIC
  );
  end component design_1_Channel3_0;
  component design_1_Project_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    LED_OUT : out STD_LOGIC
  );
  end component design_1_Project_0_0;
  component design_1_Project_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    LED_OUT : out STD_LOGIC
  );
  end component design_1_Project_0_1;
  component design_1_Project_0_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tready : out STD_LOGIC;
    LED_OUT : out STD_LOGIC
  );
  end component design_1_Project_0_2;
  signal Channel4_LED_OUT : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M01_AXI_ARREADY : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_ARVALID : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M01_AXI_AWREADY : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_AWVALID : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_BREADY : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_M01_AXI_BVALID : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M01_AXI_RREADY : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_M01_AXI_RVALID : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M01_AXI_WREADY : STD_LOGIC;
  signal Interconnect_Register_M01_AXI_WVALID : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M02_AXI_ARREADY : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_ARVALID : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M02_AXI_AWREADY : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_AWVALID : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_BREADY : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_M02_AXI_BVALID : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M02_AXI_RREADY : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_M02_AXI_RVALID : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M02_AXI_WREADY : STD_LOGIC;
  signal Interconnect_Register_M02_AXI_WVALID : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M03_AXI_ARREADY : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_ARVALID : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M03_AXI_AWREADY : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_AWVALID : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_BREADY : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_M03_AXI_BVALID : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M03_AXI_RREADY : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_M03_AXI_RVALID : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M03_AXI_WREADY : STD_LOGIC;
  signal Interconnect_Register_M03_AXI_WVALID : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M04_AXI_ARREADY : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_ARVALID : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M04_AXI_AWREADY : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_AWVALID : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_BREADY : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_M04_AXI_BVALID : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M04_AXI_RREADY : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Interconnect_Register_M04_AXI_RVALID : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Interconnect_Register_M04_AXI_WREADY : STD_LOGIC;
  signal Interconnect_Register_M04_AXI_WVALID : STD_LOGIC;
  signal Project_0_LED_OUT : STD_LOGIC;
  signal Project_1_LED_OUT : STD_LOGIC;
  signal Project_CH3_LED_OUT : STD_LOGIC;
  signal axi_dma_1_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_1_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_CH1_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH1_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_CH1_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_CH1_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH1_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_CH1_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_CH1_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_CH1_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_CH1_M_AXI_MM2S_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_CH1_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_CH1_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_CH1_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH1_M_AXI_MM2S_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_CH1_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_CH1_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_CH1_M_AXI_MM2S_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_CH1_mm2s_introut : STD_LOGIC;
  signal axi_dma_CH2_mm2s_introut : STD_LOGIC;
  signal axi_dma_CH3_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH3_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_CH3_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_CH3_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH3_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_CH3_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_CH3_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_CH3_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_CH3_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_CH3_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_CH3_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_CH3_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH3_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_CH3_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_CH3_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_CH3_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_CH3_mm2s_introut : STD_LOGIC;
  signal axi_dma_CH4_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH4_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_CH4_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_CH4_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH4_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_CH4_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_CH4_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_CH4_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_CH4_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_CH4_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_CH4_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_CH4_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_CH4_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_CH4_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_CH4_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_CH4_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_CH4_mm2s_introut : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_memory_init_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_memory_init_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_memory_init_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_memory_init_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_memory_init_0_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_memory_init_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_memory_init_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_memory_init_0_M_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_memory_init_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_memory_init_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_memory_init_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_memory_init_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_memory_init_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_memory_init_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_memory_init_0_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_memory_init_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_memory_init_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_memory_init_0_M_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_memory_init_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_memory_init_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_memory_init_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_memory_init_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_memory_init_0_M_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_memory_init_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_memory_init_0_M_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_memory_init_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_memory_init_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_memory_init_0_M_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_memory_init_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_memory_init_0_M_AXI_WLAST : STD_LOGIC;
  signal axi_memory_init_0_M_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_memory_init_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_memory_init_0_M_AXI_WVALID : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal mdm_0_Debug_SYS_Rst : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Interconnect_Register_M00_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_Interconnect_Register_M00_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH1_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH1_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH1_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_dma_CH2_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH2_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH2_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_dma_CH3_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH3_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH3_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_dma_CH4_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH4_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_CH4_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_memory_init_0_init_complete_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_memory_init_0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_memory_init_0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_memory_init_0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_memory_init_0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_memory_init_0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_memory_init_0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_memory_init_0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_memory_init_0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_memory_init_0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_memory_init_0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_memory_init_0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mdm_0_Dbg_Capture_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_Dbg_Clk_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_Dbg_Disable_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_Dbg_Rst_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_Dbg_Shift_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_Dbg_TDI_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_Dbg_Update_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_Dbg_Reg_En_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_DMA0_DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DMA0_DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_IRQ_P2F_DMAC0_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_DMA0_DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  LED_OUT_1 <= Project_0_LED_OUT;
  LED_OUT_2 <= Project_1_LED_OUT;
  LED_OUT_3 <= Project_CH3_LED_OUT;
  LED_OUT_4 <= Channel4_LED_OUT;
  sys_clock_1 <= sys_clock;
Channel1: component design_1_Project_0_0
     port map (
      LED_OUT => Project_0_LED_OUT,
      aclk => clk_wiz_0_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s0_axis_tdata(31 downto 0) => axi_dma_CH1_M_AXIS_MM2S_TDATA(31 downto 0),
      s0_axis_tready => axi_dma_CH1_M_AXIS_MM2S_TREADY,
      s0_axis_tvalid => axi_dma_CH1_M_AXIS_MM2S_TVALID
    );
Channel2: component design_1_Project_0_1
     port map (
      LED_OUT => Project_1_LED_OUT,
      aclk => clk_wiz_0_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s0_axis_tdata(31 downto 0) => axi_dma_1_M_AXIS_MM2S_TDATA(31 downto 0),
      s0_axis_tready => axi_dma_1_M_AXIS_MM2S_TREADY,
      s0_axis_tvalid => axi_dma_1_M_AXIS_MM2S_TVALID
    );
Channel3: component design_1_Project_0_2
     port map (
      LED_OUT => Project_CH3_LED_OUT,
      aclk => clk_wiz_0_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s0_axis_tdata(31 downto 0) => axi_dma_CH3_M_AXIS_MM2S_TDATA(31 downto 0),
      s0_axis_tready => axi_dma_CH3_M_AXIS_MM2S_TREADY,
      s0_axis_tvalid => axi_dma_CH3_M_AXIS_MM2S_TVALID
    );
Channel4: component design_1_Channel3_0
     port map (
      LED_OUT => Channel4_LED_OUT,
      aclk => clk_wiz_0_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s0_axis_tdata(31 downto 0) => axi_dma_CH4_M_AXIS_MM2S_TDATA(31 downto 0),
      s0_axis_tready => axi_dma_CH4_M_AXIS_MM2S_TREADY,
      s0_axis_tvalid => axi_dma_CH4_M_AXIS_MM2S_TVALID
    );
Interconnect_DMA: entity work.design_1_axi_interconnect_0_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(2 downto 0) => axi_interconnect_0_M00_AXI_ARID(2 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(2 downto 0) => axi_interconnect_0_M00_AXI_AWID(2 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_interconnect_0_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(5 downto 0) => axi_interconnect_0_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wid(2 downto 0) => axi_interconnect_0_M00_AXI_WID(2 downto 0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_memory_init_0_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_memory_init_0_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_memory_init_0_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_memory_init_0_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_memory_init_0_M_AXI_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => axi_memory_init_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_memory_init_0_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready(0) => axi_memory_init_0_M_AXI_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => axi_memory_init_0_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => axi_memory_init_0_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_memory_init_0_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_memory_init_0_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_memory_init_0_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_memory_init_0_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_memory_init_0_M_AXI_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => axi_memory_init_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_memory_init_0_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready(0) => axi_memory_init_0_M_AXI_AWREADY(0),
      S00_AXI_awsize(2 downto 0) => axi_memory_init_0_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid(0) => axi_memory_init_0_M_AXI_AWVALID,
      S00_AXI_bready(0) => axi_memory_init_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_memory_init_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => axi_memory_init_0_M_AXI_BVALID(0),
      S00_AXI_rdata(31 downto 0) => axi_memory_init_0_M_AXI_RDATA(31 downto 0),
      S00_AXI_rlast(0) => axi_memory_init_0_M_AXI_RLAST(0),
      S00_AXI_rready(0) => axi_memory_init_0_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_memory_init_0_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => axi_memory_init_0_M_AXI_RVALID(0),
      S00_AXI_wdata(31 downto 0) => axi_memory_init_0_M_AXI_WDATA(31 downto 0),
      S00_AXI_wlast(0) => axi_memory_init_0_M_AXI_WLAST,
      S00_AXI_wready(0) => axi_memory_init_0_M_AXI_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => axi_memory_init_0_M_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => axi_memory_init_0_M_AXI_WVALID,
      S01_ACLK => clk_wiz_0_clk_out1,
      S01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARLEN(7 downto 0),
      S01_AXI_arprot(2 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARPROT(2 downto 0),
      S01_AXI_arready(0) => axi_dma_CH1_M_AXI_MM2S_ARREADY(0),
      S01_AXI_arsize(2 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARSIZE(2 downto 0),
      S01_AXI_arvalid(0) => axi_dma_CH1_M_AXI_MM2S_ARVALID,
      S01_AXI_rdata(31 downto 0) => axi_dma_CH1_M_AXI_MM2S_RDATA(31 downto 0),
      S01_AXI_rlast(0) => axi_dma_CH1_M_AXI_MM2S_RLAST(0),
      S01_AXI_rready(0) => axi_dma_CH1_M_AXI_MM2S_RREADY,
      S01_AXI_rresp(1 downto 0) => axi_dma_CH1_M_AXI_MM2S_RRESP(1 downto 0),
      S01_AXI_rvalid(0) => axi_dma_CH1_M_AXI_MM2S_RVALID(0),
      S02_ACLK => clk_wiz_0_clk_out1,
      S02_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S02_AXI_araddr(31 downto 0) => axi_dma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => axi_dma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => axi_dma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => axi_dma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      S02_AXI_arprot(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      S02_AXI_arready => axi_dma_1_M_AXI_MM2S_ARREADY,
      S02_AXI_arsize(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      S02_AXI_arvalid => axi_dma_1_M_AXI_MM2S_ARVALID,
      S02_AXI_rdata(31 downto 0) => axi_dma_1_M_AXI_MM2S_RDATA(31 downto 0),
      S02_AXI_rlast => axi_dma_1_M_AXI_MM2S_RLAST,
      S02_AXI_rready => axi_dma_1_M_AXI_MM2S_RREADY,
      S02_AXI_rresp(1 downto 0) => axi_dma_1_M_AXI_MM2S_RRESP(1 downto 0),
      S02_AXI_rvalid => axi_dma_1_M_AXI_MM2S_RVALID,
      S03_ACLK => clk_wiz_0_clk_out1,
      S03_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S03_AXI_araddr(31 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARADDR(31 downto 0),
      S03_AXI_arburst(1 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARCACHE(3 downto 0),
      S03_AXI_arlen(7 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARLEN(7 downto 0),
      S03_AXI_arprot(2 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARPROT(2 downto 0),
      S03_AXI_arready => axi_dma_CH3_M_AXI_MM2S_ARREADY,
      S03_AXI_arsize(2 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARSIZE(2 downto 0),
      S03_AXI_arvalid => axi_dma_CH3_M_AXI_MM2S_ARVALID,
      S03_AXI_rdata(31 downto 0) => axi_dma_CH3_M_AXI_MM2S_RDATA(31 downto 0),
      S03_AXI_rlast => axi_dma_CH3_M_AXI_MM2S_RLAST,
      S03_AXI_rready => axi_dma_CH3_M_AXI_MM2S_RREADY,
      S03_AXI_rresp(1 downto 0) => axi_dma_CH3_M_AXI_MM2S_RRESP(1 downto 0),
      S03_AXI_rvalid => axi_dma_CH3_M_AXI_MM2S_RVALID,
      S04_ACLK => clk_wiz_0_clk_out1,
      S04_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S04_AXI_araddr(31 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARADDR(31 downto 0),
      S04_AXI_arburst(1 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARCACHE(3 downto 0),
      S04_AXI_arlen(7 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARLEN(7 downto 0),
      S04_AXI_arprot(2 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARPROT(2 downto 0),
      S04_AXI_arready => axi_dma_CH4_M_AXI_MM2S_ARREADY,
      S04_AXI_arsize(2 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARSIZE(2 downto 0),
      S04_AXI_arvalid => axi_dma_CH4_M_AXI_MM2S_ARVALID,
      S04_AXI_rdata(31 downto 0) => axi_dma_CH4_M_AXI_MM2S_RDATA(31 downto 0),
      S04_AXI_rlast => axi_dma_CH4_M_AXI_MM2S_RLAST,
      S04_AXI_rready => axi_dma_CH4_M_AXI_MM2S_RREADY,
      S04_AXI_rresp(1 downto 0) => axi_dma_CH4_M_AXI_MM2S_RRESP(1 downto 0),
      S04_AXI_rvalid => axi_dma_CH4_M_AXI_MM2S_RVALID
    );
Interconnect_Register: entity work.design_1_ps7_0_axi_periph_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr => NLW_Interconnect_Register_M00_AXI_araddr_UNCONNECTED,
      M00_AXI_arprot => NLW_Interconnect_Register_M00_AXI_arprot_UNCONNECTED,
      M00_AXI_arready => '0',
      M00_AXI_arvalid => NLW_Interconnect_Register_M00_AXI_arvalid_UNCONNECTED,
      M00_AXI_awaddr => NLW_Interconnect_Register_M00_AXI_awaddr_UNCONNECTED,
      M00_AXI_awprot => NLW_Interconnect_Register_M00_AXI_awprot_UNCONNECTED,
      M00_AXI_awready => '0',
      M00_AXI_awvalid => NLW_Interconnect_Register_M00_AXI_awvalid_UNCONNECTED,
      M00_AXI_bready => NLW_Interconnect_Register_M00_AXI_bready_UNCONNECTED,
      M00_AXI_bresp => '0',
      M00_AXI_bvalid => '0',
      M00_AXI_rdata => '0',
      M00_AXI_rready => NLW_Interconnect_Register_M00_AXI_rready_UNCONNECTED,
      M00_AXI_rresp => '0',
      M00_AXI_rvalid => '0',
      M00_AXI_wdata => NLW_Interconnect_Register_M00_AXI_wdata_UNCONNECTED,
      M00_AXI_wready => '0',
      M00_AXI_wstrb => NLW_Interconnect_Register_M00_AXI_wstrb_UNCONNECTED,
      M00_AXI_wvalid => NLW_Interconnect_Register_M00_AXI_wvalid_UNCONNECTED,
      M01_ACLK => clk_wiz_0_clk_out1,
      M01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => Interconnect_Register_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => Interconnect_Register_M01_AXI_ARREADY,
      M01_AXI_arvalid => Interconnect_Register_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => Interconnect_Register_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => Interconnect_Register_M01_AXI_AWREADY,
      M01_AXI_awvalid => Interconnect_Register_M01_AXI_AWVALID,
      M01_AXI_bready => Interconnect_Register_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => Interconnect_Register_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => Interconnect_Register_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => Interconnect_Register_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => Interconnect_Register_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => Interconnect_Register_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => Interconnect_Register_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => Interconnect_Register_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => Interconnect_Register_M01_AXI_WREADY,
      M01_AXI_wvalid => Interconnect_Register_M01_AXI_WVALID,
      M02_ACLK => clk_wiz_0_clk_out1,
      M02_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => Interconnect_Register_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => Interconnect_Register_M02_AXI_ARREADY,
      M02_AXI_arvalid => Interconnect_Register_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => Interconnect_Register_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => Interconnect_Register_M02_AXI_AWREADY,
      M02_AXI_awvalid => Interconnect_Register_M02_AXI_AWVALID,
      M02_AXI_bready => Interconnect_Register_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => Interconnect_Register_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => Interconnect_Register_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => Interconnect_Register_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => Interconnect_Register_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => Interconnect_Register_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => Interconnect_Register_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => Interconnect_Register_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => Interconnect_Register_M02_AXI_WREADY,
      M02_AXI_wvalid => Interconnect_Register_M02_AXI_WVALID,
      M03_ACLK => clk_wiz_0_clk_out1,
      M03_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => Interconnect_Register_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => Interconnect_Register_M03_AXI_ARREADY,
      M03_AXI_arvalid => Interconnect_Register_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => Interconnect_Register_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => Interconnect_Register_M03_AXI_AWREADY,
      M03_AXI_awvalid => Interconnect_Register_M03_AXI_AWVALID,
      M03_AXI_bready => Interconnect_Register_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => Interconnect_Register_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => Interconnect_Register_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => Interconnect_Register_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => Interconnect_Register_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => Interconnect_Register_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => Interconnect_Register_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => Interconnect_Register_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => Interconnect_Register_M03_AXI_WREADY,
      M03_AXI_wvalid => Interconnect_Register_M03_AXI_WVALID,
      M04_ACLK => clk_wiz_0_clk_out1,
      M04_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => Interconnect_Register_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready => Interconnect_Register_M04_AXI_ARREADY,
      M04_AXI_arvalid => Interconnect_Register_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => Interconnect_Register_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready => Interconnect_Register_M04_AXI_AWREADY,
      M04_AXI_awvalid => Interconnect_Register_M04_AXI_AWVALID,
      M04_AXI_bready => Interconnect_Register_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => Interconnect_Register_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => Interconnect_Register_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => Interconnect_Register_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => Interconnect_Register_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => Interconnect_Register_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => Interconnect_Register_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => Interconnect_Register_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => Interconnect_Register_M04_AXI_WREADY,
      M04_AXI_wvalid => Interconnect_Register_M04_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
axi_dma_CH1: component design_1_axi_dma_0_0
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_mm2s_aclk => clk_wiz_0_clk_out1,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_CH1_M_AXI_MM2S_ARREADY(0),
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_CH1_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_CH1_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_CH1_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_CH1_M_AXI_MM2S_RLAST(0),
      m_axi_mm2s_rready => axi_dma_CH1_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_CH1_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_CH1_M_AXI_MM2S_RVALID(0),
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_CH1_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_dma_CH1_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => NLW_axi_dma_CH1_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => axi_dma_CH1_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_CH1_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_CH1_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_CH1_mm2s_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => clk_wiz_0_clk_out1,
      s_axi_lite_araddr(9 downto 0) => Interconnect_Register_M01_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => Interconnect_Register_M01_AXI_ARREADY,
      s_axi_lite_arvalid => Interconnect_Register_M01_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => Interconnect_Register_M01_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => Interconnect_Register_M01_AXI_AWREADY,
      s_axi_lite_awvalid => Interconnect_Register_M01_AXI_AWVALID,
      s_axi_lite_bready => Interconnect_Register_M01_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => Interconnect_Register_M01_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => Interconnect_Register_M01_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => Interconnect_Register_M01_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => Interconnect_Register_M01_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => Interconnect_Register_M01_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => Interconnect_Register_M01_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => Interconnect_Register_M01_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => Interconnect_Register_M01_AXI_WREADY,
      s_axi_lite_wvalid => Interconnect_Register_M01_AXI_WVALID
    );
axi_dma_CH2: component design_1_axi_dma_0_1
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_mm2s_aclk => clk_wiz_0_clk_out1,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_1_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_1_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_1_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_1_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_1_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_1_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_1_M_AXI_MM2S_RVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_1_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_dma_CH2_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => NLW_axi_dma_CH2_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => axi_dma_1_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_1_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_CH2_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_CH2_mm2s_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => clk_wiz_0_clk_out1,
      s_axi_lite_araddr(9 downto 0) => Interconnect_Register_M02_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => Interconnect_Register_M02_AXI_ARREADY,
      s_axi_lite_arvalid => Interconnect_Register_M02_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => Interconnect_Register_M02_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => Interconnect_Register_M02_AXI_AWREADY,
      s_axi_lite_awvalid => Interconnect_Register_M02_AXI_AWVALID,
      s_axi_lite_bready => Interconnect_Register_M02_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => Interconnect_Register_M02_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => Interconnect_Register_M02_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => Interconnect_Register_M02_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => Interconnect_Register_M02_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => Interconnect_Register_M02_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => Interconnect_Register_M02_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => Interconnect_Register_M02_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => Interconnect_Register_M02_AXI_WREADY,
      s_axi_lite_wvalid => Interconnect_Register_M02_AXI_WVALID
    );
axi_dma_CH3: component design_1_axi_dma_0_2
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_mm2s_aclk => clk_wiz_0_clk_out1,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_CH3_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_CH3_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_CH3_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_CH3_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_CH3_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_CH3_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_CH3_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_CH3_M_AXI_MM2S_RVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_CH3_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_dma_CH3_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => NLW_axi_dma_CH3_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => axi_dma_CH3_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_CH3_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_CH3_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_CH3_mm2s_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => clk_wiz_0_clk_out1,
      s_axi_lite_araddr(9 downto 0) => Interconnect_Register_M03_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => Interconnect_Register_M03_AXI_ARREADY,
      s_axi_lite_arvalid => Interconnect_Register_M03_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => Interconnect_Register_M03_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => Interconnect_Register_M03_AXI_AWREADY,
      s_axi_lite_awvalid => Interconnect_Register_M03_AXI_AWVALID,
      s_axi_lite_bready => Interconnect_Register_M03_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => Interconnect_Register_M03_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => Interconnect_Register_M03_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => Interconnect_Register_M03_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => Interconnect_Register_M03_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => Interconnect_Register_M03_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => Interconnect_Register_M03_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => Interconnect_Register_M03_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => Interconnect_Register_M03_AXI_WREADY,
      s_axi_lite_wvalid => Interconnect_Register_M03_AXI_WVALID
    );
axi_dma_CH4: component design_1_axi_dma_CH2_0
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_mm2s_aclk => clk_wiz_0_clk_out1,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_CH4_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_CH4_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_CH4_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_CH4_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_CH4_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_CH4_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_CH4_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_CH4_M_AXI_MM2S_RVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_CH4_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_dma_CH4_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => NLW_axi_dma_CH4_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => axi_dma_CH4_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_CH4_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_CH4_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_CH4_mm2s_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => clk_wiz_0_clk_out1,
      s_axi_lite_araddr(9 downto 0) => Interconnect_Register_M04_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => Interconnect_Register_M04_AXI_ARREADY,
      s_axi_lite_arvalid => Interconnect_Register_M04_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => Interconnect_Register_M04_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => Interconnect_Register_M04_AXI_AWREADY,
      s_axi_lite_awvalid => Interconnect_Register_M04_AXI_AWVALID,
      s_axi_lite_bready => Interconnect_Register_M04_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => Interconnect_Register_M04_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => Interconnect_Register_M04_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => Interconnect_Register_M04_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => Interconnect_Register_M04_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => Interconnect_Register_M04_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => Interconnect_Register_M04_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => Interconnect_Register_M04_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => Interconnect_Register_M04_AXI_WREADY,
      s_axi_lite_wvalid => Interconnect_Register_M04_AXI_WVALID
    );
axi_memory_init_0: component design_1_axi_memory_init_0_0
     port map (
      aclk => clk_wiz_0_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      init_complete_in => '1',
      init_complete_out => NLW_axi_memory_init_0_init_complete_out_UNCONNECTED,
      m_axi_araddr(31 downto 0) => axi_memory_init_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_memory_init_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_memory_init_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_memory_init_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_memory_init_0_M_AXI_ARLOCK(0),
      m_axi_arprot(2 downto 0) => axi_memory_init_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_memory_init_0_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_memory_init_0_M_AXI_ARREADY(0),
      m_axi_arregion(3 downto 0) => NLW_axi_memory_init_0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_memory_init_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_memory_init_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_memory_init_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_memory_init_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_memory_init_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_memory_init_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_memory_init_0_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => axi_memory_init_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_memory_init_0_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_memory_init_0_M_AXI_AWREADY(0),
      m_axi_awregion(3 downto 0) => NLW_axi_memory_init_0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_memory_init_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_memory_init_0_M_AXI_AWVALID,
      m_axi_bready => axi_memory_init_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_memory_init_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_memory_init_0_M_AXI_BVALID(0),
      m_axi_rdata(31 downto 0) => axi_memory_init_0_M_AXI_RDATA(31 downto 0),
      m_axi_rlast => axi_memory_init_0_M_AXI_RLAST(0),
      m_axi_rready => axi_memory_init_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_memory_init_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_memory_init_0_M_AXI_RVALID(0),
      m_axi_wdata(31 downto 0) => axi_memory_init_0_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => axi_memory_init_0_M_AXI_WLAST,
      m_axi_wready => axi_memory_init_0_M_AXI_WREADY(0),
      m_axi_wstrb(3 downto 0) => axi_memory_init_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_memory_init_0_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0011",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_axi_memory_init_0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"010",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0011",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_axi_memory_init_0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_axi_memory_init_0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_axi_memory_init_0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_axi_memory_init_0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rlast => NLW_axi_memory_init_0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_axi_memory_init_0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_axi_memory_init_0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_axi_memory_init_0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wvalid => '0'
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      resetn => processing_system7_0_FCLK_RESET0_N
    );
mdm_0: component design_1_mdm_0_0
     port map (
      Dbg_Capture_0 => NLW_mdm_0_Dbg_Capture_0_UNCONNECTED,
      Dbg_Clk_0 => NLW_mdm_0_Dbg_Clk_0_UNCONNECTED,
      Dbg_Disable_0 => NLW_mdm_0_Dbg_Disable_0_UNCONNECTED,
      Dbg_Reg_En_0(0 to 7) => NLW_mdm_0_Dbg_Reg_En_0_UNCONNECTED(0 to 7),
      Dbg_Rst_0 => NLW_mdm_0_Dbg_Rst_0_UNCONNECTED,
      Dbg_Shift_0 => NLW_mdm_0_Dbg_Shift_0_UNCONNECTED,
      Dbg_TDI_0 => NLW_mdm_0_Dbg_TDI_0_UNCONNECTED,
      Dbg_TDO_0 => '0',
      Dbg_Update_0 => NLW_mdm_0_Dbg_Update_0_UNCONNECTED,
      Debug_SYS_Rst => mdm_0_Debug_SYS_Rst
    );
proc_sys_reset_0: component design_1_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => mdm_0_Debug_SYS_Rst,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
processing_system7_0: component design_1_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      DMA0_ACLK => clk_wiz_0_clk_out1,
      DMA0_DAREADY => '1',
      DMA0_DATYPE(1 downto 0) => NLW_processing_system7_0_DMA0_DATYPE_UNCONNECTED(1 downto 0),
      DMA0_DAVALID => NLW_processing_system7_0_DMA0_DAVALID_UNCONNECTED,
      DMA0_DRLAST => '0',
      DMA0_DRREADY => NLW_processing_system7_0_DMA0_DRREADY_UNCONNECTED,
      DMA0_DRTYPE(1 downto 0) => B"00",
      DMA0_DRVALID => '0',
      FCLK_CLK0 => NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      IRQ_F2P(3 downto 0) => xlconcat_0_dout(3 downto 0),
      IRQ_P2F_DMAC0 => NLW_processing_system7_0_IRQ_P2F_DMAC0_UNCONNECTED,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => clk_wiz_0_clk_out1,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => clk_wiz_0_clk_out1,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 3) => B"000",
      S_AXI_HP0_ARID(2 downto 0) => axi_interconnect_0_M00_AXI_ARID(2 downto 0),
      S_AXI_HP0_ARLEN(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_interconnect_0_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_interconnect_0_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 3) => B"000",
      S_AXI_HP0_AWID(2 downto 0) => axi_interconnect_0_M00_AXI_AWID(2 downto 0),
      S_AXI_HP0_AWLEN(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_interconnect_0_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_interconnect_0_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => axi_interconnect_0_M00_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => axi_interconnect_0_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_interconnect_0_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => axi_interconnect_0_M00_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => axi_interconnect_0_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_interconnect_0_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_interconnect_0_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      S_AXI_HP0_WID(5 downto 3) => B"000",
      S_AXI_HP0_WID(2 downto 0) => axi_interconnect_0_M00_AXI_WID(2 downto 0),
      S_AXI_HP0_WLAST => axi_interconnect_0_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_interconnect_0_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      S_AXI_HP0_WVALID => axi_interconnect_0_M00_AXI_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(0) => axi_dma_CH1_mm2s_introut,
      In1(0) => axi_dma_CH2_mm2s_introut,
      In2(0) => axi_dma_CH3_mm2s_introut,
      In3(0) => axi_dma_CH4_mm2s_introut,
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
end STRUCTURE;
