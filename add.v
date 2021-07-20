module Add (
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] sum
);

	integer i;
	reg cin, cout;

	always @ (*) begin
		sum[0] = a[0] ^ b[0];
		cin = a[0] & b[0];
		for (i = 1; i <= 31; i = i + 1) begin
			sum[i] = a[i] ^ b[i] ^ cin;
			cout = (a[i] & b[i]) | (a[i] & cin) | (b[i] & cin);
			cin = cout;
		end
	end

endmodule