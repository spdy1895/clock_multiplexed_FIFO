`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 23.12.2020 11:05:01
// Design Name: FSM based FIFO architecture
// Module Name: top
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: a FSM based datapath and contoller design for FIFO ram
//              architecture.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: FIFO_ram is having 32x8 bits size the first memory location
//                      is not written for simplicity purpose and reading is done by first
//                      updating the read_pointer and then read from the particular memory location. Also
//                      with reset write_pointer goes to memory location 0x0000_1 and read_pointer goes to 0x0000_0.
// 
//////////////////////////////////////////////////////////////////////////////////


module top #(parameter register= 31, width= 7, add_width= 4) (
    output wire [width:0] data_out,     //data out from the read operation
    output wire empty,                  //status signal for empty ram
    output wire full,                   //status signal for full ram
    output wire done,                   //done signal implying the data transaction is complete
                                        //it is generated from controller


    input wire [width:0] data_in,       //data in for read operation
    input wire start,                   //control signal to start the operation
    input wire write,                   //control signal to specify read or write operation
    input wire ClearAllReg,             //control signal to clear all registers
    input wire clk

    );

    //wires which are connected between datapath and controller
    wire wr_rd, OutEnable, ChipEnable, ClearF, 
            LoadEnableW, ClearW,
            LoadEnableR, ClearR,
            sel, ClearP, EnableP,
            ClearS;

    //instantiating the FIFO_datapath module
        FIFO_datapath #(31, 7, 4) FIFO1 (
            
            //output signals
            .DataOut(data_out),
            .empty(empty),
            .full(full),

            //input signal from user
            .DataIn(data_in),

            //controller signals
            .ClearReadBuff(ClearR),
            .LoadReadBuff(LoadEnableR),

            .ClearWriteBuff(ClearW),
            .LoadWriteBuff(LoadEnableW),

            .ClearFIFO(ClearF),
            .ChipEnable(ChipEnable),
            .OutEnable(OutEnable),
            .Write(wr_rd),

            .ClearPoint(ClearP),
            .sel(sel),
            .EnableP(EnableP),

            .ClearStaReg(ClearS),

            .clk(clk)
            );
    
    //instantiating the FIFO_controller
        FIFO_controller FIFO2(

            //output signal
            .Done(done),

            //control signals to datapath
            .wr_rd(wr_rd),
            .OutEnable(OutEnable),
            .ChipEnable(ChipEnable),
            .ClearF(ClearF),


            .LoadEnableW(LoadEnableW),
            .ClearW(ClearW),

            .LoadEnableR(LoadEnableR),
            .ClearR(ClearR),

            .sel(sel),
            .ClearP(ClearP),
            .EnableP(EnableP),

            .ClearS(ClearS),

            //user inputs to controller
            .Start(start),
            .Write(write),
            .ClearAllReg(ClearAllReg),
             
            .clk(clk)
            );

endmodule
