module Tarea1(
    input logic [2:0] gray, //Distancia recibida del arduino
	 output logic motorSig,		// Senal para el motor (1 encendido, 0 apagado)
	 output logic [2:0] excess, // Conversion a exceso-3, luces led en fpga
	 output logic [6:0] seg		//bits para 7 segmentos (modulo recibe numero en exceso-3)
);
		 
	motorSignal motor (
			  .gray(gray), 
			  .signal(motorSig)
		 );

	 
    binaryToExcess3 binaryExcess (
        .gray(gray),
        .excess(excess)
    );
	 
	 segmentOutput segment (
        .num(excess),
        .seg(seg)
    );
	 

endmodule