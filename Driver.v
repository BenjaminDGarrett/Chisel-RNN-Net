module Driver(
  input        clock,
  input        reset,
  input  [7:0] io_x,
  input  [3:0] io_e,
  input  [7:0] io_W_h,
  input  [7:0] io_W_x,
  input  [7:0] io_W_y,
  input  [7:0] io_B_x,
  input  [7:0] io_B_y,
  output [7:0] io_y,
  output [7:0] io_h
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire [15:0] _reg1_T = io_x * io_W_x; // @[Check.scala 35:29]
  wire [15:0] _reg2_T = io_h * io_W_h; // @[Check.scala 36:29]
  wire [15:0] _GEN_0 = {{8'd0}, io_B_x}; // @[Check.scala 37:36]
  wire [15:0] _reg6_T = io_h * io_W_y; // @[Check.scala 43:29]
  wire [15:0] _GEN_1 = {{8'd0}, io_B_y}; // @[Check.scala 44:29]
  reg [15:0] reg1_1; // @[Check.scala 35:23]
  reg [15:0] reg2_1; // @[Check.scala 36:23]
  wire [15:0] _reg3_T_5 = reg1_1 + reg2_1; // @[Check.scala 37:29]
  wire [15:0] _reg3_T_7 = _reg3_T_5 + _GEN_0; // @[Check.scala 37:36]
  reg [15:0] reg3_1; // @[Check.scala 37:23]
  wire [17:0] _reg5_T_1 = reg3_1 * 2'h2; // @[Check.scala 40:29]
  reg [17:0] reg5_1; // @[Check.scala 40:23]
  reg [15:0] reg6_1; // @[Check.scala 43:23]
  wire [15:0] _reg7_T_3 = reg6_1 + _GEN_1; // @[Check.scala 44:29]
  reg [15:0] reg7_1; // @[Check.scala 44:23]
  wire [17:0] _reg8_T_1 = reg7_1 * 2'h2; // @[Check.scala 46:28]
  reg [17:0] reg8_1; // @[Check.scala 46:23]
  assign io_y = reg8_1[7:0]; // @[Check.scala 56:10]
  assign io_h = reg5_1[7:0]; // @[Check.scala 42:10]
  always @(posedge clock) begin
    if (reset) begin // @[Check.scala 35:23]
      reg1_1 <= _reg1_T; // @[Check.scala 35:23]
    end
    if (reset) begin // @[Check.scala 36:23]
      reg2_1 <= _reg2_T; // @[Check.scala 36:23]
    end
    if (reset) begin // @[Check.scala 37:23]
      reg3_1 <= _reg3_T_7; // @[Check.scala 37:23]
    end
    if (reset) begin // @[Check.scala 40:23]
      reg5_1 <= _reg5_T_1; // @[Check.scala 40:23]
    end
    if (reset) begin // @[Check.scala 43:23]
      reg6_1 <= _reg6_T; // @[Check.scala 43:23]
    end
    if (reset) begin // @[Check.scala 44:23]
      reg7_1 <= _reg7_T_3; // @[Check.scala 44:23]
    end
    if (reset) begin // @[Check.scala 46:23]
      reg8_1 <= _reg8_T_1; // @[Check.scala 46:23]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg1_1 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  reg2_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  reg3_1 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  reg5_1 = _RAND_3[17:0];
  _RAND_4 = {1{`RANDOM}};
  reg6_1 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  reg7_1 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  reg8_1 = _RAND_6[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
