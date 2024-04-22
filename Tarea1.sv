module Tarea1(
    input logic [2:0] gray,  
	 output logic [2:0] excess
);

	grayToBinary grayBinary (
			  .gray(gray), 
			  .bcd(bcd)
		 );
	 
    binaryToExcess3 binaryExcess (
        .bcd(bcd),
        .excess(excess)
    );

endmodule