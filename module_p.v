module a1(
    input in1,
    input in2,
    output out
);
    assign out = in1^in2;
    
endmodule

module a2(
    input in,
    output out
);
    assign out = in&1;
    
endmodule

module module_p(
    input in1, 
    input in2, 
    output out
);

	wire tmp1, tmp2, tmp3;

	a1 inst1 (in1, in2, tmp1);
	a2 inst2 (tmp1, tmp2);
	a2 inst3 (in2, tmp3);
	a1 inst4 (tmp2, tmp3, out);

endmodule