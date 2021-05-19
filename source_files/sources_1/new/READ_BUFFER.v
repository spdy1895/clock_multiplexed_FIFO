`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 23.12.2020 11:38:33
// Design Name: FSM based FIFO architecture
// Module Name: READ_BUFFER
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: read buffer will store data from FIFO RAM. It is an 8-bit 
//              buffer register. Control signals and terminals are as follows:-
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


module READ_BUFFER # (parameter width= 7) (
    output wire [width:0] data_out,
    input wire [width:0] data_in,
    input wire LoadEnable,
    input wire Clear,
    input wire clk
    );

    reg [width:0] read_buffer;

    always @(posedge clk) begin
        if(!Clear) ClearLogic();
        else if(LoadEnable) read_buffer<= data_in;
        else read_buffer<= read_buffer;                 //to prevent Latch inference
    end

    //task to clear read_buffer
    //helps for parameterized instantiation
    task ClearLogic();
    integer j;
    begin
        for (j= 0; j<= width; j= j+1) begin
            read_buffer[j]= 1'b0;
        end
    end
    endtask

    assign data_out= read_buffer;
endmodule
