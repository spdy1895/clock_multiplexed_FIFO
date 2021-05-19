`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 23.12.2020 11:38:33
// Design Name: FSM based FIFO architecture
// Module Name: POINTER
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: a multiplexer based pointer circuit to point at address
//              location of FIFO ram. Multiplexer is responsible for
//              selecting the address for write or read based on the control
//              signal from Controller.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module POINTER #(parameter add_width= 4) (
    output wire [add_width:0] address,
    output reg empty,
    output reg full, 
    input wire sel,
    input wire Clear,
    input wire EnableP,
    input wire clk
    );

    reg [add_width:0] write_pointer;
    reg [add_width:0] read_pointer;
    reg [add_width:0] LatchedAddress;

    //this always block checks for Clear logic.
    always @(posedge clk) begin
        

        //-> error:  multi-driven nets during synthesis in FPGA.
        //-> a wire should not be driven by multiple sources like here
        //-> it was driven in two separate always block.
        //full= 1'b0;
        //empty= 1'b0;

        //active low clear logic
        if (!Clear) begin
            write_pointer<= 5'b0_0001;  //leaving one memory location for
                                        //simplicity purpose.
            read_pointer<= 5'b0_0000;

        end
    end

    //this always block is checking for  write full and read empty cases.
    always@(LatchedAddress) begin

        full=   1'b0;       //@ initially making status registers zero.
        empty=  1'b0;

        //latched address is 0x11111, so if it chosen for write then full flag
        //should be made high.
        if(sel== 1'b1 && LatchedAddress== 5'b1_1111)
            full= 1'b1;

        //latched address is 0x11111, so if it is not chosen to write then
        //the ram is empty.(!sel) means it is chosen to read.
        else if(sel== 1'b0 && LatchedAddress== 5'b0_0001 && write_pointer== 5'b0_0001)
            empty= 1'b1;

        //after reading the complete FIFO the read pointer is at last location
        //then read pointer is again sent to first memory location.
        else if (read_pointer== 5'b1_1111)
            read_pointer<= 5'b0_0000;

    end

    //this always block is latching address for reading and writing
    //and updating the pointer when enable.
    always @(posedge clk) begin

        //address latching for write operation
        if (sel== 1'b1 && EnableP== 1'b1) begin
            LatchedAddress= write_pointer;

            //updating write pointer
            write_pointer= write_pointer + 5'b0_0001;
        end

        //address latching for read operation
        else if(sel== 1'b0 && EnableP== 1'b1) begin
            //updating read pointer first because it started from 
            //memory location 0x0_0000 which is reserved location.
            read_pointer= read_pointer+5'b0_0001;
            
            LatchedAddress= read_pointer;
        end
    end

    //address bus driven by Latch
    assign address= LatchedAddress;

endmodule
