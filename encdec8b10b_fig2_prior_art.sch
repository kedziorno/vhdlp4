VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex4"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL clkn
        SIGNAL pdos6
        SIGNAL pdos6n
        SIGNAL ndos6
        SIGNAL ndos6n
        SIGNAL pdos4
        SIGNAL pdos4n
        SIGNAL ndos4
        SIGNAL ndos4n
        SIGNAL nd_1s4
        SIGNAL pd_1s4
        SIGNAL nd_1s6
        SIGNAL pd_1s6
        SIGNAL compls6
        SIGNAL compls4
        SIGNAL compls4n
        SIGNAL compls6n
        SIGNAL a01o
        SIGNAL a02o
        SIGNAL a03o
        SIGNAL a04o
        SIGNAL a05o
        SIGNAL a06o
        SIGNAL b02o
        SIGNAL b01o
        SIGNAL c04o
        SIGNAL c03o
        SIGNAL c02o
        SIGNAL c01o
        SIGNAL ff01q
        SIGNAL ff01qn
        SIGNAL XLXN_145
        SIGNAL ff02qn
        SIGNAL ff02q
        SIGNAL XLXN_172
        SIGNAL pdl6
        PORT Input clk
        PORT Input pdos6
        PORT Input ndos6
        PORT Input pdos4
        PORT Input ndos4
        PORT Input nd_1s4
        PORT Input pd_1s4
        PORT Input nd_1s6
        PORT Input pd_1s6
        PORT Output pdl6
        BEGIN BLOCKDEF title
            TIMESTAMP 2000 1 1 10 10 10
            LINE N -764 -288 -796 -256 
            LINE N -732 -256 -764 -288 
            LINE N -776 -256 -732 -256 
            LINE N -788 -264 -776 -256 
            LINE N -840 -256 -796 -256 
            LINE N -804 -256 -836 -288 
            LINE N -800 -256 -832 -288 
            LINE N -796 -256 -828 -288 
            LINE N -832 -288 -800 -320 
            LINE N -828 -288 -796 -320 
            LINE N -828 -352 -796 -384 
            LINE N -840 -384 -796 -384 
            LINE N -796 -384 -764 -352 
            LINE N -800 -320 -832 -352 
            LINE N -796 -320 -828 -352 
            LINE N -804 -320 -836 -352 
            LINE N -832 -352 -800 -384 
            LINE N -836 -352 -804 -384 
            LINE N -872 -352 -840 -384 
            LINE N -868 -352 -836 -384 
            LINE N -732 -384 -764 -352 
            LINE N -776 -384 -732 -384 
            LINE N -788 -376 -776 -384 
            LINE N -764 -356 -736 -384 
            LINE N -768 -360 -740 -384 
            LINE N -768 -356 -740 -384 
            LINE N -772 -360 -744 -384 
            LINE N -772 -360 -748 -384 
            LINE N -772 -360 -752 -384 
            LINE N -840 -352 -808 -384 
            LINE N -844 -352 -812 -384 
            LINE N -848 -352 -816 -384 
            LINE N -852 -352 -820 -384 
            LINE N -816 -256 -848 -288 
            LINE N -820 -256 -852 -288 
            LINE N -872 -352 -828 -352 
            LINE N -836 -320 -868 -352 
            LINE N -832 -320 -864 -352 
            LINE N -828 -320 -860 -352 
            LINE N -824 -320 -856 -352 
            LINE N -872 -288 -840 -320 
            LINE N -872 -288 -828 -288 
            LINE N -860 -352 -828 -384 
            LINE N -864 -352 -832 -384 
            LINE N -856 -352 -824 -384 
            LINE N -856 -288 -824 -320 
            LINE N -852 -288 -820 -320 
            LINE N -848 -288 -816 -320 
            LINE N -844 -288 -812 -320 
            LINE N -840 -288 -808 -320 
            LINE N -836 -288 -804 -320 
            LINE N -868 -288 -836 -320 
            LINE N -864 -288 -832 -320 
            LINE N -860 -288 -828 -320 
            LINE N -840 -320 -872 -352 
            LINE N -820 -320 -852 -352 
            LINE N -816 -320 -848 -352 
            LINE N -812 -320 -844 -352 
            LINE N -808 -320 -840 -352 
            LINE N -808 -256 -840 -288 
            LINE N -812 -256 -844 -288 
            LINE N -836 -256 -868 -288 
            LINE N -840 -256 -872 -288 
            LINE N -824 -256 -856 -288 
            LINE N -828 -256 -860 -288 
            LINE N -832 -256 -864 -288 
            LINE N -772 -364 -756 -384 
            LINE N -776 -364 -756 -384 
            LINE N -776 -368 -760 -384 
            LINE N -780 -368 -764 -384 
            LINE N -780 -372 -768 -384 
            LINE N -784 -372 -772 -384 
            LINE N -784 -376 -772 -384 
            LINE N -612 -272 -612 -368 
            LINE N -616 -272 -616 -368 
            LINE N -620 -272 -620 -368 
            LINE N -564 -276 -612 -276 
            LINE N -456 -272 -456 -368 
            LINE N -460 -272 -460 -368 
            LINE N -640 -272 -640 -368 
            LINE N -392 -272 -444 -368 
            LINE N -392 -368 -444 -272 
            LINE N -660 -272 -712 -368 
            LINE N -660 -368 -716 -272 
            LINE N -544 -272 -544 -368 
            LINE N -644 -272 -644 -368 
            LINE N -636 -272 -636 -368 
            LINE N -656 -272 -708 -368 
            LINE N -468 -272 -520 -368 
            LINE N -660 -272 -716 -368 
            LINE N -664 -272 -720 -368 
            LINE N -524 -272 -524 -368 
            LINE N -528 -272 -528 -368 
            LINE N -632 -272 -632 -368 
            LINE N -468 -272 -524 -368 
            LINE N -540 -272 -540 -368 
            LINE N -464 -272 -516 -368 
            LINE N -460 -272 -516 -368 
            LINE N -548 -272 -548 -368 
            LINE N -388 -272 -440 -368 
            LINE N -564 -272 -612 -272 
            LINE N -664 -368 -720 -272 
            LINE N -772 -256 -784 -264 
            LINE N -784 -268 -772 -256 
            LINE N -768 -256 -780 -268 
            LINE N -780 -272 -764 -256 
            LINE N -760 -256 -776 -272 
            LINE N -776 -276 -756 -256 
            LINE N -756 -256 -772 -276 
            LINE N -772 -280 -752 -256 
            LINE N -748 -256 -772 -280 
            LINE N -772 -280 -744 -256 
            LINE N -740 -256 -768 -280 
            LINE N -768 -284 -740 -256 
            LINE N -736 -256 -764 -284 
            LINE N -388 -272 -436 -368 
            LINE N -384 -272 -436 -368 
            LINE N -388 -368 -440 -272 
            LINE N -112 -176 -1140 -176 
            BEGIN LINE W -1136 -416 -1136 -212 
            END LINE
            BEGIN LINE W -80 -416 -80 -220 
            END LINE
            BEGIN LINE W -1136 -416 -80 -416 
            END LINE
            LINE N -1136 -128 -80 -128 
            LINE N -1132 -220 -80 -220 
            BEGIN LINE W -80 -80 -352 -80 
            END LINE
            BEGIN LINE W -1136 -80 -352 -80 
            END LINE
            BEGIN LINE W -1136 -224 -1136 -80 
            END LINE
            BEGIN LINE W -144 -80 -152 -80 
            END LINE
            BEGIN LINE W -80 -224 -80 -80 
            END LINE
            LINE N -112 -176 -80 -176 
            LINE N -176 -128 -144 -128 
            LINE N -296 -128 -296 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
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
        BEGIN BLOCKDEF and3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
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
        BEGIN BLOCKDEF buf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BLOCK XLXI_1 title
        BEGIN BLOCK XLXI_2 inv
            PIN I clk
            PIN O clkn
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I pdos6
            PIN O pdos6n
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I ndos6
            PIN O ndos6n
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I pdos4
            PIN O pdos4n
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I ndos4
            PIN O ndos4n
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I compls6
            PIN O compls6n
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I compls4
            PIN O compls4n
        END BLOCK
        BEGIN BLOCK ff02 fd
            PIN C clkn
            PIN D b02o
            PIN Q ff02q
        END BLOCK
        BEGIN BLOCK XLXI_25 inv
            PIN I ff01q
            PIN O ff01qn
        END BLOCK
        BEGIN BLOCK XLXI_26 inv
            PIN I ff02q
            PIN O ff02qn
        END BLOCK
        BEGIN BLOCK b02 or3
            PIN I0 a06o
            PIN I1 a05o
            PIN I2 a04o
            PIN O b02o
        END BLOCK
        BEGIN BLOCK b01 or3
            PIN I0 a03o
            PIN I1 a02o
            PIN I2 a01o
            PIN O b01o
        END BLOCK
        BEGIN BLOCK ff01 fd
            PIN C clk
            PIN D b01o
            PIN Q ff01q
        END BLOCK
        BEGIN BLOCK c02 and2
            PIN I0 pd_1s4
            PIN I1 ff01qn
            PIN O c02o
        END BLOCK
        BEGIN BLOCK c01 and2
            PIN I0 ff01q
            PIN I1 nd_1s4
            PIN O c01o
        END BLOCK
        BEGIN BLOCK c04 and2
            PIN I0 pd_1s6
            PIN I1 ff02qn
            PIN O c04o
        END BLOCK
        BEGIN BLOCK c03 and2
            PIN I0 ff02q
            PIN I1 nd_1s6
            PIN O c03o
        END BLOCK
        BEGIN BLOCK d01 or2
            PIN I0 c02o
            PIN I1 c01o
            PIN O compls6
        END BLOCK
        BEGIN BLOCK d02 or2
            PIN I0 c04o
            PIN I1 c03o
            PIN O compls4
        END BLOCK
        BEGIN BLOCK a01 and2
            PIN I0 compls6n
            PIN I1 pdos6
            PIN O a01o
        END BLOCK
        BEGIN BLOCK a02 and2
            PIN I0 ndos6
            PIN I1 compls6
            PIN O a02o
        END BLOCK
        BEGIN BLOCK a05 and2
            PIN I0 compls4
            PIN I1 ndos4
            PIN O a05o
        END BLOCK
        BEGIN BLOCK a06 and2
            PIN I0 compls4n
            PIN I1 pdos4
            PIN O a06o
        END BLOCK
        BEGIN BLOCK a04 and3
            PIN I0 ndos4n
            PIN I1 pdos4n
            PIN I2 ff01q
            PIN O a04o
        END BLOCK
        BEGIN BLOCK a03 and3
            PIN I0 ff02q
            PIN I1 ndos6n
            PIN I2 pdos6n
            PIN O a03o
        END BLOCK
        BEGIN BLOCK XLXI_46 buf
            PIN I b01o
            PIN O pdl6
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3801 2688
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH clk
            WIRE 128 48 176 48
        END BRANCH
        INSTANCE XLXI_2 176 80 R0
        BEGIN BRANCH clkn
            WIRE 400 48 416 48
            WIRE 416 48 448 48
            BEGIN DISPLAY 420 48 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdos6
            WIRE 128 112 176 112
        END BRANCH
        INSTANCE XLXI_3 176 144 R0
        BEGIN BRANCH pdos6n
            WIRE 400 112 416 112
            WIRE 416 112 448 112
            BEGIN DISPLAY 424 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndos6
            WIRE 128 176 176 176
        END BRANCH
        INSTANCE XLXI_5 176 208 R0
        BEGIN BRANCH ndos6n
            WIRE 400 176 432 176
            WIRE 432 176 448 176
            BEGIN DISPLAY 436 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdos4
            WIRE 128 240 176 240
        END BRANCH
        INSTANCE XLXI_6 176 272 R0
        BEGIN BRANCH pdos4n
            WIRE 400 240 432 240
            WIRE 432 240 448 240
            BEGIN DISPLAY 436 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndos4
            WIRE 128 304 176 304
        END BRANCH
        INSTANCE XLXI_7 176 336 R0
        BEGIN BRANCH ndos4n
            WIRE 400 304 432 304
            WIRE 432 304 448 304
            BEGIN DISPLAY 436 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nd_1s4
            WIRE 144 384 192 384
            BEGIN DISPLAY 192 384 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pd_1s4
            WIRE 144 416 192 416
            BEGIN DISPLAY 192 416 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nd_1s6
            WIRE 144 448 192 448
            BEGIN DISPLAY 192 448 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pd_1s6
            WIRE 144 480 192 480
            BEGIN DISPLAY 192 480 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 128 560 176 560
            BEGIN DISPLAY 128 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 176 592 R0
        BEGIN BRANCH compls4
            WIRE 128 624 176 624
            BEGIN DISPLAY 128 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls4n
            WIRE 400 624 432 624
            WIRE 432 624 448 624
            BEGIN DISPLAY 432 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6n
            WIRE 400 560 432 560
            WIRE 432 560 448 560
            BEGIN DISPLAY 436 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_8 176 656 R0
        IOMARKER 128 48 clk R180 28
        IOMARKER 128 112 pdos6 R180 28
        IOMARKER 128 176 ndos6 R180 28
        IOMARKER 128 240 pdos4 R180 28
        IOMARKER 128 304 ndos4 R180 28
        IOMARKER 144 384 nd_1s4 R180 28
        IOMARKER 144 416 pd_1s4 R180 28
        IOMARKER 144 448 nd_1s6 R180 28
        IOMARKER 144 480 pd_1s6 R180 28
        BEGIN BRANCH b02o
            WIRE 1392 448 1424 448
            WIRE 1424 448 1456 448
            BEGIN DISPLAY 1424 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clkn
            WIRE 1424 576 1456 576
            BEGIN DISPLAY 1424 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1424 256 1456 256
            BEGIN DISPLAY 1424 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b01o
            WIRE 1392 128 1408 128
            WIRE 1408 128 1456 128
            BEGIN DISPLAY 1412 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE b02 1136 576 R0
        BEGIN BRANCH a04o
            WIRE 1104 384 1136 384
            BEGIN DISPLAY 1104 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 1104 448 1136 448
            BEGIN DISPLAY 1104 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 1104 512 1136 512
            BEGIN DISPLAY 1104 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE b01 1136 256 R0
        BEGIN BRANCH a01o
            WIRE 1104 64 1136 64
            BEGIN DISPLAY 1104 64 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a02o
            WIRE 1104 128 1136 128
            BEGIN DISPLAY 1104 128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a03o
            WIRE 1104 192 1136 192
            BEGIN DISPLAY 1104 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE ff01 1456 384 R0
        BEGIN INSTANCE XLXI_1 3856 2736 R0
        END INSTANCE
        BEGIN BRANCH ff01q
            WIRE 1840 128 1856 128
            WIRE 1856 128 1856 272
            WIRE 1856 272 1872 272
            BEGIN DISPLAY 1856 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_25 1872 304 R0
        BEGIN BRANCH ff01qn
            WIRE 2096 272 2112 272
            BEGIN DISPLAY 2112 272 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_26 1872 624 R0
        BEGIN BRANCH ff02qn
            WIRE 2096 592 2112 592
            BEGIN DISPLAY 2112 592 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE c02 2240 304 R0
        INSTANCE c01 2240 208 R0
        BEGIN BRANCH nd_1s4
            WIRE 2208 80 2240 80
            BEGIN DISPLAY 2208 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff01q
            WIRE 2208 144 2240 144
            BEGIN DISPLAY 2208 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff01qn
            WIRE 2208 176 2240 176
            BEGIN DISPLAY 2208 176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pd_1s4
            WIRE 2208 240 2240 240
            BEGIN DISPLAY 2208 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c01o
            WIRE 2496 112 2528 112
            BEGIN DISPLAY 2528 112 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c02o
            WIRE 2496 208 2528 208
            BEGIN DISPLAY 2528 208 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE c04 2240 624 R0
        INSTANCE c03 2240 528 R0
        BEGIN BRANCH nd_1s6
            WIRE 2208 400 2240 400
            BEGIN DISPLAY 2208 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff02qn
            WIRE 2208 496 2240 496
            BEGIN DISPLAY 2208 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pd_1s6
            WIRE 2208 560 2240 560
            BEGIN DISPLAY 2208 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c04o
            WIRE 2496 528 2528 528
            BEGIN DISPLAY 2528 528 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c03o
            WIRE 2496 432 2528 432
            BEGIN DISPLAY 2528 432 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE ff02 1456 704 R0
        BEGIN BRANCH ff02q
            WIRE 1840 448 1856 448
            WIRE 1856 448 1856 592
            WIRE 1856 592 1872 592
            BEGIN DISPLAY 1856 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff02q
            WIRE 2208 464 2240 464
            BEGIN DISPLAY 2208 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE d01 2544 384 R0
        BEGIN BRANCH c01o
            WIRE 2512 256 2544 256
            BEGIN DISPLAY 2512 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c02o
            WIRE 2512 320 2544 320
            BEGIN DISPLAY 2512 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 2800 288 2816 288
            WIRE 2816 288 2832 288
            WIRE 2832 288 2848 288
            BEGIN DISPLAY 2848 288 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c03o
            WIRE 2512 576 2560 576
            BEGIN DISPLAY 2512 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c04o
            WIRE 2512 640 2560 640
            BEGIN DISPLAY 2512 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE d02 2560 704 R0
        BEGIN BRANCH compls4
            WIRE 2816 608 2832 608
            WIRE 2832 608 2848 608
            BEGIN DISPLAY 2848 608 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE a01 640 160 R0
        INSTANCE a02 640 256 R0
        INSTANCE a05 640 656 R0
        INSTANCE a06 640 752 R0
        BEGIN BRANCH a02o
            WIRE 896 160 912 160
            WIRE 912 160 928 160
            BEGIN DISPLAY 928 160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 896 560 928 560
            BEGIN DISPLAY 928 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 896 656 912 656
            WIRE 912 656 928 656
            BEGIN DISPLAY 928 656 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls4n
            WIRE 608 688 640 688
            BEGIN DISPLAY 608 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdos4
            WIRE 608 624 640 624
            BEGIN DISPLAY 608 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls4
            WIRE 608 592 640 592
            BEGIN DISPLAY 608 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndos4
            WIRE 608 528 640 528
            BEGIN DISPLAY 608 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndos6
            WIRE 608 192 640 192
            BEGIN DISPLAY 608 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 608 128 640 128
            BEGIN DISPLAY 608 128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6n
            WIRE 608 96 640 96
            BEGIN DISPLAY 608 96 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdos6
            WIRE 608 32 640 32
            BEGIN DISPLAY 608 32 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a01o
            WIRE 896 64 912 64
            WIRE 912 64 928 64
            BEGIN DISPLAY 928 64 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a04o
            WIRE 896 448 928 448
            BEGIN DISPLAY 928 448 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndos4n
            WIRE 608 512 640 512
            BEGIN DISPLAY 608 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdos4n
            WIRE 608 448 640 448
            BEGIN DISPLAY 608 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff01q
            WIRE 608 384 640 384
            BEGIN DISPLAY 608 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a04 640 576 R0
        BEGIN BRANCH a03o
            WIRE 896 272 912 272
            WIRE 912 272 912 272
            WIRE 912 272 928 272
            BEGIN DISPLAY 928 272 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff02q
            WIRE 608 336 640 336
            BEGIN DISPLAY 608 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndos6n
            WIRE 608 272 640 272
            BEGIN DISPLAY 608 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdos6n
            WIRE 608 208 640 208
            BEGIN DISPLAY 608 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a03 640 400 R0
        INSTANCE XLXI_46 176 800 R0
        BEGIN BRANCH pdl6
            WIRE 400 768 448 768
        END BRANCH
        IOMARKER 448 768 pdl6 R0 28
        BEGIN BRANCH b01o
            WIRE 128 768 176 768
            BEGIN DISPLAY 128 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
