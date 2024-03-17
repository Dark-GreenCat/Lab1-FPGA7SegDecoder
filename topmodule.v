module topmodule (input [15:0] sw,
                  output [27:0] led);

    display_7segment inst_1(.sw(sw[3:0]), .segment(led[6:0]));
    display_7segment inst_2(.sw(sw[7:4]), .segment(led[13:7]));
    display_7segment inst_3(.sw(sw[11:8]), .segment(led[20:14]));
    display_7segment inst_4(.sw(sw[15:12]), .segment(led[27:21]));

endmodule
