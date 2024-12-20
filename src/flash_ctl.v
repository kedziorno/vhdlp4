/* SPI Flash High level control Peripheral */
`default_nettype none
`timescale 1ns/1ns

/* Byte writing sizes, minus one */
`define SZ_8BIT		0
`define SZ_32BIT	3 


module flash_ctl #(
		parameter FLASH_ADDR_SZ = 11
	) (
		reset,
		clk,
		read,
		write,

		addr,
		din,
		dout,

		busy,

		/* SPI Connections */
		spi_clk,
		spi_cs,
		spi_mosi,
		spi_miso

	);

		input	reset;
		input	clk;
		input	read;
		input	write;

		input [15:0] addr;
		input [7:0] din;
		output[7:0] dout;

		output reg busy;

		/* SPI Connections */
		output	spi_clk;
		output	spi_cs;
		output	spi_mosi;
		input	spi_miso;

	/* SPI Busy signal */
	wire spi_busy;

	/* dout; eventually would be nice to have 32 bit output, but not right now */
	wire [31:0] spi_dout;
	assign dout = spi_dout[7:0];

	/* SPI Commands and their size */
	`define CMD_WEN			8'h06
	`define CMD_WEN_SZ		`SZ_8BIT

	`define CMD_READ		8'h03
	`define CMD_READ_SZ		`SZ_32BIT		
	
	`define CMD_WRITE		8'h02
	`define CMD_WRITE_SZ	`SZ_32BIT

	/* SPI Read write selection */
	reg spi_read;
	reg	spi_write;

	/* Command generation */

	/* Address */
	wire [FLASH_ADDR_SZ-1:0] flash_addr;
	assign flash_addr = addr[FLASH_ADDR_SZ-1:0];

	/* Write command */
	wire [31:0] write_cmd;
	assign write_cmd = {`CMD_WRITE, {(16-FLASH_ADDR_SZ){1'b0}}, flash_addr, din };

	/* Read Command */
	wire [31:0] read_cmd;
	assign read_cmd = {`CMD_READ, {(16-FLASH_ADDR_SZ){1'b0}}, flash_addr, 8'b0 };

	/* Command save, since writes require enable first */
	reg [31:0] cmd_save;

	/* Command register to use to write to spi */
	reg [31:0] cmd;
	/* Size for command */
	reg [1:0] cmd_sz;

	/* If previously sent write enable, should still show that we are busy
	* otherwise everything else moves too fast */
	reg prev_wren;
	
	/* Flash cycle state machine */
	`define IDLE			0
	`define WRITE_ENABLE	1
	`define WRITE_BUBBLE	2	/* Pause an additional cycle */
	`define WRITE			3
	`define READ_BUBBLE		5
	`define READ			4
	reg [2:0] flash_state;

	spi32 spi0(
		.reset(reset),
		.clk(clk),
		.read(spi_read),
		.write(spi_write),
		.din(cmd),
		.dout(spi_dout),
		.busy(spi_busy),
		.nbytes(cmd_sz),

		.sdi(spi_miso),
		.sdo(spi_mosi),
		.clk_out(spi_clk),
		.cs(spi_cs)
	);

	always @(posedge clk or posedge reset) begin
		if( reset ) begin
			prev_wren <= 0;
			busy <= 1;
			spi_read <= 0;
			spi_write <= 0;
			cmd <= 0;
			cmd_sz <= 0;
			cmd_save <= 0;
			flash_state <= `IDLE;
		end

		else begin
			case( flash_state )
				`IDLE: begin
					/* Determine operation */
					if( !busy && write && !read ) begin
						/* Writing, need to enable writing first, but store
						* incoming data for later */
						cmd_save <= write_cmd;
						flash_state <= `WRITE_ENABLE;
						cmd <=  {`CMD_WEN, 24'b0};
						cmd_sz <= `CMD_WEN_SZ;

						spi_write <= 1'b1;
						spi_read <= 1'b0;

						busy <= 1'b1;
			   			

					end
					else if( !busy && !write && read ) begin
						/* Reading, so no need to enable writes */
//						cmd <= read_cmd;
						cmd_save <= read_cmd;
						cmd_sz <= `CMD_READ_SZ;
						flash_state <= `READ_BUBBLE;

						spi_write <= 1'b0;
						spi_read <= 1'b0;

						busy <= 1'b1;

					end
					else begin
						/* No longer busy, default. Also forces additional
						* cycle so can't read and write back to back, need to
						* wait additional cycle */
						flash_state <= `IDLE;
						if( spi_busy == 1 ) begin
							busy <= 1'b1;
						end
						else begin
							busy <= 1'b0;						
						end
					end

				end

				`WRITE_ENABLE: begin
					if( spi_busy ) begin
						flash_state <= `WRITE_BUBBLE;
					end
					else begin
						/* Still busy, and ensure write and read signals are
						* low */
						spi_write <= 1'b0;
						spi_read <= 1'b0;


					end

				end

				`WRITE_BUBBLE: begin
					/* Needed one more cycle to get things ready */
					busy <= 1'b1;
					if( !spi_busy ) begin
						spi_write <= 1'b1;
						spi_read <= 1'b0;
						flash_state <= `WRITE;
						cmd <= cmd_save;
						cmd_sz <= `CMD_WRITE_SZ;
					end

				end

				`WRITE: begin
					spi_write <= 1'b0;
					spi_read <= 1'b0;
					busy <= 1'b1;
					if( !spi_busy ) begin
						/* SPI is no longer busy, write has finished */
						cmd <= 0;
						cmd_sz <= 0;
						flash_state <= `IDLE;
					end

				end

				`READ_BUBBLE: begin
					/* Needed one more cycle to get things ready */
					busy <= 1'b1;
					if( !spi_busy ) begin
						spi_write <= 1'b0;
						spi_read <= 1'b1;
						flash_state <= `READ;
						cmd <= cmd_save;
						cmd_sz <= `CMD_READ_SZ;
					end

				end

				`READ: begin
					spi_write <= 1'b0;
					spi_read <= 1'b0;
					busy <= 1'b1;
					if( !spi_busy )begin
						/* SPI is no longer busy, write has finished */
						cmd <= cmd_save;
						cmd_sz <= 0;
						flash_state <= `IDLE;
					end

				end



			endcase


		end


	end

endmodule
