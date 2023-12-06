VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex4"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    ATTR RenameBusIO "Always|BaseDashIndex"
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL clkn
        SIGNAL e03o
        SIGNAL e02o
        SIGNAL e01o
        SIGNAL f04o
        SIGNAL f03o
        SIGNAL f02o
        SIGNAL f01o
        SIGNAL inf
        SIGNAL ff01aq
        SIGNAL ig
        SIGNAL ff02aq
        SIGNAL ih
        SIGNAL ff03aq
        SIGNAL ik
        SIGNAL ff04aq
        SIGNAL oof
        SIGNAL og
        SIGNAL oh
        SIGNAL oj
        SIGNAL ff01aqn
        SIGNAL ff02aqn
        SIGNAL ff03aqn
        SIGNAL iis
        SIGNAL b02o
        SIGNAL a01o
        SIGNAL a02o
        SIGNAL b01o
        SIGNAL b03o
        SIGNAL c01o
        SIGNAL c03o
        SIGNAL c04o
        SIGNAL d01o
        SIGNAL d02o
        SIGNAL c02o
        SIGNAL compls4
        SIGNAL pd_1s4
        SIGNAL pdos4
        SIGNAL ndos4
        PORT Input clk
        PORT Input inf
        PORT Input ig
        PORT Input ih
        PORT Input ik
        PORT Output oof
        PORT Output og
        PORT Output oh
        PORT Output oj
        PORT Input iis
        PORT Input compls4
        PORT Output pd_1s4
        PORT Output pdos4
        PORT Output ndos4
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF buf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv
            PIN I clk
            PIN O clkn
        END BLOCK
        BEGIN BLOCK ff01a fd
            PIN C clkn
            PIN D inf
            PIN Q ff01aq
        END BLOCK
        BEGIN BLOCK ff02a fd
            PIN C clkn
            PIN D ig
            PIN Q ff02aq
        END BLOCK
        BEGIN BLOCK ff03a fd
            PIN C clkn
            PIN D ih
            PIN Q ff03aq
        END BLOCK
        BEGIN BLOCK ff04a fd
            PIN C clkn
            PIN D ik
            PIN Q ff04aq
        END BLOCK
        BEGIN BLOCK XLXI_78 fd
            PIN C clkn
            PIN D f01o
            PIN Q oof
        END BLOCK
        BEGIN BLOCK XLXI_79 fd
            PIN C clkn
            PIN D f02o
            PIN Q og
        END BLOCK
        BEGIN BLOCK XLXI_80 fd
            PIN C clkn
            PIN D f03o
            PIN Q oh
        END BLOCK
        BEGIN BLOCK XLXI_94 fd
            PIN C clkn
            PIN D f04o
            PIN Q oj
        END BLOCK
        BEGIN BLOCK XLXI_99 inv
            PIN I ff01aq
            PIN O ff01aqn
        END BLOCK
        BEGIN BLOCK XLXI_100 inv
            PIN I ff02aq
            PIN O ff02aqn
        END BLOCK
        BEGIN BLOCK XLXI_101 inv
            PIN I ff03aq
            PIN O ff03aqn
        END BLOCK
        BEGIN BLOCK e01 or2
            PIN I0 d01o
            PIN I1 ff01aqn
            PIN O e01o
        END BLOCK
        BEGIN BLOCK e02 or2
            PIN I0 b03o
            PIN I1 ff02aq
            PIN O e02o
        END BLOCK
        BEGIN BLOCK e03 or2
            PIN I0 c01o
            PIN I1 d01o
            PIN O e03o
        END BLOCK
        BEGIN BLOCK a01 and2
            PIN I0 ff02aq
            PIN I1 ff01aq
            PIN O a01o
        END BLOCK
        BEGIN BLOCK a02 and2
            PIN I0 ff02aqn
            PIN I1 ff01aqn
            PIN O a02o
        END BLOCK
        BEGIN BLOCK b01 or2
            PIN I0 a02o
            PIN I1 a01o
            PIN O b01o
        END BLOCK
        BEGIN BLOCK b02 and2
            PIN I0 ff03aq
            PIN I1 a01o
            PIN O b02o
        END BLOCK
        BEGIN BLOCK b03 and2
            PIN I0 a02o
            PIN I1 ff03aqn
            PIN O b03o
        END BLOCK
        BEGIN BLOCK c01 and2
            PIN I0 b01o
            PIN I1 ff03aqn
            PIN O c01o
        END BLOCK
        BEGIN BLOCK c02 and2
            PIN I0 ff04aq
            PIN I1 b01o
            PIN O c02o
        END BLOCK
        BEGIN BLOCK c03 and2
            PIN I0 b02o
            PIN I1 ff04aq
            PIN O c03o
        END BLOCK
        BEGIN BLOCK c04 and2
            PIN I0 iis
            PIN I1 b02o
            PIN O c04o
        END BLOCK
        BEGIN BLOCK f01 xor2
            PIN I0 compls4
            PIN I1 e01o
            PIN O f01o
        END BLOCK
        BEGIN BLOCK f02 xor2
            PIN I0 compls4
            PIN I1 e02o
            PIN O f02o
        END BLOCK
        BEGIN BLOCK f03 xor2
            PIN I0 compls4
            PIN I1 ff03aq
            PIN O f03o
        END BLOCK
        BEGIN BLOCK f04 xor2
            PIN I0 compls4
            PIN I1 e03o
            PIN O f04o
        END BLOCK
        BEGIN BLOCK d01 or2
            PIN I0 c04o
            PIN I1 c03o
            PIN O d01o
        END BLOCK
        BEGIN BLOCK d02 or2
            PIN I0 a02o
            PIN I1 c02o
            PIN O d02o
        END BLOCK
        BEGIN BLOCK XLXI_103 buf
            PIN I d02o
            PIN O pd_1s4
        END BLOCK
        BEGIN BLOCK XLXI_104 buf
            PIN I b02o
            PIN O pdos4
        END BLOCK
        BEGIN BLOCK XLXI_105 buf
            PIN I a02o
            PIN O ndos4
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 1760 1360
        BEGIN BRANCH clk
            WIRE 80 48 112 48
            WIRE 112 48 128 48
        END BRANCH
        INSTANCE XLXI_1 128 80 R0
        BEGIN BRANCH clkn
            WIRE 352 48 384 48
            WIRE 384 48 384 48
            WIRE 384 48 400 48
            BEGIN DISPLAY 400 48 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 80 48 clk R180 28
        BEGIN BRANCH inf
            WIRE 80 192 112 192
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 64 320 112 320
            BEGIN DISPLAY 64 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff01aq
            WIRE 496 192 528 192
            WIRE 528 192 528 192
            BEGIN DISPLAY 524 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE ff01a 112 448 R0
        IOMARKER 80 192 inf R180 28
        BEGIN BRANCH ig
            WIRE 80 448 112 448
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 64 576 112 576
            BEGIN DISPLAY 64 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff02aq
            WIRE 496 448 528 448
            WIRE 528 448 528 448
            BEGIN DISPLAY 524 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE ff02a 112 704 R0
        IOMARKER 80 448 ig R180 28
        BEGIN BRANCH ih
            WIRE 80 704 112 704
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 64 832 112 832
            BEGIN DISPLAY 64 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff03aq
            WIRE 496 704 528 704
            WIRE 528 704 528 704
            BEGIN DISPLAY 524 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE ff03a 112 960 R0
        IOMARKER 80 704 ih R180 28
        BEGIN BRANCH ik
            WIRE 80 960 112 960
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 64 1088 112 1088
            BEGIN DISPLAY 64 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff04aq
            WIRE 496 960 528 960
            WIRE 528 960 528 960
            BEGIN DISPLAY 528 960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 80 960 ik R180 28
        INSTANCE XLXI_78 1280 640 R0
        INSTANCE XLXI_79 1280 896 R0
        INSTANCE XLXI_80 1280 1152 R0
        INSTANCE XLXI_94 1280 1408 R0
        BEGIN BRANCH oof
            WIRE 1664 384 1696 384
        END BRANCH
        BEGIN BRANCH og
            WIRE 1664 640 1696 640
        END BRANCH
        BEGIN BRANCH oh
            WIRE 1664 896 1696 896
        END BRANCH
        BEGIN BRANCH oj
            WIRE 1664 1152 1696 1152
        END BRANCH
        IOMARKER 1696 1152 oj R0 28
        IOMARKER 1696 896 oh R0 28
        IOMARKER 1696 640 og R0 28
        IOMARKER 1696 384 oof R0 28
        BEGIN BRANCH f01o
            WIRE 1248 384 1280 384
            BEGIN DISPLAY 1248 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 1248 512 1280 512
            BEGIN DISPLAY 1248 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f02o
            WIRE 1248 640 1280 640
            BEGIN DISPLAY 1248 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 1248 768 1280 768
            BEGIN DISPLAY 1248 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f03o
            WIRE 1248 896 1280 896
            BEGIN DISPLAY 1248 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 1248 1024 1280 1024
            BEGIN DISPLAY 1248 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f04o
            WIRE 1248 1152 1280 1152
            BEGIN DISPLAY 1248 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 1248 1280 1280 1280
            BEGIN DISPLAY 1248 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_100 496 448 R90
        INSTANCE XLXI_101 496 704 R90
        INSTANCE ff04a 112 1216 R0
        BEGIN BRANCH ff02aqn
            WIRE 496 672 528 672
            BEGIN DISPLAY 496 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff03aqn
            WIRE 496 928 528 928
            BEGIN DISPLAY 496 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_99 496 192 R90
        BEGIN BRANCH ff01aqn
            WIRE 496 416 528 416
            BEGIN DISPLAY 496 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH iis
            WIRE 80 80 128 80
            WIRE 128 80 128 80
            WIRE 128 80 144 80
            BEGIN DISPLAY 144 80 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 80 80 iis R180 28
        INSTANCE e01 1392 160 R0
        INSTANCE e02 1392 256 R0
        INSTANCE e03 1392 352 R0
        BEGIN BRANCH ff01aqn
            WIRE 1360 32 1392 32
            BEGIN DISPLAY 1360 32 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d01o
            WIRE 1360 96 1392 96
            BEGIN DISPLAY 1360 96 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff02aq
            WIRE 1360 128 1392 128
            BEGIN DISPLAY 1360 128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b03o
            WIRE 1360 192 1392 192
            BEGIN DISPLAY 1360 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d01o
            WIRE 1360 224 1392 224
            BEGIN DISPLAY 1360 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e03o
            WIRE 1648 256 1680 256
            BEGIN DISPLAY 1680 256 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e02o
            WIRE 1648 160 1680 160
            BEGIN DISPLAY 1680 160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e01o
            WIRE 1648 64 1680 64
            BEGIN DISPLAY 1680 64 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c01o
            WIRE 1360 288 1392 288
            BEGIN DISPLAY 1360 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a01 816 160 R0
        INSTANCE a02 816 256 R0
        INSTANCE b01 816 368 R0
        INSTANCE b02 816 464 R0
        INSTANCE b03 816 560 R0
        INSTANCE c01 816 672 R0
        INSTANCE c02 816 768 R0
        INSTANCE c03 816 864 R0
        INSTANCE c04 816 960 R0
        BEGIN BRANCH iis
            WIRE 784 896 816 896
            BEGIN DISPLAY 784 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b02o
            WIRE 784 832 816 832
            BEGIN DISPLAY 784 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b02o
            WIRE 784 800 816 800
            BEGIN DISPLAY 784 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff04aq
            WIRE 784 736 816 736
            BEGIN DISPLAY 784 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff04aq
            WIRE 784 704 816 704
            BEGIN DISPLAY 784 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b01o
            WIRE 784 640 816 640
            BEGIN DISPLAY 784 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b01o
            WIRE 784 608 816 608
            BEGIN DISPLAY 784 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff03aqn
            WIRE 784 544 816 544
            BEGIN DISPLAY 784 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a02o
            WIRE 784 496 816 496
            BEGIN DISPLAY 784 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff03aqn
            WIRE 784 432 816 432
            BEGIN DISPLAY 784 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff03aq
            WIRE 784 400 816 400
            BEGIN DISPLAY 784 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a01o
            WIRE 784 336 816 336
            BEGIN DISPLAY 784 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a02o
            WIRE 784 304 816 304
            BEGIN DISPLAY 784 304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a01o
            WIRE 784 240 816 240
            BEGIN DISPLAY 784 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff02aqn
            WIRE 784 192 816 192
            BEGIN DISPLAY 784 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff01aqn
            WIRE 784 128 816 128
            BEGIN DISPLAY 784 128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff02aq
            WIRE 784 96 816 96
            BEGIN DISPLAY 784 96 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff01aq
            WIRE 784 32 816 32
            BEGIN DISPLAY 784 32 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a01o
            WIRE 1072 64 1104 64
            BEGIN DISPLAY 1104 64 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a02o
            WIRE 1072 160 1104 160
            BEGIN DISPLAY 1104 160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b01o
            WIRE 1072 272 1104 272
            BEGIN DISPLAY 1104 272 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b03o
            WIRE 1072 464 1104 464
            BEGIN DISPLAY 1104 464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c01o
            WIRE 1072 576 1104 576
            BEGIN DISPLAY 1104 576 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c03o
            WIRE 1072 768 1104 768
            BEGIN DISPLAY 1104 768 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c04o
            WIRE 1072 864 1104 864
            BEGIN DISPLAY 1104 864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE f01 816 1072 R0
        INSTANCE f02 816 1168 R0
        INSTANCE f03 816 1264 R0
        BEGIN BRANCH compls4
            WIRE 784 1008 816 1008
            BEGIN DISPLAY 784 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls4
            WIRE 784 1104 816 1104
            BEGIN DISPLAY 784 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls4
            WIRE 784 1200 816 1200
            BEGIN DISPLAY 784 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls4
            WIRE 784 1296 816 1296
            BEGIN DISPLAY 784 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f04o
            WIRE 1072 1264 1104 1264
            BEGIN DISPLAY 1104 1264 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f03o
            WIRE 1072 1168 1104 1168
            BEGIN DISPLAY 1104 1168 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f02o
            WIRE 1072 1072 1104 1072
            BEGIN DISPLAY 1104 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f01o
            WIRE 1072 976 1104 976
            BEGIN DISPLAY 1104 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE f04 816 1360 R0
        BEGIN BRANCH e03o
            WIRE 784 1232 816 1232
            BEGIN DISPLAY 784 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff03aq
            WIRE 784 1136 816 1136
            BEGIN DISPLAY 784 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e02o
            WIRE 784 1040 816 1040
            BEGIN DISPLAY 784 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e01o
            WIRE 784 944 816 944
            BEGIN DISPLAY 784 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d01o
            WIRE 384 1200 400 1200
            WIRE 400 1200 416 1200
            BEGIN DISPLAY 416 1200 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE d01 128 1296 R0
        INSTANCE d02 128 1392 R0
        BEGIN BRANCH d02o
            WIRE 384 1296 416 1296
            BEGIN DISPLAY 416 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c04o
            WIRE 96 1232 128 1232
            BEGIN DISPLAY 96 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c03o
            WIRE 96 1168 128 1168
            BEGIN DISPLAY 96 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c02o
            WIRE 96 1264 128 1264
            BEGIN DISPLAY 96 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a02o
            WIRE 96 1328 128 1328
            BEGIN DISPLAY 96 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b02o
            WIRE 1072 368 1104 368
            BEGIN DISPLAY 1104 368 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 144 112 compls4 R180 28
        BEGIN BRANCH compls4
            WIRE 144 112 160 112
            BEGIN DISPLAY 160 112 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_103 432 1296 R0
        BEGIN BRANCH d02o
            WIRE 384 1264 432 1264
            BEGIN DISPLAY 384 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pd_1s4
            WIRE 656 1264 704 1264
        END BRANCH
        IOMARKER 704 1264 pd_1s4 R0 28
        INSTANCE XLXI_104 496 96 R0
        BEGIN BRANCH b02o
            WIRE 464 64 480 64
            WIRE 480 64 496 64
            BEGIN DISPLAY 464 64 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdos4
            WIRE 720 64 752 64
        END BRANCH
        IOMARKER 752 64 pdos4 R0 28
        BEGIN BRANCH c02o
            WIRE 1072 672 1104 672
            WIRE 1104 672 1104 672
            BEGIN DISPLAY 1104 672 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_105 496 1200 R0
        IOMARKER 752 1168 ndos4 R0 28
        BEGIN BRANCH a02o
            WIRE 464 1168 496 1168
            BEGIN DISPLAY 464 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndos4
            WIRE 720 1168 752 1168
        END BRANCH
    END SHEET
END SCHEMATIC
