module Tarea1_tb;

    // Parámetros de tiempo
    parameter CLK_PERIOD = 10; // Periodo del reloj en unidades de tiempo

    // Señales de entrada
    reg [4:0] distance;
    reg clk;

    // Señales de salida
    wire motorSig;
    wire [2:0] excess;
    wire [6:0] seg;

    // Instancia del módulo bajo prueba
    Tarea1 dut (
        .distance(distance),
        .motorSig(motorSig),
        .excess(excess),
        .seg(seg)
    );

    // Generador de clock
    always #((CLK_PERIOD/2)) clk = ~clk;

    // Proceso para generar valores de entrada
    initial begin
        clk = 0;
        distance = 5'b00000; // Valor de distancia inicial
        #100; // Espera inicial

        // Cambia la distancia y espera
        distance = 5'b01010; // Por ejemplo, un valor de distancia diferente
        #100; // Espera
        // Puedes añadir más cambios de distancia aquí si lo deseas

        // Termina la simulación
        $finish;
    end

endmodule
