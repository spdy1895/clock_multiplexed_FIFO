`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITH
// Engineer: SHUBHAM PANDEY
// 
// Create Date: 25.12.2020 21:44:44
// Design Name: FSM based FIFO architecture
// Module Name: top_tb
// Project Name: FSM based FIFO architecture
// Target Devices: SPARTAN-3
// Tool Versions: 2020.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb(

    );
    parameter width= 7;
    wire [width:0] data_out;
    wire empty;
    wire full;
    wire done;

    reg [width:0] data_in;
    reg start;
    reg write;
    reg ClearAllReg;
    reg clk;

    integer i;

    //instantiating the top module
    top #(31, 7, 4) t0(
        .data_out(data_out),
        .empty(empty),
        .full(full),
        .done(done),

        .data_in(data_in),
        .start(start),
        .write(write),
        .ClearAllReg(ClearAllReg),
        .clk(clk)

        );

        //generating the clock signals
        initial begin
            clk= 1'b0;
            forever clk= #5 ~clk;
        end

        initial begin
            
            #25 ClearAllReg= 1'b0;  //to clear all registers
            #10 ClearAllReg= 1'b1;  //clear deactivated
            #30;
            /*
            //- writing and reading only one location @ a time.
            #20 {start, write, data_in}= {1'b1, 1'b1, 8'b1111_0101};
            #10 start= 1'b0;        //start signal deactivated
                                    //after one clock cycle.

            #20 {start, write, data_in}= {1'b1, 1'b1, 8'hab};
            #10 start= 1'b0;
            
            #20 {start, write, data_in}= {1'b1, 1'b1, 8'b1010_0101};
            #10 start= 1'b0;        //start signal deactivated
                                    //after one clock cycle.


            #20 {start, write}= 2'b10;
            #10 start= 1'b0;
            #20 {start, write}= 2'b10;
            #10 start= 1'b0;
            #20 {start, write}= 2'b10;
            #10 start= 1'b0;

            /*
            #60;
            #10 {start, write}= 2'b11;
            data_in= 8'b0101_1010;
            #10 start= 1'b0;
            #20;

            #10 {start, write}= 2'b10;
            #10 start= 1'b0;
            #20;
            
            #30 $finish;
            */
            
            //-> writing all locations in one go.
            //->"memory full"corner case is checked here.
            for (i= 0;i< 32 ;i= i+1) begin
                //starting to write to the memory location.
                {start, write}= {1'b1, 1'b1};
                data_in= i+1;
                #10 start= 1'b0;    //taking out start signal.
                #20;
            end

            //@ reading all locations in one go.
            for (i=1;i< 32;i= i+1) begin
                //reading from the memory location.
                {start, write}= {1'b1, 1'b0};
                #10 start= 1'b0;    //taking out start signal.
                #20;
            end
            #100;
            //-checking the corner cases i.e.
            //-"empty" i.e. reading when nothing to read.
            #25 ClearAllReg= 1'b0;  //to clear all registers
            #10 ClearAllReg= 1'b1;  //clear deactivated
            #30;
            
            {start, write}= 2'b10;  //read logic
            #10 start= 1'b0;

            #200;

            #25 ClearAllReg= 1'b0;  //to clear all registers
            #10 ClearAllReg= 1'b1;  //clear deactivated
            start= 1'b1; write= 1'b0;

            #500 $finish;
            /*
            #10 {start, write}= 2'b10;
            #10 start= 1'b0;
            #200 $finish;
            */
        end

endmodule
