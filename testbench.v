`timescale 1ns / 1ns

module testbench;
	
	reg pushbutton;
	wire [7:0] leds;
	
	top dut(.leds(leds), .pushbutton(pushbutton));
	
	initial
	begin
		pushbutton = 0;
		#1000
		pushbutton = 1;
		#1000000000
		pushbutton = 0;
		#1000
		$finish;
	end

endmodule
