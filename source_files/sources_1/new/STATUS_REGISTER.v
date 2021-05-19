`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDET
// 
// Create Date: 23.12.2020 11:38:33
// Design Name: FSM based FIFO architecture
// Module Name: STATUS_REGISTER
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: status register to show the status of FIFO ram, whether it
//              is full or empty.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module STATUS_REGISTER(
    output wire full,
    output wire empty,
    input wire in_full,
    input wire in_empty,
    input wire Clear,
    input wire clk
    );

    reg r1, r2;

    always @(posedge clk) begin
        if (!Clear) begin
            r1<= 1'b0;
            r2<= 1'b0;
        end
        else begin
        r1<= in_full;       //full status register
        r2<= in_empty;       //empty status register
        end
    end

    //register driving the output wires of status
    assign full= r1;
    assign empty= r2;
endmodule
