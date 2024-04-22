module motorSignal(    
    input logic [2:0] gray,      
	 output logic signal
);

assign signal = gray[2] ^ gray[1];

endmodule