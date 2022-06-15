package Test

import chisel3._
import chisel3.aop.Select.When
import chisel3.tester._
import chisel3.tester.RawTester.test
import firrtl._
import scala.collection._

class h_checl(bitwidth: Int, layer: Int) extends Module {

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


  for (i <- 1 to layer) {
    // Tanh(W_h@h + W_x@x + Bias) = the h-1 step
    // softmax(H-1*W_y + bias)= The output of the neuron
    //get the dot product for W_x@x. TEST: we might only need to times the program once for a one to one neuron
    val reg1 = RegInit(io.x * io.W_x)
    val reg2 = RegInit(io.h * io.W_h)
    val reg3 = RegInit(reg1 + reg2 + io.B_x)
    // the first activation function is going to be a usage of a speed Sigmoid function
    val reg4 = RegInit((1.U+(reg3/1.U +(reg3))))
  }
  io.y := reg4
}

object h_checl {
  def main(args: Array[String]): Unit = {
    println(getVerilogString(new h_checl(8, 2)))
  }
}