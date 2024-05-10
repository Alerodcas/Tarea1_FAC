module binaryToExcess3(    
    input logic [2:0] gray,      
	 output logic [2:0] excess
);
	always_comb begin
		excess[2] = ((gray[1] && (~gray[2])) || ((~gray[0]) && gray[1]) || ((~gray[0]) && gray[2]));
		excess[1] = (~gray[2]);
		excess[0] = (((~gray[0])&&(~gray[1])&&(~gray[2]))||((~gray[0]) && gray[1] && gray[2])||(gray[0] && (~gray[1]) && gray[2])||(gray[0] && gray[1] && (~gray[2])));
	end

endmodule