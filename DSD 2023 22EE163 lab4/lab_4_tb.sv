`timescale 1ns / 1ps

module lab_4_tb;

    logic [1:0] a, b;
    logic red, green, blue;
    

    lab_4 uut (
        .a(a),
        .b(b),
        .red(red),
        .green(green),
        .blue(blue)
    );

    initial begin
        for (int i = 0; i < 4; i++) begin
            for (int j = 0; j < 4; j++) begin
                a = i;  
                b = j;   
                #10;     
            end
        end
        $finish;
    end

endmodule
