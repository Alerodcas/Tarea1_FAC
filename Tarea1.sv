module Tarea1(
    input logic clk,       // Clock input
    input logic reset,     // Asynchronous reset input
    input logic data_in,   // Data input
    output logic data_out  // Data output (registered)
);

//Todo esto se puede borrar
//Solo lo puse para que no tire el error de que el modulo no tiene logica

    // Flip-flop to hold the state
    always_ff @(posedge clk or negedge reset) begin
        if (!reset) begin
            // Asynchronous reset to 0
            data_out <= 1'b0;
        end else begin
            // Register input data on rising edge of clock
            data_out <= data_in;
        end
    end

endmodule