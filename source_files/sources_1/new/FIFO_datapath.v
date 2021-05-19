`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 23.12.2020 11:38:33
// Design Name: FSM based FIFO architecture
// Module Name: FIFO_datapath
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: the modules inside datapath are:-
//                  1. FIFO RAM
//                  2. Write buffer
//                  3. Read buffer
//                  4. Pointer
//                  5. Status register
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: active high is Write and low is Read.
// 
//////////////////////////////////////////////////////////////////////////////////


module FIFO_datapath #(parameter register= 31, width= 7, add_width= 4) (

    //terminal signals
    output wire [width:0] DataOut,      //data-out from read operation
    output wire empty,
    output wire full, 

    input wire [width:0] DataIn,        //data-in for write operation

    //controller signals for Read buffer
    input wire ClearReadBuff,
    input wire LoadReadBuff,            //load enable for Read buffer
    
    //controller signals for Write buffer
    input wire ClearWriteBuff,
    input wire LoadWriteBuff,           //load enable for Write buffer

    //controller signals for FIFO-ram
    input wire ClearFIFO,
    input wire ChipEnable,
    input wire OutEnable,
    input wire Write,

    //controller signals for POINTER
    input wire ClearPoint,
    input wire sel,
    input wire EnableP,

    //controller signals for STATUS REGISTER
    input wire ClearStaReg,

    //global clock
    input wire clk

    );
    
    //bus for data transaction between buffers and FIFO-ram
    wire [width:0] data_in;     //data from write_buffer to memory
    wire [width:0] data_out;    //data from memory to read_buffer

    //address bus from POINTER
    wire [add_width:0] addBus;

    //wires between status register and pointer
    wire wempty, wfull;

    //module instantiation of FIFO-ram
    FIFO_ram #(7, 31) F1(
        .data_in(data_in),
        .data_out(data_out),
        .address(addBus),
        .wr_rd(Write),
        .OutEnable(OutEnable),
        .ChipEnable(ChipEnable),
        .Clear(ClearFIFO),
        .clk(clk)
    );

    //module instantiation of WRITE BUFFER
    WRITE_BUFFER #(7) W2(
        .data_out(data_in),
        .data_in(DataIn),
        .LoadEnable(LoadWriteBuff),
        .Clear(ClearWriteBuff),
        .clk(clk)
    );

    //module instantiation of READ BUFFER
    READ_BUFFER #(7) R3(
        .data_out(DataOut),
        .data_in(data_out),
        .LoadEnable(LoadReadBuff),
        .Clear(ClearReadBuff),
        .clk(clk)
    );

    //module instantiaton of POINTER 
    POINTER #(4) P4(
        .address(addBus),
        .empty(wempty),
        .full(wfull),
        .sel(sel),
        .Clear(ClearPoint),
        .EnableP(EnableP),
        .clk(clk)
    );

    //module instantiation of STATUS_REGISTER
    STATUS_REGISTER S5(
        .full(full),
        .empty(empty),
        .in_full(wfull),
        .in_empty(wempty),
        .Clear(ClearStaReg),
        .clk(clk)
    );

endmodule
