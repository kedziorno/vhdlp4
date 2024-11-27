# Hsata.cmd
#
# TYPE write_arg_type IS
# RECORD      
#   op     : string(1 to 5);
#   Data0  : NATURAL;
#   Data1  : NATURAL;
#   Data2  : NATURAL;
#   Remark : string(1 to 40);
# END RECORD;
#
#         Data0       Data1     Data2       Remark
# ------------------------------------------------
# REM                                       5-44
# WAIT    hex(7-10)                         WAIT
# RGFIS                                     RGFIS
# READ    hex(7-7)    hex(9-9)  hex(11-14)  READ
# WRITE   hex(7-7)    hex(9-9)  hex(11-14)  WRITE
#
REM   test1
WAIT  FFFF
WAIT  FFFF
WAIT  FFFF
RGFIS 
WRITE 0 0 1111
WAIT  FFFF
READ  0 0

