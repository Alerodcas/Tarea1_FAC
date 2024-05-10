module motorSignal(    
    input logic [2:0] gray,      
	 output logic signal
);

assign signal = gray[0] ^ gray[1];

endmodule