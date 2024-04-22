`timescale 1ns / 1ps

module binaryToExcess3_tb;

    // Inputs
    logic [2:0] bcd;

    // Outputs
    logic [2:0] excess;

    // Instantiate the Unit Under Test (UUT)
    binaryToExcess3 uut (
        .bcd(bcd),
        .excess(excess)
    );

    // Test cases
    initial begin
        // Test Case 1: BCD 000
        bcd = 3'b000;
        #10; // Wait for 10ns
        $display("Test Case 1: BCD 000, Expected Excess-3 011, Actual Excess-3 %b", excess);

        // Test Case 2: BCD 001
        bcd = 3'b001;
        #10;
        $display("Test Case 2: BCD 001, Expected Excess-3 100, Actual Excess-3 %b", excess);

        // Test Case 3: BCD 010
        bcd = 3'b010;
        #10;
        $display("Test Case 3: BCD 010, Expected Excess-3 101, Actual Excess-3 %b", excess);

        // Test Case 4: BCD 011
        bcd = 3'b011;
        #10;
        $display("Test Case 4: BCD 011, Expected Excess-3 110, Actual Excess-3 %b", excess);

        // Add more test cases as needed...

        // Finish the simulation
        #10;
        $finish;
    end

endmodule