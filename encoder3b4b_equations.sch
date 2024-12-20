VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex4"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL f11o
        SIGNAL f10o
        SIGNAL f9o
        SIGNAL f8o
        SIGNAL f7o
        SIGNAL f6o
        SIGNAL f5o
        SIGNAL f4o
        SIGNAL f3o
        SIGNAL f2o
        SIGNAL f1o
        SIGNAL XLXN_93
        SIGNAL oof
        SIGNAL og
        SIGNAL g1o
        SIGNAL g2o
        SIGNAL g3o
        SIGNAL g4o
        SIGNAL g5o
        SIGNAL g6o
        SIGNAL g7o
        SIGNAL g8o
        SIGNAL oh
        SIGNAL h1o
        SIGNAL h2o
        SIGNAL h4o
        SIGNAL h5o
        SIGNAL h6o
        SIGNAL h7o
        SIGNAL h8o
        SIGNAL h9o
        SIGNAL h3o
        SIGNAL oj
        SIGNAL j1o
        SIGNAL j2o
        SIGNAL j3o
        SIGNAL j4o
        SIGNAL j5o
        SIGNAL j6o
        SIGNAL j7o
        SIGNAL j8o
        SIGNAL j9o
        SIGNAL t
        SIGNAL f
        SIGNAL g
        SIGNAL h
        SIGNAL k
        SIGNAL r
        SIGNAL s
        SIGNAL fn
        SIGNAL gn
        SIGNAL hn
        SIGNAL kn
        SIGNAL rn
        SIGNAL sn
        PORT Output oof
        PORT Output og
        PORT Output oh
        PORT Output oj
        PORT Input f
        PORT Input g
        PORT Input h
        PORT Input k
        PORT Input r
        PORT Input s
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
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
        BEGIN BLOCKDEF or12
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -448 64 -448 
            ARC N -40 -472 72 -360 48 -368 48 -464 
            LINE N 0 -384 64 -384 
            LINE N 0 -256 48 -256 
            LINE N 0 -320 48 -320 
            LINE N 48 -64 48 -368 
            ARC N 28 -464 204 -288 192 -416 112 -464 
            LINE N 112 -368 48 -368 
            ARC N 28 -544 204 -368 112 -368 192 -416 
            LINE N 112 -464 48 -464 
            LINE N 48 -768 48 -464 
            LINE N 256 -416 192 -416 
            LINE N 0 -640 48 -640 
            LINE N 0 -576 48 -576 
            LINE N 0 -512 48 -512 
            LINE N 0 -192 48 -192 
            LINE N 0 -768 48 -768 
            LINE N 0 -704 48 -704 
            LINE N 0 -128 48 -128 
            LINE N 0 -64 48 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCKDEF or9
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -320 72 -320 
            LINE N 0 -384 48 -384 
            LINE N 0 -64 48 -64 
            LINE N 48 -64 48 -272 
            LINE N 48 -576 48 -368 
            ARC N 28 -368 204 -192 192 -320 112 -368 
            LINE N 112 -272 48 -272 
            ARC N 28 -448 204 -272 112 -272 192 -320 
            LINE N 112 -368 48 -368 
            LINE N 256 -320 192 -320 
            ARC N -40 -376 72 -264 48 -272 48 -368 
            LINE N 0 -576 48 -576 
            LINE N 0 -512 48 -512 
            LINE N 0 -256 48 -256 
            LINE N 0 -192 48 -192 
            LINE N 0 -128 48 -128 
            LINE N 0 -448 48 -448 
        END BLOCKDEF
        BEGIN BLOCKDEF and5
            TIMESTAMP 2000 1 1 10 10 10
            ARC N 96 -240 192 -144 144 -144 144 -240 
            LINE N 144 -144 64 -144 
            LINE N 64 -240 144 -240 
            LINE N 64 -64 64 -320 
            LINE N 256 -192 192 -192 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_40 gnd
            PIN G XLXN_93
        END BLOCK
        BEGIN BLOCK orf or12
            PIN I0 f1o
            PIN I1 f2o
            PIN I10 f11o
            PIN I11 XLXN_93
            PIN I2 f3o
            PIN I3 f4o
            PIN I4 f5o
            PIN I5 f6o
            PIN I6 f7o
            PIN I7 f8o
            PIN I8 f9o
            PIN I9 f10o
            PIN O oof
        END BLOCK
        BEGIN BLOCK org or8
            PIN I0 g1o
            PIN I1 g2o
            PIN I2 g3o
            PIN I3 g4o
            PIN I4 g5o
            PIN I5 g6o
            PIN I6 g7o
            PIN I7 g8o
            PIN O og
        END BLOCK
        BEGIN BLOCK orh or9
            PIN I0 h1o
            PIN I1 h2o
            PIN I2 h3o
            PIN I3 h4o
            PIN I4 h5o
            PIN I5 h6o
            PIN I6 h7o
            PIN I7 h8o
            PIN I8 h9o
            PIN O oh
        END BLOCK
        BEGIN BLOCK orj or9
            PIN I0 j1o
            PIN I1 j2o
            PIN I2 j3o
            PIN I3 j4o
            PIN I4 j5o
            PIN I5 j6o
            PIN I6 j7o
            PIN I7 j8o
            PIN I8 j9o
            PIN O oj
        END BLOCK
        BEGIN BLOCK XLXI_118 and4
            PIN I0 r
            PIN I1 hn
            PIN I2 gn
            PIN I3 fn
            PIN O j9o
        END BLOCK
        BEGIN BLOCK XLXI_109 and4
            PIN I0 rn
            PIN I1 h
            PIN I2 g
            PIN I3 f
            PIN O h8o
        END BLOCK
        BEGIN BLOCK XLXI_110 and3
            PIN I0 r
            PIN I1 h
            PIN I2 gn
            PIN O h7o
        END BLOCK
        BEGIN BLOCK XLXI_111 and4
            PIN I0 kn
            PIN I1 h
            PIN I2 gn
            PIN I3 f
            PIN O h6o
        END BLOCK
        BEGIN BLOCK XLXI_112 and4
            PIN I0 r
            PIN I1 h
            PIN I2 g
            PIN I3 fn
            PIN O h5o
        END BLOCK
        BEGIN BLOCK XLXI_113 and4
            PIN I0 kn
            PIN I1 h
            PIN I2 g
            PIN I3 fn
            PIN O h4o
        END BLOCK
        BEGIN BLOCK XLXI_114 and4
            PIN I0 r
            PIN I1 hn
            PIN I2 g
            PIN I3 f
            PIN O h3o
        END BLOCK
        BEGIN BLOCK XLXI_115 and4
            PIN I0 rn
            PIN I1 k
            PIN I2 hn
            PIN I3 fn
            PIN O h2o
        END BLOCK
        BEGIN BLOCK XLXI_116 and4
            PIN I0 rn
            PIN I1 k
            PIN I2 hn
            PIN I3 gn
            PIN O h1o
        END BLOCK
        BEGIN BLOCK XLXI_106 and4
            PIN I0 rn
            PIN I1 hn
            PIN I2 gn
            PIN I3 fn
            PIN O h9o
        END BLOCK
        BEGIN BLOCK g7 and3
            PIN I0 rn
            PIN I1 k
            PIN I2 f
            PIN O g7o
        END BLOCK
        BEGIN BLOCK g6 and4
            PIN I0 rn
            PIN I1 hn
            PIN I2 g
            PIN I3 f
            PIN O g6o
        END BLOCK
        BEGIN BLOCK g8 and4
            PIN I0 rn
            PIN I1 h
            PIN I2 gn
            PIN I3 fn
            PIN O g8o
        END BLOCK
        BEGIN BLOCK g4 and3
            PIN I0 r
            PIN I1 hn
            PIN I2 fn
            PIN O g4o
        END BLOCK
        BEGIN BLOCK g3 and4
            PIN I0 r
            PIN I1 h
            PIN I2 g
            PIN I3 fn
            PIN O g3o
        END BLOCK
        BEGIN BLOCK g5 and4
            PIN I0 rn
            PIN I1 h
            PIN I2 g
            PIN I3 f
            PIN O g5o
        END BLOCK
        BEGIN BLOCK g2 and4
            PIN I0 kn
            PIN I1 hn
            PIN I2 g
            PIN I3 fn
            PIN O g2o
        END BLOCK
        BEGIN BLOCK g1 and4
            PIN I0 kn
            PIN I1 h
            PIN I2 g
            PIN I3 fn
            PIN O g1o
        END BLOCK
        BEGIN BLOCK f1 and4
            PIN I0 r
            PIN I1 sn
            PIN I2 kn
            PIN I3 f
            PIN O f1o
        END BLOCK
        BEGIN BLOCK f2 and4
            PIN I0 r
            PIN I1 s
            PIN I2 h
            PIN I3 f
            PIN O f2o
        END BLOCK
        BEGIN BLOCK f3 and4
            PIN I0 r
            PIN I1 k
            PIN I2 h
            PIN I3 f
            PIN O f3o
        END BLOCK
        BEGIN BLOCK f4 and4
            PIN I0 kn
            PIN I1 h
            PIN I2 gn
            PIN I3 f
            PIN O f4o
        END BLOCK
        BEGIN BLOCK f5 and4
            PIN I0 kn
            PIN I1 h
            PIN I2 gn
            PIN I3 f
            PIN O f5o
        END BLOCK
        BEGIN BLOCK f6 and4
            PIN I0 kn
            PIN I1 hn
            PIN I2 gn
            PIN I3 f
            PIN O f6o
        END BLOCK
        BEGIN BLOCK f7 and4
            PIN I0 r
            PIN I1 hn
            PIN I2 gn
            PIN I3 f
            PIN O f7o
        END BLOCK
        BEGIN BLOCK f8 and3
            PIN I0 t
            PIN I1 k
            PIN I2 fn
            PIN O f8o
        END BLOCK
        BEGIN BLOCK f10 and4
            PIN I0 rn
            PIN I1 h
            PIN I2 gn
            PIN I3 fn
            PIN O f10o
        END BLOCK
        BEGIN BLOCK f9 and4
            PIN I0 rn
            PIN I1 hn
            PIN I2 g
            PIN I3 f
            PIN O f9o
        END BLOCK
        BEGIN BLOCK f11 and4
            PIN I0 rn
            PIN I1 hn
            PIN I2 gn
            PIN I3 fn
            PIN O f11o
        END BLOCK
        BEGIN BLOCK XLXI_173 and4
            PIN I0 rn
            PIN I1 h
            PIN I2 gn
            PIN I3 fn
            PIN O j8o
        END BLOCK
        BEGIN BLOCK XLXI_174 and3
            PIN I0 r
            PIN I1 hn
            PIN I2 gn
            PIN O j7o
        END BLOCK
        BEGIN BLOCK XLXI_175 and3
            PIN I0 rn
            PIN I1 k
            PIN I2 h
            PIN O j6o
        END BLOCK
        BEGIN BLOCK XLXI_176 and4
            PIN I0 r
            PIN I1 hn
            PIN I2 gn
            PIN I3 f
            PIN O j5o
        END BLOCK
        BEGIN BLOCK XLXI_177 and4
            PIN I0 kn
            PIN I1 hn
            PIN I2 gn
            PIN I3 f
            PIN O j4o
        END BLOCK
        BEGIN BLOCK XLXI_178 and4
            PIN I0 kn
            PIN I1 hn
            PIN I2 g
            PIN I3 fn
            PIN O j3o
        END BLOCK
        BEGIN BLOCK XLXI_179 and5
            PIN I0 rn
            PIN I1 s
            PIN I2 h
            PIN I3 g
            PIN I4 f
            PIN O j2o
        END BLOCK
        BEGIN BLOCK XLXI_180 and5
            PIN I0 r
            PIN I1 sn
            PIN I2 kn
            PIN I3 g
            PIN I4 f
            PIN O j1o
        END BLOCK
        BEGIN BLOCK XLXI_1 inv
            PIN I f
            PIN O fn
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I g
            PIN O gn
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I h
            PIN O hn
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I k
            PIN O kn
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I r
            PIN O rn
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I s
            PIN O sn
        END BLOCK
        BEGIN BLOCK XLXI_289 title
            ATTR TitleFieldText "  US 2004 0233075 A1"
            ATTR NameFieldText "  ENCODER 3b to 4b"
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_40 816 2192 R180
        INSTANCE orf -16 2352 R90
        BEGIN BRANCH f11o
            WIRE 688 2336 688 2352
            BEGIN DISPLAY 688 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f10o
            WIRE 624 2336 624 2352
            BEGIN DISPLAY 624 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f9o
            WIRE 560 2336 560 2352
            BEGIN DISPLAY 560 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f8o
            WIRE 496 2336 496 2352
            BEGIN DISPLAY 496 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f7o
            WIRE 432 2336 432 2352
            BEGIN DISPLAY 432 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f6o
            WIRE 368 2336 368 2352
            BEGIN DISPLAY 368 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f5o
            WIRE 304 2336 304 2352
            BEGIN DISPLAY 304 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f4o
            WIRE 240 2336 240 2352
            BEGIN DISPLAY 240 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f3o
            WIRE 176 2336 176 2352
            BEGIN DISPLAY 176 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f2o
            WIRE 112 2336 112 2352
            BEGIN DISPLAY 112 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f1o
            WIRE 48 2336 48 2352
            BEGIN DISPLAY 48 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_93
            WIRE 752 2320 752 2352
        END BRANCH
        BEGIN BRANCH oof
            WIRE 400 2608 400 2640
        END BRANCH
        INSTANCE org 816 2352 R90
        BEGIN BRANCH og
            WIRE 1104 2608 1104 2640
        END BRANCH
        BEGIN BRANCH g1o
            WIRE 880 2336 880 2352
            BEGIN DISPLAY 880 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g2o
            WIRE 944 2336 944 2352
            BEGIN DISPLAY 944 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g3o
            WIRE 1008 2336 1008 2352
            BEGIN DISPLAY 1008 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g4o
            WIRE 1072 2336 1072 2352
            BEGIN DISPLAY 1072 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g5o
            WIRE 1136 2336 1136 2352
            BEGIN DISPLAY 1136 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g6o
            WIRE 1200 2336 1200 2352
            BEGIN DISPLAY 1200 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g7o
            WIRE 1264 2336 1264 2352
            BEGIN DISPLAY 1264 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g8o
            WIRE 1328 2336 1328 2352
            BEGIN DISPLAY 1328 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE orh 1376 2352 R90
        BEGIN BRANCH oh
            WIRE 1696 2608 1696 2640
        END BRANCH
        BEGIN BRANCH h1o
            WIRE 1440 2336 1440 2352
            BEGIN DISPLAY 1440 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h2o
            WIRE 1504 2336 1504 2352
            BEGIN DISPLAY 1504 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h4o
            WIRE 1632 2336 1632 2352
            BEGIN DISPLAY 1632 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h5o
            WIRE 1696 2336 1696 2352
            BEGIN DISPLAY 1696 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h6o
            WIRE 1760 2336 1760 2352
            BEGIN DISPLAY 1760 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h7o
            WIRE 1824 2336 1824 2352
            BEGIN DISPLAY 1824 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h8o
            WIRE 1888 2336 1888 2352
            BEGIN DISPLAY 1888 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h9o
            WIRE 1952 2336 1952 2352
            BEGIN DISPLAY 1952 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h3o
            WIRE 1568 2336 1568 2352
            BEGIN DISPLAY 1568 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE orj 2016 2352 R90
        BEGIN BRANCH oj
            WIRE 2336 2608 2336 2640
        END BRANCH
        BEGIN BRANCH j1o
            WIRE 2080 2336 2080 2352
            BEGIN DISPLAY 2080 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j2o
            WIRE 2144 2336 2144 2352
            BEGIN DISPLAY 2144 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j3o
            WIRE 2208 2336 2208 2352
            BEGIN DISPLAY 2208 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j4o
            WIRE 2272 2336 2272 2352
            BEGIN DISPLAY 2272 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j5o
            WIRE 2336 2336 2336 2352
            BEGIN DISPLAY 2336 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j6o
            WIRE 2400 2336 2400 2352
            BEGIN DISPLAY 2400 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j7o
            WIRE 2464 2336 2464 2352
            BEGIN DISPLAY 2464 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j8o
            WIRE 2528 2336 2528 2352
            BEGIN DISPLAY 2528 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j9o
            WIRE 2592 2336 2592 2352
            BEGIN DISPLAY 2592 2336 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j9o
            WIRE 2528 2144 2544 2144
            BEGIN DISPLAY 2544 2144 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_118 2272 2304 R0
        BEGIN BRANCH fn
            WIRE 2256 2048 2272 2048
            BEGIN DISPLAY 2256 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 2256 2112 2272 2112
            BEGIN DISPLAY 2256 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 2256 2176 2272 2176
            BEGIN DISPLAY 2256 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 2256 2240 2272 2240
            BEGIN DISPLAY 2256 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h9o
            WIRE 1888 2144 1904 2144
            BEGIN DISPLAY 1904 2144 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1616 2048 1632 2048
            BEGIN DISPLAY 1616 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 1616 2112 1632 2112
            BEGIN DISPLAY 1616 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 1616 2176 1632 2176
            BEGIN DISPLAY 1616 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 1616 2240 1632 2240
            BEGIN DISPLAY 1616 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_109 1632 2096 R0
        INSTANCE XLXI_110 1632 1888 R0
        INSTANCE XLXI_111 1632 1744 R0
        INSTANCE XLXI_112 1632 1536 R0
        INSTANCE XLXI_113 1632 1328 R0
        INSTANCE XLXI_114 1632 1120 R0
        INSTANCE XLXI_115 1632 912 R0
        INSTANCE XLXI_116 1632 704 R0
        BEGIN BRANCH h8o
            WIRE 1888 1936 1904 1936
            BEGIN DISPLAY 1904 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h7o
            WIRE 1888 1760 1904 1760
            BEGIN DISPLAY 1904 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h6o
            WIRE 1888 1584 1904 1584
            BEGIN DISPLAY 1904 1584 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h5o
            WIRE 1888 1376 1904 1376
            BEGIN DISPLAY 1904 1376 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h4o
            WIRE 1888 1168 1904 1168
            BEGIN DISPLAY 1904 1168 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h3o
            WIRE 1888 960 1904 960
            BEGIN DISPLAY 1904 960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h2o
            WIRE 1888 752 1904 752
            BEGIN DISPLAY 1904 752 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h1o
            WIRE 1888 544 1904 544
            BEGIN DISPLAY 1904 544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 1616 448 1632 448
            BEGIN DISPLAY 1616 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 1616 512 1632 512
            BEGIN DISPLAY 1616 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k
            WIRE 1616 576 1632 576
            BEGIN DISPLAY 1616 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 1616 640 1632 640
            BEGIN DISPLAY 1616 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1616 656 1632 656
            BEGIN DISPLAY 1616 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 1616 720 1632 720
            BEGIN DISPLAY 1616 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k
            WIRE 1616 784 1632 784
            BEGIN DISPLAY 1616 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 1616 848 1632 848
            BEGIN DISPLAY 1616 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 1616 864 1632 864
            BEGIN DISPLAY 1616 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1616 928 1632 928
            BEGIN DISPLAY 1616 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 1616 992 1632 992
            BEGIN DISPLAY 1616 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 1616 1056 1632 1056
            BEGIN DISPLAY 1616 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1616 1072 1632 1072
            BEGIN DISPLAY 1616 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1616 1136 1632 1136
            BEGIN DISPLAY 1616 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1616 1200 1632 1200
            BEGIN DISPLAY 1616 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 1616 1264 1632 1264
            BEGIN DISPLAY 1616 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1616 1280 1632 1280
            BEGIN DISPLAY 1616 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1616 1344 1632 1344
            BEGIN DISPLAY 1616 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1616 1408 1632 1408
            BEGIN DISPLAY 1616 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 1616 1472 1632 1472
            BEGIN DISPLAY 1616 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 1616 1488 1632 1488
            BEGIN DISPLAY 1616 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 1616 1552 1632 1552
            BEGIN DISPLAY 1616 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1616 1616 1632 1616
            BEGIN DISPLAY 1616 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 1616 1680 1632 1680
            BEGIN DISPLAY 1616 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 1616 1696 1632 1696
            BEGIN DISPLAY 1616 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1616 1760 1632 1760
            BEGIN DISPLAY 1616 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 1616 1824 1632 1824
            BEGIN DISPLAY 1616 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 1616 1840 1632 1840
            BEGIN DISPLAY 1616 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1616 1904 1632 1904
            BEGIN DISPLAY 1616 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1616 1968 1632 1968
            BEGIN DISPLAY 1616 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 1616 2032 1632 2032
            BEGIN DISPLAY 1616 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_106 1632 2304 R0
        BEGIN BRANCH g8o
            WIRE 1296 2144 1312 2144
            BEGIN DISPLAY 1312 2144 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE g7 1040 2096 R0
        INSTANCE g6 1040 1952 R0
        BEGIN BRANCH g7o
            WIRE 1296 1968 1312 1968
            BEGIN DISPLAY 1312 1968 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g6o
            WIRE 1296 1792 1312 1792
            BEGIN DISPLAY 1312 1792 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 1024 1696 1040 1696
            BEGIN DISPLAY 1024 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1024 1760 1040 1760
            BEGIN DISPLAY 1024 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 1024 1824 1040 1824
            BEGIN DISPLAY 1024 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 1024 1888 1040 1888
            BEGIN DISPLAY 1024 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 1024 1904 1040 1904
            BEGIN DISPLAY 1024 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k
            WIRE 1024 1968 1040 1968
            BEGIN DISPLAY 1024 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 1024 2032 1040 2032
            BEGIN DISPLAY 1024 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1024 2048 1040 2048
            BEGIN DISPLAY 1024 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 1024 2112 1040 2112
            BEGIN DISPLAY 1024 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1024 2176 1040 2176
            BEGIN DISPLAY 1024 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 1024 2240 1040 2240
            BEGIN DISPLAY 1024 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE g8 1040 2304 R0
        INSTANCE g4 1040 1536 R0
        INSTANCE g3 1040 1392 R0
        BEGIN BRANCH g5o
            WIRE 1296 1584 1312 1584
            BEGIN DISPLAY 1312 1584 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g4o
            WIRE 1296 1408 1312 1408
            BEGIN DISPLAY 1312 1408 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g3o
            WIRE 1296 1232 1312 1232
            BEGIN DISPLAY 1312 1232 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1024 1136 1040 1136
            BEGIN DISPLAY 1024 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1024 1200 1040 1200
            BEGIN DISPLAY 1024 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1024 1264 1040 1264
            BEGIN DISPLAY 1024 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 1024 1328 1040 1328
            BEGIN DISPLAY 1024 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1024 1344 1040 1344
            BEGIN DISPLAY 1024 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 1024 1408 1040 1408
            BEGIN DISPLAY 1024 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 1024 1472 1040 1472
            BEGIN DISPLAY 1024 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 1024 1488 1040 1488
            BEGIN DISPLAY 1024 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1024 1552 1040 1552
            BEGIN DISPLAY 1024 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1024 1616 1040 1616
            BEGIN DISPLAY 1024 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 1024 1680 1040 1680
            BEGIN DISPLAY 1024 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE g5 1040 1744 R0
        INSTANCE g2 1040 1184 R0
        INSTANCE g1 1040 976 R0
        BEGIN BRANCH g2o
            WIRE 1296 1024 1312 1024
            BEGIN DISPLAY 1312 1024 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g1o
            WIRE 1296 816 1312 816
            BEGIN DISPLAY 1312 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1024 720 1040 720
            BEGIN DISPLAY 1024 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1024 784 1040 784
            BEGIN DISPLAY 1024 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 1024 848 1040 848
            BEGIN DISPLAY 1024 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 1024 912 1040 912
            BEGIN DISPLAY 1024 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 1024 928 1040 928
            BEGIN DISPLAY 1024 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 1024 992 1040 992
            BEGIN DISPLAY 1024 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 1024 1056 1040 1056
            BEGIN DISPLAY 1024 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 1024 1120 1040 1120
            BEGIN DISPLAY 1024 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE f1 336 288 R0
        INSTANCE f2 336 496 R0
        INSTANCE f3 336 704 R0
        BEGIN BRANCH f1o
            WIRE 592 128 608 128
            BEGIN DISPLAY 608 128 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f2o
            WIRE 592 336 608 336
            BEGIN DISPLAY 608 336 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f3o
            WIRE 592 544 608 544
            BEGIN DISPLAY 608 544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f4o
            WIRE 592 752 608 752
            BEGIN DISPLAY 608 752 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 320 32 336 32
            BEGIN DISPLAY 320 32 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 320 96 336 96
            BEGIN DISPLAY 320 96 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sn
            WIRE 320 160 336 160
            BEGIN DISPLAY 320 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 320 224 336 224
            BEGIN DISPLAY 320 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 320 240 336 240
            BEGIN DISPLAY 320 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 320 304 336 304
            BEGIN DISPLAY 320 304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s
            WIRE 320 368 336 368
            BEGIN DISPLAY 320 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 320 432 336 432
            BEGIN DISPLAY 320 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 320 448 336 448
            BEGIN DISPLAY 320 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 320 512 336 512
            BEGIN DISPLAY 320 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k
            WIRE 320 576 336 576
            BEGIN DISPLAY 320 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 320 640 336 640
            BEGIN DISPLAY 320 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 320 656 336 656
            BEGIN DISPLAY 320 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 320 720 336 720
            BEGIN DISPLAY 320 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 320 784 336 784
            BEGIN DISPLAY 320 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE f4 336 912 R0
        BEGIN BRANCH f5o
            WIRE 592 960 608 960
            BEGIN DISPLAY 608 960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 320 848 336 848
            BEGIN DISPLAY 320 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 320 864 336 864
            BEGIN DISPLAY 320 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 320 928 336 928
            BEGIN DISPLAY 320 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 320 992 336 992
            BEGIN DISPLAY 320 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 320 1056 336 1056
            BEGIN DISPLAY 320 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE f5 336 1120 R0
        BEGIN BRANCH f6o
            WIRE 592 1168 608 1168
            BEGIN DISPLAY 608 1168 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 320 1072 336 1072
            BEGIN DISPLAY 320 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 320 1136 336 1136
            BEGIN DISPLAY 320 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 320 1200 336 1200
            BEGIN DISPLAY 320 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 320 1264 336 1264
            BEGIN DISPLAY 320 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 320 1280 336 1280
            BEGIN DISPLAY 320 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE f6 336 1328 R0
        INSTANCE f7 336 1536 R0
        BEGIN BRANCH f7o
            WIRE 592 1376 608 1376
            BEGIN DISPLAY 608 1376 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f8o
            WIRE 592 1552 608 1552
            BEGIN DISPLAY 608 1552 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 320 1344 336 1344
            BEGIN DISPLAY 320 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 320 1408 336 1408
            BEGIN DISPLAY 320 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 320 1472 336 1472
            BEGIN DISPLAY 320 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 320 1488 336 1488
            BEGIN DISPLAY 320 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k
            WIRE 320 1552 336 1552
            BEGIN DISPLAY 320 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE f8 336 1680 R0
        BEGIN BRANCH t
            WIRE 320 1616 336 1616
            BEGIN DISPLAY 320 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 320 1632 336 1632
            BEGIN DISPLAY 320 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE f10 336 2096 R0
        INSTANCE f9 336 1888 R0
        BEGIN BRANCH f9o
            WIRE 592 1728 608 1728
            BEGIN DISPLAY 608 1728 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f10o
            WIRE 592 1936 608 1936
            BEGIN DISPLAY 608 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 320 1696 336 1696
            BEGIN DISPLAY 320 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 320 1760 336 1760
            BEGIN DISPLAY 320 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 320 1824 336 1824
            BEGIN DISPLAY 320 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 320 1840 336 1840
            BEGIN DISPLAY 320 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 320 1904 336 1904
            BEGIN DISPLAY 320 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 320 1968 336 1968
            BEGIN DISPLAY 320 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 320 2032 336 2032
            BEGIN DISPLAY 320 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 320 2048 336 2048
            BEGIN DISPLAY 320 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 320 2112 336 2112
            BEGIN DISPLAY 320 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 320 2176 336 2176
            BEGIN DISPLAY 320 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 320 2240 336 2240
            BEGIN DISPLAY 320 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE f11 336 2304 R0
        BEGIN BRANCH f11o
            WIRE 592 2144 608 2144
            BEGIN DISPLAY 608 2144 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_173 2272 2096 R0
        INSTANCE XLXI_174 2272 1888 R0
        INSTANCE XLXI_175 2272 1744 R0
        INSTANCE XLXI_176 2272 1600 R0
        INSTANCE XLXI_177 2272 1392 R0
        INSTANCE XLXI_178 2272 1184 R0
        INSTANCE XLXI_179 2272 976 R0
        INSTANCE XLXI_180 2272 704 R0
        BEGIN BRANCH j8o
            WIRE 2528 1936 2544 1936
            BEGIN DISPLAY 2544 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j7o
            WIRE 2528 1760 2544 1760
            BEGIN DISPLAY 2544 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j6o
            WIRE 2528 1616 2544 1616
            BEGIN DISPLAY 2544 1616 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j5o
            WIRE 2528 1440 2544 1440
            BEGIN DISPLAY 2544 1440 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j4o
            WIRE 2528 1232 2544 1232
            BEGIN DISPLAY 2544 1232 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j3o
            WIRE 2528 1024 2544 1024
            BEGIN DISPLAY 2544 1024 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j2o
            WIRE 2528 784 2544 784
            BEGIN DISPLAY 2544 784 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j1o
            WIRE 2528 512 2544 512
            BEGIN DISPLAY 2544 512 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 2256 384 2272 384
            BEGIN DISPLAY 2256 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 2256 448 2272 448
            BEGIN DISPLAY 2256 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 2256 512 2272 512
            BEGIN DISPLAY 2256 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sn
            WIRE 2256 576 2272 576
            BEGIN DISPLAY 2256 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 2256 640 2272 640
            BEGIN DISPLAY 2256 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 2256 656 2272 656
            BEGIN DISPLAY 2256 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 2256 720 2272 720
            BEGIN DISPLAY 2256 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 2256 784 2272 784
            BEGIN DISPLAY 2256 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s
            WIRE 2256 848 2272 848
            BEGIN DISPLAY 2256 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 2256 912 2272 912
            BEGIN DISPLAY 2256 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 2256 928 2272 928
            BEGIN DISPLAY 2256 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 2256 992 2272 992
            BEGIN DISPLAY 2256 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 2256 1056 2272 1056
            BEGIN DISPLAY 2256 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 2256 1120 2272 1120
            BEGIN DISPLAY 2256 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 2256 1136 2272 1136
            BEGIN DISPLAY 2256 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 2256 1200 2272 1200
            BEGIN DISPLAY 2256 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 2256 1264 2272 1264
            BEGIN DISPLAY 2256 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 2256 1328 2272 1328
            BEGIN DISPLAY 2256 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 2256 1344 2272 1344
            BEGIN DISPLAY 2256 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 2256 1408 2272 1408
            BEGIN DISPLAY 2256 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 2256 1472 2272 1472
            BEGIN DISPLAY 2256 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 2256 1536 2272 1536
            BEGIN DISPLAY 2256 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 2256 1552 2272 1552
            BEGIN DISPLAY 2256 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k
            WIRE 2256 1616 2272 1616
            BEGIN DISPLAY 2256 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 2256 1680 2272 1680
            BEGIN DISPLAY 2256 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 2256 1696 2272 1696
            BEGIN DISPLAY 2256 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 2256 1760 2272 1760
            BEGIN DISPLAY 2256 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r
            WIRE 2256 1824 2272 1824
            BEGIN DISPLAY 2256 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 2256 1840 2272 1840
            BEGIN DISPLAY 2256 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 2256 1904 2272 1904
            BEGIN DISPLAY 2256 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 2256 1968 2272 1968
            BEGIN DISPLAY 2256 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 2256 2032 2272 2032
            BEGIN DISPLAY 2256 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2336 2640 oj R90 28
        IOMARKER 400 2640 oof R90 28
        IOMARKER 1104 2640 og R90 28
        IOMARKER 1696 2640 oh R90 28
        INSTANCE XLXI_1 3120 2416 R90
        INSTANCE XLXI_2 3184 2416 R90
        INSTANCE XLXI_3 3248 2416 R90
        INSTANCE XLXI_4 3312 2416 R90
        INSTANCE XLXI_5 3376 2416 R90
        INSTANCE XLXI_6 3440 2416 R90
        BEGIN BRANCH f
            WIRE 3152 2384 3152 2416
        END BRANCH
        BEGIN BRANCH g
            WIRE 3216 2384 3216 2416
        END BRANCH
        BEGIN BRANCH h
            WIRE 3280 2384 3280 2416
        END BRANCH
        BEGIN BRANCH k
            WIRE 3344 2384 3344 2416
        END BRANCH
        BEGIN BRANCH r
            WIRE 3408 2384 3408 2416
        END BRANCH
        BEGIN BRANCH s
            WIRE 3472 2384 3472 2416
        END BRANCH
        BEGIN BRANCH fn
            WIRE 3152 2640 3152 2656
            BEGIN DISPLAY 3152 2656 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 3216 2640 3216 2656
            BEGIN DISPLAY 3216 2656 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 3280 2640 3280 2656
            BEGIN DISPLAY 3280 2656 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH kn
            WIRE 3344 2640 3344 2656
            BEGIN DISPLAY 3344 2656 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rn
            WIRE 3408 2640 3408 2656
            BEGIN DISPLAY 3408 2656 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sn
            WIRE 3472 2640 3472 2656
            BEGIN DISPLAY 3472 2656 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 3152 2384 f R270 28
        IOMARKER 3216 2384 g R270 28
        IOMARKER 3280 2384 h R270 28
        IOMARKER 3344 2384 k R270 28
        IOMARKER 3408 2384 r R270 28
        IOMARKER 3472 2384 s R270 28
        BEGIN INSTANCE XLXI_289 3584 432 R0
        END INSTANCE
        BEGIN DISPLAY 336 1616 TEXT ???
            FONT 40 "Arial"
        END DISPLAY
    END SHEET
END SCHEMATIC
