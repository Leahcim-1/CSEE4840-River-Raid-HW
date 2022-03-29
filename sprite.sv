/*
 * The Sprite Controller
 * Xinhao, Rojan
 */

module sprite_controller
                        #(
                            parameter FILE = "",
                            parameter DIMENSION = 8,
                            parameter GRAPHICS_EOL = DIMENSION * DIMENSION  // The location that hold the graphics
                        )
                        (   input logic clk, 
                            input logic start,
                            input logic reset,
                            input logic x,
                            input logic y,

                            output  logic [7:0] VGA_R, VGA_G, VGA_B
                        );
    
    logic [DIMENSION - 1: 0] pixels [DIMENSION - 1: 0];   // The graphics pixels array 
    logic [23:0] color;  // The color of the current pixel

    typedef enum logic [3:0] { 
        IDLE = 4'd0,
        INIT,
        DRAW,
        AWAIT_POS,
        DONE
    } state_t; 

    state_t next_state, state;

    always_ff @(posedge clk) begin
        state <= next_state;

        case (state)
            
            
            default: begin
                
            end
        endcase        
    end

    always_comb begin
        case (next_state)
            
            default: begin
                
            end
        endcase
    end


endmodule