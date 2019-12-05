module vending_machine(S,N3,N2,N1,N0,G0,G1,C2,C1,C0);

input S,N3,N2,N1,N0;
output G0,G1,C2,C1,C0;

assign G0 = ~S&((N2&N1)|(N3&(N2|N1|N0)));
assign G1 = S&((N3&(N2|N1))|(N2&N1&N0));
assign C2 = N3&N2&((~S&N0)|N1);
assign C1 = N3&((~S&N1&N0)|(N2&~N1&(S|~N0)));
assign C0 =  (~S&N3&N1&~N0)|(S&N3&N1&N0)|(S&N3&N2&N0)|(~S&N3&N2&~N1&~N0)|(~S&~N3&N2&N1&N0);

endmodule