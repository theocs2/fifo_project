module async_fifo (empty,
    full,
    rclk,
    ren,
    rrst_n,
    wclk,
    wen,
    wrst_n,
    rdata,
    wdata);
 output empty;
 output full;
 input rclk;
 input ren;
 input rrst_n;
 input wclk;
 input wen;
 input wrst_n;
 output [7:0] rdata;
 input [7:0] wdata;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire \bram.mem[0][0] ;
 wire \bram.mem[0][1] ;
 wire \bram.mem[0][2] ;
 wire \bram.mem[0][3] ;
 wire \bram.mem[0][4] ;
 wire \bram.mem[0][5] ;
 wire \bram.mem[0][6] ;
 wire \bram.mem[0][7] ;
 wire \bram.mem[10][0] ;
 wire \bram.mem[10][1] ;
 wire \bram.mem[10][2] ;
 wire \bram.mem[10][3] ;
 wire \bram.mem[10][4] ;
 wire \bram.mem[10][5] ;
 wire \bram.mem[10][6] ;
 wire \bram.mem[10][7] ;
 wire \bram.mem[11][0] ;
 wire \bram.mem[11][1] ;
 wire \bram.mem[11][2] ;
 wire \bram.mem[11][3] ;
 wire \bram.mem[11][4] ;
 wire \bram.mem[11][5] ;
 wire \bram.mem[11][6] ;
 wire \bram.mem[11][7] ;
 wire \bram.mem[12][0] ;
 wire \bram.mem[12][1] ;
 wire \bram.mem[12][2] ;
 wire \bram.mem[12][3] ;
 wire \bram.mem[12][4] ;
 wire \bram.mem[12][5] ;
 wire \bram.mem[12][6] ;
 wire \bram.mem[12][7] ;
 wire \bram.mem[13][0] ;
 wire \bram.mem[13][1] ;
 wire \bram.mem[13][2] ;
 wire \bram.mem[13][3] ;
 wire \bram.mem[13][4] ;
 wire \bram.mem[13][5] ;
 wire \bram.mem[13][6] ;
 wire \bram.mem[13][7] ;
 wire \bram.mem[14][0] ;
 wire \bram.mem[14][1] ;
 wire \bram.mem[14][2] ;
 wire \bram.mem[14][3] ;
 wire \bram.mem[14][4] ;
 wire \bram.mem[14][5] ;
 wire \bram.mem[14][6] ;
 wire \bram.mem[14][7] ;
 wire \bram.mem[15][0] ;
 wire \bram.mem[15][1] ;
 wire \bram.mem[15][2] ;
 wire \bram.mem[15][3] ;
 wire \bram.mem[15][4] ;
 wire \bram.mem[15][5] ;
 wire \bram.mem[15][6] ;
 wire \bram.mem[15][7] ;
 wire \bram.mem[1][0] ;
 wire \bram.mem[1][1] ;
 wire \bram.mem[1][2] ;
 wire \bram.mem[1][3] ;
 wire \bram.mem[1][4] ;
 wire \bram.mem[1][5] ;
 wire \bram.mem[1][6] ;
 wire \bram.mem[1][7] ;
 wire \bram.mem[2][0] ;
 wire \bram.mem[2][1] ;
 wire \bram.mem[2][2] ;
 wire \bram.mem[2][3] ;
 wire \bram.mem[2][4] ;
 wire \bram.mem[2][5] ;
 wire \bram.mem[2][6] ;
 wire \bram.mem[2][7] ;
 wire \bram.mem[3][0] ;
 wire \bram.mem[3][1] ;
 wire \bram.mem[3][2] ;
 wire \bram.mem[3][3] ;
 wire \bram.mem[3][4] ;
 wire \bram.mem[3][5] ;
 wire \bram.mem[3][6] ;
 wire \bram.mem[3][7] ;
 wire \bram.mem[4][0] ;
 wire \bram.mem[4][1] ;
 wire \bram.mem[4][2] ;
 wire \bram.mem[4][3] ;
 wire \bram.mem[4][4] ;
 wire \bram.mem[4][5] ;
 wire \bram.mem[4][6] ;
 wire \bram.mem[4][7] ;
 wire \bram.mem[5][0] ;
 wire \bram.mem[5][1] ;
 wire \bram.mem[5][2] ;
 wire \bram.mem[5][3] ;
 wire \bram.mem[5][4] ;
 wire \bram.mem[5][5] ;
 wire \bram.mem[5][6] ;
 wire \bram.mem[5][7] ;
 wire \bram.mem[6][0] ;
 wire \bram.mem[6][1] ;
 wire \bram.mem[6][2] ;
 wire \bram.mem[6][3] ;
 wire \bram.mem[6][4] ;
 wire \bram.mem[6][5] ;
 wire \bram.mem[6][6] ;
 wire \bram.mem[6][7] ;
 wire \bram.mem[7][0] ;
 wire \bram.mem[7][1] ;
 wire \bram.mem[7][2] ;
 wire \bram.mem[7][3] ;
 wire \bram.mem[7][4] ;
 wire \bram.mem[7][5] ;
 wire \bram.mem[7][6] ;
 wire \bram.mem[7][7] ;
 wire \bram.mem[8][0] ;
 wire \bram.mem[8][1] ;
 wire \bram.mem[8][2] ;
 wire \bram.mem[8][3] ;
 wire \bram.mem[8][4] ;
 wire \bram.mem[8][5] ;
 wire \bram.mem[8][6] ;
 wire \bram.mem[8][7] ;
 wire \bram.mem[9][0] ;
 wire \bram.mem[9][1] ;
 wire \bram.mem[9][2] ;
 wire \bram.mem[9][3] ;
 wire \bram.mem[9][4] ;
 wire \bram.mem[9][5] ;
 wire \bram.mem[9][6] ;
 wire \bram.mem[9][7] ;
 wire \bram.raddr[0] ;
 wire \bram.raddr[1] ;
 wire \bram.raddr[2] ;
 wire \bram.raddr[3] ;
 wire \bram.waddr[0] ;
 wire \bram.waddr[1] ;
 wire \bram.waddr[2] ;
 wire \bram.waddr[3] ;
 wire \r_ptr_bin[4] ;
 wire \r_ptr_gray[0] ;
 wire \r_ptr_gray[1] ;
 wire \r_ptr_gray[2] ;
 wire \r_ptr_gray[3] ;
 wire \r_ptr_gray_sync[0] ;
 wire \r_ptr_gray_sync[1] ;
 wire \r_ptr_gray_sync[2] ;
 wire \r_ptr_gray_sync[3] ;
 wire \r_ptr_gray_sync[4] ;
 wire \sync_grptr_to_wr.q1[0] ;
 wire \sync_grptr_to_wr.q1[1] ;
 wire \sync_grptr_to_wr.q1[2] ;
 wire \sync_grptr_to_wr.q1[3] ;
 wire \sync_grptr_to_wr.q1[4] ;
 wire \sync_gwptr_to_rd.d1[0] ;
 wire \sync_gwptr_to_rd.d1[1] ;
 wire \sync_gwptr_to_rd.d1[2] ;
 wire \sync_gwptr_to_rd.d1[3] ;
 wire \sync_gwptr_to_rd.d1[4] ;
 wire \sync_gwptr_to_rd.q1[0] ;
 wire \sync_gwptr_to_rd.q1[1] ;
 wire \sync_gwptr_to_rd.q1[2] ;
 wire \sync_gwptr_to_rd.q1[3] ;
 wire \sync_gwptr_to_rd.q1[4] ;
 wire \sync_gwptr_to_rd.q2[0] ;
 wire \sync_gwptr_to_rd.q2[1] ;
 wire \sync_gwptr_to_rd.q2[2] ;
 wire \sync_gwptr_to_rd.q2[3] ;
 wire \sync_gwptr_to_rd.q2[4] ;
 wire \u_rptr_handler.b_rptr_next[0] ;
 wire \u_rptr_handler.b_rptr_next[1] ;
 wire \u_rptr_handler.b_rptr_next[2] ;
 wire \u_rptr_handler.b_rptr_next[3] ;
 wire \u_rptr_handler.b_rptr_next[4] ;
 wire \u_rptr_handler.g_rptr_next[0] ;
 wire \u_rptr_handler.g_rptr_next[1] ;
 wire \u_rptr_handler.g_rptr_next[2] ;
 wire \u_rptr_handler.g_rptr_next[3] ;
 wire \u_wrptr_handler.b_wptr_next[0] ;
 wire \u_wrptr_handler.b_wptr_next[1] ;
 wire \u_wrptr_handler.b_wptr_next[2] ;
 wire \u_wrptr_handler.b_wptr_next[3] ;
 wire \u_wrptr_handler.b_wptr_next[4] ;
 wire \u_wrptr_handler.g_wptr_next[0] ;
 wire \u_wrptr_handler.g_wptr_next[1] ;
 wire \u_wrptr_handler.g_wptr_next[2] ;
 wire \u_wrptr_handler.g_wptr_next[3] ;

 sky130_fd_sc_hd__inv_2 _252_ (.A(\bram.raddr[2] ),
    .Y(_136_));
 sky130_fd_sc_hd__inv_2 _253_ (.A(\bram.raddr[3] ),
    .Y(_137_));
 sky130_fd_sc_hd__inv_2 _254_ (.A(\bram.waddr[3] ),
    .Y(_138_));
 sky130_fd_sc_hd__inv_2 _255_ (.A(\r_ptr_gray[0] ),
    .Y(_139_));
 sky130_fd_sc_hd__inv_2 _256_ (.A(\r_ptr_gray[2] ),
    .Y(_140_));
 sky130_fd_sc_hd__inv_2 _257_ (.A(\r_ptr_gray[3] ),
    .Y(_141_));
 sky130_fd_sc_hd__inv_2 _258_ (.A(\sync_gwptr_to_rd.q2[4] ),
    .Y(_142_));
 sky130_fd_sc_hd__mux4_2 _259_ (.A0(\bram.mem[12][4] ),
    .A1(\bram.mem[13][4] ),
    .A2(\bram.mem[14][4] ),
    .A3(\bram.mem[15][4] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_143_));
 sky130_fd_sc_hd__or2_2 _260_ (.A(_136_),
    .B(_143_),
    .X(_144_));
 sky130_fd_sc_hd__mux4_2 _261_ (.A0(\bram.mem[8][4] ),
    .A1(\bram.mem[9][4] ),
    .A2(\bram.mem[10][4] ),
    .A3(\bram.mem[11][4] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_145_));
 sky130_fd_sc_hd__o21a_2 _262_ (.A1(\bram.raddr[2] ),
    .A2(_145_),
    .B1(\bram.raddr[3] ),
    .X(_146_));
 sky130_fd_sc_hd__mux4_2 _263_ (.A0(\bram.mem[0][4] ),
    .A1(\bram.mem[1][4] ),
    .A2(\bram.mem[2][4] ),
    .A3(\bram.mem[3][4] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_147_));
 sky130_fd_sc_hd__mux4_2 _264_ (.A0(\bram.mem[4][4] ),
    .A1(\bram.mem[5][4] ),
    .A2(\bram.mem[6][4] ),
    .A3(\bram.mem[7][4] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_148_));
 sky130_fd_sc_hd__mux2_1 _265_ (.A0(_147_),
    .A1(_148_),
    .S(\bram.raddr[2] ),
    .X(_149_));
 sky130_fd_sc_hd__a22o_2 _266_ (.A1(_144_),
    .A2(_146_),
    .B1(_149_),
    .B2(_137_),
    .X(_004_));
 sky130_fd_sc_hd__mux4_2 _267_ (.A0(\bram.mem[8][5] ),
    .A1(\bram.mem[9][5] ),
    .A2(\bram.mem[10][5] ),
    .A3(\bram.mem[11][5] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_150_));
 sky130_fd_sc_hd__or2_2 _268_ (.A(\bram.raddr[2] ),
    .B(_150_),
    .X(_151_));
 sky130_fd_sc_hd__mux4_2 _269_ (.A0(\bram.mem[12][5] ),
    .A1(\bram.mem[13][5] ),
    .A2(\bram.mem[14][5] ),
    .A3(\bram.mem[15][5] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_152_));
 sky130_fd_sc_hd__o21a_2 _270_ (.A1(_136_),
    .A2(_152_),
    .B1(\bram.raddr[3] ),
    .X(_153_));
 sky130_fd_sc_hd__mux4_2 _271_ (.A0(\bram.mem[0][5] ),
    .A1(\bram.mem[1][5] ),
    .A2(\bram.mem[2][5] ),
    .A3(\bram.mem[3][5] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_154_));
 sky130_fd_sc_hd__mux4_2 _272_ (.A0(\bram.mem[4][5] ),
    .A1(\bram.mem[5][5] ),
    .A2(\bram.mem[6][5] ),
    .A3(\bram.mem[7][5] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_155_));
 sky130_fd_sc_hd__mux2_1 _273_ (.A0(_154_),
    .A1(_155_),
    .S(\bram.raddr[2] ),
    .X(_156_));
 sky130_fd_sc_hd__a22o_2 _274_ (.A1(_151_),
    .A2(_153_),
    .B1(_156_),
    .B2(_137_),
    .X(_005_));
 sky130_fd_sc_hd__mux4_2 _275_ (.A0(\bram.mem[12][6] ),
    .A1(\bram.mem[13][6] ),
    .A2(\bram.mem[14][6] ),
    .A3(\bram.mem[15][6] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_157_));
 sky130_fd_sc_hd__or2_2 _276_ (.A(_136_),
    .B(_157_),
    .X(_158_));
 sky130_fd_sc_hd__mux4_2 _277_ (.A0(\bram.mem[8][6] ),
    .A1(\bram.mem[9][6] ),
    .A2(\bram.mem[10][6] ),
    .A3(\bram.mem[11][6] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_159_));
 sky130_fd_sc_hd__o21a_2 _278_ (.A1(\bram.raddr[2] ),
    .A2(_159_),
    .B1(\bram.raddr[3] ),
    .X(_160_));
 sky130_fd_sc_hd__mux4_2 _279_ (.A0(\bram.mem[0][6] ),
    .A1(\bram.mem[1][6] ),
    .A2(\bram.mem[2][6] ),
    .A3(\bram.mem[3][6] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_161_));
 sky130_fd_sc_hd__mux4_2 _280_ (.A0(\bram.mem[4][6] ),
    .A1(\bram.mem[5][6] ),
    .A2(\bram.mem[6][6] ),
    .A3(\bram.mem[7][6] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_162_));
 sky130_fd_sc_hd__mux2_1 _281_ (.A0(_161_),
    .A1(_162_),
    .S(\bram.raddr[2] ),
    .X(_163_));
 sky130_fd_sc_hd__a22o_2 _282_ (.A1(_158_),
    .A2(_160_),
    .B1(_163_),
    .B2(_137_),
    .X(_006_));
 sky130_fd_sc_hd__mux4_2 _283_ (.A0(\bram.mem[8][7] ),
    .A1(\bram.mem[9][7] ),
    .A2(\bram.mem[10][7] ),
    .A3(\bram.mem[11][7] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_164_));
 sky130_fd_sc_hd__or2_2 _284_ (.A(\bram.raddr[2] ),
    .B(_164_),
    .X(_165_));
 sky130_fd_sc_hd__mux4_2 _285_ (.A0(\bram.mem[12][7] ),
    .A1(\bram.mem[13][7] ),
    .A2(\bram.mem[14][7] ),
    .A3(\bram.mem[15][7] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_166_));
 sky130_fd_sc_hd__o21a_2 _286_ (.A1(_136_),
    .A2(_166_),
    .B1(\bram.raddr[3] ),
    .X(_167_));
 sky130_fd_sc_hd__mux4_2 _287_ (.A0(\bram.mem[0][7] ),
    .A1(\bram.mem[1][7] ),
    .A2(\bram.mem[2][7] ),
    .A3(\bram.mem[3][7] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_168_));
 sky130_fd_sc_hd__mux4_2 _288_ (.A0(\bram.mem[4][7] ),
    .A1(\bram.mem[5][7] ),
    .A2(\bram.mem[6][7] ),
    .A3(\bram.mem[7][7] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_169_));
 sky130_fd_sc_hd__mux2_1 _289_ (.A0(_168_),
    .A1(_169_),
    .S(\bram.raddr[2] ),
    .X(_170_));
 sky130_fd_sc_hd__a22o_2 _290_ (.A1(_165_),
    .A2(_167_),
    .B1(_170_),
    .B2(_137_),
    .X(_007_));
 sky130_fd_sc_hd__xor2_2 _291_ (.A(\r_ptr_gray_sync[4] ),
    .B(\r_ptr_gray_sync[3] ),
    .X(_171_));
 sky130_fd_sc_hd__xnor2_2 _292_ (.A(\r_ptr_gray_sync[2] ),
    .B(_171_),
    .Y(_172_));
 sky130_fd_sc_hd__xnor2_2 _293_ (.A(\r_ptr_gray_sync[1] ),
    .B(_172_),
    .Y(_173_));
 sky130_fd_sc_hd__xor2_2 _294_ (.A(\bram.waddr[0] ),
    .B(\r_ptr_gray_sync[0] ),
    .X(_174_));
 sky130_fd_sc_hd__nor2_2 _295_ (.A(\bram.waddr[1] ),
    .B(_174_),
    .Y(_175_));
 sky130_fd_sc_hd__and2_2 _296_ (.A(\bram.waddr[1] ),
    .B(_174_),
    .X(_176_));
 sky130_fd_sc_hd__mux2_1 _297_ (.A0(_175_),
    .A1(_176_),
    .S(_173_),
    .X(_177_));
 sky130_fd_sc_hd__nand2_2 _298_ (.A(\bram.waddr[2] ),
    .B(_172_),
    .Y(_178_));
 sky130_fd_sc_hd__xnor2_2 _299_ (.A(\sync_gwptr_to_rd.d1[4] ),
    .B(\r_ptr_gray_sync[4] ),
    .Y(_179_));
 sky130_fd_sc_hd__a21oi_2 _300_ (.A1(_138_),
    .A2(_171_),
    .B1(_179_),
    .Y(_180_));
 sky130_fd_sc_hd__or2_2 _301_ (.A(\bram.waddr[2] ),
    .B(_172_),
    .X(_181_));
 sky130_fd_sc_hd__o2111a_2 _302_ (.A1(_138_),
    .A2(_171_),
    .B1(_178_),
    .C1(_180_),
    .D1(_181_),
    .X(_182_));
 sky130_fd_sc_hd__and2_2 _303_ (.A(_177_),
    .B(_182_),
    .X(full));
 sky130_fd_sc_hd__and2b_2 _304_ (.A_N(\sync_gwptr_to_rd.q2[3] ),
    .B(\r_ptr_gray[3] ),
    .X(_183_));
 sky130_fd_sc_hd__nand2b_2 _305_ (.A_N(\sync_gwptr_to_rd.q2[0] ),
    .B(\r_ptr_gray[0] ),
    .Y(_184_));
 sky130_fd_sc_hd__xor2_2 _306_ (.A(\sync_gwptr_to_rd.q2[1] ),
    .B(\r_ptr_gray[1] ),
    .X(_185_));
 sky130_fd_sc_hd__a221o_2 _307_ (.A1(\sync_gwptr_to_rd.q2[0] ),
    .A2(_139_),
    .B1(\sync_gwptr_to_rd.q2[3] ),
    .B2(_141_),
    .C1(_185_),
    .X(_186_));
 sky130_fd_sc_hd__o221ai_2 _308_ (.A1(\sync_gwptr_to_rd.q2[2] ),
    .A2(_140_),
    .B1(_142_),
    .B2(\r_ptr_bin[4] ),
    .C1(_184_),
    .Y(_187_));
 sky130_fd_sc_hd__a221o_2 _309_ (.A1(\sync_gwptr_to_rd.q2[2] ),
    .A2(_140_),
    .B1(_142_),
    .B2(\r_ptr_bin[4] ),
    .C1(_183_),
    .X(_188_));
 sky130_fd_sc_hd__nor3_2 _310_ (.A(_186_),
    .B(_187_),
    .C(_188_),
    .Y(empty));
 sky130_fd_sc_hd__o31a_2 _311_ (.A1(_186_),
    .A2(_187_),
    .A3(_188_),
    .B1(ren),
    .X(_189_));
 sky130_fd_sc_hd__and2_2 _312_ (.A(\bram.raddr[0] ),
    .B(_189_),
    .X(_190_));
 sky130_fd_sc_hd__nor2_2 _313_ (.A(\bram.raddr[0] ),
    .B(_189_),
    .Y(_191_));
 sky130_fd_sc_hd__nor2_2 _314_ (.A(_190_),
    .B(_191_),
    .Y(\u_rptr_handler.b_rptr_next[0] ));
 sky130_fd_sc_hd__and3_2 _315_ (.A(\bram.raddr[1] ),
    .B(\bram.raddr[0] ),
    .C(_189_),
    .X(_192_));
 sky130_fd_sc_hd__a21oi_2 _316_ (.A1(\bram.raddr[0] ),
    .A2(_189_),
    .B1(\bram.raddr[1] ),
    .Y(_193_));
 sky130_fd_sc_hd__nor2_2 _317_ (.A(_192_),
    .B(_193_),
    .Y(\u_rptr_handler.b_rptr_next[1] ));
 sky130_fd_sc_hd__xnor2_2 _318_ (.A(\bram.raddr[1] ),
    .B(_191_),
    .Y(\u_rptr_handler.g_rptr_next[0] ));
 sky130_fd_sc_hd__and2_2 _319_ (.A(\bram.raddr[2] ),
    .B(_192_),
    .X(_194_));
 sky130_fd_sc_hd__nor2_2 _320_ (.A(\bram.raddr[2] ),
    .B(_192_),
    .Y(_195_));
 sky130_fd_sc_hd__nor2_2 _321_ (.A(_194_),
    .B(_195_),
    .Y(\u_rptr_handler.b_rptr_next[2] ));
 sky130_fd_sc_hd__xnor2_2 _322_ (.A(\bram.raddr[2] ),
    .B(_193_),
    .Y(\u_rptr_handler.g_rptr_next[1] ));
 sky130_fd_sc_hd__nor2_2 _323_ (.A(\bram.raddr[3] ),
    .B(_194_),
    .Y(_196_));
 sky130_fd_sc_hd__nand2_2 _324_ (.A(\bram.raddr[3] ),
    .B(_194_),
    .Y(_197_));
 sky130_fd_sc_hd__and2b_2 _325_ (.A_N(_196_),
    .B(_197_),
    .X(\u_rptr_handler.b_rptr_next[3] ));
 sky130_fd_sc_hd__xnor2_2 _326_ (.A(\bram.raddr[3] ),
    .B(_195_),
    .Y(\u_rptr_handler.g_rptr_next[2] ));
 sky130_fd_sc_hd__xnor2_2 _327_ (.A(\r_ptr_bin[4] ),
    .B(_197_),
    .Y(\u_rptr_handler.b_rptr_next[4] ));
 sky130_fd_sc_hd__xnor2_2 _328_ (.A(\r_ptr_bin[4] ),
    .B(_196_),
    .Y(\u_rptr_handler.g_rptr_next[3] ));
 sky130_fd_sc_hd__a21boi_2 _329_ (.A1(_177_),
    .A2(_182_),
    .B1_N(wen),
    .Y(_198_));
 sky130_fd_sc_hd__nor2_2 _330_ (.A(\bram.waddr[0] ),
    .B(_198_),
    .Y(_199_));
 sky130_fd_sc_hd__xor2_2 _331_ (.A(\bram.waddr[0] ),
    .B(_198_),
    .X(\u_wrptr_handler.b_wptr_next[0] ));
 sky130_fd_sc_hd__and3_2 _332_ (.A(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .X(_200_));
 sky130_fd_sc_hd__a21oi_2 _333_ (.A1(\bram.waddr[0] ),
    .A2(_198_),
    .B1(\bram.waddr[1] ),
    .Y(_201_));
 sky130_fd_sc_hd__nor2_2 _334_ (.A(_200_),
    .B(_201_),
    .Y(\u_wrptr_handler.b_wptr_next[1] ));
 sky130_fd_sc_hd__xnor2_2 _335_ (.A(\bram.waddr[1] ),
    .B(_199_),
    .Y(\u_wrptr_handler.g_wptr_next[0] ));
 sky130_fd_sc_hd__a31o_2 _336_ (.A1(\bram.waddr[0] ),
    .A2(\bram.waddr[1] ),
    .A3(_198_),
    .B1(\bram.waddr[2] ),
    .X(_202_));
 sky130_fd_sc_hd__xor2_2 _337_ (.A(\bram.waddr[2] ),
    .B(_200_),
    .X(\u_wrptr_handler.b_wptr_next[2] ));
 sky130_fd_sc_hd__xnor2_2 _338_ (.A(\bram.waddr[2] ),
    .B(_201_),
    .Y(\u_wrptr_handler.g_wptr_next[1] ));
 sky130_fd_sc_hd__and2_2 _339_ (.A(\bram.waddr[3] ),
    .B(\bram.waddr[2] ),
    .X(_203_));
 sky130_fd_sc_hd__nand4_2 _340_ (.A(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .D(_203_),
    .Y(_204_));
 sky130_fd_sc_hd__a41o_2 _341_ (.A1(\bram.waddr[0] ),
    .A2(\bram.waddr[1] ),
    .A3(\bram.waddr[2] ),
    .A4(_198_),
    .B1(\bram.waddr[3] ),
    .X(_205_));
 sky130_fd_sc_hd__and2_2 _342_ (.A(_204_),
    .B(_205_),
    .X(\u_wrptr_handler.b_wptr_next[3] ));
 sky130_fd_sc_hd__xnor2_2 _343_ (.A(_138_),
    .B(_202_),
    .Y(\u_wrptr_handler.g_wptr_next[2] ));
 sky130_fd_sc_hd__xnor2_2 _344_ (.A(\sync_gwptr_to_rd.d1[4] ),
    .B(_204_),
    .Y(\u_wrptr_handler.b_wptr_next[4] ));
 sky130_fd_sc_hd__xor2_2 _345_ (.A(\sync_gwptr_to_rd.d1[4] ),
    .B(_205_),
    .X(\u_wrptr_handler.g_wptr_next[3] ));
 sky130_fd_sc_hd__mux4_2 _346_ (.A0(\bram.mem[8][0] ),
    .A1(\bram.mem[9][0] ),
    .A2(\bram.mem[10][0] ),
    .A3(\bram.mem[11][0] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_206_));
 sky130_fd_sc_hd__or2_2 _347_ (.A(\bram.raddr[2] ),
    .B(_206_),
    .X(_207_));
 sky130_fd_sc_hd__mux4_2 _348_ (.A0(\bram.mem[12][0] ),
    .A1(\bram.mem[13][0] ),
    .A2(\bram.mem[14][0] ),
    .A3(\bram.mem[15][0] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_208_));
 sky130_fd_sc_hd__o21a_2 _349_ (.A1(_136_),
    .A2(_208_),
    .B1(\bram.raddr[3] ),
    .X(_209_));
 sky130_fd_sc_hd__mux4_2 _350_ (.A0(\bram.mem[0][0] ),
    .A1(\bram.mem[1][0] ),
    .A2(\bram.mem[2][0] ),
    .A3(\bram.mem[3][0] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_210_));
 sky130_fd_sc_hd__mux4_2 _351_ (.A0(\bram.mem[4][0] ),
    .A1(\bram.mem[5][0] ),
    .A2(\bram.mem[6][0] ),
    .A3(\bram.mem[7][0] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_211_));
 sky130_fd_sc_hd__mux2_1 _352_ (.A0(_210_),
    .A1(_211_),
    .S(\bram.raddr[2] ),
    .X(_212_));
 sky130_fd_sc_hd__a22o_2 _353_ (.A1(_207_),
    .A2(_209_),
    .B1(_212_),
    .B2(_137_),
    .X(_000_));
 sky130_fd_sc_hd__mux4_2 _354_ (.A0(\bram.mem[12][1] ),
    .A1(\bram.mem[13][1] ),
    .A2(\bram.mem[14][1] ),
    .A3(\bram.mem[15][1] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_213_));
 sky130_fd_sc_hd__or2_2 _355_ (.A(_136_),
    .B(_213_),
    .X(_214_));
 sky130_fd_sc_hd__mux4_2 _356_ (.A0(\bram.mem[8][1] ),
    .A1(\bram.mem[9][1] ),
    .A2(\bram.mem[10][1] ),
    .A3(\bram.mem[11][1] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_215_));
 sky130_fd_sc_hd__o21a_2 _357_ (.A1(\bram.raddr[2] ),
    .A2(_215_),
    .B1(\bram.raddr[3] ),
    .X(_216_));
 sky130_fd_sc_hd__mux4_2 _358_ (.A0(\bram.mem[0][1] ),
    .A1(\bram.mem[1][1] ),
    .A2(\bram.mem[2][1] ),
    .A3(\bram.mem[3][1] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_217_));
 sky130_fd_sc_hd__mux4_2 _359_ (.A0(\bram.mem[4][1] ),
    .A1(\bram.mem[5][1] ),
    .A2(\bram.mem[6][1] ),
    .A3(\bram.mem[7][1] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_218_));
 sky130_fd_sc_hd__mux2_1 _360_ (.A0(_217_),
    .A1(_218_),
    .S(\bram.raddr[2] ),
    .X(_219_));
 sky130_fd_sc_hd__a22o_2 _361_ (.A1(_214_),
    .A2(_216_),
    .B1(_219_),
    .B2(_137_),
    .X(_001_));
 sky130_fd_sc_hd__mux4_2 _362_ (.A0(\bram.mem[8][2] ),
    .A1(\bram.mem[9][2] ),
    .A2(\bram.mem[10][2] ),
    .A3(\bram.mem[11][2] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_220_));
 sky130_fd_sc_hd__or2_2 _363_ (.A(\bram.raddr[2] ),
    .B(_220_),
    .X(_221_));
 sky130_fd_sc_hd__mux4_2 _364_ (.A0(\bram.mem[12][2] ),
    .A1(\bram.mem[13][2] ),
    .A2(\bram.mem[14][2] ),
    .A3(\bram.mem[15][2] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_222_));
 sky130_fd_sc_hd__o21a_2 _365_ (.A1(_136_),
    .A2(_222_),
    .B1(\bram.raddr[3] ),
    .X(_223_));
 sky130_fd_sc_hd__mux4_2 _366_ (.A0(\bram.mem[0][2] ),
    .A1(\bram.mem[1][2] ),
    .A2(\bram.mem[2][2] ),
    .A3(\bram.mem[3][2] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_224_));
 sky130_fd_sc_hd__mux4_2 _367_ (.A0(\bram.mem[4][2] ),
    .A1(\bram.mem[5][2] ),
    .A2(\bram.mem[6][2] ),
    .A3(\bram.mem[7][2] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_225_));
 sky130_fd_sc_hd__mux2_1 _368_ (.A0(_224_),
    .A1(_225_),
    .S(\bram.raddr[2] ),
    .X(_226_));
 sky130_fd_sc_hd__a22o_2 _369_ (.A1(_221_),
    .A2(_223_),
    .B1(_226_),
    .B2(_137_),
    .X(_002_));
 sky130_fd_sc_hd__mux4_2 _370_ (.A0(\bram.mem[8][3] ),
    .A1(\bram.mem[9][3] ),
    .A2(\bram.mem[10][3] ),
    .A3(\bram.mem[11][3] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_227_));
 sky130_fd_sc_hd__or2_2 _371_ (.A(\bram.raddr[2] ),
    .B(_227_),
    .X(_228_));
 sky130_fd_sc_hd__mux4_2 _372_ (.A0(\bram.mem[12][3] ),
    .A1(\bram.mem[13][3] ),
    .A2(\bram.mem[14][3] ),
    .A3(\bram.mem[15][3] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_229_));
 sky130_fd_sc_hd__o21a_2 _373_ (.A1(_136_),
    .A2(_229_),
    .B1(\bram.raddr[3] ),
    .X(_230_));
 sky130_fd_sc_hd__mux4_2 _374_ (.A0(\bram.mem[0][3] ),
    .A1(\bram.mem[1][3] ),
    .A2(\bram.mem[2][3] ),
    .A3(\bram.mem[3][3] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_231_));
 sky130_fd_sc_hd__mux4_2 _375_ (.A0(\bram.mem[4][3] ),
    .A1(\bram.mem[5][3] ),
    .A2(\bram.mem[6][3] ),
    .A3(\bram.mem[7][3] ),
    .S0(\bram.raddr[0] ),
    .S1(\bram.raddr[1] ),
    .X(_232_));
 sky130_fd_sc_hd__mux2_1 _376_ (.A0(_231_),
    .A1(_232_),
    .S(\bram.raddr[2] ),
    .X(_233_));
 sky130_fd_sc_hd__a22o_2 _377_ (.A1(_228_),
    .A2(_230_),
    .B1(_233_),
    .B2(_137_),
    .X(_003_));
 sky130_fd_sc_hd__nor2_2 _378_ (.A(_138_),
    .B(\bram.waddr[2] ),
    .Y(_234_));
 sky130_fd_sc_hd__nand4b_2 _379_ (.A_N(\bram.waddr[1] ),
    .B(_198_),
    .C(_234_),
    .D(\bram.waddr[0] ),
    .Y(_235_));
 sky130_fd_sc_hd__mux2_1 _380_ (.A0(wdata[0]),
    .A1(\bram.mem[9][0] ),
    .S(_235_),
    .X(_008_));
 sky130_fd_sc_hd__mux2_1 _381_ (.A0(wdata[1]),
    .A1(\bram.mem[9][1] ),
    .S(_235_),
    .X(_009_));
 sky130_fd_sc_hd__mux2_1 _382_ (.A0(wdata[2]),
    .A1(\bram.mem[9][2] ),
    .S(_235_),
    .X(_010_));
 sky130_fd_sc_hd__mux2_1 _383_ (.A0(wdata[3]),
    .A1(\bram.mem[9][3] ),
    .S(_235_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _384_ (.A0(wdata[4]),
    .A1(\bram.mem[9][4] ),
    .S(_235_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _385_ (.A0(wdata[5]),
    .A1(\bram.mem[9][5] ),
    .S(_235_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _386_ (.A0(wdata[6]),
    .A1(\bram.mem[9][6] ),
    .S(_235_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _387_ (.A0(wdata[7]),
    .A1(\bram.mem[9][7] ),
    .S(_235_),
    .X(_015_));
 sky130_fd_sc_hd__and4b_2 _388_ (.A_N(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .D(_203_),
    .X(_236_));
 sky130_fd_sc_hd__mux2_1 _389_ (.A0(\bram.mem[14][0] ),
    .A1(wdata[0]),
    .S(_236_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _390_ (.A0(\bram.mem[14][1] ),
    .A1(wdata[1]),
    .S(_236_),
    .X(_017_));
 sky130_fd_sc_hd__mux2_1 _391_ (.A0(\bram.mem[14][2] ),
    .A1(wdata[2]),
    .S(_236_),
    .X(_018_));
 sky130_fd_sc_hd__mux2_1 _392_ (.A0(\bram.mem[14][3] ),
    .A1(wdata[3]),
    .S(_236_),
    .X(_019_));
 sky130_fd_sc_hd__mux2_1 _393_ (.A0(\bram.mem[14][4] ),
    .A1(wdata[4]),
    .S(_236_),
    .X(_020_));
 sky130_fd_sc_hd__mux2_1 _394_ (.A0(\bram.mem[14][5] ),
    .A1(wdata[5]),
    .S(_236_),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _395_ (.A0(\bram.mem[14][6] ),
    .A1(wdata[6]),
    .S(_236_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _396_ (.A0(\bram.mem[14][7] ),
    .A1(wdata[7]),
    .S(_236_),
    .X(_023_));
 sky130_fd_sc_hd__nand4b_2 _397_ (.A_N(\bram.waddr[1] ),
    .B(_198_),
    .C(_203_),
    .D(\bram.waddr[0] ),
    .Y(_237_));
 sky130_fd_sc_hd__mux2_1 _398_ (.A0(wdata[0]),
    .A1(\bram.mem[13][0] ),
    .S(_237_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _399_ (.A0(wdata[1]),
    .A1(\bram.mem[13][1] ),
    .S(_237_),
    .X(_025_));
 sky130_fd_sc_hd__mux2_1 _400_ (.A0(wdata[2]),
    .A1(\bram.mem[13][2] ),
    .S(_237_),
    .X(_026_));
 sky130_fd_sc_hd__mux2_1 _401_ (.A0(wdata[3]),
    .A1(\bram.mem[13][3] ),
    .S(_237_),
    .X(_027_));
 sky130_fd_sc_hd__mux2_1 _402_ (.A0(wdata[4]),
    .A1(\bram.mem[13][4] ),
    .S(_237_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_1 _403_ (.A0(wdata[5]),
    .A1(\bram.mem[13][5] ),
    .S(_237_),
    .X(_029_));
 sky130_fd_sc_hd__mux2_1 _404_ (.A0(wdata[6]),
    .A1(\bram.mem[13][6] ),
    .S(_237_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _405_ (.A0(wdata[7]),
    .A1(\bram.mem[13][7] ),
    .S(_237_),
    .X(_031_));
 sky130_fd_sc_hd__and4bb_2 _406_ (.A_N(\bram.waddr[0] ),
    .B_N(\bram.waddr[1] ),
    .C(_198_),
    .D(_203_),
    .X(_238_));
 sky130_fd_sc_hd__mux2_1 _407_ (.A0(\bram.mem[12][0] ),
    .A1(wdata[0]),
    .S(_238_),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _408_ (.A0(\bram.mem[12][1] ),
    .A1(wdata[1]),
    .S(_238_),
    .X(_033_));
 sky130_fd_sc_hd__mux2_1 _409_ (.A0(\bram.mem[12][2] ),
    .A1(wdata[2]),
    .S(_238_),
    .X(_034_));
 sky130_fd_sc_hd__mux2_1 _410_ (.A0(\bram.mem[12][3] ),
    .A1(wdata[3]),
    .S(_238_),
    .X(_035_));
 sky130_fd_sc_hd__mux2_1 _411_ (.A0(\bram.mem[12][4] ),
    .A1(wdata[4]),
    .S(_238_),
    .X(_036_));
 sky130_fd_sc_hd__mux2_1 _412_ (.A0(\bram.mem[12][5] ),
    .A1(wdata[5]),
    .S(_238_),
    .X(_037_));
 sky130_fd_sc_hd__mux2_1 _413_ (.A0(\bram.mem[12][6] ),
    .A1(wdata[6]),
    .S(_238_),
    .X(_038_));
 sky130_fd_sc_hd__mux2_1 _414_ (.A0(\bram.mem[12][7] ),
    .A1(wdata[7]),
    .S(_238_),
    .X(_039_));
 sky130_fd_sc_hd__nand4_2 _415_ (.A(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .D(_234_),
    .Y(_239_));
 sky130_fd_sc_hd__mux2_1 _416_ (.A0(wdata[0]),
    .A1(\bram.mem[11][0] ),
    .S(_239_),
    .X(_040_));
 sky130_fd_sc_hd__mux2_1 _417_ (.A0(wdata[1]),
    .A1(\bram.mem[11][1] ),
    .S(_239_),
    .X(_041_));
 sky130_fd_sc_hd__mux2_1 _418_ (.A0(wdata[2]),
    .A1(\bram.mem[11][2] ),
    .S(_239_),
    .X(_042_));
 sky130_fd_sc_hd__mux2_1 _419_ (.A0(wdata[3]),
    .A1(\bram.mem[11][3] ),
    .S(_239_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _420_ (.A0(wdata[4]),
    .A1(\bram.mem[11][4] ),
    .S(_239_),
    .X(_044_));
 sky130_fd_sc_hd__mux2_1 _421_ (.A0(wdata[5]),
    .A1(\bram.mem[11][5] ),
    .S(_239_),
    .X(_045_));
 sky130_fd_sc_hd__mux2_1 _422_ (.A0(wdata[6]),
    .A1(\bram.mem[11][6] ),
    .S(_239_),
    .X(_046_));
 sky130_fd_sc_hd__mux2_1 _423_ (.A0(wdata[7]),
    .A1(\bram.mem[11][7] ),
    .S(_239_),
    .X(_047_));
 sky130_fd_sc_hd__and4b_2 _424_ (.A_N(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .D(_234_),
    .X(_240_));
 sky130_fd_sc_hd__mux2_1 _425_ (.A0(\bram.mem[10][0] ),
    .A1(wdata[0]),
    .S(_240_),
    .X(_048_));
 sky130_fd_sc_hd__mux2_1 _426_ (.A0(\bram.mem[10][1] ),
    .A1(wdata[1]),
    .S(_240_),
    .X(_049_));
 sky130_fd_sc_hd__mux2_1 _427_ (.A0(\bram.mem[10][2] ),
    .A1(wdata[2]),
    .S(_240_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _428_ (.A0(\bram.mem[10][3] ),
    .A1(wdata[3]),
    .S(_240_),
    .X(_051_));
 sky130_fd_sc_hd__mux2_1 _429_ (.A0(\bram.mem[10][4] ),
    .A1(wdata[4]),
    .S(_240_),
    .X(_052_));
 sky130_fd_sc_hd__mux2_1 _430_ (.A0(\bram.mem[10][5] ),
    .A1(wdata[5]),
    .S(_240_),
    .X(_053_));
 sky130_fd_sc_hd__mux2_1 _431_ (.A0(\bram.mem[10][6] ),
    .A1(wdata[6]),
    .S(_240_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_1 _432_ (.A0(\bram.mem[10][7] ),
    .A1(wdata[7]),
    .S(_240_),
    .X(_055_));
 sky130_fd_sc_hd__and2_2 _433_ (.A(_138_),
    .B(\bram.waddr[2] ),
    .X(_241_));
 sky130_fd_sc_hd__nand4_2 _434_ (.A(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .D(_241_),
    .Y(_242_));
 sky130_fd_sc_hd__mux2_1 _435_ (.A0(wdata[0]),
    .A1(\bram.mem[7][0] ),
    .S(_242_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _436_ (.A0(wdata[1]),
    .A1(\bram.mem[7][1] ),
    .S(_242_),
    .X(_057_));
 sky130_fd_sc_hd__mux2_1 _437_ (.A0(wdata[2]),
    .A1(\bram.mem[7][2] ),
    .S(_242_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_1 _438_ (.A0(wdata[3]),
    .A1(\bram.mem[7][3] ),
    .S(_242_),
    .X(_059_));
 sky130_fd_sc_hd__mux2_1 _439_ (.A0(wdata[4]),
    .A1(\bram.mem[7][4] ),
    .S(_242_),
    .X(_060_));
 sky130_fd_sc_hd__mux2_1 _440_ (.A0(wdata[5]),
    .A1(\bram.mem[7][5] ),
    .S(_242_),
    .X(_061_));
 sky130_fd_sc_hd__mux2_1 _441_ (.A0(wdata[6]),
    .A1(\bram.mem[7][6] ),
    .S(_242_),
    .X(_062_));
 sky130_fd_sc_hd__mux2_1 _442_ (.A0(wdata[7]),
    .A1(\bram.mem[7][7] ),
    .S(_242_),
    .X(_063_));
 sky130_fd_sc_hd__and4bb_2 _443_ (.A_N(\bram.waddr[0] ),
    .B_N(\bram.waddr[1] ),
    .C(_198_),
    .D(_234_),
    .X(_243_));
 sky130_fd_sc_hd__mux2_1 _444_ (.A0(\bram.mem[8][0] ),
    .A1(wdata[0]),
    .S(_243_),
    .X(_064_));
 sky130_fd_sc_hd__mux2_1 _445_ (.A0(\bram.mem[8][1] ),
    .A1(wdata[1]),
    .S(_243_),
    .X(_065_));
 sky130_fd_sc_hd__mux2_1 _446_ (.A0(\bram.mem[8][2] ),
    .A1(wdata[2]),
    .S(_243_),
    .X(_066_));
 sky130_fd_sc_hd__mux2_1 _447_ (.A0(\bram.mem[8][3] ),
    .A1(wdata[3]),
    .S(_243_),
    .X(_067_));
 sky130_fd_sc_hd__mux2_1 _448_ (.A0(\bram.mem[8][4] ),
    .A1(wdata[4]),
    .S(_243_),
    .X(_068_));
 sky130_fd_sc_hd__mux2_1 _449_ (.A0(\bram.mem[8][5] ),
    .A1(wdata[5]),
    .S(_243_),
    .X(_069_));
 sky130_fd_sc_hd__mux2_1 _450_ (.A0(\bram.mem[8][6] ),
    .A1(wdata[6]),
    .S(_243_),
    .X(_070_));
 sky130_fd_sc_hd__mux2_1 _451_ (.A0(\bram.mem[8][7] ),
    .A1(wdata[7]),
    .S(_243_),
    .X(_071_));
 sky130_fd_sc_hd__nor2_2 _452_ (.A(\bram.waddr[3] ),
    .B(\bram.waddr[2] ),
    .Y(_244_));
 sky130_fd_sc_hd__and4bb_2 _453_ (.A_N(\bram.waddr[0] ),
    .B_N(\bram.waddr[1] ),
    .C(_198_),
    .D(_244_),
    .X(_245_));
 sky130_fd_sc_hd__mux2_1 _454_ (.A0(\bram.mem[0][0] ),
    .A1(wdata[0]),
    .S(_245_),
    .X(_072_));
 sky130_fd_sc_hd__mux2_1 _455_ (.A0(\bram.mem[0][1] ),
    .A1(wdata[1]),
    .S(_245_),
    .X(_073_));
 sky130_fd_sc_hd__mux2_1 _456_ (.A0(\bram.mem[0][2] ),
    .A1(wdata[2]),
    .S(_245_),
    .X(_074_));
 sky130_fd_sc_hd__mux2_1 _457_ (.A0(\bram.mem[0][3] ),
    .A1(wdata[3]),
    .S(_245_),
    .X(_075_));
 sky130_fd_sc_hd__mux2_1 _458_ (.A0(\bram.mem[0][4] ),
    .A1(wdata[4]),
    .S(_245_),
    .X(_076_));
 sky130_fd_sc_hd__mux2_1 _459_ (.A0(\bram.mem[0][5] ),
    .A1(wdata[5]),
    .S(_245_),
    .X(_077_));
 sky130_fd_sc_hd__mux2_1 _460_ (.A0(\bram.mem[0][6] ),
    .A1(wdata[6]),
    .S(_245_),
    .X(_078_));
 sky130_fd_sc_hd__mux2_1 _461_ (.A0(\bram.mem[0][7] ),
    .A1(wdata[7]),
    .S(_245_),
    .X(_079_));
 sky130_fd_sc_hd__nand4b_2 _462_ (.A_N(\bram.waddr[1] ),
    .B(_198_),
    .C(_241_),
    .D(\bram.waddr[0] ),
    .Y(_246_));
 sky130_fd_sc_hd__mux2_1 _463_ (.A0(wdata[0]),
    .A1(\bram.mem[5][0] ),
    .S(_246_),
    .X(_080_));
 sky130_fd_sc_hd__mux2_1 _464_ (.A0(wdata[1]),
    .A1(\bram.mem[5][1] ),
    .S(_246_),
    .X(_081_));
 sky130_fd_sc_hd__mux2_1 _465_ (.A0(wdata[2]),
    .A1(\bram.mem[5][2] ),
    .S(_246_),
    .X(_082_));
 sky130_fd_sc_hd__mux2_1 _466_ (.A0(wdata[3]),
    .A1(\bram.mem[5][3] ),
    .S(_246_),
    .X(_083_));
 sky130_fd_sc_hd__mux2_1 _467_ (.A0(wdata[4]),
    .A1(\bram.mem[5][4] ),
    .S(_246_),
    .X(_084_));
 sky130_fd_sc_hd__mux2_1 _468_ (.A0(wdata[5]),
    .A1(\bram.mem[5][5] ),
    .S(_246_),
    .X(_085_));
 sky130_fd_sc_hd__mux2_1 _469_ (.A0(wdata[6]),
    .A1(\bram.mem[5][6] ),
    .S(_246_),
    .X(_086_));
 sky130_fd_sc_hd__mux2_1 _470_ (.A0(wdata[7]),
    .A1(\bram.mem[5][7] ),
    .S(_246_),
    .X(_087_));
 sky130_fd_sc_hd__and4b_2 _471_ (.A_N(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .D(_241_),
    .X(_247_));
 sky130_fd_sc_hd__mux2_1 _472_ (.A0(\bram.mem[6][0] ),
    .A1(wdata[0]),
    .S(_247_),
    .X(_088_));
 sky130_fd_sc_hd__mux2_1 _473_ (.A0(\bram.mem[6][1] ),
    .A1(wdata[1]),
    .S(_247_),
    .X(_089_));
 sky130_fd_sc_hd__mux2_1 _474_ (.A0(\bram.mem[6][2] ),
    .A1(wdata[2]),
    .S(_247_),
    .X(_090_));
 sky130_fd_sc_hd__mux2_1 _475_ (.A0(\bram.mem[6][3] ),
    .A1(wdata[3]),
    .S(_247_),
    .X(_091_));
 sky130_fd_sc_hd__mux2_1 _476_ (.A0(\bram.mem[6][4] ),
    .A1(wdata[4]),
    .S(_247_),
    .X(_092_));
 sky130_fd_sc_hd__mux2_1 _477_ (.A0(\bram.mem[6][5] ),
    .A1(wdata[5]),
    .S(_247_),
    .X(_093_));
 sky130_fd_sc_hd__mux2_1 _478_ (.A0(\bram.mem[6][6] ),
    .A1(wdata[6]),
    .S(_247_),
    .X(_094_));
 sky130_fd_sc_hd__mux2_1 _479_ (.A0(\bram.mem[6][7] ),
    .A1(wdata[7]),
    .S(_247_),
    .X(_095_));
 sky130_fd_sc_hd__nand4_2 _480_ (.A(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .D(_244_),
    .Y(_248_));
 sky130_fd_sc_hd__mux2_1 _481_ (.A0(wdata[0]),
    .A1(\bram.mem[3][0] ),
    .S(_248_),
    .X(_096_));
 sky130_fd_sc_hd__mux2_1 _482_ (.A0(wdata[1]),
    .A1(\bram.mem[3][1] ),
    .S(_248_),
    .X(_097_));
 sky130_fd_sc_hd__mux2_1 _483_ (.A0(wdata[2]),
    .A1(\bram.mem[3][2] ),
    .S(_248_),
    .X(_098_));
 sky130_fd_sc_hd__mux2_1 _484_ (.A0(wdata[3]),
    .A1(\bram.mem[3][3] ),
    .S(_248_),
    .X(_099_));
 sky130_fd_sc_hd__mux2_1 _485_ (.A0(wdata[4]),
    .A1(\bram.mem[3][4] ),
    .S(_248_),
    .X(_100_));
 sky130_fd_sc_hd__mux2_1 _486_ (.A0(wdata[5]),
    .A1(\bram.mem[3][5] ),
    .S(_248_),
    .X(_101_));
 sky130_fd_sc_hd__mux2_1 _487_ (.A0(wdata[6]),
    .A1(\bram.mem[3][6] ),
    .S(_248_),
    .X(_102_));
 sky130_fd_sc_hd__mux2_1 _488_ (.A0(wdata[7]),
    .A1(\bram.mem[3][7] ),
    .S(_248_),
    .X(_103_));
 sky130_fd_sc_hd__and4bb_2 _489_ (.A_N(\bram.waddr[0] ),
    .B_N(\bram.waddr[1] ),
    .C(_198_),
    .D(_241_),
    .X(_249_));
 sky130_fd_sc_hd__mux2_1 _490_ (.A0(\bram.mem[4][0] ),
    .A1(wdata[0]),
    .S(_249_),
    .X(_104_));
 sky130_fd_sc_hd__mux2_1 _491_ (.A0(\bram.mem[4][1] ),
    .A1(wdata[1]),
    .S(_249_),
    .X(_105_));
 sky130_fd_sc_hd__mux2_1 _492_ (.A0(\bram.mem[4][2] ),
    .A1(wdata[2]),
    .S(_249_),
    .X(_106_));
 sky130_fd_sc_hd__mux2_1 _493_ (.A0(\bram.mem[4][3] ),
    .A1(wdata[3]),
    .S(_249_),
    .X(_107_));
 sky130_fd_sc_hd__mux2_1 _494_ (.A0(\bram.mem[4][4] ),
    .A1(wdata[4]),
    .S(_249_),
    .X(_108_));
 sky130_fd_sc_hd__mux2_1 _495_ (.A0(\bram.mem[4][5] ),
    .A1(wdata[5]),
    .S(_249_),
    .X(_109_));
 sky130_fd_sc_hd__mux2_1 _496_ (.A0(\bram.mem[4][6] ),
    .A1(wdata[6]),
    .S(_249_),
    .X(_110_));
 sky130_fd_sc_hd__mux2_1 _497_ (.A0(\bram.mem[4][7] ),
    .A1(wdata[7]),
    .S(_249_),
    .X(_111_));
 sky130_fd_sc_hd__nand4b_2 _498_ (.A_N(\bram.waddr[1] ),
    .B(_198_),
    .C(_244_),
    .D(\bram.waddr[0] ),
    .Y(_250_));
 sky130_fd_sc_hd__mux2_1 _499_ (.A0(wdata[0]),
    .A1(\bram.mem[1][0] ),
    .S(_250_),
    .X(_112_));
 sky130_fd_sc_hd__mux2_1 _500_ (.A0(wdata[1]),
    .A1(\bram.mem[1][1] ),
    .S(_250_),
    .X(_113_));
 sky130_fd_sc_hd__mux2_1 _501_ (.A0(wdata[2]),
    .A1(\bram.mem[1][2] ),
    .S(_250_),
    .X(_114_));
 sky130_fd_sc_hd__mux2_1 _502_ (.A0(wdata[3]),
    .A1(\bram.mem[1][3] ),
    .S(_250_),
    .X(_115_));
 sky130_fd_sc_hd__mux2_1 _503_ (.A0(wdata[4]),
    .A1(\bram.mem[1][4] ),
    .S(_250_),
    .X(_116_));
 sky130_fd_sc_hd__mux2_1 _504_ (.A0(wdata[5]),
    .A1(\bram.mem[1][5] ),
    .S(_250_),
    .X(_117_));
 sky130_fd_sc_hd__mux2_1 _505_ (.A0(wdata[6]),
    .A1(\bram.mem[1][6] ),
    .S(_250_),
    .X(_118_));
 sky130_fd_sc_hd__mux2_1 _506_ (.A0(wdata[7]),
    .A1(\bram.mem[1][7] ),
    .S(_250_),
    .X(_119_));
 sky130_fd_sc_hd__mux2_1 _507_ (.A0(wdata[0]),
    .A1(\bram.mem[15][0] ),
    .S(_204_),
    .X(_120_));
 sky130_fd_sc_hd__mux2_1 _508_ (.A0(wdata[1]),
    .A1(\bram.mem[15][1] ),
    .S(_204_),
    .X(_121_));
 sky130_fd_sc_hd__mux2_1 _509_ (.A0(wdata[2]),
    .A1(\bram.mem[15][2] ),
    .S(_204_),
    .X(_122_));
 sky130_fd_sc_hd__mux2_1 _510_ (.A0(wdata[3]),
    .A1(\bram.mem[15][3] ),
    .S(_204_),
    .X(_123_));
 sky130_fd_sc_hd__mux2_1 _511_ (.A0(wdata[4]),
    .A1(\bram.mem[15][4] ),
    .S(_204_),
    .X(_124_));
 sky130_fd_sc_hd__mux2_1 _512_ (.A0(wdata[5]),
    .A1(\bram.mem[15][5] ),
    .S(_204_),
    .X(_125_));
 sky130_fd_sc_hd__mux2_1 _513_ (.A0(wdata[6]),
    .A1(\bram.mem[15][6] ),
    .S(_204_),
    .X(_126_));
 sky130_fd_sc_hd__mux2_1 _514_ (.A0(wdata[7]),
    .A1(\bram.mem[15][7] ),
    .S(_204_),
    .X(_127_));
 sky130_fd_sc_hd__and4b_2 _515_ (.A_N(\bram.waddr[0] ),
    .B(\bram.waddr[1] ),
    .C(_198_),
    .D(_244_),
    .X(_251_));
 sky130_fd_sc_hd__mux2_1 _516_ (.A0(\bram.mem[2][0] ),
    .A1(wdata[0]),
    .S(_251_),
    .X(_128_));
 sky130_fd_sc_hd__mux2_1 _517_ (.A0(\bram.mem[2][1] ),
    .A1(wdata[1]),
    .S(_251_),
    .X(_129_));
 sky130_fd_sc_hd__mux2_1 _518_ (.A0(\bram.mem[2][2] ),
    .A1(wdata[2]),
    .S(_251_),
    .X(_130_));
 sky130_fd_sc_hd__mux2_1 _519_ (.A0(\bram.mem[2][3] ),
    .A1(wdata[3]),
    .S(_251_),
    .X(_131_));
 sky130_fd_sc_hd__mux2_1 _520_ (.A0(\bram.mem[2][4] ),
    .A1(wdata[4]),
    .S(_251_),
    .X(_132_));
 sky130_fd_sc_hd__mux2_1 _521_ (.A0(\bram.mem[2][5] ),
    .A1(wdata[5]),
    .S(_251_),
    .X(_133_));
 sky130_fd_sc_hd__mux2_1 _522_ (.A0(\bram.mem[2][6] ),
    .A1(wdata[6]),
    .S(_251_),
    .X(_134_));
 sky130_fd_sc_hd__mux2_1 _523_ (.A0(\bram.mem[2][7] ),
    .A1(wdata[7]),
    .S(_251_),
    .X(_135_));
 sky130_fd_sc_hd__dfxtp_2 _524_ (.CLK(wclk),
    .D(_008_),
    .Q(\bram.mem[9][0] ));
 sky130_fd_sc_hd__dfxtp_2 _525_ (.CLK(wclk),
    .D(_009_),
    .Q(\bram.mem[9][1] ));
 sky130_fd_sc_hd__dfxtp_2 _526_ (.CLK(wclk),
    .D(_010_),
    .Q(\bram.mem[9][2] ));
 sky130_fd_sc_hd__dfxtp_2 _527_ (.CLK(wclk),
    .D(_011_),
    .Q(\bram.mem[9][3] ));
 sky130_fd_sc_hd__dfxtp_2 _528_ (.CLK(wclk),
    .D(_012_),
    .Q(\bram.mem[9][4] ));
 sky130_fd_sc_hd__dfxtp_2 _529_ (.CLK(wclk),
    .D(_013_),
    .Q(\bram.mem[9][5] ));
 sky130_fd_sc_hd__dfxtp_2 _530_ (.CLK(wclk),
    .D(_014_),
    .Q(\bram.mem[9][6] ));
 sky130_fd_sc_hd__dfxtp_2 _531_ (.CLK(wclk),
    .D(_015_),
    .Q(\bram.mem[9][7] ));
 sky130_fd_sc_hd__dfrtp_2 _532_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.q1[0] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q2[0] ));
 sky130_fd_sc_hd__dfrtp_2 _533_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.q1[1] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q2[1] ));
 sky130_fd_sc_hd__dfrtp_2 _534_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.q1[2] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q2[2] ));
 sky130_fd_sc_hd__dfrtp_2 _535_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.q1[3] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q2[3] ));
 sky130_fd_sc_hd__dfrtp_2 _536_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.q1[4] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q2[4] ));
 sky130_fd_sc_hd__dfrtp_2 _537_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.d1[0] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q1[0] ));
 sky130_fd_sc_hd__dfrtp_2 _538_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.d1[1] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q1[1] ));
 sky130_fd_sc_hd__dfrtp_2 _539_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.d1[2] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q1[2] ));
 sky130_fd_sc_hd__dfrtp_2 _540_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.d1[3] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q1[3] ));
 sky130_fd_sc_hd__dfrtp_2 _541_ (.CLK(rclk),
    .D(\sync_gwptr_to_rd.d1[4] ),
    .RESET_B(rrst_n),
    .Q(\sync_gwptr_to_rd.q1[4] ));
 sky130_fd_sc_hd__dfxtp_2 _542_ (.CLK(rclk),
    .D(_000_),
    .Q(rdata[0]));
 sky130_fd_sc_hd__dfxtp_2 _543_ (.CLK(rclk),
    .D(_001_),
    .Q(rdata[1]));
 sky130_fd_sc_hd__dfxtp_2 _544_ (.CLK(rclk),
    .D(_002_),
    .Q(rdata[2]));
 sky130_fd_sc_hd__dfxtp_2 _545_ (.CLK(rclk),
    .D(_003_),
    .Q(rdata[3]));
 sky130_fd_sc_hd__dfxtp_2 _546_ (.CLK(rclk),
    .D(_004_),
    .Q(rdata[4]));
 sky130_fd_sc_hd__dfxtp_2 _547_ (.CLK(rclk),
    .D(_005_),
    .Q(rdata[5]));
 sky130_fd_sc_hd__dfxtp_2 _548_ (.CLK(rclk),
    .D(_006_),
    .Q(rdata[6]));
 sky130_fd_sc_hd__dfxtp_2 _549_ (.CLK(rclk),
    .D(_007_),
    .Q(rdata[7]));
 sky130_fd_sc_hd__dfrtp_2 _550_ (.CLK(wclk),
    .D(\sync_grptr_to_wr.q1[0] ),
    .RESET_B(wrst_n),
    .Q(\r_ptr_gray_sync[0] ));
 sky130_fd_sc_hd__dfrtp_2 _551_ (.CLK(wclk),
    .D(\sync_grptr_to_wr.q1[1] ),
    .RESET_B(wrst_n),
    .Q(\r_ptr_gray_sync[1] ));
 sky130_fd_sc_hd__dfrtp_2 _552_ (.CLK(wclk),
    .D(\sync_grptr_to_wr.q1[2] ),
    .RESET_B(wrst_n),
    .Q(\r_ptr_gray_sync[2] ));
 sky130_fd_sc_hd__dfrtp_2 _553_ (.CLK(wclk),
    .D(\sync_grptr_to_wr.q1[3] ),
    .RESET_B(wrst_n),
    .Q(\r_ptr_gray_sync[3] ));
 sky130_fd_sc_hd__dfrtp_2 _554_ (.CLK(wclk),
    .D(\sync_grptr_to_wr.q1[4] ),
    .RESET_B(wrst_n),
    .Q(\r_ptr_gray_sync[4] ));
 sky130_fd_sc_hd__dfrtp_2 _555_ (.CLK(wclk),
    .D(\r_ptr_gray[0] ),
    .RESET_B(wrst_n),
    .Q(\sync_grptr_to_wr.q1[0] ));
 sky130_fd_sc_hd__dfrtp_2 _556_ (.CLK(wclk),
    .D(\r_ptr_gray[1] ),
    .RESET_B(wrst_n),
    .Q(\sync_grptr_to_wr.q1[1] ));
 sky130_fd_sc_hd__dfrtp_2 _557_ (.CLK(wclk),
    .D(\r_ptr_gray[2] ),
    .RESET_B(wrst_n),
    .Q(\sync_grptr_to_wr.q1[2] ));
 sky130_fd_sc_hd__dfrtp_2 _558_ (.CLK(wclk),
    .D(\r_ptr_gray[3] ),
    .RESET_B(wrst_n),
    .Q(\sync_grptr_to_wr.q1[3] ));
 sky130_fd_sc_hd__dfrtp_2 _559_ (.CLK(wclk),
    .D(\r_ptr_bin[4] ),
    .RESET_B(wrst_n),
    .Q(\sync_grptr_to_wr.q1[4] ));
 sky130_fd_sc_hd__dfxtp_2 _560_ (.CLK(wclk),
    .D(_016_),
    .Q(\bram.mem[14][0] ));
 sky130_fd_sc_hd__dfxtp_2 _561_ (.CLK(wclk),
    .D(_017_),
    .Q(\bram.mem[14][1] ));
 sky130_fd_sc_hd__dfxtp_2 _562_ (.CLK(wclk),
    .D(_018_),
    .Q(\bram.mem[14][2] ));
 sky130_fd_sc_hd__dfxtp_2 _563_ (.CLK(wclk),
    .D(_019_),
    .Q(\bram.mem[14][3] ));
 sky130_fd_sc_hd__dfxtp_2 _564_ (.CLK(wclk),
    .D(_020_),
    .Q(\bram.mem[14][4] ));
 sky130_fd_sc_hd__dfxtp_2 _565_ (.CLK(wclk),
    .D(_021_),
    .Q(\bram.mem[14][5] ));
 sky130_fd_sc_hd__dfxtp_2 _566_ (.CLK(wclk),
    .D(_022_),
    .Q(\bram.mem[14][6] ));
 sky130_fd_sc_hd__dfxtp_2 _567_ (.CLK(wclk),
    .D(_023_),
    .Q(\bram.mem[14][7] ));
 sky130_fd_sc_hd__dfxtp_2 _568_ (.CLK(wclk),
    .D(_024_),
    .Q(\bram.mem[13][0] ));
 sky130_fd_sc_hd__dfxtp_2 _569_ (.CLK(wclk),
    .D(_025_),
    .Q(\bram.mem[13][1] ));
 sky130_fd_sc_hd__dfxtp_2 _570_ (.CLK(wclk),
    .D(_026_),
    .Q(\bram.mem[13][2] ));
 sky130_fd_sc_hd__dfxtp_2 _571_ (.CLK(wclk),
    .D(_027_),
    .Q(\bram.mem[13][3] ));
 sky130_fd_sc_hd__dfxtp_2 _572_ (.CLK(wclk),
    .D(_028_),
    .Q(\bram.mem[13][4] ));
 sky130_fd_sc_hd__dfxtp_2 _573_ (.CLK(wclk),
    .D(_029_),
    .Q(\bram.mem[13][5] ));
 sky130_fd_sc_hd__dfxtp_2 _574_ (.CLK(wclk),
    .D(_030_),
    .Q(\bram.mem[13][6] ));
 sky130_fd_sc_hd__dfxtp_2 _575_ (.CLK(wclk),
    .D(_031_),
    .Q(\bram.mem[13][7] ));
 sky130_fd_sc_hd__dfxtp_2 _576_ (.CLK(wclk),
    .D(_032_),
    .Q(\bram.mem[12][0] ));
 sky130_fd_sc_hd__dfxtp_2 _577_ (.CLK(wclk),
    .D(_033_),
    .Q(\bram.mem[12][1] ));
 sky130_fd_sc_hd__dfxtp_2 _578_ (.CLK(wclk),
    .D(_034_),
    .Q(\bram.mem[12][2] ));
 sky130_fd_sc_hd__dfxtp_2 _579_ (.CLK(wclk),
    .D(_035_),
    .Q(\bram.mem[12][3] ));
 sky130_fd_sc_hd__dfxtp_2 _580_ (.CLK(wclk),
    .D(_036_),
    .Q(\bram.mem[12][4] ));
 sky130_fd_sc_hd__dfxtp_2 _581_ (.CLK(wclk),
    .D(_037_),
    .Q(\bram.mem[12][5] ));
 sky130_fd_sc_hd__dfxtp_2 _582_ (.CLK(wclk),
    .D(_038_),
    .Q(\bram.mem[12][6] ));
 sky130_fd_sc_hd__dfxtp_2 _583_ (.CLK(wclk),
    .D(_039_),
    .Q(\bram.mem[12][7] ));
 sky130_fd_sc_hd__dfxtp_2 _584_ (.CLK(wclk),
    .D(_040_),
    .Q(\bram.mem[11][0] ));
 sky130_fd_sc_hd__dfxtp_2 _585_ (.CLK(wclk),
    .D(_041_),
    .Q(\bram.mem[11][1] ));
 sky130_fd_sc_hd__dfxtp_2 _586_ (.CLK(wclk),
    .D(_042_),
    .Q(\bram.mem[11][2] ));
 sky130_fd_sc_hd__dfxtp_2 _587_ (.CLK(wclk),
    .D(_043_),
    .Q(\bram.mem[11][3] ));
 sky130_fd_sc_hd__dfxtp_2 _588_ (.CLK(wclk),
    .D(_044_),
    .Q(\bram.mem[11][4] ));
 sky130_fd_sc_hd__dfxtp_2 _589_ (.CLK(wclk),
    .D(_045_),
    .Q(\bram.mem[11][5] ));
 sky130_fd_sc_hd__dfxtp_2 _590_ (.CLK(wclk),
    .D(_046_),
    .Q(\bram.mem[11][6] ));
 sky130_fd_sc_hd__dfxtp_2 _591_ (.CLK(wclk),
    .D(_047_),
    .Q(\bram.mem[11][7] ));
 sky130_fd_sc_hd__dfxtp_2 _592_ (.CLK(wclk),
    .D(_048_),
    .Q(\bram.mem[10][0] ));
 sky130_fd_sc_hd__dfxtp_2 _593_ (.CLK(wclk),
    .D(_049_),
    .Q(\bram.mem[10][1] ));
 sky130_fd_sc_hd__dfxtp_2 _594_ (.CLK(wclk),
    .D(_050_),
    .Q(\bram.mem[10][2] ));
 sky130_fd_sc_hd__dfxtp_2 _595_ (.CLK(wclk),
    .D(_051_),
    .Q(\bram.mem[10][3] ));
 sky130_fd_sc_hd__dfxtp_2 _596_ (.CLK(wclk),
    .D(_052_),
    .Q(\bram.mem[10][4] ));
 sky130_fd_sc_hd__dfxtp_2 _597_ (.CLK(wclk),
    .D(_053_),
    .Q(\bram.mem[10][5] ));
 sky130_fd_sc_hd__dfxtp_2 _598_ (.CLK(wclk),
    .D(_054_),
    .Q(\bram.mem[10][6] ));
 sky130_fd_sc_hd__dfxtp_2 _599_ (.CLK(wclk),
    .D(_055_),
    .Q(\bram.mem[10][7] ));
 sky130_fd_sc_hd__dfxtp_2 _600_ (.CLK(wclk),
    .D(_056_),
    .Q(\bram.mem[7][0] ));
 sky130_fd_sc_hd__dfxtp_2 _601_ (.CLK(wclk),
    .D(_057_),
    .Q(\bram.mem[7][1] ));
 sky130_fd_sc_hd__dfxtp_2 _602_ (.CLK(wclk),
    .D(_058_),
    .Q(\bram.mem[7][2] ));
 sky130_fd_sc_hd__dfxtp_2 _603_ (.CLK(wclk),
    .D(_059_),
    .Q(\bram.mem[7][3] ));
 sky130_fd_sc_hd__dfxtp_2 _604_ (.CLK(wclk),
    .D(_060_),
    .Q(\bram.mem[7][4] ));
 sky130_fd_sc_hd__dfxtp_2 _605_ (.CLK(wclk),
    .D(_061_),
    .Q(\bram.mem[7][5] ));
 sky130_fd_sc_hd__dfxtp_2 _606_ (.CLK(wclk),
    .D(_062_),
    .Q(\bram.mem[7][6] ));
 sky130_fd_sc_hd__dfxtp_2 _607_ (.CLK(wclk),
    .D(_063_),
    .Q(\bram.mem[7][7] ));
 sky130_fd_sc_hd__dfxtp_2 _608_ (.CLK(wclk),
    .D(_064_),
    .Q(\bram.mem[8][0] ));
 sky130_fd_sc_hd__dfxtp_2 _609_ (.CLK(wclk),
    .D(_065_),
    .Q(\bram.mem[8][1] ));
 sky130_fd_sc_hd__dfxtp_2 _610_ (.CLK(wclk),
    .D(_066_),
    .Q(\bram.mem[8][2] ));
 sky130_fd_sc_hd__dfxtp_2 _611_ (.CLK(wclk),
    .D(_067_),
    .Q(\bram.mem[8][3] ));
 sky130_fd_sc_hd__dfxtp_2 _612_ (.CLK(wclk),
    .D(_068_),
    .Q(\bram.mem[8][4] ));
 sky130_fd_sc_hd__dfxtp_2 _613_ (.CLK(wclk),
    .D(_069_),
    .Q(\bram.mem[8][5] ));
 sky130_fd_sc_hd__dfxtp_2 _614_ (.CLK(wclk),
    .D(_070_),
    .Q(\bram.mem[8][6] ));
 sky130_fd_sc_hd__dfxtp_2 _615_ (.CLK(wclk),
    .D(_071_),
    .Q(\bram.mem[8][7] ));
 sky130_fd_sc_hd__dfxtp_2 _616_ (.CLK(wclk),
    .D(_072_),
    .Q(\bram.mem[0][0] ));
 sky130_fd_sc_hd__dfxtp_2 _617_ (.CLK(wclk),
    .D(_073_),
    .Q(\bram.mem[0][1] ));
 sky130_fd_sc_hd__dfxtp_2 _618_ (.CLK(wclk),
    .D(_074_),
    .Q(\bram.mem[0][2] ));
 sky130_fd_sc_hd__dfxtp_2 _619_ (.CLK(wclk),
    .D(_075_),
    .Q(\bram.mem[0][3] ));
 sky130_fd_sc_hd__dfxtp_2 _620_ (.CLK(wclk),
    .D(_076_),
    .Q(\bram.mem[0][4] ));
 sky130_fd_sc_hd__dfxtp_2 _621_ (.CLK(wclk),
    .D(_077_),
    .Q(\bram.mem[0][5] ));
 sky130_fd_sc_hd__dfxtp_2 _622_ (.CLK(wclk),
    .D(_078_),
    .Q(\bram.mem[0][6] ));
 sky130_fd_sc_hd__dfxtp_2 _623_ (.CLK(wclk),
    .D(_079_),
    .Q(\bram.mem[0][7] ));
 sky130_fd_sc_hd__dfrtp_2 _624_ (.CLK(wclk),
    .D(\u_wrptr_handler.b_wptr_next[0] ),
    .RESET_B(wrst_n),
    .Q(\bram.waddr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _625_ (.CLK(wclk),
    .D(\u_wrptr_handler.b_wptr_next[1] ),
    .RESET_B(wrst_n),
    .Q(\bram.waddr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _626_ (.CLK(wclk),
    .D(\u_wrptr_handler.b_wptr_next[2] ),
    .RESET_B(wrst_n),
    .Q(\bram.waddr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _627_ (.CLK(wclk),
    .D(\u_wrptr_handler.b_wptr_next[3] ),
    .RESET_B(wrst_n),
    .Q(\bram.waddr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _628_ (.CLK(wclk),
    .D(\u_wrptr_handler.b_wptr_next[4] ),
    .RESET_B(wrst_n),
    .Q(\sync_gwptr_to_rd.d1[4] ));
 sky130_fd_sc_hd__dfrtp_2 _629_ (.CLK(wclk),
    .D(\u_wrptr_handler.g_wptr_next[0] ),
    .RESET_B(wrst_n),
    .Q(\sync_gwptr_to_rd.d1[0] ));
 sky130_fd_sc_hd__dfrtp_2 _630_ (.CLK(wclk),
    .D(\u_wrptr_handler.g_wptr_next[1] ),
    .RESET_B(wrst_n),
    .Q(\sync_gwptr_to_rd.d1[1] ));
 sky130_fd_sc_hd__dfrtp_2 _631_ (.CLK(wclk),
    .D(\u_wrptr_handler.g_wptr_next[2] ),
    .RESET_B(wrst_n),
    .Q(\sync_gwptr_to_rd.d1[2] ));
 sky130_fd_sc_hd__dfrtp_2 _632_ (.CLK(wclk),
    .D(\u_wrptr_handler.g_wptr_next[3] ),
    .RESET_B(wrst_n),
    .Q(\sync_gwptr_to_rd.d1[3] ));
 sky130_fd_sc_hd__dfxtp_2 _633_ (.CLK(wclk),
    .D(_080_),
    .Q(\bram.mem[5][0] ));
 sky130_fd_sc_hd__dfxtp_2 _634_ (.CLK(wclk),
    .D(_081_),
    .Q(\bram.mem[5][1] ));
 sky130_fd_sc_hd__dfxtp_2 _635_ (.CLK(wclk),
    .D(_082_),
    .Q(\bram.mem[5][2] ));
 sky130_fd_sc_hd__dfxtp_2 _636_ (.CLK(wclk),
    .D(_083_),
    .Q(\bram.mem[5][3] ));
 sky130_fd_sc_hd__dfxtp_2 _637_ (.CLK(wclk),
    .D(_084_),
    .Q(\bram.mem[5][4] ));
 sky130_fd_sc_hd__dfxtp_2 _638_ (.CLK(wclk),
    .D(_085_),
    .Q(\bram.mem[5][5] ));
 sky130_fd_sc_hd__dfxtp_2 _639_ (.CLK(wclk),
    .D(_086_),
    .Q(\bram.mem[5][6] ));
 sky130_fd_sc_hd__dfxtp_2 _640_ (.CLK(wclk),
    .D(_087_),
    .Q(\bram.mem[5][7] ));
 sky130_fd_sc_hd__dfxtp_2 _641_ (.CLK(wclk),
    .D(_088_),
    .Q(\bram.mem[6][0] ));
 sky130_fd_sc_hd__dfxtp_2 _642_ (.CLK(wclk),
    .D(_089_),
    .Q(\bram.mem[6][1] ));
 sky130_fd_sc_hd__dfxtp_2 _643_ (.CLK(wclk),
    .D(_090_),
    .Q(\bram.mem[6][2] ));
 sky130_fd_sc_hd__dfxtp_2 _644_ (.CLK(wclk),
    .D(_091_),
    .Q(\bram.mem[6][3] ));
 sky130_fd_sc_hd__dfxtp_2 _645_ (.CLK(wclk),
    .D(_092_),
    .Q(\bram.mem[6][4] ));
 sky130_fd_sc_hd__dfxtp_2 _646_ (.CLK(wclk),
    .D(_093_),
    .Q(\bram.mem[6][5] ));
 sky130_fd_sc_hd__dfxtp_2 _647_ (.CLK(wclk),
    .D(_094_),
    .Q(\bram.mem[6][6] ));
 sky130_fd_sc_hd__dfxtp_2 _648_ (.CLK(wclk),
    .D(_095_),
    .Q(\bram.mem[6][7] ));
 sky130_fd_sc_hd__dfxtp_2 _649_ (.CLK(wclk),
    .D(_096_),
    .Q(\bram.mem[3][0] ));
 sky130_fd_sc_hd__dfxtp_2 _650_ (.CLK(wclk),
    .D(_097_),
    .Q(\bram.mem[3][1] ));
 sky130_fd_sc_hd__dfxtp_2 _651_ (.CLK(wclk),
    .D(_098_),
    .Q(\bram.mem[3][2] ));
 sky130_fd_sc_hd__dfxtp_2 _652_ (.CLK(wclk),
    .D(_099_),
    .Q(\bram.mem[3][3] ));
 sky130_fd_sc_hd__dfxtp_2 _653_ (.CLK(wclk),
    .D(_100_),
    .Q(\bram.mem[3][4] ));
 sky130_fd_sc_hd__dfxtp_2 _654_ (.CLK(wclk),
    .D(_101_),
    .Q(\bram.mem[3][5] ));
 sky130_fd_sc_hd__dfxtp_2 _655_ (.CLK(wclk),
    .D(_102_),
    .Q(\bram.mem[3][6] ));
 sky130_fd_sc_hd__dfxtp_2 _656_ (.CLK(wclk),
    .D(_103_),
    .Q(\bram.mem[3][7] ));
 sky130_fd_sc_hd__dfrtp_2 _657_ (.CLK(rclk),
    .D(\u_rptr_handler.b_rptr_next[0] ),
    .RESET_B(rrst_n),
    .Q(\bram.raddr[0] ));
 sky130_fd_sc_hd__dfrtp_2 _658_ (.CLK(rclk),
    .D(\u_rptr_handler.b_rptr_next[1] ),
    .RESET_B(rrst_n),
    .Q(\bram.raddr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _659_ (.CLK(rclk),
    .D(\u_rptr_handler.b_rptr_next[2] ),
    .RESET_B(rrst_n),
    .Q(\bram.raddr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _660_ (.CLK(rclk),
    .D(\u_rptr_handler.b_rptr_next[3] ),
    .RESET_B(rrst_n),
    .Q(\bram.raddr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _661_ (.CLK(rclk),
    .D(\u_rptr_handler.b_rptr_next[4] ),
    .RESET_B(rrst_n),
    .Q(\r_ptr_bin[4] ));
 sky130_fd_sc_hd__dfrtp_2 _662_ (.CLK(rclk),
    .D(\u_rptr_handler.g_rptr_next[0] ),
    .RESET_B(rrst_n),
    .Q(\r_ptr_gray[0] ));
 sky130_fd_sc_hd__dfrtp_2 _663_ (.CLK(rclk),
    .D(\u_rptr_handler.g_rptr_next[1] ),
    .RESET_B(rrst_n),
    .Q(\r_ptr_gray[1] ));
 sky130_fd_sc_hd__dfrtp_2 _664_ (.CLK(rclk),
    .D(\u_rptr_handler.g_rptr_next[2] ),
    .RESET_B(rrst_n),
    .Q(\r_ptr_gray[2] ));
 sky130_fd_sc_hd__dfrtp_2 _665_ (.CLK(rclk),
    .D(\u_rptr_handler.g_rptr_next[3] ),
    .RESET_B(rrst_n),
    .Q(\r_ptr_gray[3] ));
 sky130_fd_sc_hd__dfxtp_2 _666_ (.CLK(wclk),
    .D(_104_),
    .Q(\bram.mem[4][0] ));
 sky130_fd_sc_hd__dfxtp_2 _667_ (.CLK(wclk),
    .D(_105_),
    .Q(\bram.mem[4][1] ));
 sky130_fd_sc_hd__dfxtp_2 _668_ (.CLK(wclk),
    .D(_106_),
    .Q(\bram.mem[4][2] ));
 sky130_fd_sc_hd__dfxtp_2 _669_ (.CLK(wclk),
    .D(_107_),
    .Q(\bram.mem[4][3] ));
 sky130_fd_sc_hd__dfxtp_2 _670_ (.CLK(wclk),
    .D(_108_),
    .Q(\bram.mem[4][4] ));
 sky130_fd_sc_hd__dfxtp_2 _671_ (.CLK(wclk),
    .D(_109_),
    .Q(\bram.mem[4][5] ));
 sky130_fd_sc_hd__dfxtp_2 _672_ (.CLK(wclk),
    .D(_110_),
    .Q(\bram.mem[4][6] ));
 sky130_fd_sc_hd__dfxtp_2 _673_ (.CLK(wclk),
    .D(_111_),
    .Q(\bram.mem[4][7] ));
 sky130_fd_sc_hd__dfxtp_2 _674_ (.CLK(wclk),
    .D(_112_),
    .Q(\bram.mem[1][0] ));
 sky130_fd_sc_hd__dfxtp_2 _675_ (.CLK(wclk),
    .D(_113_),
    .Q(\bram.mem[1][1] ));
 sky130_fd_sc_hd__dfxtp_2 _676_ (.CLK(wclk),
    .D(_114_),
    .Q(\bram.mem[1][2] ));
 sky130_fd_sc_hd__dfxtp_2 _677_ (.CLK(wclk),
    .D(_115_),
    .Q(\bram.mem[1][3] ));
 sky130_fd_sc_hd__dfxtp_2 _678_ (.CLK(wclk),
    .D(_116_),
    .Q(\bram.mem[1][4] ));
 sky130_fd_sc_hd__dfxtp_2 _679_ (.CLK(wclk),
    .D(_117_),
    .Q(\bram.mem[1][5] ));
 sky130_fd_sc_hd__dfxtp_2 _680_ (.CLK(wclk),
    .D(_118_),
    .Q(\bram.mem[1][6] ));
 sky130_fd_sc_hd__dfxtp_2 _681_ (.CLK(wclk),
    .D(_119_),
    .Q(\bram.mem[1][7] ));
 sky130_fd_sc_hd__dfxtp_2 _682_ (.CLK(wclk),
    .D(_120_),
    .Q(\bram.mem[15][0] ));
 sky130_fd_sc_hd__dfxtp_2 _683_ (.CLK(wclk),
    .D(_121_),
    .Q(\bram.mem[15][1] ));
 sky130_fd_sc_hd__dfxtp_2 _684_ (.CLK(wclk),
    .D(_122_),
    .Q(\bram.mem[15][2] ));
 sky130_fd_sc_hd__dfxtp_2 _685_ (.CLK(wclk),
    .D(_123_),
    .Q(\bram.mem[15][3] ));
 sky130_fd_sc_hd__dfxtp_2 _686_ (.CLK(wclk),
    .D(_124_),
    .Q(\bram.mem[15][4] ));
 sky130_fd_sc_hd__dfxtp_2 _687_ (.CLK(wclk),
    .D(_125_),
    .Q(\bram.mem[15][5] ));
 sky130_fd_sc_hd__dfxtp_2 _688_ (.CLK(wclk),
    .D(_126_),
    .Q(\bram.mem[15][6] ));
 sky130_fd_sc_hd__dfxtp_2 _689_ (.CLK(wclk),
    .D(_127_),
    .Q(\bram.mem[15][7] ));
 sky130_fd_sc_hd__dfxtp_2 _690_ (.CLK(wclk),
    .D(_128_),
    .Q(\bram.mem[2][0] ));
 sky130_fd_sc_hd__dfxtp_2 _691_ (.CLK(wclk),
    .D(_129_),
    .Q(\bram.mem[2][1] ));
 sky130_fd_sc_hd__dfxtp_2 _692_ (.CLK(wclk),
    .D(_130_),
    .Q(\bram.mem[2][2] ));
 sky130_fd_sc_hd__dfxtp_2 _693_ (.CLK(wclk),
    .D(_131_),
    .Q(\bram.mem[2][3] ));
 sky130_fd_sc_hd__dfxtp_2 _694_ (.CLK(wclk),
    .D(_132_),
    .Q(\bram.mem[2][4] ));
 sky130_fd_sc_hd__dfxtp_2 _695_ (.CLK(wclk),
    .D(_133_),
    .Q(\bram.mem[2][5] ));
 sky130_fd_sc_hd__dfxtp_2 _696_ (.CLK(wclk),
    .D(_134_),
    .Q(\bram.mem[2][6] ));
 sky130_fd_sc_hd__dfxtp_2 _697_ (.CLK(wclk),
    .D(_135_),
    .Q(\bram.mem[2][7] ));
endmodule
