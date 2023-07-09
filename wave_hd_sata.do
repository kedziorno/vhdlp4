onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/RESET
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/RXph
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/RXpd
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/RXnh
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/RXnd
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/TXph
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/TXpd
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/TXnh
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/TXnd
add wave -noupdate -expand -group tb -radix hexadecimal /tb_hsata/clock
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RESET
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RXp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RXn
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TXp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TXn
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/DATAIN
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/SLUMBER
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/PARTIAL
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/NEARAFELB
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/FARAFELB
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/SPDSEL
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/SYSTEMCLOCK
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/COMMA
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/DATAOUT
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RXCLOCK
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/COMINIT
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/COMWAKE
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/PHYRDY
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/PHYRESET
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_int
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_shift_reg
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_reg
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_shift_rdy
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_shift_reg_empty
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_ld
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RX_int
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/rx_idle
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RX_data_rdy
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/cominit_space_ok
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/comwake_space_ok
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/align
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/align_ctrl
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/nonalign
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/non_align_cnt
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RXclk_timeout
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RXclk
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RXclk_edge
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TXclk
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/init_state
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/resume
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/speed
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_comwake
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_comreset
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_align
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_comwake_end
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_comreset_end
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_D102
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_D102_end
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_align_end
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/transmit_link_data
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/calibration_end
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/power_on
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/await_align_timeout
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/link_state
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/next_link_state
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/CONTp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/DMATp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/EOFp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/HOLDp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/HOLDAp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/PMACKp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/PMNAKp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/PMREQ_Pp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/PMREQ_Sp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/R_ERRp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/R_IPp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/R_OKp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/R_RDYp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/SOFp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/SYNCp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/WTRMp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/X_RDYp
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/lsfr_state_scramble
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/lsfr_state_descramble
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/lsfr_state_cont
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/crc_check
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/link_data
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/link_err
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/link_ctrl
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/link_crc
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/link_FIS_data
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/link_FIS_state
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/rcv_fifo_read
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/rcv_fifo_write
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/tr_fifo_read
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/tr_fifo_write
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RX_fifo_empty
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RX_fifo_full
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_fifo_empty
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_fifo_full
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RX_rd_ptr
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RX_wr_ptr
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_rd_ptr
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_wr_ptr
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/RX_fifo
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TX_fifo
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_state
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/next_TP_state
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_transmission_status
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_frame_end
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_Frame_Rdy
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_no_data
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_Fifo_Space_Avail
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_result
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_dataout
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_datain
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_FIS_end
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_FIS_OK
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/TP_cmd_req
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/Ibit
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/Cbit
add wave -noupdate -expand -group hostbehavior -radix hexadecimal /tb_hsata/host/Behavior/instr_cnt
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RESET
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RXp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RXn
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TXp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TXn
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/DATAIN
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/SLUMBER
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/PARTIAL
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/NEARAFELB
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/FARAFELB
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/SPDSEL
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/SYSTEMCLOCK
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/COMMA
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/DATAOUT
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RXCLOCK
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/COMRESET
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/COMWAKE
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/PHYRDY
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/PHYRESET
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_int
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_shift_reg
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_reg
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_shift_rdy
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_shift_reg_empty
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_ld
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RX_int
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/rx_idle
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RX_data_rdy
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/cominit_space_ok
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/comwake_space_ok
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/align
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/align_ctrl
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RXclk_timeout
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RXclk
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RXclk_edge
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TXclk
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/init_state
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/resume
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/speed
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/transmit_comwake
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/transmit_cominit
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/transmit_align
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/transmit_comwake_end
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/transmit_cominit_end
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/transmit_align_end
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/calibration_end
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/power_on
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/send_align_cnt
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/reset_align_cnt
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/transmit_link_data
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/link_state
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/next_link_state
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/CONTp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/DMATp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/EOFp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/HOLDp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/HOLDAp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/PMACKp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/PMNAKp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/PMREQ_Pp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/PMREQ_Sp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/R_ERRp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/R_IPp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/R_OKp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/R_RDYp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/SOFp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/SYNCp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/WTRMp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/X_RDYp
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/lsfr_state_scramble
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/lsfr_state_descramble
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/lsfr_state_cont
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/crc_check
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/link_data
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/link_err
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/link_ctrl
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/link_crc
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/link_FIS_data
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/link_FIS_state
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/rcv_fifo_read
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/rcv_fifo_write
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/tr_fifo_read
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/tr_fifo_write
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RX_fifo_empty
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RX_fifo_full
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_fifo_empty
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_fifo_full
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RX_rd_ptr
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RX_wr_ptr
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_rd_ptr
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_wr_ptr
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/RX_fifo
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TX_fifo
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_state
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/next_TP_state
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_transmission_status
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_Frame_Rdy
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_no_data
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_Fifo_Space_Avail
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_result
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_dataout
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_datain
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_FIS_end
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_FIS_OK
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_RDH_req
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_RDH_end
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_PIOSetup_req
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_PIOSetup_end
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/TP_TXData_req
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/Ibit
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/Cbit
add wave -noupdate -expand -group devicebehavior -radix hexadecimal /tb_hsata/device/Behavior/CMD_rcvd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {9999050 ps} {10000050 ps}