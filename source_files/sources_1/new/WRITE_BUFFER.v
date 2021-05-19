`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 23.12.2020 11:38:33
// Design Name: FSM based FIFO architecture
// Module Name: WRITE_BUFFER
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: write buffer will store data from input terminal. It is an
//              8-bit buffer register. Control signals and terminals are as follows:-
//              1.LoadEnable
//              2.Clear
//              3.Datain
//              4.Dataout
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Clear is active low.
// 
//////////////////////////////////////////////////////////////////////////////////


module WRITE_BUFFER #(parameter width= 7) (
    output wire [width:0] data_out,
    input wire [width:0]  data_in,
    input wire LoadEnable,
    input wire Clear,
    input wire clk
    );

    reg [width:0] write_buffer;

    always @(posedge clk) begin
        if(!Clear) ClearLogic();
        else if(LoadEnable== 1'b1) write_buffer<= data_in;
        else write_buffer<= write_buffer;           //to prevent Latch inference
    end

    //task to clear write_buffer 
    //helps for parameterized instantiation
    task ClearLogic();
    integer j;
    begin
        for (j= 0; j<= width; j= j+1) begin
            write_buffer[j]= 1'b0;
        end
    end
    endtask

    assign data_out= write_buffer;

endmodule
