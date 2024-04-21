module grayToBinary(    
    input logic [2:0] gray,      
	 output logic [2:0] bcd
);

	assign bcd[2] = gray[2];
	assign bcd[1] = gray[2] ^ gray[1];
	assign bcd[0] = gray[2] ^ gray[1] ^ gray[0];

endmodule