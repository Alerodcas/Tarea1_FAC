module binaryToExcess3(    
    input logic [2:0] bcd,      
	 output logic [2:0] excess
);

	assign excess[2] = (~bcd[1] && (bcd[2]^bcd[0])) || (~bcd[2] && bcd[1]);
	assign excess[1] = ~(bcd[1]^bcd[0]);
	assign excess[0] = ~bcd[0];

endmodule