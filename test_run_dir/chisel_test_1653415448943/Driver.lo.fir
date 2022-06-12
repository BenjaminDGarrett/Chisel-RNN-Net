circuit Driver :
  module Driver :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out : UInt<4>

    io_out <= io_in @[Check.scala 16:12]
