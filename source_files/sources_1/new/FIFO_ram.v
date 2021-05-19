`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 23.12.2020 12:42:53
// Design Name: FSM based FIFO architecture
// Module Name: FIFO_ram
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: FIFO RAM with a word size of 8-bits and 32 register. Control signals
//              this module are:
//              1.Address 
//              2.Write/Read
//              3.OutEnable
//              4.ChipEnable
//              5.DataBus(bi-directional)
//              6.Clear
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Clear is active low.
// 
//////////////////////////////////////////////////////////////////////////////////


module FIFO_ram #(parameter width= 7, register =31) (
    output wire[7:0] data_out,

    input wire [7:0] data_in,
    input wire [4:0] address,
    input wire wr_rd,
    input wire OutEnable,
    input wire ChipEnable,
    input wire Clear,
    input wire clk
    );

    //tri stated bus when not in use.
    //tri [width:0] bus;

    //this is a 32x8 bit FIFO ram
    reg [width:0] fifo_ram [register:0];
    
    //@this block checks for clear logic and 
    //@performs the synchronous write operation.
    always @(posedge clk) begin

        //reset logic for FIFO RAM
        //clear logic is active low
        if(ChipEnable== 1'b1 && !Clear) ClearLogic();

        //write logic is active high
        else if (ChipEnable== 1'b1 && wr_rd== 1'b1) begin
            //here the databus is acting as input port
            fifo_ram[address] <= data_in;
        end
    end

    //read logic is active low
    //asynchronous continous read logic
    //here the databus is acting as output port
    //tri-stated bus
    assign data_out= ((ChipEnable== 1'b1) && (OutEnable== 1'b1) && (wr_rd==1'b0)) ? fifo_ram[address] : 8'bxxxx_xxxx;
    //assign databus= bus;

    //task to reset FIFO_ram
    //helps for parameterized instantiation
    task ClearLogic();
    integer i, j;
    begin
        
        for (i= 0; i<= register; i= i+1) begin
            for (j= 0; j<= width; j= j+1) begin
                fifo_ram[i][j]= 1'b0;
            end
        end
        
    end
    endtask

endmodule