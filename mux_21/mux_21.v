`timescale 1ns / 1ps
module mux_21(a,b,c,y);
input a,b,c;
output y;
or (y,y1,y2);
and (y1,c1,a);
and (y2,c,b);
not (c1,c);
endmodule
