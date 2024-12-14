NAMEREG s0, <name> ; Rename register sX with <name>
CONSTANT <name>, 00 ; Define constant <name>, assign value
; ROM output file is always called
;
<filename>.vhd
ADDRESS 000; Programs always start at reset vector 0
ENABLE INTERRUPT; If using interrupts, be sure to enable
;
the INTERRUPT input
BEGIN:
; <<< your code here >>>
JUMP BEGIN
; Embedded applications never end
ISR: ; An Interrupt Service Routine (ISR) is
;
required if using interrupts
; Interrupts are automatically disabled
;
when an interrupt is recognized
; Never re-enable interrupts during the ISR
RETURNI ENABLE
; Return from interrupt service routine
;
Use RETURNI DISABLE to leave interrupts
;
disabled
ADDRESS 3FF
JUMP ISR
; Interrupt vector is located at highest
;
instruction address
; Jump to interrupt service routine, ISR


; CRC Calculation used KCPSM3 8-bit Microcontroller (PicoBlaze) - Page: 284,285
; Alternatively commented C text with adequate Assembler code
;
; main(argc,argv)
; int argc;
; char *argv[];
; {
;   int i,data_count;
;   unsigned int crc,data_in;
;   unsigned char crc_bit[32],new_bit[32];
;   crc = 0x52325032;
;   data_count = 0;
;   while (scanf(" 0x%8x", &data_in) == 1) {
;     data_count++;
;     /* Add the data_in value to the current value of the CRC held in the */
;     /* "register". The addition is performed modulo two (XOR). */
;     crc ^= data_in;
;     /* Expand the value of the CRC held in the register to 32 individual */
;     /* bits for easy manipulation. */
;     for (i = 0; i < 32; ++i) {
;       crc_bit[i] = (crc >> i) & 0x01;
;     }
;     /* The following 32 assignments perform the function of the box */
;     /* labeled "*" in the block diagram above. The new_bit array is a */
;     /* temporary holding place for the new CRC value being calculated. */
;     /* Note that there are lots of shared terms in the assignments below. */
;     new_bit[31] = crc_bit[31] ^ crc_bit[30] ^ crc_bit[29] ^ crc_bit[28] ^ crc_bit[27] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[23] ^ crc_bit[15] ^ crc_bit[11] ^ crc_bit [9] ^ crc_bit [8] ^ crc_bit[5];
;     new_bit[30] = crc_bit[30] ^ crc_bit[29] ^ crc_bit[28] ^ crc_bit[27] ^ crc_bit[26] ^ crc_bit[24] ^ crc_bit[23] ^ crc_bit[22] ^ crc_bit[14] ^ crc_bit[10] ^ crc_bit [8] ^ crc_bit [7] ^ crc_bit[4];
;     new_bit[29] = crc_bit[31] ^ crc_bit[29] ^ crc_bit[28] ^ crc_bit[27] ^ crc_bit[26] ^ crc_bit[25] ^ crc_bit[23] ^ crc_bit[22] ^ crc_bit[21] ^ crc_bit[13] ^ crc_bit [9] ^ crc_bit [7] ^ crc_bit[6] ^ crc_bit[3];
;     new_bit[28] = crc_bit[30] ^ crc_bit[28] ^ crc_bit[27] ^ crc_bit[26] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[22] ^ crc_bit[21] ^ crc_bit[20] ^ crc_bit[12] ^ crc_bit [8] ^ crc_bit [6] ^ crc_bit[5] ^ crc_bit[2];
;     new_bit[27] = crc_bit[29] ^ crc_bit[27] ^ crc_bit[26] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[23] ^ crc_bit[21] ^ crc_bit[20] ^ crc_bit[19] ^ crc_bit[11] ^ crc_bit [7] ^ crc_bit [5] ^ crc_bit[4] ^ crc_bit[1];
;     new_bit[26] = crc_bit[31] ^ crc_bit[28] ^ crc_bit[26] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[23] ^ crc_bit[22] ^ crc_bit[20] ^ crc_bit[19] ^ crc_bit[18] ^ crc_bit[10] ^ crc_bit [6] ^ crc_bit[4] ^ crc_bit[3] ^ crc_bit[0];
;     new_bit[25] = crc_bit[31] ^ crc_bit[29] ^ crc_bit[28] ^ crc_bit[22] ^ crc_bit[21] ^ crc_bit[19] ^ crc_bit[18] ^ crc_bit[17] ^ crc_bit[15] ^ crc_bit[11] ^ crc_bit [8] ^ crc_bit [3] ^ crc_bit[2];
;     new_bit[24] = crc_bit[30] ^ crc_bit[28] ^ crc_bit[27] ^ crc_bit[21] ^ crc_bit[20] ^ crc_bit[18] ^ crc_bit[17] ^ crc_bit[16] ^ crc_bit[14] ^ crc_bit[10] ^ crc_bit [7] ^ crc_bit [2] ^ crc_bit[1];
;     new_bit[23] = crc_bit[31] ^ crc_bit[29] ^ crc_bit[27] ^ crc_bit[26] ^ crc_bit[20] ^ crc_bit[19] ^ crc_bit[17] ^ crc_bit[16] ^ crc_bit[15] ^ crc_bit[13] ^ crc_bit [9] ^ crc_bit [6] ^ crc_bit[1] ^ crc_bit[0];
;     new_bit[22] = crc_bit[31] ^ crc_bit[29] ^ crc_bit[27] ^ crc_bit[26] ^ crc_bit[24] ^ crc_bit[23] ^ crc_bit[19] ^ crc_bit[18] ^ crc_bit[16] ^ crc_bit[14] ^ crc_bit[12] ^ crc_bit[11] ^ crc_bit[9] ^ crc_bit[0];
;     new_bit[21] = crc_bit[31] ^ crc_bit[29] ^ crc_bit[27] ^ crc_bit[26] ^ crc_bit[24] ^ crc_bit[22] ^ crc_bit[18] ^ crc_bit[17] ^ crc_bit[13] ^ crc_bit[10] ^ crc_bit [9] ^ crc_bit [5];
;     new_bit[20] = crc_bit[30] ^ crc_bit[28] ^ crc_bit[26] ^ crc_bit[25] ^ crc_bit[23] ^ crc_bit[21] ^ crc_bit[17] ^ crc_bit[16] ^ crc_bit[12] ^ crc_bit [9] ^ crc_bit [8] ^ crc_bit [4];
;     new_bit[19] = crc_bit[29] ^ crc_bit[27] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[22] ^ crc_bit[20] ^ crc_bit[16] ^ crc_bit[15] ^ crc_bit[11] ^ crc_bit [8] ^ crc_bit [7] ^ crc_bit [3];
;     new_bit[18] = crc_bit[31] ^ crc_bit[28] ^ crc_bit[26] ^ crc_bit[24] ^ crc_bit[23] ^ crc_bit[21] ^ crc_bit[19] ^ crc_bit[15] ^ crc_bit[14] ^ crc_bit[10] ^ crc_bit [7] ^ crc_bit [6] ^ crc_bit[2];
;     new_bit[17] = crc_bit[31] ^ crc_bit[30] ^ crc_bit[27] ^ crc_bit[25] ^ crc_bit[23] ^ crc_bit[22] ^ crc_bit[20] ^ crc_bit[18] ^ crc_bit[14] ^ crc_bit[13] ^ crc_bit [9] ^ crc_bit [6] ^ crc_bit[5] ^ crc_bit[1];
;     new_bit[16] = crc_bit[30] ^ crc_bit[29] ^ crc_bit[26] ^ crc_bit[24] ^ crc_bit[22] ^ crc_bit[21] ^ crc_bit[19] ^ crc_bit[17] ^ crc_bit[13] ^ crc_bit[12] ^ crc_bit [8] ^ crc_bit [5] ^ crc_bit[4] ^ crc_bit[0];
;     new_bit[15] = crc_bit[30] ^ crc_bit[27] ^ crc_bit[24] ^ crc_bit[21] ^ crc_bit[20] ^ crc_bit[18] ^ crc_bit[16] ^ crc_bit[15] ^ crc_bit[12] ^ crc_bit [9] ^ crc_bit [8] ^ crc_bit [7] ^ crc_bit[5] ^ crc_bit[4] ^ crc_bit[3];
;     new_bit[14] = crc_bit[29] ^ crc_bit[26] ^ crc_bit[23] ^ crc_bit[20] ^ crc_bit[19] ^ crc_bit[17] ^ crc_bit[15] ^ crc_bit[14] ^ crc_bit[11] ^ crc_bit [8] ^ crc_bit [7] ^ crc_bit [6] ^ crc_bit[4] ^ crc_bit[3] ^ crc_bit[2];
;     new_bit[13] = crc_bit[31] ^ crc_bit[28] ^ crc_bit[25] ^ crc_bit[22] ^ crc_bit[19] ^ crc_bit[18] ^ crc_bit[16] ^ crc_bit[14] ^ crc_bit[13] ^ crc_bit[10] ^ crc_bit [7] ^ crc_bit [6] ^ crc_bit[5] ^ crc_bit[3] ^ crc_bit[2] ^ crc_bit[1];
;     new_bit[12] = crc_bit[31] ^ crc_bit[30] ^ crc_bit[27] ^ crc_bit[24] ^ crc_bit[21] ^ crc_bit[18] ^ crc_bit[17] ^ crc_bit[15] ^ crc_bit[13] ^ crc_bit[12] ^ crc_bit [9] ^ crc_bit [6] ^ crc_bit[5] ^ crc_bit[4] ^ crc_bit[2] ^ crc_bit[1] ^ crc_bit[0];
;     new_bit[11] = crc_bit[31] ^ crc_bit[28] ^ crc_bit[27] ^ crc_bit[26] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[20] ^ crc_bit[17] ^ crc_bit[16] ^ crc_bit[15] ^ crc_bit[14] ^ crc_bit[12] ^ crc_bit[9] ^ crc_bit[4] ^ crc_bit[3] ^ crc_bit[1] ^ crc_bit[0];
;     new_bit[10] = crc_bit[31] ^ crc_bit[29] ^ crc_bit[28] ^ crc_bit[26] ^ crc_bit[19] ^ crc_bit[16] ^ crc_bit[14] ^ crc_bit[13] ^ crc_bit [9] ^ crc_bit [5] ^ crc_bit [3] ^ crc_bit [2] ^ crc_bit[0];
;     new_bit[9]  = crc_bit[29] ^ crc_bit[24] ^ crc_bit[23] ^ crc_bit[18] ^ crc_bit[13] ^ crc_bit[12] ^ crc_bit[11] ^ crc_bit [9] ^ crc_bit [5] ^ crc_bit [4] ^ crc_bit [2] ^ crc_bit [1];
;     new_bit[8]  = crc_bit[31] ^ crc_bit[28] ^ crc_bit[23] ^ crc_bit[22] ^ crc_bit[17] ^ crc_bit[12] ^ crc_bit[11] ^ crc_bit[10] ^ crc_bit [8] ^ crc_bit [4] ^ crc_bit [3] ^ crc_bit [1] ^ crc_bit[0];
;     new_bit[7]  = crc_bit[29] ^ crc_bit[28] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[23] ^ crc_bit[22] ^ crc_bit[21] ^ crc_bit[16] ^ crc_bit[15] ^ crc_bit[10] ^ crc_bit [8] ^ crc_bit [7] ^ crc_bit[5] ^ crc_bit[3] ^ crc_bit[2] ^ crc_bit[0];
;     new_bit[6]  = crc_bit[30] ^ crc_bit[29] ^ crc_bit[25] ^ crc_bit[22] ^ crc_bit[21] ^ crc_bit[20] ^ crc_bit[14] ^ crc_bit[11] ^ crc_bit [8] ^ crc_bit [7] ^ crc_bit [6] ^ crc_bit [5] ^ crc_bit[4] ^ crc_bit[2] ^ crc_bit[1];
;     new_bit[5]  = crc_bit[29] ^ crc_bit[28] ^ crc_bit[24] ^ crc_bit[21] ^ crc_bit[20] ^ crc_bit[19] ^ crc_bit[13] ^ crc_bit[10] ^ crc_bit [7] ^ crc_bit [6] ^ crc_bit [5] ^ crc_bit [4] ^ crc_bit[3] ^ crc_bit[1] ^ crc_bit[0];
;     new_bit[4]  = crc_bit[31] ^ crc_bit[30] ^ crc_bit[29] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[20] ^ crc_bit[19] ^ crc_bit[18] ^ crc_bit[15] ^ crc_bit[12] ^ crc_bit[11] ^ crc_bit [8] ^ crc_bit[6] ^ crc_bit[4] ^ crc_bit[3] ^ crc_bit[2] ^ crc_bit[0];
;     new_bit[3]  = crc_bit[31] ^ crc_bit[27] ^ crc_bit[25] ^ crc_bit[19] ^ crc_bit[18] ^ crc_bit[17] ^ crc_bit[15] ^ crc_bit[14] ^ crc_bit[10] ^ crc_bit [9] ^ crc_bit [8] ^ crc_bit [7] ^ crc_bit[3] ^ crc_bit[2] ^ crc_bit[1];
;     new_bit[2]  = crc_bit[31] ^ crc_bit[30] ^ crc_bit[26] ^ crc_bit[24] ^ crc_bit[18] ^ crc_bit[17] ^ crc_bit[16] ^ crc_bit[14] ^ crc_bit[13] ^ crc_bit [9] ^ crc_bit [8] ^ crc_bit [7] ^ crc_bit[6] ^ crc_bit[2] ^ crc_bit[1] ^ crc_bit[0];
;     new_bit[1]  = crc_bit[28] ^ crc_bit[27] ^ crc_bit[24] ^ crc_bit[17] ^ crc_bit[16] ^ crc_bit[13] ^ crc_bit[12] ^ crc_bit[11] ^ crc_bit [9] ^ crc_bit [7] ^ crc_bit [6] ^ crc_bit [1] ^ crc_bit[0];
;     new_bit[0]  = crc_bit[31] ^ crc_bit[30] ^ crc_bit[29] ^ crc_bit[28] ^ crc_bit[26] ^ crc_bit[25] ^ crc_bit[24] ^ crc_bit[16] ^ crc_bit[12] ^ crc_bit[10] ^ crc_bit [9] ^ crc_bit [6] ^ crc_bit[0];
;     /* The new CRC value has been calculated as individual bits in the */
;     /* new_bit array. Re-assembled it into a 32 bit value and "clock" it */
;     /* into the "register". */
;     crc = 0;
;     for (i = 31; i >= 0; --i) {
;       crc = crc << 1;
;       crc |= new_bit[i];
;     }
;     printf("Running CRC value is 0x%08X\n", crc);
;   }
;   printf("\n\nThe total number of data words processed was %d\n", data_count);
;   printf("The CRC is 0x%08X\n\n", crc);
;   return 0;
; }
;
; The following is the sample data used as input for the example stored in file sample:
; 0x00308027
; 0xE1234567
; 0x00000000
; 0x00000002
; 0x00000000
; Executing the command ./crc < sample yields the following output:
; Running CRC value is 0x11E353FD
; Running CRC value is 0x0F656DA7
; Running CRC value is 0x3D14369C
; Running CRC value is 0x92D0D681
; Running CRC value is 0x319FFF6F
; The total number of data words processed was 5
; The CRC is 0x319FFF6F

