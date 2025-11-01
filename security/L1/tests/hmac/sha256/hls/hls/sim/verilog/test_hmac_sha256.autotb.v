// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      test_hmac_sha256
`define AUTOTB_DUT_INST AESL_inst_test_hmac_sha256
`define AUTOTB_TOP      apatb_test_hmac_sha256_top
`define AUTOTB_LAT_RESULT_FILE "test_hmac_sha256.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "test_hmac_sha256.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_test_hmac_sha256_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 4.50

`define AESL_FIFO_keyStrm AESL_autofifo_keyStrm
`define AESL_FIFO_INST_keyStrm AESL_autofifo_inst_keyStrm
`define AESL_FIFO_msgStrm AESL_autofifo_msgStrm
`define AESL_FIFO_INST_msgStrm AESL_autofifo_inst_msgStrm
`define AESL_FIFO_lenStrm AESL_autofifo_lenStrm
`define AESL_FIFO_INST_lenStrm AESL_autofifo_inst_lenStrm
`define AESL_FIFO_eLenStrm AESL_autofifo_eLenStrm
`define AESL_FIFO_INST_eLenStrm AESL_autofifo_inst_eLenStrm
`define AESL_FIFO_hshStrm AESL_autofifo_hshStrm
`define AESL_FIFO_INST_hshStrm AESL_autofifo_inst_hshStrm
`define AESL_FIFO_eHshStrm AESL_autofifo_eHshStrm
`define AESL_FIFO_INST_eHshStrm AESL_autofifo_inst_eHshStrm
`define AUTOTB_TVIN_keyStrm  "../tv/cdatafile/c.test_hmac_sha256.autotvin_keyStrm.dat"
`define AUTOTB_TVIN_msgStrm  "../tv/cdatafile/c.test_hmac_sha256.autotvin_msgStrm.dat"
`define AUTOTB_TVIN_lenStrm  "../tv/cdatafile/c.test_hmac_sha256.autotvin_lenStrm.dat"
`define AUTOTB_TVIN_eLenStrm  "../tv/cdatafile/c.test_hmac_sha256.autotvin_eLenStrm.dat"
`define AUTOTB_TVIN_keyStrm_out_wrapc  "../tv/rtldatafile/rtl.test_hmac_sha256.autotvin_keyStrm.dat"
`define AUTOTB_TVIN_msgStrm_out_wrapc  "../tv/rtldatafile/rtl.test_hmac_sha256.autotvin_msgStrm.dat"
`define AUTOTB_TVIN_lenStrm_out_wrapc  "../tv/rtldatafile/rtl.test_hmac_sha256.autotvin_lenStrm.dat"
`define AUTOTB_TVIN_eLenStrm_out_wrapc  "../tv/rtldatafile/rtl.test_hmac_sha256.autotvin_eLenStrm.dat"
`define AUTOTB_TVOUT_hshStrm  "../tv/cdatafile/c.test_hmac_sha256.autotvout_hshStrm.dat"
`define AUTOTB_TVOUT_eHshStrm  "../tv/cdatafile/c.test_hmac_sha256.autotvout_eHshStrm.dat"
`define AUTOTB_TVOUT_hshStrm_out_wrapc  "../tv/rtldatafile/rtl.test_hmac_sha256.autotvout_hshStrm.dat"
`define AUTOTB_TVOUT_eHshStrm_out_wrapc  "../tv/rtldatafile/rtl.test_hmac_sha256.autotvout_eHshStrm.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_eHshStrm = 3;
parameter LENGTH_eLenStrm = 3;
parameter LENGTH_hshStrm = 2;
parameter LENGTH_keyStrm = 16;
parameter LENGTH_lenStrm = 2;
parameter LENGTH_msgStrm = 41;

task read_token;
    input integer fp;
    output reg [535 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] keyStrm_dout;
wire  keyStrm_empty_n;
wire  keyStrm_read;
wire [31 : 0] msgStrm_dout;
wire  msgStrm_empty_n;
wire  msgStrm_read;
wire [63 : 0] lenStrm_dout;
wire  lenStrm_empty_n;
wire  lenStrm_read;
wire [0 : 0] eLenStrm_dout;
wire  eLenStrm_empty_n;
wire  eLenStrm_read;
wire [255 : 0] hshStrm_din;
wire  hshStrm_full_n;
wire  hshStrm_write;
wire [0 : 0] eHshStrm_din;
wire  eHshStrm_full_n;
wire  eHshStrm_write;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .keyStrm_dout(keyStrm_dout),
    .keyStrm_empty_n(keyStrm_empty_n),
    .keyStrm_read(keyStrm_read),
    .msgStrm_dout(msgStrm_dout),
    .msgStrm_empty_n(msgStrm_empty_n),
    .msgStrm_read(msgStrm_read),
    .lenStrm_dout(lenStrm_dout),
    .lenStrm_empty_n(lenStrm_empty_n),
    .lenStrm_read(lenStrm_read),
    .eLenStrm_dout(eLenStrm_dout),
    .eLenStrm_empty_n(eLenStrm_empty_n),
    .eLenStrm_read(eLenStrm_read),
    .hshStrm_din(hshStrm_din),
    .hshStrm_full_n(hshStrm_full_n),
    .hshStrm_write(hshStrm_write),
    .eHshStrm_din(eHshStrm_din),
    .eHshStrm_full_n(eHshStrm_full_n),
    .eHshStrm_write(eHshStrm_write));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation keyStrm

wire fifokeyStrm_rd;
wire [31 : 0] fifokeyStrm_dout;
wire fifokeyStrm_empty_n;
wire fifokeyStrm_ready;
wire fifokeyStrm_done;
reg [31:0] ap_c_n_tvin_trans_num_keyStrm;
reg keyStrm_ready_reg;

`AESL_FIFO_keyStrm `AESL_FIFO_INST_keyStrm (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifokeyStrm_rd),
    .if_dout      (fifokeyStrm_dout),
    .if_empty_n   (fifokeyStrm_empty_n),
    .ready        (fifokeyStrm_ready),
    .done         (fifokeyStrm_done)
);

// Assignment between dut and fifokeyStrm

// Assign input of fifokeyStrm
assign      fifokeyStrm_rd        =   keyStrm_read & keyStrm_empty_n;
assign    fifokeyStrm_ready   =   keyStrm_ready_reg | ready_initial;
assign    fifokeyStrm_done    =   0;
// Assign input of dut
assign      keyStrm_dout       =   fifokeyStrm_dout;
reg   reg_fifokeyStrm_empty_n;
initial begin : gen_reg_fifokeyStrm_empty_n_process
    integer proc_rand;
    reg_fifokeyStrm_empty_n = fifokeyStrm_empty_n;
    while (1) begin
        @ (fifokeyStrm_empty_n);
        reg_fifokeyStrm_empty_n = fifokeyStrm_empty_n;
    end
end

assign      keyStrm_empty_n    =   reg_fifokeyStrm_empty_n;


// Fifo Instantiation msgStrm

wire fifomsgStrm_rd;
wire [31 : 0] fifomsgStrm_dout;
wire fifomsgStrm_empty_n;
wire fifomsgStrm_ready;
wire fifomsgStrm_done;
reg [31:0] ap_c_n_tvin_trans_num_msgStrm;
reg msgStrm_ready_reg;

`AESL_FIFO_msgStrm `AESL_FIFO_INST_msgStrm (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifomsgStrm_rd),
    .if_dout      (fifomsgStrm_dout),
    .if_empty_n   (fifomsgStrm_empty_n),
    .ready        (fifomsgStrm_ready),
    .done         (fifomsgStrm_done)
);

// Assignment between dut and fifomsgStrm

// Assign input of fifomsgStrm
assign      fifomsgStrm_rd        =   msgStrm_read & msgStrm_empty_n;
assign    fifomsgStrm_ready   =   msgStrm_ready_reg | ready_initial;
assign    fifomsgStrm_done    =   0;
// Assign input of dut
assign      msgStrm_dout       =   fifomsgStrm_dout;
reg   reg_fifomsgStrm_empty_n;
initial begin : gen_reg_fifomsgStrm_empty_n_process
    integer proc_rand;
    reg_fifomsgStrm_empty_n = fifomsgStrm_empty_n;
    while (1) begin
        @ (fifomsgStrm_empty_n);
        reg_fifomsgStrm_empty_n = fifomsgStrm_empty_n;
    end
end

assign      msgStrm_empty_n    =   reg_fifomsgStrm_empty_n;


// Fifo Instantiation lenStrm

wire fifolenStrm_rd;
wire [63 : 0] fifolenStrm_dout;
wire fifolenStrm_empty_n;
wire fifolenStrm_ready;
wire fifolenStrm_done;
reg [31:0] ap_c_n_tvin_trans_num_lenStrm;
reg lenStrm_ready_reg;

`AESL_FIFO_lenStrm `AESL_FIFO_INST_lenStrm (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifolenStrm_rd),
    .if_dout      (fifolenStrm_dout),
    .if_empty_n   (fifolenStrm_empty_n),
    .ready        (fifolenStrm_ready),
    .done         (fifolenStrm_done)
);

// Assignment between dut and fifolenStrm

// Assign input of fifolenStrm
assign      fifolenStrm_rd        =   lenStrm_read & lenStrm_empty_n;
assign    fifolenStrm_ready   =   lenStrm_ready_reg | ready_initial;
assign    fifolenStrm_done    =   0;
// Assign input of dut
assign      lenStrm_dout       =   fifolenStrm_dout;
reg   reg_fifolenStrm_empty_n;
initial begin : gen_reg_fifolenStrm_empty_n_process
    integer proc_rand;
    reg_fifolenStrm_empty_n = fifolenStrm_empty_n;
    while (1) begin
        @ (fifolenStrm_empty_n);
        reg_fifolenStrm_empty_n = fifolenStrm_empty_n;
    end
end

assign      lenStrm_empty_n    =   reg_fifolenStrm_empty_n;


// Fifo Instantiation eLenStrm

wire fifoeLenStrm_rd;
wire [0 : 0] fifoeLenStrm_dout;
wire fifoeLenStrm_empty_n;
wire fifoeLenStrm_ready;
wire fifoeLenStrm_done;
reg [31:0] ap_c_n_tvin_trans_num_eLenStrm;
reg eLenStrm_ready_reg;

`AESL_FIFO_eLenStrm `AESL_FIFO_INST_eLenStrm (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoeLenStrm_rd),
    .if_dout      (fifoeLenStrm_dout),
    .if_empty_n   (fifoeLenStrm_empty_n),
    .ready        (fifoeLenStrm_ready),
    .done         (fifoeLenStrm_done)
);

// Assignment between dut and fifoeLenStrm

// Assign input of fifoeLenStrm
assign      fifoeLenStrm_rd        =   eLenStrm_read & eLenStrm_empty_n;
assign    fifoeLenStrm_ready   =   eLenStrm_ready_reg | ready_initial;
assign    fifoeLenStrm_done    =   0;
// Assign input of dut
assign      eLenStrm_dout       =   fifoeLenStrm_dout;
reg   reg_fifoeLenStrm_empty_n;
initial begin : gen_reg_fifoeLenStrm_empty_n_process
    integer proc_rand;
    reg_fifoeLenStrm_empty_n = fifoeLenStrm_empty_n;
    while (1) begin
        @ (fifoeLenStrm_empty_n);
        reg_fifoeLenStrm_empty_n = fifoeLenStrm_empty_n;
    end
end

assign      eLenStrm_empty_n    =   reg_fifoeLenStrm_empty_n;


//------------------------FifohshStrm Instantiation--------------

// The input and output of fifohshStrm
wire  fifohshStrm_wr;
wire  [255 : 0] fifohshStrm_din;
wire  fifohshStrm_full_n;
wire  fifohshStrm_ready;
wire  fifohshStrm_done;

`AESL_FIFO_hshStrm `AESL_FIFO_INST_hshStrm(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifohshStrm_wr),
    .if_din       (fifohshStrm_din),
    .if_full_n    (fifohshStrm_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifohshStrm_ready),
    .done         (fifohshStrm_done)
);

// Assignment between dut and fifohshStrm

// Assign input of fifohshStrm
assign      fifohshStrm_wr        =   hshStrm_write & hshStrm_full_n;
assign      fifohshStrm_din        =   hshStrm_din;
assign    fifohshStrm_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifohshStrm_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifohshStrm_full_n;
initial begin : gen_reg_fifohshStrm_full_n_process
    integer proc_rand;
    reg_fifohshStrm_full_n = fifohshStrm_full_n;
    while (1) begin
        @ (fifohshStrm_full_n);
        reg_fifohshStrm_full_n = fifohshStrm_full_n;
    end
end

assign      hshStrm_full_n    =   reg_fifohshStrm_full_n;


//------------------------FifoeHshStrm Instantiation--------------

// The input and output of fifoeHshStrm
wire  fifoeHshStrm_wr;
wire  [0 : 0] fifoeHshStrm_din;
wire  fifoeHshStrm_full_n;
wire  fifoeHshStrm_ready;
wire  fifoeHshStrm_done;

`AESL_FIFO_eHshStrm `AESL_FIFO_INST_eHshStrm(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoeHshStrm_wr),
    .if_din       (fifoeHshStrm_din),
    .if_full_n    (fifoeHshStrm_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoeHshStrm_ready),
    .done         (fifoeHshStrm_done)
);

// Assignment between dut and fifoeHshStrm

// Assign input of fifoeHshStrm
assign      fifoeHshStrm_wr        =   eHshStrm_write & eHshStrm_full_n;
assign      fifoeHshStrm_din        =   eHshStrm_din;
assign    fifoeHshStrm_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoeHshStrm_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoeHshStrm_full_n;
initial begin : gen_reg_fifoeHshStrm_full_n_process
    integer proc_rand;
    reg_fifoeHshStrm_full_n = fifoeHshStrm_full_n;
    while (1) begin
        @ (fifoeHshStrm_full_n);
        reg_fifoeHshStrm_full_n = fifoeHshStrm_full_n;
    end
end

assign      eHshStrm_full_n    =   reg_fifoeHshStrm_full_n;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_keyStrm;
reg [31:0] size_keyStrm;
reg [31:0] size_keyStrm_backup;
reg end_msgStrm;
reg [31:0] size_msgStrm;
reg [31:0] size_msgStrm_backup;
reg end_lenStrm;
reg [31:0] size_lenStrm;
reg [31:0] size_lenStrm_backup;
reg end_eLenStrm;
reg [31:0] size_eLenStrm;
reg [31:0] size_eLenStrm_backup;
reg end_hshStrm;
reg [31:0] size_hshStrm;
reg [31:0] size_hshStrm_backup;
reg end_eHshStrm;
reg [31:0] size_eHshStrm;
reg [31:0] size_eHshStrm_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_keyStrm_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    keyStrm_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_keyStrm > internal_trans_num) begin
            keyStrm_ready_reg <= 1;
            @(posedge AESL_clock);
            keyStrm_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    keyStrm_ready_reg <= 0;
end
initial begin : proc_gen_msgStrm_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    msgStrm_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_msgStrm > internal_trans_num) begin
            msgStrm_ready_reg <= 1;
            @(posedge AESL_clock);
            msgStrm_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    msgStrm_ready_reg <= 0;
end
initial begin : proc_gen_lenStrm_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    lenStrm_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_lenStrm > internal_trans_num) begin
            lenStrm_ready_reg <= 1;
            @(posedge AESL_clock);
            lenStrm_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    lenStrm_ready_reg <= 0;
end
initial begin : proc_gen_eLenStrm_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    eLenStrm_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_eLenStrm > internal_trans_num) begin
            eLenStrm_ready_reg <= 1;
            @(posedge AESL_clock);
            eLenStrm_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    eLenStrm_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_keyStrm "../tv/stream_size/stream_size_in_keyStrm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_keyStrm
        integer fp_keyStrm;
        reg [127:0] token_keyStrm;
        integer ret;
        
        ap_c_n_tvin_trans_num_keyStrm = 0;
        end_keyStrm = 0;
        wait (AESL_reset === 0);
        
        fp_keyStrm = $fopen(`STREAM_SIZE_IN_keyStrm, "r");
        if(fp_keyStrm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_keyStrm);
            $finish;
        end
        read_token(fp_keyStrm, token_keyStrm); // should be [[[runtime]]]
        if (token_keyStrm != "[[[runtime]]]") begin
            $display("ERROR: token_keyStrm != \"[[[runtime]]]\"");
            $finish;
        end
        size_keyStrm = 0;
        size_keyStrm_backup = 0;
        while (size_keyStrm == 0 && end_keyStrm == 0) begin
            ap_c_n_tvin_trans_num_keyStrm = ap_c_n_tvin_trans_num_keyStrm + 1;
            read_token(fp_keyStrm, token_keyStrm); // should be [[transaction]] or [[[/runtime]]]
            if (token_keyStrm == "[[transaction]]") begin
                read_token(fp_keyStrm, token_keyStrm); // should be transaction number
                read_token(fp_keyStrm, token_keyStrm); // should be size for hls::stream
                ret = $sscanf(token_keyStrm, "%d", size_keyStrm);
                if (size_keyStrm > 0) begin
                    size_keyStrm_backup = size_keyStrm;
                end
                read_token(fp_keyStrm, token_keyStrm); // should be [[/transaction]]
            end else if (token_keyStrm == "[[[/runtime]]]") begin
                $fclose(fp_keyStrm);
                end_keyStrm = 1;
            end else begin
                $display("ERROR: unknown token_keyStrm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_keyStrm == 0) begin
                if (keyStrm_read == 1 && keyStrm_empty_n == 1) begin
                    if (size_keyStrm > 0) begin
                        size_keyStrm = size_keyStrm - 1;
                        while (size_keyStrm == 0 && end_keyStrm == 0) begin
                            ap_c_n_tvin_trans_num_keyStrm = ap_c_n_tvin_trans_num_keyStrm + 1;
                            read_token(fp_keyStrm, token_keyStrm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_keyStrm == "[[transaction]]") begin
                                read_token(fp_keyStrm, token_keyStrm); // should be transaction number
                                read_token(fp_keyStrm, token_keyStrm); // should be size for hls::stream
                                ret = $sscanf(token_keyStrm, "%d", size_keyStrm);
                                if (size_keyStrm > 0) begin
                                    size_keyStrm_backup = size_keyStrm;
                                end
                                read_token(fp_keyStrm, token_keyStrm); // should be [[/transaction]]
                            end else if (token_keyStrm == "[[[/runtime]]]") begin
                                size_keyStrm = size_keyStrm_backup;
                                $fclose(fp_keyStrm);
                                end_keyStrm = 1;
                            end else begin
                                $display("ERROR: unknown token_keyStrm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (keyStrm_read == 1 && keyStrm_empty_n == 1) begin
                    if (size_keyStrm > 0) begin
                        size_keyStrm = size_keyStrm - 1;
                        if (size_keyStrm == 0) begin
                            ap_c_n_tvin_trans_num_keyStrm = ap_c_n_tvin_trans_num_keyStrm + 1;
                            size_keyStrm = size_keyStrm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_msgStrm "../tv/stream_size/stream_size_in_msgStrm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_msgStrm
        integer fp_msgStrm;
        reg [127:0] token_msgStrm;
        integer ret;
        
        ap_c_n_tvin_trans_num_msgStrm = 0;
        end_msgStrm = 0;
        wait (AESL_reset === 0);
        
        fp_msgStrm = $fopen(`STREAM_SIZE_IN_msgStrm, "r");
        if(fp_msgStrm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_msgStrm);
            $finish;
        end
        read_token(fp_msgStrm, token_msgStrm); // should be [[[runtime]]]
        if (token_msgStrm != "[[[runtime]]]") begin
            $display("ERROR: token_msgStrm != \"[[[runtime]]]\"");
            $finish;
        end
        size_msgStrm = 0;
        size_msgStrm_backup = 0;
        while (size_msgStrm == 0 && end_msgStrm == 0) begin
            ap_c_n_tvin_trans_num_msgStrm = ap_c_n_tvin_trans_num_msgStrm + 1;
            read_token(fp_msgStrm, token_msgStrm); // should be [[transaction]] or [[[/runtime]]]
            if (token_msgStrm == "[[transaction]]") begin
                read_token(fp_msgStrm, token_msgStrm); // should be transaction number
                read_token(fp_msgStrm, token_msgStrm); // should be size for hls::stream
                ret = $sscanf(token_msgStrm, "%d", size_msgStrm);
                if (size_msgStrm > 0) begin
                    size_msgStrm_backup = size_msgStrm;
                end
                read_token(fp_msgStrm, token_msgStrm); // should be [[/transaction]]
            end else if (token_msgStrm == "[[[/runtime]]]") begin
                $fclose(fp_msgStrm);
                end_msgStrm = 1;
            end else begin
                $display("ERROR: unknown token_msgStrm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_msgStrm == 0) begin
                if (msgStrm_read == 1 && msgStrm_empty_n == 1) begin
                    if (size_msgStrm > 0) begin
                        size_msgStrm = size_msgStrm - 1;
                        while (size_msgStrm == 0 && end_msgStrm == 0) begin
                            ap_c_n_tvin_trans_num_msgStrm = ap_c_n_tvin_trans_num_msgStrm + 1;
                            read_token(fp_msgStrm, token_msgStrm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_msgStrm == "[[transaction]]") begin
                                read_token(fp_msgStrm, token_msgStrm); // should be transaction number
                                read_token(fp_msgStrm, token_msgStrm); // should be size for hls::stream
                                ret = $sscanf(token_msgStrm, "%d", size_msgStrm);
                                if (size_msgStrm > 0) begin
                                    size_msgStrm_backup = size_msgStrm;
                                end
                                read_token(fp_msgStrm, token_msgStrm); // should be [[/transaction]]
                            end else if (token_msgStrm == "[[[/runtime]]]") begin
                                size_msgStrm = size_msgStrm_backup;
                                $fclose(fp_msgStrm);
                                end_msgStrm = 1;
                            end else begin
                                $display("ERROR: unknown token_msgStrm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (msgStrm_read == 1 && msgStrm_empty_n == 1) begin
                    if (size_msgStrm > 0) begin
                        size_msgStrm = size_msgStrm - 1;
                        if (size_msgStrm == 0) begin
                            ap_c_n_tvin_trans_num_msgStrm = ap_c_n_tvin_trans_num_msgStrm + 1;
                            size_msgStrm = size_msgStrm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_lenStrm "../tv/stream_size/stream_size_in_lenStrm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_lenStrm
        integer fp_lenStrm;
        reg [127:0] token_lenStrm;
        integer ret;
        
        ap_c_n_tvin_trans_num_lenStrm = 0;
        end_lenStrm = 0;
        wait (AESL_reset === 0);
        
        fp_lenStrm = $fopen(`STREAM_SIZE_IN_lenStrm, "r");
        if(fp_lenStrm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_lenStrm);
            $finish;
        end
        read_token(fp_lenStrm, token_lenStrm); // should be [[[runtime]]]
        if (token_lenStrm != "[[[runtime]]]") begin
            $display("ERROR: token_lenStrm != \"[[[runtime]]]\"");
            $finish;
        end
        size_lenStrm = 0;
        size_lenStrm_backup = 0;
        while (size_lenStrm == 0 && end_lenStrm == 0) begin
            ap_c_n_tvin_trans_num_lenStrm = ap_c_n_tvin_trans_num_lenStrm + 1;
            read_token(fp_lenStrm, token_lenStrm); // should be [[transaction]] or [[[/runtime]]]
            if (token_lenStrm == "[[transaction]]") begin
                read_token(fp_lenStrm, token_lenStrm); // should be transaction number
                read_token(fp_lenStrm, token_lenStrm); // should be size for hls::stream
                ret = $sscanf(token_lenStrm, "%d", size_lenStrm);
                if (size_lenStrm > 0) begin
                    size_lenStrm_backup = size_lenStrm;
                end
                read_token(fp_lenStrm, token_lenStrm); // should be [[/transaction]]
            end else if (token_lenStrm == "[[[/runtime]]]") begin
                $fclose(fp_lenStrm);
                end_lenStrm = 1;
            end else begin
                $display("ERROR: unknown token_lenStrm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_lenStrm == 0) begin
                if (lenStrm_read == 1 && lenStrm_empty_n == 1) begin
                    if (size_lenStrm > 0) begin
                        size_lenStrm = size_lenStrm - 1;
                        while (size_lenStrm == 0 && end_lenStrm == 0) begin
                            ap_c_n_tvin_trans_num_lenStrm = ap_c_n_tvin_trans_num_lenStrm + 1;
                            read_token(fp_lenStrm, token_lenStrm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_lenStrm == "[[transaction]]") begin
                                read_token(fp_lenStrm, token_lenStrm); // should be transaction number
                                read_token(fp_lenStrm, token_lenStrm); // should be size for hls::stream
                                ret = $sscanf(token_lenStrm, "%d", size_lenStrm);
                                if (size_lenStrm > 0) begin
                                    size_lenStrm_backup = size_lenStrm;
                                end
                                read_token(fp_lenStrm, token_lenStrm); // should be [[/transaction]]
                            end else if (token_lenStrm == "[[[/runtime]]]") begin
                                size_lenStrm = size_lenStrm_backup;
                                $fclose(fp_lenStrm);
                                end_lenStrm = 1;
                            end else begin
                                $display("ERROR: unknown token_lenStrm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (lenStrm_read == 1 && lenStrm_empty_n == 1) begin
                    if (size_lenStrm > 0) begin
                        size_lenStrm = size_lenStrm - 1;
                        if (size_lenStrm == 0) begin
                            ap_c_n_tvin_trans_num_lenStrm = ap_c_n_tvin_trans_num_lenStrm + 1;
                            size_lenStrm = size_lenStrm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_eLenStrm "../tv/stream_size/stream_size_in_eLenStrm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_eLenStrm
        integer fp_eLenStrm;
        reg [127:0] token_eLenStrm;
        integer ret;
        
        ap_c_n_tvin_trans_num_eLenStrm = 0;
        end_eLenStrm = 0;
        wait (AESL_reset === 0);
        
        fp_eLenStrm = $fopen(`STREAM_SIZE_IN_eLenStrm, "r");
        if(fp_eLenStrm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_eLenStrm);
            $finish;
        end
        read_token(fp_eLenStrm, token_eLenStrm); // should be [[[runtime]]]
        if (token_eLenStrm != "[[[runtime]]]") begin
            $display("ERROR: token_eLenStrm != \"[[[runtime]]]\"");
            $finish;
        end
        size_eLenStrm = 0;
        size_eLenStrm_backup = 0;
        while (size_eLenStrm == 0 && end_eLenStrm == 0) begin
            ap_c_n_tvin_trans_num_eLenStrm = ap_c_n_tvin_trans_num_eLenStrm + 1;
            read_token(fp_eLenStrm, token_eLenStrm); // should be [[transaction]] or [[[/runtime]]]
            if (token_eLenStrm == "[[transaction]]") begin
                read_token(fp_eLenStrm, token_eLenStrm); // should be transaction number
                read_token(fp_eLenStrm, token_eLenStrm); // should be size for hls::stream
                ret = $sscanf(token_eLenStrm, "%d", size_eLenStrm);
                if (size_eLenStrm > 0) begin
                    size_eLenStrm_backup = size_eLenStrm;
                end
                read_token(fp_eLenStrm, token_eLenStrm); // should be [[/transaction]]
            end else if (token_eLenStrm == "[[[/runtime]]]") begin
                $fclose(fp_eLenStrm);
                end_eLenStrm = 1;
            end else begin
                $display("ERROR: unknown token_eLenStrm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_eLenStrm == 0) begin
                if (eLenStrm_read == 1 && eLenStrm_empty_n == 1) begin
                    if (size_eLenStrm > 0) begin
                        size_eLenStrm = size_eLenStrm - 1;
                        while (size_eLenStrm == 0 && end_eLenStrm == 0) begin
                            ap_c_n_tvin_trans_num_eLenStrm = ap_c_n_tvin_trans_num_eLenStrm + 1;
                            read_token(fp_eLenStrm, token_eLenStrm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_eLenStrm == "[[transaction]]") begin
                                read_token(fp_eLenStrm, token_eLenStrm); // should be transaction number
                                read_token(fp_eLenStrm, token_eLenStrm); // should be size for hls::stream
                                ret = $sscanf(token_eLenStrm, "%d", size_eLenStrm);
                                if (size_eLenStrm > 0) begin
                                    size_eLenStrm_backup = size_eLenStrm;
                                end
                                read_token(fp_eLenStrm, token_eLenStrm); // should be [[/transaction]]
                            end else if (token_eLenStrm == "[[[/runtime]]]") begin
                                size_eLenStrm = size_eLenStrm_backup;
                                $fclose(fp_eLenStrm);
                                end_eLenStrm = 1;
                            end else begin
                                $display("ERROR: unknown token_eLenStrm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (eLenStrm_read == 1 && eLenStrm_empty_n == 1) begin
                    if (size_eLenStrm > 0) begin
                        size_eLenStrm = size_eLenStrm - 1;
                        if (size_eLenStrm == 0) begin
                            ap_c_n_tvin_trans_num_eLenStrm = ap_c_n_tvin_trans_num_eLenStrm + 1;
                            size_eLenStrm = size_eLenStrm_backup;
                        end
                    end
                end
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_hshStrm;

initial begin : dump_tvout_runtime_sign_hshStrm
    integer fp;
    dump_tvout_finish_hshStrm = 0;
    fp = $fopen(`AUTOTB_TVOUT_hshStrm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_hshStrm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_hshStrm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_hshStrm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_hshStrm = 1;
end


reg dump_tvout_finish_eHshStrm;

initial begin : dump_tvout_runtime_sign_eHshStrm
    integer fp;
    dump_tvout_finish_eHshStrm = 0;
    fp = $fopen(`AUTOTB_TVOUT_eHshStrm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_eHshStrm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_eHshStrm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_eHshStrm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_eHshStrm = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .dl_reset(~AESL_reset),
    .all_finish(all_finish),
    .dl_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
