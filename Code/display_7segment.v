module display_7segment(input [3:0] sw,
                        output [6:0] segment);

	wire x = sw[3],
	y = sw[2],
	z = sw[1],
	w = sw[0];

	assign segment[0] = (x & y) | (x & z) | (y & ~z & ~w) | (~x & ~y & ~z & w);
	assign segment[1] = (x & y) | (x & z) | (y & ~z & w) | (y & z & ~w);
	assign segment[2] = (x & y) | (x & z) | (~y & z & ~w);
	assign segment[3] = (x & y) | (x & z) | (y & ~z & ~w) | (y & z & w) | (~x & ~y & ~z & w);
	assign segment[4] = w | (x & z) | (y & ~z);
	assign segment[5] = (x & y) | (z & w) | (~y & z) | (~x & ~y & w);
	assign segment[6] = (x & y) | (x & z) | (~x & ~y & ~z) | (y & z & w);

endmodule
