module Tarea1(
    input wire [4:0] distance,  
	 output logic [2:0] excess
);

logic [2:0] gray_code;

	distanceToGray distanceGray (
			  .distance(distance), 
			  .gray_code(gray_code)
		 );

	grayToBinary grayBinary (
			  .gray(gray_code), 
			  .bcd(bcd)
		 );
	 
    binaryToExcess3 binaryExcess (
        .bcd(bcd),
        .excess(excess)
    );

endmodule