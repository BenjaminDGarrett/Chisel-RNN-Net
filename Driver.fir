circuit Driver :
  module Driver :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip x : UInt<8>, flip e : UInt<4>, flip W_h : UInt<8>, flip W_x : UInt<8>, flip W_y : UInt<8>, flip B_x : UInt<8>, flip B_y : UInt<8>, y : UInt<8>, h : UInt<8>}

    io.h <= UInt<1>("h0") @[Check.scala 28:8]
    node _reg1_T = mul(io.x, io.W_x) @[Check.scala 35:29]
    reg reg1 : UInt, clock with :
      reset => (reset, _reg1_T) @[Check.scala 35:23]
    node _reg2_T = mul(io.h, io.W_h) @[Check.scala 36:29]
    reg reg2 : UInt, clock with :
      reset => (reset, _reg2_T) @[Check.scala 36:23]
    node _reg3_T = add(reg1, reg2) @[Check.scala 37:29]
    node _reg3_T_1 = tail(_reg3_T, 1) @[Check.scala 37:29]
    node _reg3_T_2 = add(_reg3_T_1, io.B_x) @[Check.scala 37:36]
    node _reg3_T_3 = tail(_reg3_T_2, 1) @[Check.scala 37:36]
    reg reg3 : UInt, clock with :
      reset => (reset, _reg3_T_3) @[Check.scala 37:23]
    reg reg4 : UInt, clock with :
      reset => (reset, UInt<2>("h2")) @[Check.scala 39:23]
    node _reg5_T = mul(reg3, reg4) @[Check.scala 40:29]
    reg reg5 : UInt, clock with :
      reset => (reset, _reg5_T) @[Check.scala 40:23]
    io.h <= reg5 @[Check.scala 42:10]
    node _reg6_T = mul(io.h, io.W_y) @[Check.scala 43:29]
    reg reg6 : UInt, clock with :
      reset => (reset, _reg6_T) @[Check.scala 43:23]
    node _reg7_T = add(reg6, io.B_y) @[Check.scala 44:29]
    node _reg7_T_1 = tail(_reg7_T, 1) @[Check.scala 44:29]
    reg reg7 : UInt, clock with :
      reset => (reset, _reg7_T_1) @[Check.scala 44:23]
    node _reg8_T = mul(reg7, reg4) @[Check.scala 46:28]
    reg reg8 : UInt, clock with :
      reset => (reset, _reg8_T) @[Check.scala 46:23]
    io.y <= reg8 @[Check.scala 56:10]
    node _reg1_T_1 = mul(io.x, io.W_x) @[Check.scala 35:29]
    reg reg1_1 : UInt, clock with :
      reset => (reset, _reg1_T_1) @[Check.scala 35:23]
    node _reg2_T_1 = mul(io.h, io.W_h) @[Check.scala 36:29]
    reg reg2_1 : UInt, clock with :
      reset => (reset, _reg2_T_1) @[Check.scala 36:23]
    node _reg3_T_4 = add(reg1_1, reg2_1) @[Check.scala 37:29]
    node _reg3_T_5 = tail(_reg3_T_4, 1) @[Check.scala 37:29]
    node _reg3_T_6 = add(_reg3_T_5, io.B_x) @[Check.scala 37:36]
    node _reg3_T_7 = tail(_reg3_T_6, 1) @[Check.scala 37:36]
    reg reg3_1 : UInt, clock with :
      reset => (reset, _reg3_T_7) @[Check.scala 37:23]
    reg reg4_1 : UInt, clock with :
      reset => (reset, UInt<2>("h2")) @[Check.scala 39:23]
    node _reg5_T_1 = mul(reg3_1, reg4_1) @[Check.scala 40:29]
    reg reg5_1 : UInt, clock with :
      reset => (reset, _reg5_T_1) @[Check.scala 40:23]
    io.h <= reg5_1 @[Check.scala 42:10]
    node _reg6_T_1 = mul(io.h, io.W_y) @[Check.scala 43:29]
    reg reg6_1 : UInt, clock with :
      reset => (reset, _reg6_T_1) @[Check.scala 43:23]
    node _reg7_T_2 = add(reg6_1, io.B_y) @[Check.scala 44:29]
    node _reg7_T_3 = tail(_reg7_T_2, 1) @[Check.scala 44:29]
    reg reg7_1 : UInt, clock with :
      reset => (reset, _reg7_T_3) @[Check.scala 44:23]
    node _reg8_T_1 = mul(reg7_1, reg4_1) @[Check.scala 46:28]
    reg reg8_1 : UInt, clock with :
      reset => (reset, _reg8_T_1) @[Check.scala 46:23]
    io.y <= reg8_1 @[Check.scala 56:10]

