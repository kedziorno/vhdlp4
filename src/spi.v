/* SPI Peripheral */
`default_nettype none
`timescale 1ns/1ns
module spi (
		input				reset,
		input				clk_in,

		input				read,
		input				write,

		input[7:0]			din,
		output reg[7:0]		dout,

		/* Get size for command */

		/* Busy signal for higher level control */
		output reg			busy,

		/* SPI interface */
		input				sdi,
		output reg 			sdo,
		output				clk_out,
		output reg			cs

	);

	/* Operation state */
	`define OP_NOP			0
	`define OP_READ			1
	`define OP_WRITE		2
	`define OP_READWRITE	3
	`define OP_W_WAIT_CS	4
	`define OP_R_WAIT_CS	5
	reg [2:0] op;

	/* Data word to transmit */
	reg [7:0] data_w;
	reg [7:0] data_r;

	/* Used for gating output clock */
	reg clk_gate; 

	/* counter for which bit to shift out */
	reg [3:0] counter;

	/* Just pass through SPI clock to output when clock is not gated */
	assign clk_out = clk_gate ? clk_in : 1'b0;

	/* Positive edge operations */
	always @(posedge clk_in or posedge reset) begin
		if( reset ) begin
			/* clear out registers */
			dout <= 0;
			busy <= 0;

			op <= `OP_NOP;
			data_w <= 0;
			data_r <= 0;
			clk_gate <= 1'b0;
			counter <= 0;

			sdo <= 1'b0;
			cs <= 1'b1;
		end

		else begin
			/* Only reading */
			if( !busy && read && !write ) begin
				busy <= 1'b1;
				op <= `OP_READ;
				data_r <= 0;	/* clear data, need to write to this */
				/* set CS */
				cs <= 1'b0;
			end

			/* Only writing */
			else if( !busy && !read && write ) begin
				/* Become busy since now writing data */
				busy <= 1'b1;
				op <= `OP_WRITE;
				data_w <= din;	/* Store data to write */
				/* set CS */
				cs <= 1'b0;
			end

			/* Reading and writing at the same time */
			else if( !busy && read && write ) begin
				busy <= 1'b1;
				op <= `OP_READWRITE;
				data_w <= din;
				data_r <= 0;
				/* set CS */
				cs <= 1'b0;

			end

			/* Writing data */
			else if( busy && ( op == `OP_WRITE || op == `OP_READWRITE ) ) begin
				if( counter == 8 ) begin
					/* All data has been shifted out, wait for CS to go back
					* high */
					counter <= 0;
					op <= `OP_W_WAIT_CS;
					clk_gate <= 1'b0;
					sdo <= 1'b0;
					
				end
				else begin

					clk_gate <= 1'b1;
					counter <= counter + 1;
					sdo <= data_w[counter];
				end
	
			end

			else if( busy && op == `OP_W_WAIT_CS )begin
					/* No longer busy */
					cs <= 1'b1;
					busy <= 1'b0;
					op <= `OP_NOP;
					counter <= 0;
			end

		end

	end

	/* Negative edge operations */
	always @(negedge clk_in) begin
		/* Data is shifted in here */
		if( busy && (op == `OP_READ || op == `OP_READWRITE ) ) begin
			if( counter == 8 ) begin
				/* No longer busy, all data has been shifted in */
				counter <= 0;
				op <= `OP_R_WAIT_CS;
				clk_gate <= 1'b0;

				/* Write data that was read to output */
				dout <= data_r;
			end
			else begin
				data_r[counter] <= sdi;
				counter <= counter + 1;
				clk_gate <= 1'b1;
			end

		end
		else if( busy && op == `OP_R_WAIT_CS )begin
			cs <= 1'b1;
			if( counter == 0 ) begin
				counter <= counter + 1;	
			end
			else begin
				/* No longer busy */
				busy <= 1'b0;
				op <= `OP_NOP;
				counter <= 0;
			end
		end

	end


endmodule

