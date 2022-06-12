circuit Driver :
  module Driver :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<4>
    input io_e : UInt<4>
    input io_W_h : UInt<4>
    input io_W_x : UInt<4>
    input io_W_y : UInt<4>
    input io_B_x : UInt<4>
    input io_B_y : UInt<4>
    output io_y : UInt<4>
    output io_h : UInt<4>

    node _reg1_T = mul(io_x, io_W_x) @[Check.scala 34:29]
    reg reg1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg1) @[Check.scala 34:23]
    node _reg2_T = mul(io_h, io_W_h) @[Check.scala 35:29]
    reg reg2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg2) @[Check.scala 35:23]
    node _reg3_T = add(reg1, reg2) @[Check.scala 36:29]
    node _reg3_T_1 = tail(_reg3_T, 1) @[Check.scala 36:29]
    node _reg3_T_2 = add(_reg3_T_1, io_B_x) @[Check.scala 36:36]
    node _reg3_T_3 = tail(_reg3_T_2, 1) @[Check.scala 36:36]
    reg reg3 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg3) @[Check.scala 36:23]
    node _reg4_T = mul(io_e, reg3) @[Check.scala 38:29]
    reg reg4 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg4) @[Check.scala 38:23]
    node _reg5_T = sub(UInt<1>("h0"), reg3) @[Check.scala 39:32]
    node _reg5_T_1 = tail(_reg5_T, 1) @[Check.scala 39:32]
    node _reg5_T_2 = mul(io_e, _reg5_T_1) @[Check.scala 39:29]
    reg reg5 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg5) @[Check.scala 39:23]
    node _reg6_T = sub(reg4, reg5) @[Check.scala 40:30]
    node _reg6_T_1 = tail(_reg6_T, 1) @[Check.scala 40:30]
    node _reg6_T_2 = add(reg4, reg5) @[Check.scala 40:46]
    node _reg6_T_3 = tail(_reg6_T_2, 1) @[Check.scala 40:46]
    node _reg6_T_4 = div(_reg6_T_1, _reg6_T_3) @[Check.scala 40:38]
    reg reg6 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg6) @[Check.scala 40:23]
    node _reg7_T = mul(io_h, io_W_y) @[Check.scala 42:29]
    reg reg7 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg7) @[Check.scala 42:23]
    node _reg8_T = add(reg7, io_B_y) @[Check.scala 43:29]
    node _reg8_T_1 = tail(_reg8_T, 1) @[Check.scala 43:29]
    reg reg8 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg8) @[Check.scala 43:23]
    node _reg9_T = mul(io_e, reg8) @[Check.scala 45:29]
    reg reg9 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg9) @[Check.scala 45:23]
    node _reg10_T = sub(UInt<1>("h0"), reg8) @[Check.scala 46:33]
    node _reg10_T_1 = tail(_reg10_T, 1) @[Check.scala 46:33]
    node _reg10_T_2 = mul(io_e, _reg10_T_1) @[Check.scala 46:30]
    reg reg10 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg10) @[Check.scala 46:24]
    node _reg11_T = sub(reg8, reg8) @[Check.scala 47:31]
    node _reg11_T_1 = tail(_reg11_T, 1) @[Check.scala 47:31]
    node _reg11_T_2 = add(reg8, reg8) @[Check.scala 47:47]
    node _reg11_T_3 = tail(_reg11_T_2, 1) @[Check.scala 47:47]
    node _reg11_T_4 = div(_reg11_T_1, _reg11_T_3) @[Check.scala 47:39]
    reg reg11 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg11) @[Check.scala 47:24]
    node _reg1_T_1 = mul(io_x, io_W_x) @[Check.scala 34:29]
    reg reg1_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg1_1) @[Check.scala 34:23]
    node _reg2_T_1 = mul(io_h, io_W_h) @[Check.scala 35:29]
    reg reg2_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg2_1) @[Check.scala 35:23]
    node _reg3_T_4 = add(reg1_1, reg2_1) @[Check.scala 36:29]
    node _reg3_T_5 = tail(_reg3_T_4, 1) @[Check.scala 36:29]
    node _reg3_T_6 = add(_reg3_T_5, io_B_x) @[Check.scala 36:36]
    node _reg3_T_7 = tail(_reg3_T_6, 1) @[Check.scala 36:36]
    reg reg3_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg3_1) @[Check.scala 36:23]
    node _reg4_T_1 = mul(io_e, reg3_1) @[Check.scala 38:29]
    reg reg4_1 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg4_1) @[Check.scala 38:23]
    node _reg5_T_3 = sub(UInt<1>("h0"), reg3_1) @[Check.scala 39:32]
    node _reg5_T_4 = tail(_reg5_T_3, 1) @[Check.scala 39:32]
    node _reg5_T_5 = mul(io_e, _reg5_T_4) @[Check.scala 39:29]
    reg reg5_1 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg5_1) @[Check.scala 39:23]
    node _reg6_T_5 = sub(reg4_1, reg5_1) @[Check.scala 40:30]
    node _reg6_T_6 = tail(_reg6_T_5, 1) @[Check.scala 40:30]
    node _reg6_T_7 = add(reg4_1, reg5_1) @[Check.scala 40:46]
    node _reg6_T_8 = tail(_reg6_T_7, 1) @[Check.scala 40:46]
    node _reg6_T_9 = div(_reg6_T_6, _reg6_T_8) @[Check.scala 40:38]
    reg reg6_1 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg6_1) @[Check.scala 40:23]
    node _reg7_T_1 = mul(io_h, io_W_y) @[Check.scala 42:29]
    reg reg7_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg7_1) @[Check.scala 42:23]
    node _reg8_T_2 = add(reg7_1, io_B_y) @[Check.scala 43:29]
    node _reg8_T_3 = tail(_reg8_T_2, 1) @[Check.scala 43:29]
    reg reg8_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg8_1) @[Check.scala 43:23]
    node _reg9_T_1 = mul(io_e, reg8_1) @[Check.scala 45:29]
    reg reg9_1 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg9_1) @[Check.scala 45:23]
    node _reg10_T_3 = sub(UInt<1>("h0"), reg8_1) @[Check.scala 46:33]
    node _reg10_T_4 = tail(_reg10_T_3, 1) @[Check.scala 46:33]
    node _reg10_T_5 = mul(io_e, _reg10_T_4) @[Check.scala 46:30]
    reg reg10_1 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg10_1) @[Check.scala 46:24]
    node _reg11_T_5 = sub(reg8_1, reg8_1) @[Check.scala 47:31]
    node _reg11_T_6 = tail(_reg11_T_5, 1) @[Check.scala 47:31]
    node _reg11_T_7 = add(reg8_1, reg8_1) @[Check.scala 47:47]
    node _reg11_T_8 = tail(_reg11_T_7, 1) @[Check.scala 47:47]
    node _reg11_T_9 = div(_reg11_T_6, _reg11_T_8) @[Check.scala 47:39]
    reg reg11_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg11_1) @[Check.scala 47:24]
    node _reg1_T_2 = mul(io_x, io_W_x) @[Check.scala 34:29]
    reg reg1_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg1_2) @[Check.scala 34:23]
    node _reg2_T_2 = mul(io_h, io_W_h) @[Check.scala 35:29]
    reg reg2_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg2_2) @[Check.scala 35:23]
    node _reg3_T_8 = add(reg1_2, reg2_2) @[Check.scala 36:29]
    node _reg3_T_9 = tail(_reg3_T_8, 1) @[Check.scala 36:29]
    node _reg3_T_10 = add(_reg3_T_9, io_B_x) @[Check.scala 36:36]
    node _reg3_T_11 = tail(_reg3_T_10, 1) @[Check.scala 36:36]
    reg reg3_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg3_2) @[Check.scala 36:23]
    node _reg4_T_2 = mul(io_e, reg3_2) @[Check.scala 38:29]
    reg reg4_2 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg4_2) @[Check.scala 38:23]
    node _reg5_T_6 = sub(UInt<1>("h0"), reg3_2) @[Check.scala 39:32]
    node _reg5_T_7 = tail(_reg5_T_6, 1) @[Check.scala 39:32]
    node _reg5_T_8 = mul(io_e, _reg5_T_7) @[Check.scala 39:29]
    reg reg5_2 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg5_2) @[Check.scala 39:23]
    node _reg6_T_10 = sub(reg4_2, reg5_2) @[Check.scala 40:30]
    node _reg6_T_11 = tail(_reg6_T_10, 1) @[Check.scala 40:30]
    node _reg6_T_12 = add(reg4_2, reg5_2) @[Check.scala 40:46]
    node _reg6_T_13 = tail(_reg6_T_12, 1) @[Check.scala 40:46]
    node _reg6_T_14 = div(_reg6_T_11, _reg6_T_13) @[Check.scala 40:38]
    reg reg6_2 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg6_2) @[Check.scala 40:23]
    node _reg7_T_2 = mul(io_h, io_W_y) @[Check.scala 42:29]
    reg reg7_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg7_2) @[Check.scala 42:23]
    node _reg8_T_4 = add(reg7_2, io_B_y) @[Check.scala 43:29]
    node _reg8_T_5 = tail(_reg8_T_4, 1) @[Check.scala 43:29]
    reg reg8_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg8_2) @[Check.scala 43:23]
    node _reg9_T_2 = mul(io_e, reg8_2) @[Check.scala 45:29]
    reg reg9_2 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg9_2) @[Check.scala 45:23]
    node _reg10_T_6 = sub(UInt<1>("h0"), reg8_2) @[Check.scala 46:33]
    node _reg10_T_7 = tail(_reg10_T_6, 1) @[Check.scala 46:33]
    node _reg10_T_8 = mul(io_e, _reg10_T_7) @[Check.scala 46:30]
    reg reg10_2 : UInt<12>, clock with :
      reset => (UInt<1>("h0"), reg10_2) @[Check.scala 46:24]
    node _reg11_T_10 = sub(reg8_2, reg8_2) @[Check.scala 47:31]
    node _reg11_T_11 = tail(_reg11_T_10, 1) @[Check.scala 47:31]
    node _reg11_T_12 = add(reg8_2, reg8_2) @[Check.scala 47:47]
    node _reg11_T_13 = tail(_reg11_T_12, 1) @[Check.scala 47:47]
    node _reg11_T_14 = div(_reg11_T_11, _reg11_T_13) @[Check.scala 47:39]
    reg reg11_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg11_2) @[Check.scala 47:24]
    io_y <= bits(reg11_2, 3, 0) @[Check.scala 48:10]
    io_h <= bits(reg6_2, 3, 0) @[Check.scala 41:10]
    reg1 <= mux(reset, _reg1_T, reg1) @[Check.scala 34:{23,23,23}]
    reg2 <= mux(reset, _reg2_T, reg2) @[Check.scala 35:{23,23,23}]
    reg3 <= mux(reset, _reg3_T_3, reg3) @[Check.scala 36:{23,23,23}]
    reg4 <= mux(reset, _reg4_T, reg4) @[Check.scala 38:{23,23,23}]
    reg5 <= mux(reset, _reg5_T_2, reg5) @[Check.scala 39:{23,23,23}]
    reg6 <= mux(reset, _reg6_T_4, reg6) @[Check.scala 40:{23,23,23}]
    reg7 <= mux(reset, _reg7_T, reg7) @[Check.scala 42:{23,23,23}]
    reg8 <= mux(reset, _reg8_T_1, reg8) @[Check.scala 43:{23,23,23}]
    reg9 <= mux(reset, _reg9_T, reg9) @[Check.scala 45:{23,23,23}]
    reg10 <= mux(reset, _reg10_T_2, reg10) @[Check.scala 46:{24,24,24}]
    reg11 <= mux(reset, _reg11_T_4, reg11) @[Check.scala 47:{24,24,24}]
    reg1_1 <= mux(reset, _reg1_T_1, reg1_1) @[Check.scala 34:{23,23,23}]
    reg2_1 <= mux(reset, _reg2_T_1, reg2_1) @[Check.scala 35:{23,23,23}]
    reg3_1 <= mux(reset, _reg3_T_7, reg3_1) @[Check.scala 36:{23,23,23}]
    reg4_1 <= mux(reset, _reg4_T_1, reg4_1) @[Check.scala 38:{23,23,23}]
    reg5_1 <= mux(reset, _reg5_T_5, reg5_1) @[Check.scala 39:{23,23,23}]
    reg6_1 <= mux(reset, _reg6_T_9, reg6_1) @[Check.scala 40:{23,23,23}]
    reg7_1 <= mux(reset, _reg7_T_1, reg7_1) @[Check.scala 42:{23,23,23}]
    reg8_1 <= mux(reset, _reg8_T_3, reg8_1) @[Check.scala 43:{23,23,23}]
    reg9_1 <= mux(reset, _reg9_T_1, reg9_1) @[Check.scala 45:{23,23,23}]
    reg10_1 <= mux(reset, _reg10_T_5, reg10_1) @[Check.scala 46:{24,24,24}]
    reg11_1 <= mux(reset, _reg11_T_9, reg11_1) @[Check.scala 47:{24,24,24}]
    reg1_2 <= mux(reset, _reg1_T_2, reg1_2) @[Check.scala 34:{23,23,23}]
    reg2_2 <= mux(reset, _reg2_T_2, reg2_2) @[Check.scala 35:{23,23,23}]
    reg3_2 <= mux(reset, _reg3_T_11, reg3_2) @[Check.scala 36:{23,23,23}]
    reg4_2 <= mux(reset, _reg4_T_2, reg4_2) @[Check.scala 38:{23,23,23}]
    reg5_2 <= mux(reset, _reg5_T_8, reg5_2) @[Check.scala 39:{23,23,23}]
    reg6_2 <= mux(reset, _reg6_T_14, reg6_2) @[Check.scala 40:{23,23,23}]
    reg7_2 <= mux(reset, _reg7_T_2, reg7_2) @[Check.scala 42:{23,23,23}]
    reg8_2 <= mux(reset, _reg8_T_5, reg8_2) @[Check.scala 43:{23,23,23}]
    reg9_2 <= mux(reset, _reg9_T_2, reg9_2) @[Check.scala 45:{23,23,23}]
    reg10_2 <= mux(reset, _reg10_T_8, reg10_2) @[Check.scala 46:{24,24,24}]
    reg11_2 <= mux(reset, _reg11_T_14, reg11_2) @[Check.scala 47:{24,24,24}]
