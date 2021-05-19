`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 23.12.2020 11:38:33
// Design Name: FSM based FIFO architecture
// Module Name: FIFO_controller
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: FIFO controller generates control signals 
//              based upon it's states to guide DATAPATH.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FIFO_controller(
    
    //Done signals implies that a particular
    //data transaction has completed.
    output reg Done,
    
    //FIFO-ram control signals
    output reg wr_rd, 
    output reg OutEnable,
    output reg ChipEnable,
    output reg ClearF,

    //WRITE_BUFFER control signals
    output reg LoadEnableW,
    output reg ClearW,

    //READ_BUFFER control signals
    output reg LoadEnableR,
    output reg ClearR,

    //POINTER control signals
    output reg EnableP,
    output reg sel,
    output reg ClearP,

    //STATUS REGISTER
    output reg ClearS,

    input wire Start,
    input wire Write,
    input wire ClearAllReg,

    input wire clk

    );

    //using johnson-encoding
    localparam  idle= 3'b000,       //do nothing
                setupW= 3'b001,     //setup WRITE BUFFER
                write= 3'b010,      //WRITE transaction
                setupR= 3'b011,     //setup READ BUFFER
                read= 3'b100,       //READ transaction
                clear= 3'b101;      //clear all registers

    reg [2:0] pr_state, nxt_state;

    //clock triggers the transition
    //asynchronous reset- active low
    //current state logic
    always @(posedge clk or negedge ClearAllReg) begin
        if(!ClearAllReg) pr_state<= clear;
        else pr_state<= nxt_state;
    end

    //input determines the transition
    //next state logic
    always @(pr_state or Start) begin
        nxt_state<= idle;

        case (pr_state)
            idle: begin
                if (Start== 1'b1 && Write== 1'b1 && ClearAllReg== 1'b1) nxt_state<= setupW;
                else if (Start== 1'b1 && Write== 1'b0 && ClearAllReg== 1'b1) nxt_state<= setupR;
                else nxt_state<= idle;
            end

            setupW: nxt_state<= write;

            write: begin
                if (Start== 1'b1 && Write== 1'b1) nxt_state<= setupW;
                else if(Start== 1'b1 && Write== 1'b0) nxt_state<= setupR;
                else nxt_state<= idle; 
            end

            setupR: nxt_state<= read;

            read: begin
                if(Start== 1'b1 && Write== 1'b0) nxt_state<= setupR;
                else if(Start== 1'b1 && Write== 1'b1) nxt_state<= setupW;
                else nxt_state<= idle;
            end

            clear: nxt_state<= idle;

            default: nxt_state<= idle;
        endcase
    end

    //output logic
    //additional Enable signal is asserted to avoid unintentional 
    //updation of pointer. And pointer is updated only in setup(W-R) stages.
    always @(pr_state) begin
        case (pr_state)
            idle: {
                Done,                                       //strobe for completion of task
                wr_rd, OutEnable, ChipEnable, ClearF,       //FIFO-ram control signals
                LoadEnableW, ClearW,                        //WRITE_BUFFER control signals
                LoadEnableR, ClearR,                        //READ_BUFFER control signals
                ClearP, sel, EnableP,                       //->bad approach :POINTER control signals (select is made unknown to
                //Enable signal is asserted to avoid        //->avoid updating of read and write pointer). Since the synthesized model
                //unintentional updation of pointer         //->cannot hanve undefined values.
                ClearS                                      //STATUS register control signals
                }= 13'b0000_1010_1100_1;                      //all the clear signals are deactivated 
                                                            //and other signals are left idle.

            setupW: {
                Done,                                       //strobe for completion of task
                wr_rd, OutEnable, ChipEnable, ClearF,       //FIFO-ram control signals
                LoadEnableW, ClearW,                        //WRITE_BUFFER control signals
                LoadEnableR, ClearR,                        //READ_BUFFER control signals
                ClearP, sel, EnableP,                       //POINTER control signals
                ClearS                                      //STATUS register control signals
                }= 13'b0100_1110_1111_1;

            write: {
                Done,                                       //strobe for completion of task
                wr_rd, OutEnable, ChipEnable, ClearF,       //FIFO-ram control signals
                LoadEnableW, ClearW,                        //WRITE_BUFFER control signals
                LoadEnableR, ClearR,                        //READ_BUFFER control signals
                ClearP, sel, EnableP,                       //POINTER control signals
                ClearS                                      //STATUS register control signals
                }= 13'b1101_1010_1110_1;
            
            setupR: {
                Done,                                       //strobe for completion of task
                wr_rd, OutEnable, ChipEnable, ClearF,       //FIFO-ram control signals
                LoadEnableW, ClearW,                        //WRITE_BUFFER control signals
                LoadEnableR, ClearR,                        //READ_BUFFER control signals
                ClearP, sel, EnableP,                       //POINTER control signals
                ClearS                                      //STATUS register control signals
                }= 13'b0010_1010_1101_1;

            read: {
                Done,                                       //strobe for completion of task
                wr_rd, OutEnable, ChipEnable, ClearF,       //FIFO-ram control signals
                LoadEnableW, ClearW,                        //WRITE_BUFFER control signals
                LoadEnableR, ClearR,                        //READ_BUFFER control signals
                ClearP, sel, EnableP,                       //POINTER control signals
                ClearS                                      //STATUS register control signals
                }= 13'b1011_1011_1100_1;

            //all individual modules are active low clear
            clear: {
                Done,                                       //strobe for completion of task
                wr_rd, OutEnable, ChipEnable, ClearF,       //FIFO-ram control signals
                LoadEnableW, ClearW,                        //WRITE_BUFFER control signals
                LoadEnableR, ClearR,                        //READ_BUFFER control signals
                ClearP, sel, EnableP,                       //POINTER control signals
                ClearS                                      //STATUS register control signals
                }= 13'b0001_0000_0000_0;
            
            default: {
                Done,                                       //strobe for completion of task
                wr_rd, OutEnable, ChipEnable, ClearF,       //FIFO-ram control signals
                LoadEnableW, ClearW,                        //WRITE_BUFFER control signals
                LoadEnableR, ClearR,                        //READ_BUFFER control signals
                ClearP, sel, EnableP,                       //POINTER control signals
                ClearS                                      //STATUS register control signals
                }= 13'b0000_1010_1100_1;
        endcase
    end

endmodule

