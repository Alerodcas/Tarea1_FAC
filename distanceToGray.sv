module distanceToGray (
    input logic [2:0] distance, // 5-bit input for distance (0 to 30)
    output logic [2:0] gray_code // 3-bit output for Gray code (0 to 7)
);

    // Segment the distance into 8 equal parts (30/8 ≈ 3,75, approximated to 4)
    // Each segment will map to a Gray code value
    always_comb begin
        case (distance) // Integer division to segment the distance
            3'b000: gray_code = 3'b000; // 0 to 3 cm
            3'b001: gray_code = 3'b001; // 4 to 7 cm
            3'b010: gray_code = 3'b011; // 8 to 11 cm
            3'b011: gray_code = 3'b010; // 12 to 15 cm
            3'b100: gray_code = 3'b110; // 16 to 19 cm
            3'b101: gray_code = 3'b111; // 20 to 23 cm
            3'b110: gray_code = 3'b101; // 24 to 27 cm
            3'b111: gray_code = 3'b100; // 28 to 30 cm
            default: gray_code = 3'bxxx; // Undefined state
        endcase
    end

endmodule