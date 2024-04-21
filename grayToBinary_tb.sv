`timescale 1ns / 1ps

module grayToBinary_tb;

    // Inputs
    logic [2:0] gray;

    // Outputs
    logic [2:0] bcd;

    // Instantiate the Unit Under Test (UUT)
    grayToBinary uut (
        .gray(gray), 
        .bcd(bcd)
    );

    // Test cases
    initial begin
        // Test Case 1: Gray code 000
        gray = 3'b000;
        #10; // Wait for 10ns
        $display("Test Case 1: Gray 000, Expected BCD 000, Actual BCD %b", bcd);

        // Test Case 2: Gray code 001
        gray = 3'b001;
        #10;
        $display("Test Case 2: Gray 001, Expected BCD 001, Actual BCD %b", bcd);

        // Test Case 3: Gray code 011
        gray = 3'b011;
        #10;
        $display("Test Case 3: Gray 011, Expected BCD 010, Actual BCD %b", bcd);

        // Test Case 4: Gray code 010
        gray = 3'b010;
        #10;
        $display("Test Case 4: Gray 010, Expected BCD 011, Actual BCD %b", bcd);

        // Finish the simulation
        #10;
        $finish;
    end

endmodule