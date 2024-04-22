module Tarea1(
    input wire [4:0] distance, //Distancia recibida del arduino
	 output logic motorSig,		// Senal para el motor (1 encendido, 0 apagado)
	 output logic [2:0] excess, // Conversion a exceso-3, luces led en fpga
	 output wire [6:0] seg		//bits para 7 segmentos (modulo recibe numero en exceso-3)
);

	logic [2:0] gray_code;

	distanceToGray distanceGray (
			  .distance(distance), 
			  .gray_code(gray_code)
		 );
		 
	motorSignal motor (
			  .gray(gray_code), 
			  .signal(motorSig)
		 );

	grayToBinary grayBinary (
			  .gray(gray_code), 
			  .bcd(bcd)
		 );
	 
    binaryToExcess3 binaryExcess (
        .bcd(bcd),
        .excess(excess)
    );
	 
	 segmentOutput segment (
        .num(excess),
        .seg(seg)
    );

endmodule