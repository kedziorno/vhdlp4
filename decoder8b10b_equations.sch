VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex4"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a
        SIGNAL b
        SIGNAL c
        SIGNAL d
        SIGNAL e
        SIGNAL f
        SIGNAL g
        SIGNAL h
        SIGNAL i
        SIGNAL j
        SIGNAL an
        SIGNAL bn
        SIGNAL cn
        SIGNAL dn
        SIGNAL en
        SIGNAL fn
        SIGNAL gn
        SIGNAL hn
        SIGNAL inn
        SIGNAL jn
        SIGNAL k3o
        SIGNAL k1o
        SIGNAL k2o
        SIGNAL h1o
        SIGNAL h2o
        SIGNAL h3o
        SIGNAL h4o
        SIGNAL h5o
        SIGNAL h6o
        SIGNAL k4on
        SIGNAL k4o
        SIGNAL ok
        SIGNAL oh
        SIGNAL d1o
        SIGNAL d2o
        SIGNAL d3o
        SIGNAL d4o
        SIGNAL d5o
        SIGNAL d6o
        SIGNAL d7o
        SIGNAL d8o
        SIGNAL d9o
        SIGNAL d10o
        SIGNAL d12o
        SIGNAL d13o
        SIGNAL d14o
        SIGNAL d15o
        SIGNAL c15o
        SIGNAL c14o
        SIGNAL c13o
        SIGNAL c12o
        SIGNAL c11o
        SIGNAL c10o
        SIGNAL c9o
        SIGNAL c8o
        SIGNAL c7o
        SIGNAL c6o
        SIGNAL c5o
        SIGNAL c4o
        SIGNAL c3o
        SIGNAL c2o
        SIGNAL c1o
        SIGNAL b1o
        SIGNAL b2o
        SIGNAL b3o
        SIGNAL b4o
        SIGNAL b5o
        SIGNAL b6o
        SIGNAL b7o
        SIGNAL b8o
        SIGNAL b9o
        SIGNAL b10o
        SIGNAL b11o
        SIGNAL b12o
        SIGNAL b13o
        SIGNAL b14o
        SIGNAL a13o
        SIGNAL a12o
        SIGNAL a11o
        SIGNAL a10o
        SIGNAL a9o
        SIGNAL a8o
        SIGNAL a7o
        SIGNAL a6o
        SIGNAL a5o
        SIGNAL a4o
        SIGNAL a3o
        SIGNAL a1o
        SIGNAL g1o
        SIGNAL g2o
        SIGNAL g3o
        SIGNAL g4o
        SIGNAL g5o
        SIGNAL g6o
        SIGNAL f1o
        SIGNAL f2o
        SIGNAL f3o
        SIGNAL f4o
        SIGNAL f5o
        SIGNAL e1o
        SIGNAL e2o
        SIGNAL e3o
        SIGNAL e4o
        SIGNAL e5o
        SIGNAL e6o
        SIGNAL e7o
        SIGNAL e14o
        SIGNAL e15o
        SIGNAL e13o
        SIGNAL e9o
        SIGNAL e10o
        SIGNAL e11o
        SIGNAL e12o
        SIGNAL oe
        SIGNAL XLXN_1116
        SIGNAL oof
        SIGNAL og
        SIGNAL od
        SIGNAL XLXN_1225
        SIGNAL oc
        SIGNAL XLXN_1489
        SIGNAL ob
        SIGNAL XLXN_1687
        SIGNAL XLXN_1688
        SIGNAL oa
        SIGNAL XLXN_1896
        SIGNAL XLXN_1897
        SIGNAL XLXN_1898
        SIGNAL a2o
        PORT Input a
        PORT Input b
        PORT Input c
        PORT Input d
        PORT Input e
        PORT Input f
        PORT Input g
        PORT Input h
        PORT Input i
        PORT Input j
        PORT Output ok
        PORT Output oh
        PORT Output oe
        PORT Output oof
        PORT Output og
        PORT Output od
        PORT Output oc
        PORT Output ob
        PORT Output oa
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
        BEGIN BLOCKDEF or4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF and6
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 0 -384 64 -384 
            LINE N 256 -224 192 -224 
            LINE N 64 -272 144 -272 
            LINE N 144 -176 64 -176 
            ARC N 96 -272 192 -176 144 -176 144 -272 
            LINE N 64 -64 64 -384 
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
        BEGIN BLOCKDEF or6
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -320 48 -320 
            LINE N 0 -384 48 -384 
            LINE N 256 -224 192 -224 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            ARC N 28 -272 204 -96 192 -224 112 -272 
            LINE N 112 -176 48 -176 
            ARC N 28 -352 204 -176 112 -176 192 -224 
            ARC N -40 -280 72 -168 48 -176 48 -272 
            LINE N 112 -272 48 -272 
            LINE N 48 -64 48 -176 
            LINE N 48 -272 48 -384 
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
        BEGIN BLOCKDEF or5
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 72 -192 
            LINE N 0 -256 48 -256 
            LINE N 0 -320 48 -320 
            LINE N 256 -192 192 -192 
            ARC N 28 -320 204 -144 112 -144 192 -192 
            LINE N 112 -240 48 -240 
            LINE N 112 -144 48 -144 
            LINE N 48 -64 48 -144 
            LINE N 48 -320 48 -240 
            ARC N 28 -240 204 -64 192 -192 112 -240 
            ARC N -40 -248 72 -136 48 -144 48 -240 
        END BLOCKDEF
        BEGIN BLOCKDEF or16
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -448 48 -448 
            LINE N 48 -592 48 -1024 
            ARC N 28 -592 204 -416 192 -544 112 -592 
            LINE N 112 -496 48 -496 
            ARC N 28 -672 204 -496 112 -496 192 -544 
            LINE N 112 -592 48 -592 
            ARC N -40 -600 72 -488 48 -496 48 -592 
            LINE N 48 -64 48 -496 
            LINE N 256 -544 192 -544 
            LINE N 0 -640 48 -640 
            LINE N 0 -576 64 -576 
            LINE N 0 -512 64 -512 
            LINE N 0 -384 48 -384 
            LINE N 0 -320 48 -320 
            LINE N 0 -256 48 -256 
            LINE N 0 -192 48 -192 
            LINE N 0 -1024 48 -1024 
            LINE N 0 -960 48 -960 
            LINE N 0 -896 48 -896 
            LINE N 0 -832 48 -832 
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
        BEGIN BLOCK XLXI_1 inv
            PIN I a
            PIN O an
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I b
            PIN O bn
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I c
            PIN O cn
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I d
            PIN O dn
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I e
            PIN O en
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I f
            PIN O fn
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I g
            PIN O gn
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I h
            PIN O hn
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I i
            PIN O inn
        END BLOCK
        BEGIN BLOCK XLXI_10 inv
            PIN I j
            PIN O jn
        END BLOCK
        BEGIN BLOCK k1 and4
            PIN I0 jn
            PIN I1 hn
            PIN I2 g
            PIN I3 e
            PIN O k1o
        END BLOCK
        BEGIN BLOCK k3 and4
            PIN I0 i
            PIN I1 e
            PIN I2 d
            PIN I3 c
            PIN O k3o
        END BLOCK
        BEGIN BLOCK k2 and4
            PIN I0 j
            PIN I1 h
            PIN I2 g
            PIN I3 en
            PIN O k2o
        END BLOCK
        BEGIN BLOCK k4 and4
            PIN I0 inn
            PIN I1 en
            PIN I2 dn
            PIN I3 cn
            PIN O k4o
        END BLOCK
        BEGIN BLOCK h1 and6
            PIN I0 j
            PIN I1 hn
            PIN I2 i
            PIN I3 en
            PIN I4 dn
            PIN I5 cn
            PIN O h1o
        END BLOCK
        BEGIN BLOCK h2 and3
            PIN I0 jn
            PIN I1 h
            PIN I2 k4on
            PIN O h2o
        END BLOCK
        BEGIN BLOCK h3 and3
            PIN I0 jn
            PIN I1 hn
            PIN I2 gn
            PIN O h3o
        END BLOCK
        BEGIN BLOCK h4 and3
            PIN I0 j
            PIN I1 h
            PIN I2 g
            PIN O h4o
        END BLOCK
        BEGIN BLOCK h5 and3
            PIN I0 hn
            PIN I1 gn
            PIN I2 fn
            PIN O h5o
        END BLOCK
        BEGIN BLOCK h6 and3
            PIN I0 j
            PIN I1 g
            PIN I2 f
            PIN O h6o
        END BLOCK
        BEGIN BLOCK XLXI_44 inv
            PIN I k4o
            PIN O k4on
        END BLOCK
        BEGIN BLOCK ork or4
            PIN I0 k1o
            PIN I1 k2o
            PIN I2 k3o
            PIN I3 k4o
            PIN O ok
        END BLOCK
        BEGIN BLOCK orh or6
            PIN I0 h1o
            PIN I1 h2o
            PIN I2 h3o
            PIN I3 h4o
            PIN I4 h5o
            PIN I5 h6o
            PIN O oh
        END BLOCK
        BEGIN BLOCK g1 and6
            PIN I0 jn
            PIN I1 gn
            PIN I2 inn
            PIN I3 en
            PIN I4 dn
            PIN I5 cn
            PIN O g1o
        END BLOCK
        BEGIN BLOCK g2 and6
            PIN I0 hn
            PIN I1 gn
            PIN I2 inn
            PIN I3 en
            PIN I4 dn
            PIN I5 cn
            PIN O g2o
        END BLOCK
        BEGIN BLOCK g6 and3
            PIN I0 j
            PIN I1 h
            PIN I2 fn
            PIN O g6o
        END BLOCK
        BEGIN BLOCK g5 and3
            PIN I0 jn
            PIN I1 hn
            PIN I2 f
            PIN O g5o
        END BLOCK
        BEGIN BLOCK g4 and3
            PIN I0 h
            PIN I1 g
            PIN I2 k4on
            PIN O g4o
        END BLOCK
        BEGIN BLOCK g3 and3
            PIN I0 j
            PIN I1 f
            PIN I2 k4on
            PIN O g3o
        END BLOCK
        BEGIN BLOCK f1 and5
            PIN I0 gn
            PIN I1 inn
            PIN I2 en
            PIN I3 dn
            PIN I4 cn
            PIN O f1o
        END BLOCK
        BEGIN BLOCK f2 and3
            PIN I0 jn
            PIN I1 f
            PIN I2 k4on
            PIN O f2o
        END BLOCK
        BEGIN BLOCK f3 and3
            PIN I0 hn
            PIN I1 gn
            PIN I2 k4on
            PIN O f3o
        END BLOCK
        BEGIN BLOCK f4 and3
            PIN I0 jn
            PIN I1 g
            PIN I2 f
            PIN O f4o
        END BLOCK
        BEGIN BLOCK f5 and3
            PIN I0 j
            PIN I1 h
            PIN I2 fn
            PIN O f5o
        END BLOCK
        BEGIN BLOCK e1 and5
            PIN I0 inn
            PIN I1 d
            PIN I2 cn
            PIN I3 bn
            PIN I4 a
            PIN O e1o
        END BLOCK
        BEGIN BLOCK e2 and5
            PIN I0 i
            PIN I1 e
            PIN I2 dn
            PIN I3 cn
            PIN I4 an
            PIN O e2o
        END BLOCK
        BEGIN BLOCK e3 and5
            PIN I0 i
            PIN I1 e
            PIN I2 dn
            PIN I3 cn
            PIN I4 bn
            PIN O e3o
        END BLOCK
        BEGIN BLOCK e4 and5
            PIN I0 inn
            PIN I1 d
            PIN I2 c
            PIN I3 bn
            PIN I4 an
            PIN O e4o
        END BLOCK
        BEGIN BLOCK e5 and4
            PIN I0 inn
            PIN I1 e
            PIN I2 d
            PIN I3 b
            PIN O e5o
        END BLOCK
        BEGIN BLOCK e6 and4
            PIN I0 inn
            PIN I1 en
            PIN I2 cn
            PIN I3 an
            PIN O e6o
        END BLOCK
        BEGIN BLOCK e7 and4
            PIN I0 i
            PIN I1 e
            PIN I2 c
            PIN I3 bn
            PIN O e7o
        END BLOCK
        BEGIN BLOCK e14 and3
            PIN I0 e
            PIN I1 b
            PIN I2 a
            PIN O e14o
        END BLOCK
        BEGIN BLOCK e15 and3
            PIN I0 e
            PIN I1 c
            PIN I2 b
            PIN O e15o
        END BLOCK
        BEGIN BLOCK e13 and3
            PIN I0 e
            PIN I1 c
            PIN I2 a
            PIN O e13o
        END BLOCK
        BEGIN BLOCK e9 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 bn
            PIN I3 an
            PIN O e9o
        END BLOCK
        BEGIN BLOCK e10 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 cn
            PIN I3 an
            PIN O e10o
        END BLOCK
        BEGIN BLOCK e11 and4
            PIN I0 en
            PIN I1 cn
            PIN I2 bn
            PIN I3 an
            PIN O e11o
        END BLOCK
        BEGIN BLOCK e12 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 cn
            PIN I3 bn
            PIN O e12o
        END BLOCK
        BEGIN BLOCK orf or5
            PIN I0 f1o
            PIN I1 f2o
            PIN I2 f3o
            PIN I3 f4o
            PIN I4 f5o
            PIN O oof
        END BLOCK
        BEGIN BLOCK org or6
            PIN I0 g1o
            PIN I1 g2o
            PIN I2 g3o
            PIN I3 g4o
            PIN I4 g5o
            PIN I5 g6o
            PIN O og
        END BLOCK
        BEGIN BLOCK XLXI_258 gnd
            PIN G XLXN_1225
        END BLOCK
        BEGIN BLOCK ore or16
            PIN I0 e1o
            PIN I1 e2o
            PIN I10 e11o
            PIN I11 e12o
            PIN I12 e13o
            PIN I13 e14o
            PIN I14 e15o
            PIN I15 XLXN_1116
            PIN I2 e3o
            PIN I3 e4o
            PIN I4 e5o
            PIN I5 e6o
            PIN I6 e7o
            PIN I7 k4o
            PIN I8 e9o
            PIN I9 e10o
            PIN O oe
        END BLOCK
        BEGIN BLOCK XLXI_243 gnd
            PIN G XLXN_1116
        END BLOCK
        BEGIN BLOCK ord or16
            PIN I0 d1o
            PIN I1 d2o
            PIN I10 k4o
            PIN I11 d12o
            PIN I12 d13o
            PIN I13 d14o
            PIN I14 d15o
            PIN I15 XLXN_1225
            PIN I2 d3o
            PIN I3 d4o
            PIN I4 d5o
            PIN I5 d6o
            PIN I6 d7o
            PIN I7 d8o
            PIN I8 d9o
            PIN I9 d10o
            PIN O od
        END BLOCK
        BEGIN BLOCK d7 and5
            PIN I0 i
            PIN I1 en
            PIN I2 c
            PIN I3 bn
            PIN I4 a
            PIN O d7o
        END BLOCK
        BEGIN BLOCK d8 and4
            PIN I0 d
            PIN I1 cn
            PIN I2 b
            PIN I3 an
            PIN O d8o
        END BLOCK
        BEGIN BLOCK d9 and4
            PIN I0 i
            PIN I1 e
            PIN I2 c
            PIN I3 a
            PIN O d9o
        END BLOCK
        BEGIN BLOCK d10 and3
            PIN I0 inn
            PIN I1 e
            PIN I2 d
            PIN O d10o
        END BLOCK
        BEGIN BLOCK d6 and4
            PIN I0 i
            PIN I1 c
            PIN I2 b
            PIN I3 a
            PIN O d6o
        END BLOCK
        BEGIN BLOCK d5 and5
            PIN I0 inn
            PIN I1 en
            PIN I2 d
            PIN I3 cn
            PIN I4 b
            PIN O d5o
        END BLOCK
        BEGIN BLOCK d4 and4
            PIN I0 i
            PIN I1 e
            PIN I2 b
            PIN I3 a
            PIN O d4o
        END BLOCK
        BEGIN BLOCK d3 and5
            PIN I0 i
            PIN I1 d
            PIN I2 c
            PIN I3 bn
            PIN I4 an
            PIN O d3o
        END BLOCK
        BEGIN BLOCK d2 and5
            PIN I0 inn
            PIN I1 d
            PIN I2 c
            PIN I3 bn
            PIN I4 an
            PIN O d2o
        END BLOCK
        BEGIN BLOCK d1 and6
            PIN I0 i
            PIN I1 en
            PIN I2 d
            PIN I3 cn
            PIN I4 bn
            PIN I5 a
            PIN O d1o
        END BLOCK
        BEGIN BLOCK d12 and4
            PIN I0 inn
            PIN I1 d
            PIN I2 c
            PIN I3 b
            PIN O d12o
        END BLOCK
        BEGIN BLOCK d13 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 bn
            PIN I3 an
            PIN O d13o
        END BLOCK
        BEGIN BLOCK d14 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 cn
            PIN I3 an
            PIN O d14o
        END BLOCK
        BEGIN BLOCK d15 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 cn
            PIN I3 bn
            PIN O d15o
        END BLOCK
        BEGIN BLOCK orc or16
            PIN I0 c1o
            PIN I1 c2o
            PIN I10 c11o
            PIN I11 c12o
            PIN I12 c13o
            PIN I13 c14o
            PIN I14 c15o
            PIN I15 XLXN_1489
            PIN I2 c3o
            PIN I3 c4o
            PIN I4 c5o
            PIN I5 c6o
            PIN I6 c7o
            PIN I7 c8o
            PIN I8 c9o
            PIN I9 c10o
            PIN O oc
        END BLOCK
        BEGIN BLOCK XLXI_297 gnd
            PIN G XLXN_1489
        END BLOCK
        BEGIN BLOCK c2 and5
            PIN I0 i
            PIN I1 d
            PIN I2 c
            PIN I3 bn
            PIN I4 an
            PIN O c2o
        END BLOCK
        BEGIN BLOCK c1 and6
            PIN I0 i
            PIN I1 en
            PIN I2 dn
            PIN I3 c
            PIN I4 b
            PIN I5 an
            PIN O c1o
        END BLOCK
        BEGIN BLOCK c3 and4
            PIN I0 i
            PIN I1 d
            PIN I2 b
            PIN I3 a
            PIN O c3o
        END BLOCK
        BEGIN BLOCK c4 and5
            PIN I0 inn
            PIN I1 en
            PIN I2 dn
            PIN I3 c
            PIN I4 a
            PIN O c4o
        END BLOCK
        BEGIN BLOCK c5 and5
            PIN I0 i
            PIN I1 e
            PIN I2 d
            PIN I3 cn
            PIN I4 an
            PIN O c5o
        END BLOCK
        BEGIN BLOCK c6 and5
            PIN I0 i
            PIN I1 en
            PIN I2 c
            PIN I3 bn
            PIN I4 a
            PIN O c6o
        END BLOCK
        BEGIN BLOCK c7 and4
            PIN I0 inn
            PIN I1 en
            PIN I2 cn
            PIN I3 an
            PIN O c7o
        END BLOCK
        BEGIN BLOCK c8 and4
            PIN I0 dn
            PIN I1 c
            PIN I2 bn
            PIN I3 a
            PIN O c8o
        END BLOCK
        BEGIN BLOCK c9 and4
            PIN I0 i
            PIN I1 e
            PIN I2 c
            PIN I3 bn
            PIN O c9o
        END BLOCK
        BEGIN BLOCK c10 and3
            PIN I0 inn
            PIN I1 e
            PIN I2 c
            PIN O c10o
        END BLOCK
        BEGIN BLOCK c11 and4
            PIN I0 i
            PIN I1 en
            PIN I2 dn
            PIN I3 cn
            PIN O c11o
        END BLOCK
        BEGIN BLOCK c12 and4
            PIN I0 inn
            PIN I1 d
            PIN I2 c
            PIN I3 b
            PIN O c12o
        END BLOCK
        BEGIN BLOCK c13 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 cn
            PIN I3 an
            PIN O c13o
        END BLOCK
        BEGIN BLOCK c14 and4
            PIN I0 en
            PIN I1 cn
            PIN I2 bn
            PIN I3 an
            PIN O c14o
        END BLOCK
        BEGIN BLOCK c15 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 cn
            PIN I3 bn
            PIN O c15o
        END BLOCK
        BEGIN BLOCK orb or16
            PIN I0 b1o
            PIN I1 b2o
            PIN I10 b11o
            PIN I11 b12o
            PIN I12 b13o
            PIN I13 b14o
            PIN I14 XLXN_1687
            PIN I15 XLXN_1688
            PIN I2 b3o
            PIN I3 b4o
            PIN I4 b5o
            PIN I5 b6o
            PIN I6 b7o
            PIN I7 b8o
            PIN I8 b9o
            PIN I9 b10o
            PIN O ob
        END BLOCK
        BEGIN BLOCK XLXI_326 gnd
            PIN G XLXN_1688
        END BLOCK
        BEGIN BLOCK XLXI_327 gnd
            PIN G XLXN_1687
        END BLOCK
        BEGIN BLOCK b1 and6
            PIN I0 i
            PIN I1 en
            PIN I2 dn
            PIN I3 c
            PIN I4 b
            PIN I5 an
            PIN O b1o
        END BLOCK
        BEGIN BLOCK b2 and6
            PIN I0 i
            PIN I1 en
            PIN I2 dn
            PIN I3 cn
            PIN I4 b
            PIN I5 a
            PIN O b2o
        END BLOCK
        BEGIN BLOCK b3 and5
            PIN I0 i
            PIN I1 e
            PIN I2 dn
            PIN I3 cn
            PIN I4 an
            PIN O b3o
        END BLOCK
        BEGIN BLOCK b4 and4
            PIN I0 i
            PIN I1 d
            PIN I2 c
            PIN I3 a
            PIN O b4o
        END BLOCK
        BEGIN BLOCK b5 and5
            PIN I0 i
            PIN I1 en
            PIN I2 d
            PIN I3 cn
            PIN I4 b
            PIN O b5o
        END BLOCK
        BEGIN BLOCK b6 and5
            PIN I0 i
            PIN I1 en
            PIN I2 dn
            PIN I3 c
            PIN I4 a
            PIN O b6o
        END BLOCK
        BEGIN BLOCK b7 and5
            PIN I0 i
            PIN I1 e
            PIN I2 d
            PIN I3 cn
            PIN I4 an
            PIN O b7o
        END BLOCK
        BEGIN BLOCK b8 and4
            PIN I0 d
            PIN I1 cn
            PIN I2 b
            PIN I3 an
            PIN O b8o
        END BLOCK
        BEGIN BLOCK b9 and4
            PIN I0 i
            PIN I1 e
            PIN I2 c
            PIN I3 a
            PIN O b9o
        END BLOCK
        BEGIN BLOCK b10 and3
            PIN I0 inn
            PIN I1 e
            PIN I2 b
            PIN O b10o
        END BLOCK
        BEGIN BLOCK b11 and4
            PIN I0 inn
            PIN I1 d
            PIN I2 c
            PIN I3 b
            PIN O b11o
        END BLOCK
        BEGIN BLOCK b12 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 bn
            PIN I3 an
            PIN O b12o
        END BLOCK
        BEGIN BLOCK b13 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 cn
            PIN I3 an
            PIN O b13o
        END BLOCK
        BEGIN BLOCK b14 and4
            PIN I0 en
            PIN I1 cn
            PIN I2 bn
            PIN I3 an
            PIN O b14o
        END BLOCK
        BEGIN BLOCK ora or16
            PIN I0 a1o
            PIN I1 a2o
            PIN I10 a11o
            PIN I11 a12o
            PIN I12 a13o
            PIN I13 XLXN_1898
            PIN I14 XLXN_1897
            PIN I15 XLXN_1896
            PIN I2 a3o
            PIN I3 a4o
            PIN I4 a5o
            PIN I5 a6o
            PIN I6 a7o
            PIN I7 a8o
            PIN I8 a9o
            PIN I9 a10o
            PIN O oa
        END BLOCK
        BEGIN BLOCK XLXI_367 gnd
            PIN G XLXN_1896
        END BLOCK
        BEGIN BLOCK XLXI_368 gnd
            PIN G XLXN_1897
        END BLOCK
        BEGIN BLOCK XLXI_369 gnd
            PIN G XLXN_1898
        END BLOCK
        BEGIN BLOCK a1 and6
            PIN I0 i
            PIN I1 en
            PIN I2 dn
            PIN I3 cn
            PIN I4 b
            PIN I5 a
            PIN O a1o
        END BLOCK
        BEGIN BLOCK a2 and6
            PIN I0 i
            PIN I1 en
            PIN I2 d
            PIN I3 cn
            PIN I4 bn
            PIN I5 a
            PIN O e2o
        END BLOCK
        BEGIN BLOCK a3 and5
            PIN I0 i
            PIN I1 e
            PIN I2 dn
            PIN I3 cn
            PIN I4 bn
            PIN O a3o
        END BLOCK
        BEGIN BLOCK a4 and4
            PIN I0 i
            PIN I1 d
            PIN I2 c
            PIN I3 b
            PIN O a4o
        END BLOCK
        BEGIN BLOCK a5 and5
            PIN I0 inn
            PIN I1 en
            PIN I2 d
            PIN I3 cn
            PIN I4 b
            PIN O a5o
        END BLOCK
        BEGIN BLOCK a6 and5
            PIN I0 inn
            PIN I1 en
            PIN I2 d
            PIN I3 c
            PIN I4 a
            PIN O a6o
        END BLOCK
        BEGIN BLOCK a7 and5
            PIN I0 i
            PIN I1 e
            PIN I2 d
            PIN I3 cn
            PIN I4 an
            PIN O a7o
        END BLOCK
        BEGIN BLOCK a8 and5
            PIN I0 i
            PIN I1 en
            PIN I2 c
            PIN I3 bn
            PIN I4 a
            PIN O a8o
        END BLOCK
        BEGIN BLOCK a9 and4
            PIN I0 dn
            PIN I1 c
            PIN I2 bn
            PIN I3 a
            PIN O a9o
        END BLOCK
        BEGIN BLOCK a10 and3
            PIN I0 inn
            PIN I1 e
            PIN I2 a
            PIN O a10o
        END BLOCK
        BEGIN BLOCK a11 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 bn
            PIN I3 an
            PIN O a11o
        END BLOCK
        BEGIN BLOCK a12 and4
            PIN I0 en
            PIN I1 dn
            PIN I2 cn
            PIN I3 an
            PIN O a12o
        END BLOCK
        BEGIN BLOCK a13 and4
            PIN I0 en
            PIN I1 cn
            PIN I2 bn
            PIN I3 an
            PIN O a13o
        END BLOCK
        BEGIN BLOCK XLXI_416 title
            ATTR NameFieldText "DECODE 10b to 8b  "
            ATTR TitleFieldText "US 2004 0233075 A1  "
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        INSTANCE XLXI_2 80 96 R90
        INSTANCE XLXI_3 144 96 R90
        INSTANCE XLXI_4 208 96 R90
        INSTANCE XLXI_5 272 96 R90
        INSTANCE XLXI_6 336 96 R90
        INSTANCE XLXI_7 400 96 R90
        INSTANCE XLXI_8 464 96 R90
        INSTANCE XLXI_9 528 96 R90
        INSTANCE XLXI_10 592 96 R90
        BEGIN BRANCH a
            WIRE 48 64 48 80
            WIRE 48 80 48 96
        END BRANCH
        BEGIN BRANCH b
            WIRE 112 64 112 96
        END BRANCH
        BEGIN BRANCH c
            WIRE 176 64 176 96
        END BRANCH
        BEGIN BRANCH d
            WIRE 240 64 240 96
        END BRANCH
        BEGIN BRANCH e
            WIRE 304 64 304 96
        END BRANCH
        BEGIN BRANCH f
            WIRE 368 64 368 96
        END BRANCH
        BEGIN BRANCH g
            WIRE 432 64 432 96
        END BRANCH
        BEGIN BRANCH h
            WIRE 496 64 496 96
        END BRANCH
        BEGIN BRANCH i
            WIRE 560 64 560 96
        END BRANCH
        BEGIN BRANCH j
            WIRE 624 64 624 96
        END BRANCH
        BEGIN BRANCH an
            WIRE 48 320 48 336
            WIRE 48 336 48 352
            BEGIN DISPLAY 48 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 112 320 112 352
            BEGIN DISPLAY 112 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 176 320 176 352
            BEGIN DISPLAY 176 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 240 320 240 352
            BEGIN DISPLAY 240 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 304 320 304 352
            BEGIN DISPLAY 304 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 368 320 368 352
            BEGIN DISPLAY 368 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 432 320 432 352
            BEGIN DISPLAY 432 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 496 320 496 352
            BEGIN DISPLAY 496 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 560 320 560 352
            BEGIN DISPLAY 560 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH jn
            WIRE 624 320 624 352
            BEGIN DISPLAY 624 352 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 48 64 a R270 28
        IOMARKER 112 64 b R270 28
        IOMARKER 176 64 c R270 28
        IOMARKER 240 64 d R270 28
        IOMARKER 304 64 e R270 28
        IOMARKER 368 64 f R270 28
        IOMARKER 432 64 g R270 28
        IOMARKER 496 64 h R270 28
        IOMARKER 560 64 i R270 28
        IOMARKER 624 64 j R270 28
        INSTANCE XLXI_1 16 96 R90
        INSTANCE k1 64 672 R0
        INSTANCE k3 64 1088 R0
        BEGIN BRANCH e
            WIRE 48 416 64 416
            BEGIN DISPLAY 48 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 48 480 64 480
            BEGIN DISPLAY 48 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 48 544 64 544
            BEGIN DISPLAY 48 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH jn
            WIRE 48 608 64 608
            BEGIN DISPLAY 48 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 48 896 64 896
            BEGIN DISPLAY 48 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 48 960 64 960
            BEGIN DISPLAY 48 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 48 1024 64 1024
            BEGIN DISPLAY 48 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k3o
            WIRE 320 928 336 928
            BEGIN DISPLAY 336 928 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k1o
            WIRE 320 512 336 512
            BEGIN DISPLAY 336 512 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 48 624 64 624
            BEGIN DISPLAY 48 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j
            WIRE 48 816 64 816
            BEGIN DISPLAY 48 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k2o
            WIRE 320 720 336 720
            BEGIN DISPLAY 336 720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 48 752 64 752
            BEGIN DISPLAY 48 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 48 688 64 688
            BEGIN DISPLAY 48 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 48 832 64 832
            BEGIN DISPLAY 48 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 48 1040 64 1040
            BEGIN DISPLAY 48 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 48 1232 64 1232
            BEGIN DISPLAY 48 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 48 1168 64 1168
            BEGIN DISPLAY 48 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 48 1104 64 1104
            BEGIN DISPLAY 48 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE k2 64 880 R0
        INSTANCE k4 64 1296 R0
        LINE N 0 400 672 400 
        LINE N 672 400 672 0 
        LINE N 400 400 400 1280 
        LINE N 0 1280 400 1280 
        INSTANCE h1 64 1680 R0
        INSTANCE h2 64 1824 R0
        INSTANCE h3 64 1968 R0
        INSTANCE h4 64 2112 R0
        INSTANCE h5 64 2256 R0
        INSTANCE h6 64 2400 R0
        BEGIN BRANCH h1o
            WIRE 320 1456 336 1456
            BEGIN DISPLAY 336 1456 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h2o
            WIRE 320 1696 336 1696
            BEGIN DISPLAY 336 1696 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h3o
            WIRE 320 1840 336 1840
            BEGIN DISPLAY 336 1840 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h4o
            WIRE 320 1984 336 1984
            BEGIN DISPLAY 336 1984 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h5o
            WIRE 320 2128 336 2128
            BEGIN DISPLAY 336 2128 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h6o
            WIRE 320 2272 336 2272
            BEGIN DISPLAY 336 2272 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j
            WIRE 48 2336 64 2336
            BEGIN DISPLAY 48 2336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 48 2272 64 2272
            BEGIN DISPLAY 48 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 48 2208 64 2208
            BEGIN DISPLAY 48 2208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 48 2192 64 2192
            BEGIN DISPLAY 48 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 48 2128 64 2128
            BEGIN DISPLAY 48 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 48 2064 64 2064
            BEGIN DISPLAY 48 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j
            WIRE 48 2048 64 2048
            BEGIN DISPLAY 48 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 48 1984 64 1984
            BEGIN DISPLAY 48 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 48 1920 64 1920
            BEGIN DISPLAY 48 1920 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH jn
            WIRE 48 1904 64 1904
            BEGIN DISPLAY 48 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 48 1840 64 1840
            BEGIN DISPLAY 48 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 48 1776 64 1776
            BEGIN DISPLAY 48 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH jn
            WIRE 48 1760 64 1760
            BEGIN DISPLAY 48 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 48 1696 64 1696
            BEGIN DISPLAY 48 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k4on
            WIRE 64 1632 64 1648
            BEGIN DISPLAY 64 1648 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j
            WIRE 48 1616 64 1616
            BEGIN DISPLAY 48 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 48 1552 64 1552
            BEGIN DISPLAY 48 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 48 1488 64 1488
            BEGIN DISPLAY 48 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 48 1424 64 1424
            BEGIN DISPLAY 48 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 48 1360 64 1360
            BEGIN DISPLAY 48 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 48 1296 64 1296
            BEGIN DISPLAY 48 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        LINE N 400 1280 400 2384 
        LINE N 400 2384 0 2384 
        BEGIN DISPLAY 176 1152 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        INSTANCE XLXI_44 416 512 R90
        BEGIN BRANCH k4on
            WIRE 448 736 448 752
            WIRE 448 752 448 768
            BEGIN DISPLAY 448 768 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 32 1664 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        BEGIN BRANCH k4o
            WIRE 448 480 448 512
            BEGIN DISPLAY 448 480 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k4o
            WIRE 320 1136 336 1136
            BEGIN DISPLAY 336 1136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 432 608 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        BEGIN BRANCH k3o
            WIRE 6960 5040 6960 5056
            WIRE 6960 5056 6960 5072
            BEGIN DISPLAY 6960 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ok
            WIRE 6928 5328 6928 5344
            WIRE 6928 5344 6928 5360
        END BRANCH
        BEGIN BRANCH k2o
            WIRE 6896 5040 6896 5056
            WIRE 6896 5056 6896 5072
            BEGIN DISPLAY 6896 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k1o
            WIRE 6832 5040 6832 5056
            WIRE 6832 5056 6832 5072
            BEGIN DISPLAY 6832 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE ork 6768 5072 R90
        BEGIN BRANCH k4o
            WIRE 7024 5040 7024 5072
            BEGIN DISPLAY 7024 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 7008 4992 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        BEGIN BRANCH oh
            WIRE 6608 5328 6608 5344
            WIRE 6608 5344 6608 5360
        END BRANCH
        INSTANCE orh 6384 5072 R90
        BEGIN BRANCH h1o
            WIRE 6448 5040 6448 5072
            BEGIN DISPLAY 6448 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h2o
            WIRE 6512 5040 6512 5072
            BEGIN DISPLAY 6512 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h3o
            WIRE 6576 5040 6576 5072
            BEGIN DISPLAY 6576 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h4o
            WIRE 6640 5040 6640 5072
            BEGIN DISPLAY 6640 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h5o
            WIRE 6704 5040 6704 5072
            BEGIN DISPLAY 6704 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h6o
            WIRE 6768 5040 6768 5072
            BEGIN DISPLAY 6768 5040 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        LINE N 6784 5440 6784 4880 
        LINE N 6400 5440 6400 4880 
        IOMARKER 6928 5360 ok R90 28
        IOMARKER 6608 5360 oh R90 28
        INSTANCE g1 64 2784 R0
        INSTANCE g2 64 3120 R0
        INSTANCE g6 64 3696 R0
        INSTANCE g5 64 3552 R0
        INSTANCE g4 64 3408 R0
        BEGIN BRANCH cn
            WIRE 48 2400 64 2400
            BEGIN DISPLAY 48 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 48 2464 64 2464
            BEGIN DISPLAY 48 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 48 2528 64 2528
            BEGIN DISPLAY 48 2528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 48 2592 64 2592
            BEGIN DISPLAY 48 2592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 48 2656 64 2656
            BEGIN DISPLAY 48 2656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH jn
            WIRE 48 2720 64 2720
            BEGIN DISPLAY 48 2720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 48 2736 64 2736
            BEGIN DISPLAY 48 2736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 48 2800 64 2800
            BEGIN DISPLAY 48 2800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 48 2864 64 2864
            BEGIN DISPLAY 48 2864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 48 2928 64 2928
            BEGIN DISPLAY 48 2928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 48 2992 64 2992
            BEGIN DISPLAY 48 2992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 48 3056 64 3056
            BEGIN DISPLAY 48 3056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 48 3136 64 3136
            BEGIN DISPLAY 48 3136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 48 3280 64 3280
            BEGIN DISPLAY 48 3280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 48 3344 64 3344
            BEGIN DISPLAY 48 3344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 48 3360 64 3360
            BEGIN DISPLAY 48 3360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 48 3424 64 3424
            BEGIN DISPLAY 48 3424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH jn
            WIRE 48 3488 64 3488
            BEGIN DISPLAY 48 3488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 48 3504 64 3504
            BEGIN DISPLAY 48 3504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 48 3568 64 3568
            BEGIN DISPLAY 48 3568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j
            WIRE 48 3632 64 3632
            BEGIN DISPLAY 48 3632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g1o
            WIRE 320 2560 336 2560
            BEGIN DISPLAY 336 2560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g2o
            WIRE 320 2896 336 2896
            BEGIN DISPLAY 336 2896 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g3o
            WIRE 320 3136 336 3136
            BEGIN DISPLAY 336 3136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g4o
            WIRE 320 3280 336 3280
            BEGIN DISPLAY 336 3280 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g5o
            WIRE 320 3424 336 3424
            BEGIN DISPLAY 336 3424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g6o
            WIRE 320 3568 336 3568
            BEGIN DISPLAY 336 3568 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k4on
            WIRE 64 3072 64 3104
            BEGIN DISPLAY 64 3104 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        INSTANCE g3 64 3264 R0
        BEGIN BRANCH j
            WIRE 48 3200 64 3200
            BEGIN DISPLAY 48 3200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k4on
            WIRE 64 3216 64 3248
            BEGIN DISPLAY 64 3248 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 80 3120 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        BEGIN DISPLAY 80 3264 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        LINE N 400 2384 400 3680 
        LINE N 400 3680 0 3680 
        INSTANCE f1 464 1200 R0
        INSTANCE f2 464 1344 R0
        INSTANCE f3 464 1488 R0
        INSTANCE f4 464 1632 R0
        INSTANCE f5 464 1776 R0
        BEGIN BRANCH cn
            WIRE 448 880 464 880
            BEGIN DISPLAY 448 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 448 944 464 944
            BEGIN DISPLAY 448 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 448 1008 464 1008
            BEGIN DISPLAY 448 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 448 1072 464 1072
            BEGIN DISPLAY 448 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 448 1136 464 1136
            BEGIN DISPLAY 448 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k4on
            WIRE 464 1152 464 1168
            BEGIN DISPLAY 464 1168 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 448 1216 464 1216
            BEGIN DISPLAY 448 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH jn
            WIRE 448 1280 464 1280
            BEGIN DISPLAY 448 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k4on
            WIRE 464 1296 464 1312
            BEGIN DISPLAY 464 1312 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH gn
            WIRE 448 1360 464 1360
            BEGIN DISPLAY 448 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hn
            WIRE 448 1424 464 1424
            BEGIN DISPLAY 448 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f
            WIRE 448 1440 464 1440
            BEGIN DISPLAY 448 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g
            WIRE 448 1504 464 1504
            BEGIN DISPLAY 448 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH jn
            WIRE 448 1568 464 1568
            BEGIN DISPLAY 448 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fn
            WIRE 448 1584 464 1584
            BEGIN DISPLAY 448 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH h
            WIRE 448 1648 464 1648
            BEGIN DISPLAY 448 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH j
            WIRE 448 1712 464 1712
            BEGIN DISPLAY 448 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f1o
            WIRE 720 1008 736 1008
            BEGIN DISPLAY 736 1008 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f2o
            WIRE 720 1216 736 1216
            BEGIN DISPLAY 736 1216 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f3o
            WIRE 720 1360 736 1360
            BEGIN DISPLAY 736 1360 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f4o
            WIRE 720 1504 736 1504
            BEGIN DISPLAY 736 1504 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f5o
            WIRE 720 1648 736 1648
            BEGIN DISPLAY 736 1648 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        LINE N 400 848 784 848 
        LINE N 400 1760 784 1760 
        LINE N 784 848 784 1760 
        INSTANCE e1 464 2096 R0
        INSTANCE e2 464 2368 R0
        INSTANCE e3 464 2640 R0
        INSTANCE e4 464 2912 R0
        INSTANCE e5 464 3120 R0
        INSTANCE e6 464 3328 R0
        INSTANCE e7 464 3536 R0
        BEGIN BRANCH bn
            WIRE 448 1840 464 1840
            BEGIN DISPLAY 448 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 448 1904 464 1904
            BEGIN DISPLAY 448 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 448 1968 464 1968
            BEGIN DISPLAY 448 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 448 2032 464 2032
            BEGIN DISPLAY 448 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 448 2048 464 2048
            BEGIN DISPLAY 448 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 448 2112 464 2112
            BEGIN DISPLAY 448 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 448 2176 464 2176
            BEGIN DISPLAY 448 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 448 2240 464 2240
            BEGIN DISPLAY 448 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 448 2304 464 2304
            BEGIN DISPLAY 448 2304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 448 2320 464 2320
            BEGIN DISPLAY 448 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 448 2384 464 2384
            BEGIN DISPLAY 448 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 448 2448 464 2448
            BEGIN DISPLAY 448 2448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 448 2512 464 2512
            BEGIN DISPLAY 448 2512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 448 2576 464 2576
            BEGIN DISPLAY 448 2576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 448 2592 464 2592
            BEGIN DISPLAY 448 2592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 448 2656 464 2656
            BEGIN DISPLAY 448 2656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 448 2720 464 2720
            BEGIN DISPLAY 448 2720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 448 2784 464 2784
            BEGIN DISPLAY 448 2784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 448 2848 464 2848
            BEGIN DISPLAY 448 2848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 448 2864 464 2864
            BEGIN DISPLAY 448 2864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 448 2928 464 2928
            BEGIN DISPLAY 448 2928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 448 2992 464 2992
            BEGIN DISPLAY 448 2992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 448 3056 464 3056
            BEGIN DISPLAY 448 3056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 448 3072 464 3072
            BEGIN DISPLAY 448 3072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 448 3136 464 3136
            BEGIN DISPLAY 448 3136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 448 3200 464 3200
            BEGIN DISPLAY 448 3200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 448 3264 464 3264
            BEGIN DISPLAY 448 3264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 448 3280 464 3280
            BEGIN DISPLAY 448 3280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 448 3344 464 3344
            BEGIN DISPLAY 448 3344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 448 3408 464 3408
            BEGIN DISPLAY 448 3408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 448 3472 464 3472
            BEGIN DISPLAY 448 3472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e1o
            WIRE 720 1904 736 1904
            BEGIN DISPLAY 736 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e2o
            WIRE 720 2176 736 2176
            BEGIN DISPLAY 736 2176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e3o
            WIRE 720 2448 736 2448
            BEGIN DISPLAY 736 2448 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e4o
            WIRE 720 2720 736 2720
            BEGIN DISPLAY 736 2720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e5o
            WIRE 720 2960 736 2960
            BEGIN DISPLAY 736 2960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e6o
            WIRE 720 3168 736 3168
            BEGIN DISPLAY 736 3168 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e7o
            WIRE 720 3376 736 3376
            BEGIN DISPLAY 736 3376 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 448 1776 464 1776
            BEGIN DISPLAY 448 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE e14 464 3680 R0
        INSTANCE e15 464 3824 R0
        BEGIN BRANCH a
            WIRE 448 3488 464 3488
            BEGIN DISPLAY 448 3488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 448 3552 464 3552
            BEGIN DISPLAY 448 3552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 448 3616 464 3616
            BEGIN DISPLAY 448 3616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 448 3632 464 3632
            BEGIN DISPLAY 448 3632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 448 3696 464 3696
            BEGIN DISPLAY 448 3696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 448 3760 464 3760
            BEGIN DISPLAY 448 3760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e14o
            WIRE 720 3552 736 3552
            BEGIN DISPLAY 736 3552 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e15o
            WIRE 720 3696 736 3696
            BEGIN DISPLAY 736 3696 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE e13 464 3968 R0
        BEGIN BRANCH e13o
            WIRE 720 3840 736 3840
            BEGIN DISPLAY 736 3840 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 448 3776 464 3776
            BEGIN DISPLAY 448 3776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 448 3840 464 3840
            BEGIN DISPLAY 448 3840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 448 3904 464 3904
            BEGIN DISPLAY 448 3904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE e9 464 4176 R0
        INSTANCE e10 464 4384 R0
        INSTANCE e11 464 4592 R0
        BEGIN BRANCH an
            WIRE 448 3920 464 3920
            BEGIN DISPLAY 448 3920 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 448 3984 464 3984
            BEGIN DISPLAY 448 3984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 448 4048 464 4048
            BEGIN DISPLAY 448 4048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 448 4112 464 4112
            BEGIN DISPLAY 448 4112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 448 4128 464 4128
            BEGIN DISPLAY 448 4128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 448 4192 464 4192
            BEGIN DISPLAY 448 4192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 448 4256 464 4256
            BEGIN DISPLAY 448 4256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 448 4320 464 4320
            BEGIN DISPLAY 448 4320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 448 4336 464 4336
            BEGIN DISPLAY 448 4336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 448 4400 464 4400
            BEGIN DISPLAY 448 4400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 448 4464 464 4464
            BEGIN DISPLAY 448 4464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 448 4528 464 4528
            BEGIN DISPLAY 448 4528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 448 4560 464 4560
            BEGIN DISPLAY 448 4560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 448 4624 464 4624
            BEGIN DISPLAY 448 4624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 448 4688 464 4688
            BEGIN DISPLAY 448 4688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 448 4752 464 4752
            BEGIN DISPLAY 448 4752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e9o
            WIRE 720 4016 736 4016
            BEGIN DISPLAY 736 4016 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e10o
            WIRE 720 4224 736 4224
            BEGIN DISPLAY 736 4224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e11o
            WIRE 720 4432 736 4432
            BEGIN DISPLAY 736 4432 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e12o
            WIRE 720 4656 736 4656
            BEGIN DISPLAY 736 4656 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE e12 464 4816 R0
        LINE N 780 1760 808 1760 
        LINE N 400 3680 400 4800 
        LINE N 400 4800 808 4800 
        LINE N 808 2232 808 4800 
        LINE N 808 2232 808 1760 
        BEGIN BRANCH oe
            WIRE 5152 5328 5152 5344
            WIRE 5152 5344 5152 5360
        END BRANCH
        BEGIN BRANCH e6o
            WIRE 4992 5056 4992 5072
            BEGIN DISPLAY 4992 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e7o
            WIRE 5056 5056 5056 5072
            BEGIN DISPLAY 5056 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k4o
            WIRE 5120 5056 5120 5072
            BEGIN DISPLAY 5120 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e9o
            WIRE 5184 5056 5184 5072
            BEGIN DISPLAY 5184 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e10o
            WIRE 5248 5056 5248 5072
            BEGIN DISPLAY 5248 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e11o
            WIRE 5312 5056 5312 5072
            BEGIN DISPLAY 5312 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e12o
            WIRE 5376 5056 5376 5072
            BEGIN DISPLAY 5376 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e13o
            WIRE 5440 5056 5440 5072
            BEGIN DISPLAY 5440 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e14o
            WIRE 5504 5056 5504 5072
            BEGIN DISPLAY 5504 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e15o
            WIRE 5568 5056 5568 5072
            BEGIN DISPLAY 5568 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_1116
            WIRE 5632 5056 5632 5072
        END BRANCH
        INSTANCE orf 5664 5072 R90
        BEGIN BRANCH oof
            WIRE 5856 5328 5856 5360
        END BRANCH
        BEGIN BRANCH f1o
            WIRE 5728 5056 5728 5072
            BEGIN DISPLAY 5728 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f2o
            WIRE 5792 5056 5792 5072
            BEGIN DISPLAY 5792 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f3o
            WIRE 5856 5056 5856 5072
            BEGIN DISPLAY 5856 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f4o
            WIRE 5920 5056 5920 5072
            BEGIN DISPLAY 5920 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH f5o
            WIRE 5984 5056 5984 5072
            BEGIN DISPLAY 5984 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH og
            WIRE 6224 5328 6224 5360
        END BRANCH
        BEGIN BRANCH g1o
            WIRE 6064 5056 6064 5072
            BEGIN DISPLAY 6064 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g2o
            WIRE 6128 5056 6128 5072
            BEGIN DISPLAY 6128 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g3o
            WIRE 6192 5056 6192 5072
            BEGIN DISPLAY 6192 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g4o
            WIRE 6256 5056 6256 5072
            BEGIN DISPLAY 6256 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g5o
            WIRE 6320 5056 6320 5072
            BEGIN DISPLAY 6320 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH g6o
            WIRE 6384 5056 6384 5072
            BEGIN DISPLAY 6384 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE org 6000 5072 R90
        BEGIN BRANCH od
            WIRE 4096 5328 4096 5360
        END BRANCH
        BEGIN BRANCH d1o
            WIRE 3616 5056 3616 5072
            BEGIN DISPLAY 3616 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d2o
            WIRE 3680 5056 3680 5072
            BEGIN DISPLAY 3680 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d3o
            WIRE 3744 5056 3744 5072
            BEGIN DISPLAY 3744 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d4o
            WIRE 3808 5056 3808 5072
            BEGIN DISPLAY 3808 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d5o
            WIRE 3872 5056 3872 5072
            BEGIN DISPLAY 3872 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d6o
            WIRE 3936 5056 3936 5072
            BEGIN DISPLAY 3936 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d7o
            WIRE 4000 5056 4000 5072
            BEGIN DISPLAY 4000 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d8o
            WIRE 4064 5056 4064 5072
            BEGIN DISPLAY 4064 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d9o
            WIRE 4128 5056 4128 5072
            BEGIN DISPLAY 4128 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d10o
            WIRE 4192 5056 4192 5072
            BEGIN DISPLAY 4192 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH k4o
            WIRE 4256 5056 4256 5072
            BEGIN DISPLAY 4256 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d12o
            WIRE 4320 5056 4320 5072
            BEGIN DISPLAY 4320 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d13o
            WIRE 4384 5056 4384 5072
            BEGIN DISPLAY 4384 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d14o
            WIRE 4448 5056 4448 5072
            BEGIN DISPLAY 4448 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d15o
            WIRE 4512 5056 4512 5072
            BEGIN DISPLAY 4512 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_1225
            WIRE 4576 5056 4576 5072
        END BRANCH
        INSTANCE XLXI_258 4640 4928 R180
        INSTANCE ore 4608 5072 R90
        BEGIN BRANCH e1o
            WIRE 4672 5056 4672 5072
            BEGIN DISPLAY 4672 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e2o
            WIRE 4736 5056 4736 5072
            BEGIN DISPLAY 4736 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e3o
            WIRE 4800 5056 4800 5072
            BEGIN DISPLAY 4800 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e4o
            WIRE 4864 5056 4864 5072
            BEGIN DISPLAY 4864 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e5o
            WIRE 4928 5056 4928 5072
            BEGIN DISPLAY 4928 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_243 5696 4928 R180
        INSTANCE ord 3552 5072 R90
        IOMARKER 5152 5360 oe R90 28
        IOMARKER 5856 5360 oof R90 28
        IOMARKER 6224 5360 og R90 28
        IOMARKER 4096 5360 od R90 28
        INSTANCE d7 880 1904 R0
        INSTANCE d8 880 2112 R0
        INSTANCE d9 880 2320 R0
        INSTANCE d10 880 2464 R0
        INSTANCE d6 880 1632 R0
        INSTANCE d5 880 1424 R0
        INSTANCE d4 880 1152 R0
        INSTANCE d3 880 944 R0
        INSTANCE d2 880 672 R0
        INSTANCE d1 880 400 R0
        BEGIN BRANCH a
            WIRE 864 16 880 16
            BEGIN DISPLAY 864 16 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 864 80 880 80
            BEGIN DISPLAY 864 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 864 144 880 144
            BEGIN DISPLAY 864 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 864 208 880 208
            BEGIN DISPLAY 864 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 864 272 880 272
            BEGIN DISPLAY 864 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 864 336 880 336
            BEGIN DISPLAY 864 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 864 352 880 352
            BEGIN DISPLAY 864 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 864 416 880 416
            BEGIN DISPLAY 864 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 864 480 880 480
            BEGIN DISPLAY 864 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 864 544 880 544
            BEGIN DISPLAY 864 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 864 608 880 608
            BEGIN DISPLAY 864 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 864 624 880 624
            BEGIN DISPLAY 864 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 864 688 880 688
            BEGIN DISPLAY 864 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 864 752 880 752
            BEGIN DISPLAY 864 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 864 816 880 816
            BEGIN DISPLAY 864 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 864 880 880 880
            BEGIN DISPLAY 864 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 864 896 880 896
            BEGIN DISPLAY 864 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 864 960 880 960
            BEGIN DISPLAY 864 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 864 1024 880 1024
            BEGIN DISPLAY 864 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 864 1088 880 1088
            BEGIN DISPLAY 864 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 864 1104 880 1104
            BEGIN DISPLAY 864 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 864 1168 880 1168
            BEGIN DISPLAY 864 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 864 1232 880 1232
            BEGIN DISPLAY 864 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 864 1296 880 1296
            BEGIN DISPLAY 864 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 864 1360 880 1360
            BEGIN DISPLAY 864 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 864 1376 880 1376
            BEGIN DISPLAY 864 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 864 1440 880 1440
            BEGIN DISPLAY 864 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 864 1504 880 1504
            BEGIN DISPLAY 864 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 864 1568 880 1568
            BEGIN DISPLAY 864 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 864 1584 880 1584
            BEGIN DISPLAY 864 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 864 1648 880 1648
            BEGIN DISPLAY 864 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 864 1712 880 1712
            BEGIN DISPLAY 864 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 864 1776 880 1776
            BEGIN DISPLAY 864 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 864 1840 880 1840
            BEGIN DISPLAY 864 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 864 1856 880 1856
            BEGIN DISPLAY 864 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 864 1920 880 1920
            BEGIN DISPLAY 864 1920 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 864 1984 880 1984
            BEGIN DISPLAY 864 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 864 2048 880 2048
            BEGIN DISPLAY 864 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 864 2064 880 2064
            BEGIN DISPLAY 864 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 864 2128 880 2128
            BEGIN DISPLAY 864 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 864 2192 880 2192
            BEGIN DISPLAY 864 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 864 2256 880 2256
            BEGIN DISPLAY 864 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 864 2272 880 2272
            BEGIN DISPLAY 864 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 864 2336 880 2336
            BEGIN DISPLAY 864 2336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 864 2400 880 2400
            BEGIN DISPLAY 864 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d1o
            WIRE 1136 176 1152 176
            BEGIN DISPLAY 1152 176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d2o
            WIRE 1136 480 1152 480
            BEGIN DISPLAY 1152 480 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d3o
            WIRE 1136 752 1152 752
            BEGIN DISPLAY 1152 752 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d4o
            WIRE 1136 992 1152 992
            BEGIN DISPLAY 1152 992 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d5o
            WIRE 1136 1232 1152 1232
            BEGIN DISPLAY 1152 1232 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d6o
            WIRE 1136 1472 1152 1472
            BEGIN DISPLAY 1152 1472 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d7o
            WIRE 1136 1712 1152 1712
            BEGIN DISPLAY 1152 1712 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d8o
            WIRE 1136 1952 1152 1952
            BEGIN DISPLAY 1152 1952 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d9o
            WIRE 1136 2160 1152 2160
            BEGIN DISPLAY 1152 2160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d10o
            WIRE 1136 2336 1152 2336
            BEGIN DISPLAY 1152 2336 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE d12 880 2672 R0
        INSTANCE d13 880 2880 R0
        INSTANCE d14 880 3088 R0
        INSTANCE d15 880 3296 R0
        BEGIN BRANCH b
            WIRE 864 2416 880 2416
            BEGIN DISPLAY 864 2416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 864 2480 880 2480
            BEGIN DISPLAY 864 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 864 2544 880 2544
            BEGIN DISPLAY 864 2544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 864 2608 880 2608
            BEGIN DISPLAY 864 2608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 864 2624 880 2624
            BEGIN DISPLAY 864 2624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 864 2688 880 2688
            BEGIN DISPLAY 864 2688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 864 2752 880 2752
            BEGIN DISPLAY 864 2752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 864 2816 880 2816
            BEGIN DISPLAY 864 2816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 864 2832 880 2832
            BEGIN DISPLAY 864 2832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 864 2896 880 2896
            BEGIN DISPLAY 864 2896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 864 2960 880 2960
            BEGIN DISPLAY 864 2960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 864 3024 880 3024
            BEGIN DISPLAY 864 3024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 864 3040 880 3040
            BEGIN DISPLAY 864 3040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 864 3104 880 3104
            BEGIN DISPLAY 864 3104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 864 3168 880 3168
            BEGIN DISPLAY 864 3168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 864 3232 880 3232
            BEGIN DISPLAY 864 3232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d12o
            WIRE 1136 2512 1152 2512
            BEGIN DISPLAY 1152 2512 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d13o
            WIRE 1136 2720 1152 2720
            BEGIN DISPLAY 1152 2720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d14o
            WIRE 1136 2928 1152 2928
            BEGIN DISPLAY 1152 2928 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d15o
            WIRE 1136 3136 1152 3136
            BEGIN DISPLAY 1152 3136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        LINE N 1232 3280 1232 0 
        LINE N 1232 3280 808 3280 
        LINE N 784 848 784 0 
        INSTANCE orc 2496 5072 R90
        BEGIN BRANCH oc
            WIRE 3040 5328 3040 5360
        END BRANCH
        BEGIN BRANCH c1o
            WIRE 2560 5056 2560 5072
            BEGIN DISPLAY 2560 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c2o
            WIRE 2624 5056 2624 5072
            BEGIN DISPLAY 2624 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c3o
            WIRE 2688 5056 2688 5072
            BEGIN DISPLAY 2688 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c4o
            WIRE 2752 5056 2752 5072
            BEGIN DISPLAY 2752 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c5o
            WIRE 2816 5056 2816 5072
            BEGIN DISPLAY 2816 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c6o
            WIRE 2880 5056 2880 5072
            BEGIN DISPLAY 2880 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c7o
            WIRE 2944 5056 2944 5072
            BEGIN DISPLAY 2944 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c8o
            WIRE 3008 5056 3008 5072
            BEGIN DISPLAY 3008 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c9o
            WIRE 3072 5056 3072 5072
            BEGIN DISPLAY 3072 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c10o
            WIRE 3136 5056 3136 5072
            BEGIN DISPLAY 3136 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c11o
            WIRE 3200 5056 3200 5072
            BEGIN DISPLAY 3200 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c12o
            WIRE 3264 5056 3264 5072
            BEGIN DISPLAY 3264 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c13o
            WIRE 3328 5056 3328 5072
            BEGIN DISPLAY 3328 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c14o
            WIRE 3392 5056 3392 5072
            BEGIN DISPLAY 3392 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c15o
            WIRE 3456 5056 3456 5072
            BEGIN DISPLAY 3456 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_1489
            WIRE 3520 5056 3520 5072
        END BRANCH
        INSTANCE XLXI_297 3584 4928 R180
        IOMARKER 3040 5360 oc R90 28
        INSTANCE c2 1296 672 R0
        INSTANCE c1 1296 400 R0
        INSTANCE c3 1296 880 R0
        INSTANCE c4 1296 1152 R0
        INSTANCE c5 1296 1424 R0
        INSTANCE c6 1296 1696 R0
        INSTANCE c7 1296 1904 R0
        INSTANCE c8 1296 2112 R0
        INSTANCE c9 1296 2320 R0
        INSTANCE c10 1296 2464 R0
        INSTANCE c11 1296 2672 R0
        INSTANCE c12 1296 2880 R0
        INSTANCE c13 1296 3088 R0
        INSTANCE c14 1296 3296 R0
        INSTANCE c15 1296 3504 R0
        BEGIN BRANCH an
            WIRE 1280 16 1296 16
            BEGIN DISPLAY 1280 16 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1280 80 1296 80
            BEGIN DISPLAY 1280 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1280 144 1296 144
            BEGIN DISPLAY 1280 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1280 208 1296 208
            BEGIN DISPLAY 1280 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1280 272 1296 272
            BEGIN DISPLAY 1280 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1280 336 1296 336
            BEGIN DISPLAY 1280 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1280 352 1296 352
            BEGIN DISPLAY 1280 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 1280 416 1296 416
            BEGIN DISPLAY 1280 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1280 480 1296 480
            BEGIN DISPLAY 1280 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1280 544 1296 544
            BEGIN DISPLAY 1280 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1280 608 1296 608
            BEGIN DISPLAY 1280 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 1280 624 1296 624
            BEGIN DISPLAY 1280 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1280 688 1296 688
            BEGIN DISPLAY 1280 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1280 752 1296 752
            BEGIN DISPLAY 1280 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1280 816 1296 816
            BEGIN DISPLAY 1280 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 1280 832 1296 832
            BEGIN DISPLAY 1280 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1280 896 1296 896
            BEGIN DISPLAY 1280 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1280 960 1296 960
            BEGIN DISPLAY 1280 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1280 1024 1296 1024
            BEGIN DISPLAY 1280 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 1280 1088 1296 1088
            BEGIN DISPLAY 1280 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1280 1104 1296 1104
            BEGIN DISPLAY 1280 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1280 1168 1296 1168
            BEGIN DISPLAY 1280 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1280 1232 1296 1232
            BEGIN DISPLAY 1280 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 1280 1296 1296 1296
            BEGIN DISPLAY 1280 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1280 1360 1296 1360
            BEGIN DISPLAY 1280 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 1280 1376 1296 1376
            BEGIN DISPLAY 1280 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 1280 1440 1296 1440
            BEGIN DISPLAY 1280 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1280 1504 1296 1504
            BEGIN DISPLAY 1280 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1280 1568 1296 1568
            BEGIN DISPLAY 1280 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1280 1632 1296 1632
            BEGIN DISPLAY 1280 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1280 1648 1296 1648
            BEGIN DISPLAY 1280 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1280 1712 1296 1712
            BEGIN DISPLAY 1280 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1280 1776 1296 1776
            BEGIN DISPLAY 1280 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 1280 1840 1296 1840
            BEGIN DISPLAY 1280 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 1280 1856 1296 1856
            BEGIN DISPLAY 1280 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 1280 1920 1296 1920
            BEGIN DISPLAY 1280 1920 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1280 1984 1296 1984
            BEGIN DISPLAY 1280 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1280 2048 1296 2048
            BEGIN DISPLAY 1280 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 1280 2064 1296 2064
            BEGIN DISPLAY 1280 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1280 2128 1296 2128
            BEGIN DISPLAY 1280 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 1280 2192 1296 2192
            BEGIN DISPLAY 1280 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1280 2256 1296 2256
            BEGIN DISPLAY 1280 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1280 2272 1296 2272
            BEGIN DISPLAY 1280 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 1280 2336 1296 2336
            BEGIN DISPLAY 1280 2336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 1280 2400 1296 2400
            BEGIN DISPLAY 1280 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1280 2416 1296 2416
            BEGIN DISPLAY 1280 2416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1280 2480 1296 2480
            BEGIN DISPLAY 1280 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1280 2544 1296 2544
            BEGIN DISPLAY 1280 2544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1280 2608 1296 2608
            BEGIN DISPLAY 1280 2608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1280 2624 1296 2624
            BEGIN DISPLAY 1280 2624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1280 2688 1296 2688
            BEGIN DISPLAY 1280 2688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1280 2752 1296 2752
            BEGIN DISPLAY 1280 2752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 1280 2816 1296 2816
            BEGIN DISPLAY 1280 2816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1280 2832 1296 2832
            BEGIN DISPLAY 1280 2832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1280 2896 1296 2896
            BEGIN DISPLAY 1280 2896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1280 2960 1296 2960
            BEGIN DISPLAY 1280 2960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1280 3024 1296 3024
            BEGIN DISPLAY 1280 3024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1280 3040 1296 3040
            BEGIN DISPLAY 1280 3040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 1280 3104 1296 3104
            BEGIN DISPLAY 1280 3104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1280 3168 1296 3168
            BEGIN DISPLAY 1280 3168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1280 3232 1296 3232
            BEGIN DISPLAY 1280 3232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 1280 3248 1296 3248
            BEGIN DISPLAY 1280 3248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1280 3312 1296 3312
            BEGIN DISPLAY 1280 3312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1280 3376 1296 3376
            BEGIN DISPLAY 1280 3376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1280 3440 1296 3440
            BEGIN DISPLAY 1280 3440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c15o
            WIRE 1552 3344 1568 3344
            BEGIN DISPLAY 1568 3344 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c14o
            WIRE 1552 3136 1568 3136
            BEGIN DISPLAY 1568 3136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c13o
            WIRE 1552 2928 1568 2928
            BEGIN DISPLAY 1568 2928 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c12o
            WIRE 1552 2720 1568 2720
            BEGIN DISPLAY 1568 2720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c11o
            WIRE 1552 2512 1568 2512
            BEGIN DISPLAY 1568 2512 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c10o
            WIRE 1552 2336 1568 2336
            BEGIN DISPLAY 1568 2336 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c9o
            WIRE 1552 2160 1568 2160
            BEGIN DISPLAY 1568 2160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c8o
            WIRE 1552 1952 1568 1952
            BEGIN DISPLAY 1568 1952 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c7o
            WIRE 1552 1744 1568 1744
            BEGIN DISPLAY 1568 1744 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c6o
            WIRE 1552 1504 1568 1504
            BEGIN DISPLAY 1568 1504 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c5o
            WIRE 1552 1232 1568 1232
            BEGIN DISPLAY 1568 1232 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c4o
            WIRE 1552 960 1568 960
            BEGIN DISPLAY 1568 960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c3o
            WIRE 1552 720 1568 720
            BEGIN DISPLAY 1568 720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c2o
            WIRE 1552 480 1568 480
            BEGIN DISPLAY 1568 480 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c1o
            WIRE 1552 176 1568 176
            BEGIN DISPLAY 1568 176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        LINE N 1232 3280 1232 3488 
        LINE N 1232 3488 1648 3488 
        LINE N 1648 3488 1648 0 
        INSTANCE orb 1440 5072 R90
        BEGIN BRANCH ob
            WIRE 1984 5328 1984 5360
        END BRANCH
        BEGIN BRANCH b1o
            WIRE 1504 5056 1504 5072
            BEGIN DISPLAY 1504 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b2o
            WIRE 1568 5056 1568 5072
            BEGIN DISPLAY 1568 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b3o
            WIRE 1632 5056 1632 5072
            BEGIN DISPLAY 1632 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b4o
            WIRE 1696 5056 1696 5072
            BEGIN DISPLAY 1696 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b5o
            WIRE 1760 5056 1760 5072
            BEGIN DISPLAY 1760 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b6o
            WIRE 1824 5056 1824 5072
            BEGIN DISPLAY 1824 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b7o
            WIRE 1888 5056 1888 5072
            BEGIN DISPLAY 1888 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b8o
            WIRE 1952 5056 1952 5072
            BEGIN DISPLAY 1952 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b9o
            WIRE 2016 5056 2016 5072
            BEGIN DISPLAY 2016 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b10o
            WIRE 2080 5056 2080 5072
            BEGIN DISPLAY 2080 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b11o
            WIRE 2144 5056 2144 5072
            BEGIN DISPLAY 2144 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b12o
            WIRE 2208 5056 2208 5072
            BEGIN DISPLAY 2208 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b13o
            WIRE 2272 5056 2272 5072
            BEGIN DISPLAY 2272 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b14o
            WIRE 2336 5056 2336 5072
            BEGIN DISPLAY 2336 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_1687
            WIRE 2400 5056 2400 5072
        END BRANCH
        BEGIN BRANCH XLXN_1688
            WIRE 2464 5056 2464 5072
        END BRANCH
        INSTANCE XLXI_326 2528 4928 R180
        INSTANCE XLXI_327 2464 4928 R180
        IOMARKER 1984 5360 ob R90 28
        INSTANCE b1 1712 400 R0
        INSTANCE b2 1712 736 R0
        INSTANCE b3 1712 1008 R0
        INSTANCE b4 1712 1216 R0
        INSTANCE b5 1712 1488 R0
        INSTANCE b6 1712 1760 R0
        INSTANCE b7 1712 2032 R0
        INSTANCE b8 1712 2240 R0
        INSTANCE b9 1712 2448 R0
        INSTANCE b10 1712 2592 R0
        INSTANCE b11 1712 2800 R0
        INSTANCE b12 1712 3008 R0
        INSTANCE b13 1712 3216 R0
        INSTANCE b14 1712 3424 R0
        BEGIN BRANCH an
            WIRE 1696 16 1712 16
            BEGIN DISPLAY 1696 16 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1696 80 1712 80
            BEGIN DISPLAY 1696 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1696 144 1712 144
            BEGIN DISPLAY 1696 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1696 208 1712 208
            BEGIN DISPLAY 1696 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1696 272 1712 272
            BEGIN DISPLAY 1696 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1696 336 1712 336
            BEGIN DISPLAY 1696 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 1696 352 1712 352
            BEGIN DISPLAY 1696 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1696 416 1712 416
            BEGIN DISPLAY 1696 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1696 480 1712 480
            BEGIN DISPLAY 1696 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1696 544 1712 544
            BEGIN DISPLAY 1696 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1696 608 1712 608
            BEGIN DISPLAY 1696 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1696 672 1712 672
            BEGIN DISPLAY 1696 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1696 688 1712 688
            BEGIN DISPLAY 1696 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1696 752 1712 752
            BEGIN DISPLAY 1696 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1696 816 1712 816
            BEGIN DISPLAY 1696 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 1696 880 1712 880
            BEGIN DISPLAY 1696 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1696 944 1712 944
            BEGIN DISPLAY 1696 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 1696 960 1712 960
            BEGIN DISPLAY 1696 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1696 1024 1712 1024
            BEGIN DISPLAY 1696 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1696 1088 1712 1088
            BEGIN DISPLAY 1696 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1696 1152 1712 1152
            BEGIN DISPLAY 1696 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1696 1168 1712 1168
            BEGIN DISPLAY 1696 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1696 1232 1712 1232
            BEGIN DISPLAY 1696 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1696 1296 1712 1296
            BEGIN DISPLAY 1696 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1696 1360 1712 1360
            BEGIN DISPLAY 1696 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1696 1424 1712 1424
            BEGIN DISPLAY 1696 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 1696 1440 1712 1440
            BEGIN DISPLAY 1696 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1696 1504 1712 1504
            BEGIN DISPLAY 1696 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1696 1568 1712 1568
            BEGIN DISPLAY 1696 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1696 1632 1712 1632
            BEGIN DISPLAY 1696 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1696 1696 1712 1696
            BEGIN DISPLAY 1696 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1696 1712 1712 1712
            BEGIN DISPLAY 1696 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1696 1776 1712 1776
            BEGIN DISPLAY 1696 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1696 1840 1712 1840
            BEGIN DISPLAY 1696 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 1696 1904 1712 1904
            BEGIN DISPLAY 1696 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1696 1968 1712 1968
            BEGIN DISPLAY 1696 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1696 1984 1712 1984
            BEGIN DISPLAY 1696 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1696 2048 1712 2048
            BEGIN DISPLAY 1696 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1696 2112 1712 2112
            BEGIN DISPLAY 1696 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1696 2176 1712 2176
            BEGIN DISPLAY 1696 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 1696 2192 1712 2192
            BEGIN DISPLAY 1696 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1696 2256 1712 2256
            BEGIN DISPLAY 1696 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 1696 2320 1712 2320
            BEGIN DISPLAY 1696 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 1696 2384 1712 2384
            BEGIN DISPLAY 1696 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1696 2400 1712 2400
            BEGIN DISPLAY 1696 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 1696 2464 1712 2464
            BEGIN DISPLAY 1696 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 1696 2528 1712 2528
            BEGIN DISPLAY 1696 2528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 1696 2544 1712 2544
            BEGIN DISPLAY 1696 2544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 1696 2608 1712 2608
            BEGIN DISPLAY 1696 2608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1696 2672 1712 2672
            BEGIN DISPLAY 1696 2672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 1696 2736 1712 2736
            BEGIN DISPLAY 1696 2736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1696 2752 1712 2752
            BEGIN DISPLAY 1696 2752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 1696 2816 1712 2816
            BEGIN DISPLAY 1696 2816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1696 2880 1712 2880
            BEGIN DISPLAY 1696 2880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1696 2944 1712 2944
            BEGIN DISPLAY 1696 2944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1696 2960 1712 2960
            BEGIN DISPLAY 1696 2960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1696 3024 1712 3024
            BEGIN DISPLAY 1696 3024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 1696 3088 1712 3088
            BEGIN DISPLAY 1696 3088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1696 3152 1712 3152
            BEGIN DISPLAY 1696 3152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 1696 3168 1712 3168
            BEGIN DISPLAY 1696 3168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 1696 3232 1712 3232
            BEGIN DISPLAY 1696 3232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 1696 3296 1712 3296
            BEGIN DISPLAY 1696 3296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1696 3360 1712 3360
            BEGIN DISPLAY 1696 3360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b1o
            WIRE 1968 176 1984 176
            BEGIN DISPLAY 1984 176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b2o
            WIRE 1968 512 1984 512
            BEGIN DISPLAY 1984 512 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b3o
            WIRE 1968 816 1984 816
            BEGIN DISPLAY 1984 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b4o
            WIRE 1968 1056 1984 1056
            BEGIN DISPLAY 1984 1056 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b5o
            WIRE 1968 1296 1984 1296
            BEGIN DISPLAY 1984 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b6o
            WIRE 1968 1568 1984 1568
            BEGIN DISPLAY 1984 1568 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b7o
            WIRE 1968 1840 1984 1840
            BEGIN DISPLAY 1984 1840 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b8o
            WIRE 1968 2080 1984 2080
            BEGIN DISPLAY 1984 2080 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b9o
            WIRE 1968 2288 1984 2288
            BEGIN DISPLAY 1984 2288 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b10o
            WIRE 1968 2464 1984 2464
            BEGIN DISPLAY 1984 2464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b11o
            WIRE 1968 2640 1984 2640
            BEGIN DISPLAY 1984 2640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b12o
            WIRE 1968 2848 1984 2848
            BEGIN DISPLAY 1984 2848 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b13o
            WIRE 1968 3056 1984 3056
            BEGIN DISPLAY 1984 3056 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b14o
            WIRE 1968 3264 1984 3264
            BEGIN DISPLAY 1984 3264 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        LINE N 1648 3408 2064 3408 
        LINE N 2064 0 2064 3408 
        INSTANCE ora 384 5072 R90
        BEGIN BRANCH oa
            WIRE 928 5328 928 5360
        END BRANCH
        BEGIN BRANCH XLXN_1896
            WIRE 1408 5040 1408 5072
        END BRANCH
        INSTANCE XLXI_367 1472 4912 R180
        BEGIN BRANCH XLXN_1897
            WIRE 1344 5040 1344 5072
        END BRANCH
        INSTANCE XLXI_368 1408 4912 R180
        BEGIN BRANCH XLXN_1898
            WIRE 1280 5040 1280 5072
        END BRANCH
        INSTANCE XLXI_369 1344 4912 R180
        BEGIN BRANCH a1o
            WIRE 448 5056 448 5072
            BEGIN DISPLAY 448 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a2o
            WIRE 512 5056 512 5072
            BEGIN DISPLAY 512 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a3o
            WIRE 576 5056 576 5072
            BEGIN DISPLAY 576 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a4o
            WIRE 640 5056 640 5072
            BEGIN DISPLAY 640 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a5o
            WIRE 704 5056 704 5072
            BEGIN DISPLAY 704 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a6o
            WIRE 768 5056 768 5072
            BEGIN DISPLAY 768 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a7o
            WIRE 832 5056 832 5072
            BEGIN DISPLAY 832 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a8o
            WIRE 896 5056 896 5072
            BEGIN DISPLAY 896 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a9o
            WIRE 960 5056 960 5072
            BEGIN DISPLAY 960 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a10o
            WIRE 1024 5056 1024 5072
            BEGIN DISPLAY 1024 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a11o
            WIRE 1088 5056 1088 5072
            BEGIN DISPLAY 1088 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1152 5056 1152 5072
            BEGIN DISPLAY 1152 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a13o
            WIRE 1216 5056 1216 5072
            BEGIN DISPLAY 1216 5056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        IOMARKER 928 5360 oa R90 28
        LINE N 384 4880 6400 4880 
        LINE N 384 5440 384 4880 
        LINE N 6784 4880 6400 4880 
        LINE N 7040 4880 6784 4880 
        LINE N 5680 4880 5680 5440 
        LINE N 4624 4880 4624 5440 
        LINE N 3568 4880 3568 5440 
        LINE N 2512 4880 2512 5440 
        LINE N 1456 4880 1456 5440 
        INSTANCE a1 2128 400 R0
        INSTANCE a2 2128 736 R0
        INSTANCE a3 2128 1008 R0
        INSTANCE a4 2128 1216 R0
        INSTANCE a5 2128 1488 R0
        INSTANCE a6 2128 1760 R0
        INSTANCE a7 2128 2032 R0
        INSTANCE a8 2128 2304 R0
        INSTANCE a9 2128 2512 R0
        INSTANCE a10 2128 2656 R0
        INSTANCE a11 2128 2864 R0
        INSTANCE a12 2128 3072 R0
        INSTANCE a13 2128 3280 R0
        BEGIN BRANCH a
            WIRE 2112 16 2128 16
            BEGIN DISPLAY 2112 16 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 2112 80 2128 80
            BEGIN DISPLAY 2112 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 2112 144 2128 144
            BEGIN DISPLAY 2112 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 2112 208 2128 208
            BEGIN DISPLAY 2112 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2112 272 2128 272
            BEGIN DISPLAY 2112 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 2112 336 2128 336
            BEGIN DISPLAY 2112 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 2112 352 2128 352
            BEGIN DISPLAY 2112 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 2112 416 2128 416
            BEGIN DISPLAY 2112 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 2112 480 2128 480
            BEGIN DISPLAY 2112 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 2112 544 2128 544
            BEGIN DISPLAY 2112 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2112 608 2128 608
            BEGIN DISPLAY 2112 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 2112 672 2128 672
            BEGIN DISPLAY 2112 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 2112 688 2128 688
            BEGIN DISPLAY 2112 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 2112 752 2128 752
            BEGIN DISPLAY 2112 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 2112 816 2128 816
            BEGIN DISPLAY 2112 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 2112 880 2128 880
            BEGIN DISPLAY 2112 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 2112 944 2128 944
            BEGIN DISPLAY 2112 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 2112 960 2128 960
            BEGIN DISPLAY 2112 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 2112 1024 2128 1024
            BEGIN DISPLAY 2112 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 2112 1088 2128 1088
            BEGIN DISPLAY 2112 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 2112 1152 2128 1152
            BEGIN DISPLAY 2112 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b
            WIRE 2112 1168 2128 1168
            BEGIN DISPLAY 2112 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 2112 1232 2128 1232
            BEGIN DISPLAY 2112 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 2112 1296 2128 1296
            BEGIN DISPLAY 2112 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2112 1360 2128 1360
            BEGIN DISPLAY 2112 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 2112 1424 2128 1424
            BEGIN DISPLAY 2112 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 2112 1440 2128 1440
            BEGIN DISPLAY 2112 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 2112 1504 2128 1504
            BEGIN DISPLAY 2112 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 2112 1568 2128 1568
            BEGIN DISPLAY 2112 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2112 1632 2128 1632
            BEGIN DISPLAY 2112 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 2112 1696 2128 1696
            BEGIN DISPLAY 2112 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 2112 1712 2128 1712
            BEGIN DISPLAY 2112 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 2112 1776 2128 1776
            BEGIN DISPLAY 2112 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 2112 1840 2128 1840
            BEGIN DISPLAY 2112 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 2112 1904 2128 1904
            BEGIN DISPLAY 2112 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 2112 1968 2128 1968
            BEGIN DISPLAY 2112 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 2112 1984 2128 1984
            BEGIN DISPLAY 2112 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 2112 2048 2128 2048
            BEGIN DISPLAY 2112 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 2112 2112 2128 2112
            BEGIN DISPLAY 2112 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2112 2176 2128 2176
            BEGIN DISPLAY 2112 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH i
            WIRE 2112 2240 2128 2240
            BEGIN DISPLAY 2112 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 2112 2256 2128 2256
            BEGIN DISPLAY 2112 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 2112 2320 2128 2320
            BEGIN DISPLAY 2112 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c
            WIRE 2112 2384 2128 2384
            BEGIN DISPLAY 2112 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 2112 2448 2128 2448
            BEGIN DISPLAY 2112 2448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a
            WIRE 2112 2464 2128 2464
            BEGIN DISPLAY 2112 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e
            WIRE 2112 2528 2128 2528
            BEGIN DISPLAY 2112 2528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH inn
            WIRE 2112 2592 2128 2592
            BEGIN DISPLAY 2112 2592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 2112 2608 2128 2608
            BEGIN DISPLAY 2112 2608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 2112 2672 2128 2672
            BEGIN DISPLAY 2112 2672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 2112 2736 2128 2736
            BEGIN DISPLAY 2112 2736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2112 2800 2128 2800
            BEGIN DISPLAY 2112 2800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 2112 2816 2128 2816
            BEGIN DISPLAY 2112 2816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 2112 2880 2128 2880
            BEGIN DISPLAY 2112 2880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dn
            WIRE 2112 2944 2128 2944
            BEGIN DISPLAY 2112 2944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2112 3008 2128 3008
            BEGIN DISPLAY 2112 3008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH an
            WIRE 2112 3024 2128 3024
            BEGIN DISPLAY 2112 3024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH bn
            WIRE 2112 3088 2128 3088
            BEGIN DISPLAY 2112 3088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cn
            WIRE 2112 3152 2128 3152
            BEGIN DISPLAY 2112 3152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2112 3216 2128 3216
            BEGIN DISPLAY 2112 3216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a13o
            WIRE 2384 3120 2400 3120
            BEGIN DISPLAY 2400 3120 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 2384 2912 2400 2912
            BEGIN DISPLAY 2400 2912 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a11o
            WIRE 2384 2704 2400 2704
            BEGIN DISPLAY 2400 2704 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a10o
            WIRE 2384 2528 2400 2528
            BEGIN DISPLAY 2400 2528 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a9o
            WIRE 2384 2352 2400 2352
            BEGIN DISPLAY 2400 2352 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a8o
            WIRE 2384 2112 2400 2112
            BEGIN DISPLAY 2400 2112 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a7o
            WIRE 2384 1840 2400 1840
            BEGIN DISPLAY 2400 1840 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a6o
            WIRE 2384 1568 2400 1568
            BEGIN DISPLAY 2400 1568 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a5o
            WIRE 2384 1296 2400 1296
            BEGIN DISPLAY 2400 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a4o
            WIRE 2384 1056 2400 1056
            BEGIN DISPLAY 2400 1056 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a3o
            WIRE 2384 816 2400 816
            BEGIN DISPLAY 2400 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH e2o
            WIRE 2384 512 2400 512
            BEGIN DISPLAY 2400 512 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a1o
            WIRE 2384 176 2400 176
            BEGIN DISPLAY 2400 176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        LINE N 2480 3276 2480 0 
        LINE N 2064 3276 2480 3276 
        BEGIN DISPLAY 4240 5008 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        BEGIN DISPLAY 5104 5008 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        LINE N 6016 4880 6016 5440 
        BEGIN INSTANCE XLXI_416 5888 4448 R180
        END INSTANCE
    END SHEET
END SCHEMATIC
