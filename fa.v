module fa(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
xor x1(w0,a,b);
and a1(w1,a,b);
xor x2(w2,w0,cin);
and a2(w2,w0,cin);
or o1(cout,w1,w2);
endmodule

module testbenchforfulladder;
reg a,b,cin;
wire sum,cout;
fa f1(sum,cout,a,b,cin);
initial
begin
a=1'b0; b=1'b0; cin=1'b0;
#5;a=1'b1; b=1'b0; cin=1'b0;
#5;a=1'b0; b=1'b1; cin=1'b1;
#5;a=1'b1; b=1'b1; cin=1'b1;
#5 a=1'b0; b=1'b0; cin=1'b1;
end
endmodule





