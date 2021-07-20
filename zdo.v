module zdo (
    input wire rst
);
    
	wire t;
	assign t = rst ? 0 : ~t;

endmodule