package Test

import chisel3._
import chisel3.aop.Select.When
import chisel3.tester._
import chisel3.tester.RawTester.test
import firrtl._
import scala.collection._

class Driver(bitwidth: Int, layer: Int) extends Module {

    val io = IO(new Bundle {
      // main input
      val x = Input(UInt(bitwidth.W))
      //input holder for next state
      val e = Input(UInt(4.W))
      val W_h = Input(UInt(bitwidth.W))
      val W_x = Input(UInt(bitwidth.W))
      val W_y = Input(UInt(bitwidth.W))
      val B_x = Input(UInt(bitwidth.W))
      val B_y = Input(UInt(bitwidth.W))
      val y = Output(UInt(bitwidth.W))
      //holder for next state
      val h = Output(UInt(bitwidth.W))

    })
  var i = 1
  io.h := 0.U


  for(i <- 1 to layer) {
    // Tanh(W_h@h + W_x@x + Bias) = the h-1 step
    // softmax(H-1*W_y + bias)= The output of the neuron
    //get the dot product for W_x@x. TEST: we might only need to times the program once for a one to one neuron
    val reg1 = RegInit(io.x * io.W_x)
    val reg2 = RegInit(io.h * io.W_h)
    val reg3 = RegInit(reg1 + reg2 + io.B_x)
    // the first activation function, is going to be a linear function until I understand more about Hardware coding
    val reg4 = RegInit(2.U)
    val reg5 = RegInit(reg3 * reg4)

    io.h := reg5
    val reg6 = RegInit(io.h * io.W_y)
    val reg7 = RegInit(reg6 + io.B_y)
    // uses Linear activation function in replace for the Sigmoid Activation Function
    val reg8 = RegInit(reg7*reg4)


    //val reg4 = RegInit(io.e * (reg3))
    //val reg5 = RegInit(io.e * (-reg3))
    //val reg6 = RegInit((reg4 - reg5) / (reg4 + reg5))
   // val reg9 = RegInit(io.e << (reg8))
    //val reg10 = RegInit(io.e << (-reg8))
    // val reg11 = RegInit(((reg9) - reg10) / (reg9 + reg10))
    //
    io.y := reg8


  }
}



object Driver {
  def main(args: Array[String]): Unit = {
    println(getVerilogString(new Driver(8, 2)))
  }
}
  /*
  def main(args: Array[String]) : Unit = {
    test(new Driver(4,3)) {c =>
      c.io.x.poke(4.U)
      c.io.e.poke(2.U)
      c.io.W_x.poke(4.U)
      c.io.W_y.poke(4.U)
      c.io.W_h.poke(4.U)
      c.io.B_x.poke(1.U)
      c.io.B_y.poke(1.U)

    }
    println("SUCCESS!!")



  }
}
 */