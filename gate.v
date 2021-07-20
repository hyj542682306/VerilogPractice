module not_gate (
    input in,
    output out
);
    assign out = ~in;

endmodule

module or_gate (
    input in1,
    input in2,
    output out
);
	assign out = in1 | in2;
    
endmodule

module and_gate (
    input in1,
    input in2,
    output out
);
    assign out = in1 & in2;
    
endmodule

module xor_gate(
    input in1,
    input in2,
    output out
);
    assign out = in1 ^ in2;

endmodule