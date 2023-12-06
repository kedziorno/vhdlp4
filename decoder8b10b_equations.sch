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
        SIGNAL in
        SIGNAL jn
        SIGNAL k3o
        SIGNAL k1o
        SIGNAL k2o
        BEGIN SIGNAL h1o
        END SIGNAL
        BEGIN SIGNAL h2o
        END SIGNAL
        BEGIN SIGNAL h3o
        END SIGNAL
        BEGIN SIGNAL h4o
        END SIGNAL
        BEGIN SIGNAL h5o
        END SIGNAL
        SIGNAL h6o
        SIGNAL k4on
        SIGNAL k4o
        SIGNAL ok
        SIGNAL oh
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
            PIN O in
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
            PIN I0 in
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
        BEGIN BLOCK XLXI_46 and6
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN I5
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_47 and6
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN I5
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_48 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_51 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_50 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_49 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_52 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_53 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_54 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_55 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_57 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_56 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_58 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_59 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_60 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_61 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_62 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_63 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_64 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_68 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_69 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_70 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_71 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_72 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_103 and6
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN I5
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_104 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_105 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_106 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_107 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_108 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_109 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_110 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_111 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_112 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_113 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_65 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_66 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_67 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_114 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_115 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_116 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_117 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
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
        BEGIN BLOCK XLXI_127 and6
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN I5
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_128 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_129 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_130 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_131 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_132 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_133 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_134 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_135 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_136 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_137 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_138 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_139 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_140 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_141 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_142 and6
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN I5
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_143 and6
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN I5
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_144 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_145 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_146 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_147 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_148 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_149 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_150 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_151 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_152 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_153 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_154 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_155 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_156 and6
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN I5
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_157 and6
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN I5
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_158 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_159 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_160 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_161 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_162 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_163 and5
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN I4
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_164 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_165 and3
            PIN I0
            PIN I1
            PIN I2
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_166 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_167 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_168 and4
            PIN I0
            PIN I1
            PIN I2
            PIN I3
            PIN O
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
        BEGIN BRANCH in
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
        BEGIN BRANCH in
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
            WIRE 320 1136 320 1136
            WIRE 320 1136 336 1136
            BEGIN DISPLAY 336 1136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN DISPLAY 432 608 TEXT *
            FONT 64 "Arial"
            TEXTCOLOR 0 128 0
        END DISPLAY
        INSTANCE XLXI_46 592 848 R0
        INSTANCE XLXI_47 592 1184 R0
        INSTANCE XLXI_48 592 1328 R0
        INSTANCE XLXI_51 592 1760 R0
        INSTANCE XLXI_50 592 1616 R0
        INSTANCE XLXI_49 592 1472 R0
        INSTANCE XLXI_52 992 368 R0
        INSTANCE XLXI_53 992 512 R0
        INSTANCE XLXI_54 992 656 R0
        INSTANCE XLXI_55 992 800 R0
        INSTANCE XLXI_57 992 1088 R0
        INSTANCE XLXI_56 992 944 R0
        INSTANCE XLXI_58 1376 336 R0
        INSTANCE XLXI_59 1376 608 R0
        INSTANCE XLXI_60 1376 880 R0
        INSTANCE XLXI_61 1376 1152 R0
        INSTANCE XLXI_62 1376 1360 R0
        INSTANCE XLXI_63 1376 1568 R0
        INSTANCE XLXI_64 1376 1776 R0
        INSTANCE XLXI_68 1376 1984 R0
        INSTANCE XLXI_69 1376 2192 R0
        INSTANCE XLXI_70 1376 2400 R0
        INSTANCE XLXI_71 1376 2608 R0
        INSTANCE XLXI_103 2000 400 R0
        INSTANCE XLXI_104 2000 672 R0
        INSTANCE XLXI_105 2000 944 R0
        INSTANCE XLXI_106 1984 1152 R0
        INSTANCE XLXI_107 1984 1424 R0
        INSTANCE XLXI_108 2000 1632 R0
        INSTANCE XLXI_109 2016 1904 R0
        INSTANCE XLXI_110 2048 2112 R0
        INSTANCE XLXI_111 2048 2320 R0
        INSTANCE XLXI_112 2048 2464 R0
        INSTANCE XLXI_113 2048 2672 R0
        INSTANCE XLXI_72 1376 2832 R0
        INSTANCE XLXI_65 1360 2992 R0
        INSTANCE XLXI_66 1360 3136 R0
        INSTANCE XLXI_67 1360 3280 R0
        INSTANCE XLXI_114 2032 2896 R0
        INSTANCE XLXI_115 2032 3104 R0
        INSTANCE XLXI_116 2032 3312 R0
        INSTANCE XLXI_117 2048 3520 R0
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
        LINE N 7040 4960 6784 4960 
        LINE N 6784 4960 6784 5440 
        LINE N 6784 4960 6400 4960 
        LINE N 6400 4960 6400 5440 
        IOMARKER 6928 5360 ok R90 28
        IOMARKER 6608 5360 oh R90 28
        INSTANCE XLXI_127 2576 416 R0
        INSTANCE XLXI_128 2592 672 R0
        INSTANCE XLXI_129 2576 896 R0
        INSTANCE XLXI_130 2592 1200 R0
        INSTANCE XLXI_131 2608 1488 R0
        INSTANCE XLXI_132 2624 1760 R0
        INSTANCE XLXI_133 2640 1984 R0
        INSTANCE XLXI_134 2656 2224 R0
        INSTANCE XLXI_135 2656 2448 R0
        INSTANCE XLXI_136 2656 2608 R0
        INSTANCE XLXI_137 2656 2832 R0
        INSTANCE XLXI_138 2656 3056 R0
        INSTANCE XLXI_139 2656 3280 R0
        INSTANCE XLXI_140 2672 3520 R0
        INSTANCE XLXI_141 2688 3760 R0
        INSTANCE XLXI_142 3136 432 R0
        INSTANCE XLXI_143 3136 784 R0
        INSTANCE XLXI_144 3136 1088 R0
        INSTANCE XLXI_145 3136 1328 R0
        INSTANCE XLXI_146 3136 1600 R0
        INSTANCE XLXI_147 3136 1872 R0
        INSTANCE XLXI_148 3136 2144 R0
        INSTANCE XLXI_149 3136 2368 R0
        INSTANCE XLXI_150 3152 2608 R0
        INSTANCE XLXI_151 3168 2768 R0
        INSTANCE XLXI_152 3200 3008 R0
        INSTANCE XLXI_153 3200 3264 R0
        INSTANCE XLXI_154 3216 3520 R0
        INSTANCE XLXI_155 3200 3792 R0
        INSTANCE XLXI_156 3792 448 R0
        INSTANCE XLXI_157 3808 816 R0
        INSTANCE XLXI_158 3808 1104 R0
        INSTANCE XLXI_159 3824 1344 R0
        INSTANCE XLXI_160 3824 1648 R0
        INSTANCE XLXI_161 3856 1952 R0
        INSTANCE XLXI_162 3872 2256 R0
        INSTANCE XLXI_163 3872 2560 R0
        INSTANCE XLXI_164 3872 2816 R0
        INSTANCE XLXI_165 3872 2992 R0
        INSTANCE XLXI_166 3888 3232 R0
        INSTANCE XLXI_167 3888 3472 R0
        INSTANCE XLXI_168 3888 3712 R0
    END SHEET
END SCHEMATIC
