module xor_gate_tb;
	reg A,B;
	wire Y;
   xor_gate uut(A,B,Y);
  
  initial begin
       $dumpfile("xoro.vcd");
	$dumpvars(0, xor_gate_tb);
   $display(" A  B  | Y");
   $monitor(" %b %b | %b", A,B,Y);
 A=0; B=0; #10;
  A=0; B=1; #10;
 A=1; B=0; #10;
 A=1; B=1; #10;
   $finish;
  end
 endmodule

