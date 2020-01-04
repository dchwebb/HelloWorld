module top (leds, pushbutton);

	output wire [7:0] leds;
	input wire pushbutton;
	
	wire fpga_clock;
	
	OSCH #(.NOM_FREQ("133.00")) rc_oscillator(.STDBY(1'b0), .OSC(fpga_clock));
	slow_counter counter(.clock(fpga_clock), .enable(pushbutton), .output_byte(leds));
	
endmodule
module slow_counter (clock, enable, output_byte);
	
	input wire clock;
	input wire enable;
	output reg [7:0] output_byte;
	
	reg [31:0] counter;
	
	initial
	begin
		output_byte = 8'b11111111;
		counter = 32'b0;
	end
	
	always @(posedge clock)
	begin
		if (enable == 1'b1)
		begin
			counter <= counter + 1'b1;
			output_byte <= ~counter[31:24];
		end
	end
endmodule

