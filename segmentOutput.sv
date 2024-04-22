
module segmentOutput(input [2:0] num, //Numero en exceso-3
    output [6:0] seg);

	reg[6:0] segments1;

	assign seg = segments1;
	
	always @(num)
	begin
		case(num)
		// 0011 -> 0
		3'b011:segments1 = 7'b1000000;
		
		// 100 -> 1 
		3'b100: segments1 = 7'b1111001;
		
		// 101 -> 2
		3'b101: segments1 = 7'b0100100;
		
		// 110 -> 3 
		3'b110: segments1 = 7'b0110000;
		
		// 111 -> 4
		3'b111: segments1 = 7'b0011001;
		
		// 000 -> 5 
		3'b000: segments1 = 7'b0010010;
		
		// 001 -> 6
		3'b001: segments1 = 7'b0000010;
		
		// 010 -> 7 
		3'b010: segments1 = 7'b1111000;
	
		endcase
	end
endmodule
