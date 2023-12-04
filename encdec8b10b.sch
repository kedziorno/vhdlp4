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
        SIGNAL rd4
        SIGNAL rd4n
        SIGNAL ia
        SIGNAL ib
        SIGNAL ic
        SIGNAL id
        SIGNAL ie
        SIGNAL ik
        SIGNAL ian
        SIGNAL ibn
        SIGNAL icn
        SIGNAL idn
        SIGNAL ien
        SIGNAL b21o
        SIGNAL b20o
        SIGNAL b19o
        SIGNAL b02o
        SIGNAL c05o
        SIGNAL c04o
        SIGNAL c03o
        SIGNAL c02o
        SIGNAL c01o
        SIGNAL d09o
        SIGNAL d06o
        SIGNAL d05o
        SIGNAL d04o
        SIGNAL d03o
        SIGNAL d02o
        SIGNAL d01o
        SIGNAL DOS6_2not
        SIGNAL c05o_not
        SIGNAL b18o
        SIGNAL b17o
        SIGNAL b15o
        SIGNAL b14o
        SIGNAL b13o
        SIGNAL b12o
        SIGNAL b11o
        SIGNAL b10o
        SIGNAL b09o
        SIGNAL b08o
        SIGNAL b07o
        SIGNAL b06o
        SIGNAL b05o
        SIGNAL b04o
        SIGNAL b03o
        SIGNAL b02o_not
        SIGNAL a01o
        SIGNAL a02o
        SIGNAL a03o
        SIGNAL a04o
        SIGNAL a05o
        SIGNAL a06o
        SIGNAL a07o
        SIGNAL a08o
        SIGNAL a09o
        SIGNAL a10o
        SIGNAL a11o
        SIGNAL a12o
        SIGNAL a13o
        SIGNAL a14o
        SIGNAL a15o
        SIGNAL a16o
        SIGNAL a17o
        SIGNAL a18o
        SIGNAL a19o
        SIGNAL a20o
        SIGNAL a21o
        SIGNAL a22o
        SIGNAL a23o
        SIGNAL a24o
        SIGNAL a25o
        SIGNAL a26o
        SIGNAL a27o
        SIGNAL a28o
        SIGNAL a29o
        SIGNAL a30o
        SIGNAL a31o
        SIGNAL a32o
        SIGNAL b16o
        SIGNAL DOS6_1
        SIGNAL DOS6_2
        SIGNAL compls6
        SIGNAL d07o
        SIGNAL d08o
        SIGNAL oa
        SIGNAL ob
        SIGNAL oc
        SIGNAL od
        SIGNAL oe
        SIGNAL oi
        SIGNAL os
        PORT Input clk
        PORT Input rd4
        PORT Input ia
        PORT Input ib
        PORT Input ic
        PORT Input id
        PORT Input ie
        PORT Input ik
        PORT Output DOS6_1
        PORT Output DOS6_2
        PORT Input compls6
        PORT Output oa
        PORT Output ob
        PORT Output oc
        PORT Output od
        PORT Output oe
        PORT Output oi
        PORT Output os
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF copy_of_fd
            TIMESTAMP 2023 12 3 22 27 5
            RECTANGLE N 16 -64 64 0 
            LINE N 16 0 32 -16 
            LINE N 32 -16 16 -32 
            LINE N 0 -48 16 -48 
            LINE N 0 -16 16 -16 
            LINE N 64 -48 80 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF copy_of_and4
            TIMESTAMP 2023 12 4 12 24 25
            LINE N 144 0 64 0 
            ARC N 96 -96 192 0 144 0 144 -96 
            LINE N 64 -96 144 -96 
            LINE N 64 -96 64 0 
            LINE N 256 -48 192 -48 
            LINE N 0 0 64 0 
            LINE N 0 -32 64 -32 
            LINE N 0 -64 64 -64 
            LINE N 0 -96 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF copy_of_and3
            TIMESTAMP 2023 12 4 12 37 23
            LINE N 0 -48 64 -48 
            LINE N 256 -48 192 -48 
            LINE N 64 -96 144 -96 
            LINE N 144 0 64 0 
            ARC N 96 -96 192 0 144 0 144 -96 
            LINE N 64 -96 64 0 
            LINE N 0 0 64 0 
            LINE N 68 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF copy_of_and5
            TIMESTAMP 2023 12 4 12 25 35
            ARC N 96 -112 192 -16 144 -16 144 -112 
            LINE N 144 -16 64 -16 
            LINE N 64 -112 144 -112 
            LINE N 256 -64 192 -64 
            LINE N 0 -64 64 -64 
            LINE N 0 -96 64 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 0 64 0 
            LINE N 64 -128 64 0 
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
        BEGIN BLOCK XLXI_1 inv
            PIN I rd4
            PIN O rd4n
        END BLOCK
        BEGIN BLOCK XLXI_52 inv
            PIN I ia
            PIN O ian
        END BLOCK
        BEGIN BLOCK XLXI_53 inv
            PIN I ib
            PIN O ibn
        END BLOCK
        BEGIN BLOCK XLXI_54 inv
            PIN I ic
            PIN O icn
        END BLOCK
        BEGIN BLOCK XLXI_55 inv
            PIN I id
            PIN O idn
        END BLOCK
        BEGIN BLOCK XLXI_56 inv
            PIN I ie
            PIN O ien
        END BLOCK
        BEGIN BLOCK a01 copy_of_and4
            PIN O a01o
            PIN I2 ibn
            PIN I1 icn
            PIN I3 ian
            PIN I0 idn
        END BLOCK
        BEGIN BLOCK a02 copy_of_and3
            PIN I1 idn
            PIN O a02o
            PIN I2 icn
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a03 copy_of_and5
            PIN I2 icn
            PIN O a03o
            PIN I3 ibn
            PIN I1 idn
            PIN I0 ie
            PIN I4 ia
        END BLOCK
        BEGIN BLOCK a04 copy_of_and4
            PIN O a04o
            PIN I2 ib
            PIN I1 ic
            PIN I3 ia
            PIN I0 id
        END BLOCK
        BEGIN BLOCK a05 copy_of_and5
            PIN I2 icn
            PIN O a05o
            PIN I3 ib
            PIN I1 idn
            PIN I0 ien
            PIN I4 ian
        END BLOCK
        BEGIN BLOCK a06 copy_of_and5
            PIN I2 icn
            PIN O a06o
            PIN I3 ibn
            PIN I1 idn
            PIN I0 ien
            PIN I4 ia
        END BLOCK
        BEGIN BLOCK a07 copy_of_and4
            PIN O a07o
            PIN I2 icn
            PIN I1 idn
            PIN I3 ian
            PIN I0 ie
        END BLOCK
        BEGIN BLOCK a08 copy_of_and4
            PIN O a08o
            PIN I2 ibn
            PIN I1 idn
            PIN I3 ian
            PIN I0 ie
        END BLOCK
        BEGIN BLOCK a09 copy_of_and4
            PIN O a09o
            PIN I2 ibn
            PIN I1 idn
            PIN I3 ian
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a10 copy_of_and4
            PIN O a10o
            PIN I2 ic
            PIN I1 idn
            PIN I3 ian
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a11 copy_of_and4
            PIN O a11o
            PIN I2 ibn
            PIN I1 id
            PIN I3 ian
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a12 copy_of_and4
            PIN O a12o
            PIN I2 ib
            PIN I1 ic
            PIN I3 ia
            PIN I0 id
        END BLOCK
        BEGIN BLOCK a13 copy_of_and3
            PIN I1 ic
            PIN O a13o
            PIN I2 ia
            PIN I0 ie
        END BLOCK
        BEGIN BLOCK a14 copy_of_and3
            PIN I1 ic
            PIN O a14o
            PIN I2 ibn
            PIN I0 icn
        END BLOCK
        BEGIN BLOCK a15 copy_of_and3
            PIN I1 ib
            PIN O a15o
            PIN I2 ian
            PIN I0 icn
        END BLOCK
        BEGIN BLOCK a16 copy_of_and3
            PIN I1 id
            PIN O a16o
            PIN I2 ib
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a17 copy_of_and3
            PIN I1 icn
            PIN O a17o
            PIN I2 ia
            PIN I0 id
        END BLOCK
        BEGIN BLOCK a18 copy_of_and3
            PIN I1 ib
            PIN O a18o
            PIN I2 ian
            PIN I0 ic
        END BLOCK
        BEGIN BLOCK a19 copy_of_and3
            PIN I1 icn
            PIN O a19o
            PIN I2 ian
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a20 copy_of_and3
            PIN I1 icn
            PIN O a20o
            PIN I2 ibn
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a21 copy_of_and3
            PIN I1 idn
            PIN O a21o
            PIN I2 ibn
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a22 copy_of_and4
            PIN O a22o
            PIN I2 ibn
            PIN I1 icn
            PIN I3 ian
            PIN I0 id
        END BLOCK
        BEGIN BLOCK a24 copy_of_and3
            PIN I1 ib
            PIN O a24o
            PIN I2 ia
            PIN I0 icn
        END BLOCK
        BEGIN BLOCK a25 copy_of_and4
            PIN O a25o
            PIN I2 ib
            PIN I1 ic
            PIN I3 ia
            PIN I0 ie
        END BLOCK
        BEGIN BLOCK a26 copy_of_and4
            PIN O a26o
            PIN I2 icn
            PIN I1 id
            PIN I3 ian
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a27 copy_of_and4
            PIN O a27o
            PIN I2 icn
            PIN I1 idn
            PIN I3 ibn
            PIN I0 ien
        END BLOCK
        BEGIN BLOCK a28 copy_of_and4
            PIN O a28o
            PIN I2 ic
            PIN I1 id
            PIN I3 ian
            PIN I0 ie
        END BLOCK
        BEGIN BLOCK a30 copy_of_and4
            PIN O a30o
            PIN I2 ib
            PIN I1 icn
            PIN I3 ia
            PIN I0 ie
        END BLOCK
        BEGIN BLOCK a31 copy_of_and3
            PIN I1 ibn
            PIN O a31o
            PIN I2 ian
            PIN I0 icn
        END BLOCK
        BEGIN BLOCK a29 copy_of_and4
            PIN O a29o
            PIN I2 ic
            PIN I1 id
            PIN I3 ia
            PIN I0 ie
        END BLOCK
        BEGIN BLOCK a23 copy_of_and3
            PIN I1 ibn
            PIN O a23o
            PIN I2 ia
            PIN I0 ic
        END BLOCK
        BEGIN BLOCK a32 and6
            PIN I0 ik
            PIN I1 ie
            PIN I2 id
            PIN I3 ic
            PIN I4 ibn
            PIN I5 ian
            PIN O a32o
        END BLOCK
        BEGIN BLOCK INV_b02o inv
            PIN I b02o
            PIN O b02o_not
        END BLOCK
        BEGIN BLOCK b01 and3
            PIN I0 a12o
            PIN I1 ien
            PIN I2 rd4
            PIN O DOS6_1
        END BLOCK
        BEGIN BLOCK b21 or3
            PIN I0 a32o
            PIN I1 a31o
            PIN I2 a30o
            PIN O b21o
        END BLOCK
        BEGIN BLOCK b20 or3
            PIN I0 a29o
            PIN I1 a28o
            PIN I2 a27o
            PIN O b20o
        END BLOCK
        BEGIN BLOCK b19 or4
            PIN I0 a09o
            PIN I1 a14o
            PIN I2 a26o
            PIN I3 a25o
            PIN O b19o
        END BLOCK
        BEGIN BLOCK b18 or3
            PIN I0 a24o
            PIN I1 a22o
            PIN I2 a18o
            PIN O b18o
        END BLOCK
        BEGIN BLOCK b17 or3
            PIN I0 a24o
            PIN I1 a23o
            PIN I2 a22o
            PIN O b17o
        END BLOCK
        BEGIN BLOCK b16 or3
            PIN I0 a32o
            PIN I1 a22o
            PIN I2 a21o
            PIN O b16o
        END BLOCK
        BEGIN BLOCK b15 or3
            PIN I0 a20o
            PIN I1 a19o
            PIN I2 a11o
            PIN O b15o
        END BLOCK
        BEGIN BLOCK b14 or3
            PIN I0 a23o
            PIN I1 a18o
            PIN I2 a14o
            PIN O b14o
        END BLOCK
        BEGIN BLOCK b13 or3
            PIN I0 a17o
            PIN I1 a16o
            PIN I2 a15o
            PIN O b13o
        END BLOCK
        BEGIN BLOCK b12 or3
            PIN I0 a16o
            PIN I1 a15o
            PIN I2 a12o
            PIN O b12o
        END BLOCK
        BEGIN BLOCK b11 or2
            PIN I0 a15o
            PIN I1 a09o
            PIN O b11o
        END BLOCK
        BEGIN BLOCK b10 or3
            PIN I0 a17o
            PIN I1 a13o
            PIN I2 a12o
            PIN O b10o
        END BLOCK
        BEGIN BLOCK b09 or3
            PIN I0 a13o
            PIN I1 a12o
            PIN I2 a11o
            PIN O b09o
        END BLOCK
        BEGIN BLOCK b08 or3
            PIN I0 a10o
            PIN I1 a07o
            PIN I2 a08o
            PIN O b08o
        END BLOCK
        BEGIN BLOCK b07 or3
            PIN I0 a10o
            PIN I1 a07o
            PIN I2 a06o
            PIN O b07o
        END BLOCK
        BEGIN BLOCK b06 or2
            PIN I0 a06o
            PIN I1 a05o
            PIN O b06o
        END BLOCK
        BEGIN BLOCK b05 or3
            PIN I0 a08o
            PIN I1 a06o
            PIN I2 a05o
            PIN O b05o
        END BLOCK
        BEGIN BLOCK b04 or3
            PIN I0 a09o
            PIN I1 a05o
            PIN I2 a03o
            PIN O b04o
        END BLOCK
        BEGIN BLOCK b03 or3
            PIN I0 a04o
            PIN I1 a03o
            PIN I2 a02o
            PIN O b03o
        END BLOCK
        BEGIN BLOCK b02 or3
            PIN I0 a14o
            PIN I1 a01o
            PIN I2 ie
            PIN O b02o
        END BLOCK
        BEGIN BLOCK c01 or3
            PIN I0 b14o
            PIN I1 b09o
            PIN I2 b05o
            PIN O c01o
        END BLOCK
        BEGIN BLOCK c02 or3
            PIN I0 b17o
            PIN I1 b10o
            PIN I2 b04o
            PIN O c02o
        END BLOCK
        BEGIN BLOCK c03 or3
            PIN I0 b13o
            PIN I1 b11o
            PIN I2 b06o
            PIN O c03o
        END BLOCK
        BEGIN BLOCK c04 or3
            PIN I0 b18o
            PIN I1 b12o
            PIN I2 b07o
            PIN O c04o
        END BLOCK
        BEGIN BLOCK c05 or4
            PIN I0 b16o
            PIN I1 b15o
            PIN I2 b08o
            PIN I3 b03o
            PIN O c05o
        END BLOCK
        BEGIN BLOCK c06 or3
            PIN I0 b21o
            PIN I1 b20o
            PIN I2 b19o
            PIN O DOS6_2
        END BLOCK
        BEGIN BLOCK INV_DOS6_2 inv
            PIN I DOS6_2
            PIN O DOS6_2not
        END BLOCK
        BEGIN BLOCK INV_c05o inv
            PIN I c05o
            PIN O c05o_not
        END BLOCK
        BEGIN BLOCK d01 xor2
            PIN I0 c02o
            PIN I1 compls6
            PIN O d01o
        END BLOCK
        BEGIN BLOCK d02 xor2
            PIN I0 c04o
            PIN I1 compls6
            PIN O d02o
        END BLOCK
        BEGIN BLOCK d03 xor2
            PIN I0 c01o
            PIN I1 compls6
            PIN O d03o
        END BLOCK
        BEGIN BLOCK d04 xor2
            PIN I0 c03o
            PIN I1 compls6
            PIN O d04o
        END BLOCK
        BEGIN BLOCK d05 xor2
            PIN I0 b02o
            PIN I1 compls6
            PIN O d05o
        END BLOCK
        BEGIN BLOCK d06 xor2
            PIN I0 c05o
            PIN I1 compls6
            PIN O d06o
        END BLOCK
        BEGIN BLOCK d07 and4
            PIN I0 DOS6_2not
            PIN I1 rd4n
            PIN I2 b02o
            PIN I3 c05o
            PIN O d07o
        END BLOCK
        BEGIN BLOCK d08 and4
            PIN I0 id
            PIN I1 b02o_not
            PIN I2 c05o_not
            PIN I3 rd4
            PIN O d08o
        END BLOCK
        BEGIN BLOCK d09 or2
            PIN I0 d08o
            PIN I1 d07o
            PIN O d09o
        END BLOCK
        BEGIN BLOCK ffa copy_of_fd
            PIN C clk
            PIN D d01o
            PIN Q oa
        END BLOCK
        BEGIN BLOCK ffb copy_of_fd
            PIN C clk
            PIN D d02o
            PIN Q ob
        END BLOCK
        BEGIN BLOCK ffc copy_of_fd
            PIN C clk
            PIN D d03o
            PIN Q oc
        END BLOCK
        BEGIN BLOCK ffd copy_of_fd
            PIN C clk
            PIN D d04o
            PIN Q od
        END BLOCK
        BEGIN BLOCK ffe copy_of_fd
            PIN C clk
            PIN D d05o
            PIN Q oe
        END BLOCK
        BEGIN BLOCK ffi copy_of_fd
            PIN C clk
            PIN D d06o
            PIN Q oi
        END BLOCK
        BEGIN BLOCK ffs copy_of_fd
            PIN C clk
            PIN D d09o
            PIN Q os
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN BRANCH rd4
            WIRE 96 96 128 96
        END BRANCH
        INSTANCE XLXI_1 128 128 R0
        BEGIN BRANCH rd4n
            WIRE 352 96 368 96
            BEGIN DISPLAY 368 96 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 96 96 rd4 R180 28
        IOMARKER 96 32 clk R180 28
        BEGIN BRANCH clk
            WIRE 96 32 112 32
            BEGIN DISPLAY 112 32 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ia
            WIRE 96 176 112 176
            WIRE 112 176 128 176
            BEGIN DISPLAY 112 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_52 128 208 R0
        BEGIN BRANCH ib
            WIRE 96 256 112 256
            WIRE 112 256 128 256
            BEGIN DISPLAY 112 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_53 128 288 R0
        BEGIN BRANCH ic
            WIRE 96 336 112 336
            WIRE 112 336 128 336
            BEGIN DISPLAY 112 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH id
            WIRE 96 416 112 416
            WIRE 112 416 128 416
            BEGIN DISPLAY 112 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ie
            WIRE 96 496 112 496
            WIRE 112 496 128 496
            BEGIN DISPLAY 112 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_54 128 368 R0
        INSTANCE XLXI_55 128 448 R0
        INSTANCE XLXI_56 128 528 R0
        BEGIN BRANCH ian
            WIRE 352 176 368 176
            WIRE 368 176 368 176
            WIRE 368 176 384 176
            BEGIN DISPLAY 376 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ibn
            WIRE 352 256 368 256
            WIRE 368 256 384 256
            BEGIN DISPLAY 368 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH icn
            WIRE 352 336 368 336
            WIRE 368 336 368 336
            WIRE 368 336 384 336
            BEGIN DISPLAY 372 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH idn
            WIRE 352 416 368 416
            WIRE 368 416 368 416
            WIRE 368 416 384 416
            BEGIN DISPLAY 376 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ien
            WIRE 352 496 368 496
            WIRE 368 496 368 496
            WIRE 368 496 384 496
            BEGIN DISPLAY 376 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 96 176 ia R180 28
        IOMARKER 96 256 ib R180 28
        IOMARKER 96 336 ic R180 28
        IOMARKER 96 416 id R180 28
        IOMARKER 96 496 ie R180 28
        IOMARKER 96 576 ik R180 28
        BEGIN BRANCH ia
            WIRE 560 48 560 304
            WIRE 560 304 560 448
            WIRE 560 448 560 704
            WIRE 560 704 928 704
            WIRE 560 704 560 1408
            WIRE 560 1408 928 1408
            WIRE 560 1408 560 1520
            WIRE 560 1520 928 1520
            WIRE 560 1520 560 1968
            WIRE 560 1968 928 1968
            WIRE 560 1968 560 2640
            WIRE 560 2640 560 2752
            WIRE 560 2752 560 2864
            WIRE 560 2864 560 3312
            WIRE 560 3312 560 3424
            WIRE 560 3424 928 3424
            WIRE 560 3424 560 4192
            WIRE 560 3312 928 3312
            WIRE 560 2864 928 2864
            WIRE 560 2752 928 2752
            WIRE 560 2640 928 2640
            WIRE 560 448 928 448
            WIRE 560 304 928 304
            BEGIN DISPLAY 560 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH idn
            WIRE 784 48 784 176
            WIRE 784 176 784 240
            WIRE 784 240 784 400
            WIRE 784 400 784 656
            WIRE 784 656 784 800
            WIRE 784 800 784 912
            WIRE 784 912 784 1024
            WIRE 784 1024 784 1136
            WIRE 784 1136 928 1136
            WIRE 784 1136 784 1248
            WIRE 784 1248 928 1248
            WIRE 784 1248 784 2464
            WIRE 784 2464 784 3152
            WIRE 784 3152 928 3152
            WIRE 784 3152 784 4192
            WIRE 784 2464 928 2464
            WIRE 784 1024 928 1024
            WIRE 784 912 928 912
            WIRE 784 800 928 800
            WIRE 784 656 928 656
            WIRE 784 400 928 400
            WIRE 784 240 928 240
            WIRE 784 176 928 176
            BEGIN DISPLAY 784 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE a01 928 176 R0
        INSTANCE a02 928 288 R0
        INSTANCE a03 928 432 R0
        INSTANCE a04 928 544 R0
        INSTANCE a05 928 688 R0
        INSTANCE a06 928 832 R0
        INSTANCE a07 928 944 R0
        INSTANCE a08 928 1056 R0
        INSTANCE a09 928 1168 R0
        INSTANCE a10 928 1280 R0
        INSTANCE a11 928 1392 R0
        INSTANCE a12 928 1504 R0
        INSTANCE a13 928 1616 R0
        INSTANCE a14 928 1728 R0
        INSTANCE a15 928 1840 R0
        INSTANCE a16 928 1952 R0
        INSTANCE a17 928 2064 R0
        INSTANCE a18 928 2176 R0
        INSTANCE a19 928 2288 R0
        INSTANCE a20 928 2400 R0
        INSTANCE a21 928 2512 R0
        INSTANCE a22 928 2624 R0
        INSTANCE a24 928 2848 R0
        INSTANCE a25 928 2960 R0
        INSTANCE a26 928 3072 R0
        INSTANCE a27 928 3184 R0
        INSTANCE a28 928 3296 R0
        INSTANCE a30 928 3520 R0
        INSTANCE a31 928 3632 R0
        BEGIN BRANCH a01o
            WIRE 1184 128 1216 128
            WIRE 1216 128 1216 128
            WIRE 1216 128 1232 128
            BEGIN DISPLAY 1220 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a02o
            WIRE 1184 240 1216 240
            WIRE 1216 240 1216 240
            WIRE 1216 240 1232 240
            BEGIN DISPLAY 1220 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a03o
            WIRE 1184 368 1216 368
            WIRE 1216 368 1232 368
            BEGIN DISPLAY 1216 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a04o
            WIRE 1184 496 1232 496
            BEGIN DISPLAY 1232 496 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 1184 624 1216 624
            WIRE 1216 624 1216 624
            WIRE 1216 624 1232 624
            BEGIN DISPLAY 1220 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 1184 768 1232 768
            BEGIN DISPLAY 1232 768 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a07o
            WIRE 1184 896 1232 896
            BEGIN DISPLAY 1232 896 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a08o
            WIRE 1184 1008 1216 1008
            WIRE 1216 1008 1216 1008
            WIRE 1216 1008 1232 1008
            BEGIN DISPLAY 1220 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a09o
            WIRE 1184 1120 1216 1120
            WIRE 1216 1120 1232 1120
            BEGIN DISPLAY 1216 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a10o
            WIRE 1184 1232 1232 1232
            BEGIN DISPLAY 1232 1232 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a11o
            WIRE 1184 1344 1216 1344
            WIRE 1216 1344 1232 1344
            BEGIN DISPLAY 1216 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1184 1456 1232 1456
            BEGIN DISPLAY 1232 1456 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a13o
            WIRE 1184 1568 1216 1568
            WIRE 1216 1568 1216 1568
            WIRE 1216 1568 1232 1568
            BEGIN DISPLAY 1220 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a14o
            WIRE 1184 1680 1216 1680
            WIRE 1216 1680 1216 1680
            WIRE 1216 1680 1232 1680
            BEGIN DISPLAY 1224 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a15o
            WIRE 1184 1792 1216 1792
            WIRE 1216 1792 1216 1792
            WIRE 1216 1792 1232 1792
            BEGIN DISPLAY 1224 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a16o
            WIRE 1184 1904 1232 1904
            BEGIN DISPLAY 1232 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a17o
            WIRE 1184 2016 1216 2016
            WIRE 1216 2016 1216 2016
            WIRE 1216 2016 1232 2016
            BEGIN DISPLAY 1224 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a18o
            WIRE 1184 2128 1216 2128
            WIRE 1216 2128 1216 2128
            WIRE 1216 2128 1232 2128
            BEGIN DISPLAY 1220 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a19o
            WIRE 1184 2240 1216 2240
            WIRE 1216 2240 1216 2240
            WIRE 1216 2240 1232 2240
            BEGIN DISPLAY 1220 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a20o
            WIRE 1184 2352 1216 2352
            WIRE 1216 2352 1232 2352
            BEGIN DISPLAY 1216 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a21o
            WIRE 1184 2464 1216 2464
            WIRE 1216 2464 1216 2464
            WIRE 1216 2464 1232 2464
            BEGIN DISPLAY 1220 2464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a22o
            WIRE 1184 2576 1232 2576
            BEGIN DISPLAY 1232 2576 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a23o
            WIRE 1184 2688 1216 2688
            WIRE 1216 2688 1216 2688
            WIRE 1216 2688 1232 2688
            BEGIN DISPLAY 1220 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a24o
            WIRE 1184 2800 1200 2800
            WIRE 1200 2800 1200 2800
            WIRE 1200 2800 1232 2800
            BEGIN DISPLAY 1208 2800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a25o
            WIRE 1184 2912 1216 2912
            WIRE 1216 2912 1232 2912
            BEGIN DISPLAY 1216 2912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a26o
            WIRE 1184 3024 1216 3024
            WIRE 1216 3024 1216 3024
            WIRE 1216 3024 1232 3024
            BEGIN DISPLAY 1220 3024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a27o
            WIRE 1184 3136 1232 3136
            BEGIN DISPLAY 1232 3136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a28o
            WIRE 1184 3248 1216 3248
            WIRE 1216 3248 1232 3248
            BEGIN DISPLAY 1216 3248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a29o
            WIRE 1184 3360 1216 3360
            WIRE 1216 3360 1216 3360
            WIRE 1216 3360 1232 3360
            BEGIN DISPLAY 1224 3360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a30o
            WIRE 1184 3472 1216 3472
            WIRE 1216 3472 1216 3472
            WIRE 1216 3472 1232 3472
            BEGIN DISPLAY 1220 3472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a31o
            WIRE 1184 3584 1216 3584
            WIRE 1216 3584 1216 3584
            WIRE 1216 3584 1232 3584
            BEGIN DISPLAY 1220 3584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a29 928 3408 R0
        BEGIN BRANCH ien
            WIRE 848 48 848 288
            WIRE 848 288 928 288
            WIRE 848 288 848 688
            WIRE 848 688 928 688
            WIRE 848 688 848 832
            WIRE 848 832 928 832
            WIRE 848 832 848 1168
            WIRE 848 1168 928 1168
            WIRE 848 1168 848 1280
            WIRE 848 1280 928 1280
            WIRE 848 1280 848 1392
            WIRE 848 1392 928 1392
            WIRE 848 1392 848 1952
            WIRE 848 1952 928 1952
            WIRE 848 1952 848 2288
            WIRE 848 2288 928 2288
            WIRE 848 2288 848 2400
            WIRE 848 2400 848 2512
            WIRE 848 2512 848 3072
            WIRE 848 3072 848 3184
            WIRE 848 3184 928 3184
            WIRE 848 3184 848 4192
            WIRE 848 3072 928 3072
            WIRE 848 2512 928 2512
            WIRE 848 2400 928 2400
            BEGIN DISPLAY 848 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH icn
            WIRE 720 48 720 144
            WIRE 720 144 928 144
            WIRE 720 144 720 192
            WIRE 720 192 928 192
            WIRE 720 192 720 368
            WIRE 720 368 928 368
            WIRE 720 368 720 624
            WIRE 720 624 928 624
            WIRE 720 624 720 768
            WIRE 720 768 928 768
            WIRE 720 768 720 880
            WIRE 720 880 928 880
            WIRE 720 880 720 1728
            WIRE 720 1728 928 1728
            WIRE 720 1728 720 1840
            WIRE 720 1840 928 1840
            WIRE 720 1840 720 2016
            WIRE 720 2016 928 2016
            WIRE 720 2016 720 2240
            WIRE 720 2240 928 2240
            WIRE 720 2240 720 2352
            WIRE 720 2352 720 2592
            WIRE 720 2592 720 2848
            WIRE 720 2848 720 3008
            WIRE 720 3008 720 3120
            WIRE 720 3120 720 3488
            WIRE 720 3488 720 3632
            WIRE 720 3632 928 3632
            WIRE 720 3632 720 4192
            WIRE 720 3488 928 3488
            WIRE 720 3120 928 3120
            WIRE 720 3008 928 3008
            WIRE 720 2848 928 2848
            WIRE 720 2592 928 2592
            WIRE 720 2352 928 2352
            BEGIN DISPLAY 720 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ib
            WIRE 624 48 624 480
            WIRE 624 480 928 480
            WIRE 624 480 624 592
            WIRE 624 592 928 592
            WIRE 624 592 624 1440
            WIRE 624 1440 928 1440
            WIRE 624 1440 624 1792
            WIRE 624 1792 928 1792
            WIRE 624 1792 624 1856
            WIRE 624 1856 928 1856
            WIRE 624 1856 624 2128
            WIRE 624 2128 928 2128
            WIRE 624 2128 624 2800
            WIRE 624 2800 624 2896
            WIRE 624 2896 624 3456
            WIRE 624 3456 928 3456
            WIRE 624 3456 624 4192
            WIRE 624 2896 928 2896
            WIRE 624 2800 928 2800
            BEGIN DISPLAY 624 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE a23 928 2736 R0
        BEGIN BRANCH ik
            WIRE 96 576 112 576
            WIRE 112 576 112 4176
            WIRE 112 4176 928 4176
            BEGIN DISPLAY 112 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ie
            WIRE 816 48 816 432
            WIRE 816 432 928 432
            WIRE 816 432 816 944
            WIRE 816 944 928 944
            WIRE 816 944 816 1056
            WIRE 816 1056 928 1056
            WIRE 816 1056 816 1616
            WIRE 816 1616 928 1616
            WIRE 816 1616 816 2960
            WIRE 816 2960 928 2960
            WIRE 816 2960 816 3296
            WIRE 816 3296 928 3296
            WIRE 816 3296 816 3408
            WIRE 816 3408 928 3408
            WIRE 816 3408 816 3520
            WIRE 816 3520 928 3520
            WIRE 816 3520 816 4112
            WIRE 816 4112 816 4192
            WIRE 816 4112 928 4112
            BEGIN DISPLAY 816 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH id
            WIRE 752 48 752 544
            WIRE 752 544 928 544
            WIRE 752 544 752 1360
            WIRE 752 1360 928 1360
            WIRE 752 1360 752 1504
            WIRE 752 1504 928 1504
            WIRE 752 1504 752 1904
            WIRE 752 1904 928 1904
            WIRE 752 1904 752 2064
            WIRE 752 2064 928 2064
            WIRE 752 2064 752 2624
            WIRE 752 2624 928 2624
            WIRE 752 2624 752 3040
            WIRE 752 3040 928 3040
            WIRE 752 3040 752 3264
            WIRE 752 3264 928 3264
            WIRE 752 3264 752 3376
            WIRE 752 3376 928 3376
            WIRE 752 3376 752 4048
            WIRE 752 4048 752 4192
            WIRE 752 4048 928 4048
            BEGIN DISPLAY 752 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ic
            WIRE 688 48 688 512
            WIRE 688 512 928 512
            WIRE 688 512 688 1216
            WIRE 688 1216 928 1216
            WIRE 688 1216 688 1472
            WIRE 688 1472 928 1472
            WIRE 688 1472 688 1568
            WIRE 688 1568 928 1568
            WIRE 688 1568 688 1680
            WIRE 688 1680 928 1680
            WIRE 688 1680 688 2176
            WIRE 688 2176 928 2176
            WIRE 688 2176 688 2736
            WIRE 688 2736 928 2736
            WIRE 688 2736 688 2928
            WIRE 688 2928 928 2928
            WIRE 688 2928 688 3232
            WIRE 688 3232 928 3232
            WIRE 688 3232 688 3344
            WIRE 688 3344 928 3344
            WIRE 688 3344 688 3984
            WIRE 688 3984 688 4192
            WIRE 688 3984 928 3984
            BEGIN DISPLAY 688 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ibn
            WIRE 656 48 656 112
            WIRE 656 112 928 112
            WIRE 656 112 656 336
            WIRE 656 336 928 336
            WIRE 656 336 656 736
            WIRE 656 736 928 736
            WIRE 656 736 656 992
            WIRE 656 992 928 992
            WIRE 656 992 656 1104
            WIRE 656 1104 928 1104
            WIRE 656 1104 656 1328
            WIRE 656 1328 928 1328
            WIRE 656 1328 656 1632
            WIRE 656 1632 928 1632
            WIRE 656 1632 656 2304
            WIRE 656 2304 928 2304
            WIRE 656 2304 656 2416
            WIRE 656 2416 928 2416
            WIRE 656 2416 656 2560
            WIRE 656 2560 928 2560
            WIRE 656 2560 656 2688
            WIRE 656 2688 928 2688
            WIRE 656 2688 656 3088
            WIRE 656 3088 928 3088
            WIRE 656 3088 656 3584
            WIRE 656 3584 928 3584
            WIRE 656 3584 656 3920
            WIRE 656 3920 656 4192
            WIRE 656 3920 928 3920
            BEGIN DISPLAY 656 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ian
            WIRE 592 48 592 80
            WIRE 592 80 928 80
            WIRE 592 80 592 560
            WIRE 592 560 928 560
            WIRE 592 560 592 848
            WIRE 592 848 928 848
            WIRE 592 848 592 960
            WIRE 592 960 928 960
            WIRE 592 960 592 1072
            WIRE 592 1072 928 1072
            WIRE 592 1072 592 1184
            WIRE 592 1184 928 1184
            WIRE 592 1184 592 1296
            WIRE 592 1296 928 1296
            WIRE 592 1296 592 1744
            WIRE 592 1744 928 1744
            WIRE 592 1744 592 2080
            WIRE 592 2080 928 2080
            WIRE 592 2080 592 2192
            WIRE 592 2192 928 2192
            WIRE 592 2192 592 2528
            WIRE 592 2528 928 2528
            WIRE 592 2528 592 2976
            WIRE 592 2976 928 2976
            WIRE 592 2976 592 3200
            WIRE 592 3200 928 3200
            WIRE 592 3200 592 3536
            WIRE 592 3536 928 3536
            WIRE 592 3536 592 3856
            WIRE 592 3856 592 4192
            WIRE 592 3856 928 3856
            BEGIN DISPLAY 592 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a32o
            WIRE 1184 4016 1232 4016
            BEGIN DISPLAY 1232 4016 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE a32 928 4240 R0
        INSTANCE INV_b02o 1824 320 R0
        BEGIN BRANCH b02o_not
            WIRE 2048 288 2064 288
            WIRE 2064 288 2064 288
            WIRE 2064 288 2096 288
            BEGIN DISPLAY 2072 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE b01 1520 272 R0
        INSTANCE b21 1520 3152 R0
        INSTANCE b20 1520 3008 R0
        INSTANCE b19 1520 2864 R0
        INSTANCE b18 1520 2656 R0
        INSTANCE b17 1520 2512 R0
        INSTANCE b16 1520 2368 R0
        INSTANCE b15 1520 2224 R0
        INSTANCE b14 1520 2080 R0
        INSTANCE b13 1520 1936 R0
        INSTANCE b12 1520 1792 R0
        INSTANCE b11 1520 1632 R0
        INSTANCE b10 1520 1536 R0
        INSTANCE b09 1520 1392 R0
        INSTANCE b08 1520 1248 R0
        INSTANCE b07 1520 1104 R0
        INSTANCE b06 1520 944 R0
        INSTANCE b05 1520 848 R0
        INSTANCE b04 1520 704 R0
        INSTANCE b03 1520 560 R0
        INSTANCE b02 1520 416 R0
        BEGIN BRANCH b16o
            WIRE 1776 2240 1808 2240
            WIRE 1808 2240 1808 2240
            WIRE 1808 2240 1824 2240
            BEGIN DISPLAY 1812 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b02o
            WIRE 1776 288 1792 288
            WIRE 1792 288 1792 288
            WIRE 1792 288 1824 288
            BEGIN DISPLAY 1800 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b03o
            WIRE 1776 432 1808 432
            WIRE 1808 432 1808 432
            WIRE 1808 432 1824 432
            BEGIN DISPLAY 1804 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b04o
            WIRE 1776 576 1808 576
            WIRE 1808 576 1808 576
            WIRE 1808 576 1824 576
            BEGIN DISPLAY 1812 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b05o
            WIRE 1776 720 1808 720
            WIRE 1808 720 1824 720
            BEGIN DISPLAY 1808 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b06o
            WIRE 1776 848 1808 848
            WIRE 1808 848 1824 848
            BEGIN DISPLAY 1808 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b07o
            WIRE 1776 976 1808 976
            WIRE 1808 976 1824 976
            BEGIN DISPLAY 1808 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b08o
            WIRE 1776 1120 1808 1120
            WIRE 1808 1120 1824 1120
            BEGIN DISPLAY 1808 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b09o
            WIRE 1776 1264 1808 1264
            WIRE 1808 1264 1808 1264
            WIRE 1808 1264 1824 1264
            BEGIN DISPLAY 1804 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b10o
            WIRE 1776 1408 1808 1408
            WIRE 1808 1408 1824 1408
            BEGIN DISPLAY 1808 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b11o
            WIRE 1776 1536 1824 1536
            BEGIN DISPLAY 1824 1536 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b12o
            WIRE 1776 1664 1808 1664
            WIRE 1808 1664 1824 1664
            BEGIN DISPLAY 1808 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b13o
            WIRE 1776 1808 1792 1808
            WIRE 1792 1808 1792 1808
            WIRE 1792 1808 1824 1808
            BEGIN DISPLAY 1800 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b14o
            WIRE 1776 1952 1808 1952
            WIRE 1808 1952 1808 1952
            WIRE 1808 1952 1824 1952
            BEGIN DISPLAY 1804 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b15o
            WIRE 1776 2096 1808 2096
            WIRE 1808 2096 1808 2096
            WIRE 1808 2096 1824 2096
            BEGIN DISPLAY 1804 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b17o
            WIRE 1776 2384 1808 2384
            WIRE 1808 2384 1808 2384
            WIRE 1808 2384 1824 2384
            BEGIN DISPLAY 1812 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b18o
            WIRE 1776 2528 1792 2528
            WIRE 1792 2528 1792 2528
            WIRE 1792 2528 1824 2528
            BEGIN DISPLAY 1796 2528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b19o
            WIRE 1776 2704 1808 2704
            WIRE 1808 2704 1808 2704
            WIRE 1808 2704 1824 2704
            BEGIN DISPLAY 1804 2704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b20o
            WIRE 1776 2880 1792 2880
            WIRE 1792 2880 1792 2880
            WIRE 1792 2880 1824 2880
            BEGIN DISPLAY 1796 2880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b21o
            WIRE 1776 3024 1808 3024
            WIRE 1808 3024 1824 3024
            BEGIN DISPLAY 1808 3024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a32o
            WIRE 1472 3088 1520 3088
            BEGIN DISPLAY 1472 3088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a31o
            WIRE 1472 3024 1520 3024
            BEGIN DISPLAY 1472 3024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a30o
            WIRE 1472 2960 1520 2960
            BEGIN DISPLAY 1472 2960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a29o
            WIRE 1472 2944 1520 2944
            BEGIN DISPLAY 1472 2944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a28o
            WIRE 1472 2880 1520 2880
            BEGIN DISPLAY 1472 2880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a27o
            WIRE 1472 2816 1520 2816
            BEGIN DISPLAY 1472 2816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a09o
            WIRE 1472 2800 1520 2800
            BEGIN DISPLAY 1472 2800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a14o
            WIRE 1472 2736 1520 2736
            BEGIN DISPLAY 1472 2736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a26o
            WIRE 1472 2672 1520 2672
            BEGIN DISPLAY 1472 2672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a25o
            WIRE 1472 2608 1520 2608
            BEGIN DISPLAY 1472 2608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a24o
            WIRE 1472 2592 1520 2592
            BEGIN DISPLAY 1472 2592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a22o
            WIRE 1472 2528 1520 2528
            BEGIN DISPLAY 1472 2528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a18o
            WIRE 1472 2464 1520 2464
            BEGIN DISPLAY 1472 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a24o
            WIRE 1472 2448 1520 2448
            BEGIN DISPLAY 1472 2448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a23o
            WIRE 1472 2384 1520 2384
            BEGIN DISPLAY 1472 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a22o
            WIRE 1472 2320 1520 2320
            BEGIN DISPLAY 1472 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a32o
            WIRE 1472 2304 1520 2304
            BEGIN DISPLAY 1472 2304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a22o
            WIRE 1472 2240 1520 2240
            BEGIN DISPLAY 1472 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a21o
            WIRE 1472 2176 1520 2176
            BEGIN DISPLAY 1472 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a20o
            WIRE 1472 2160 1520 2160
            BEGIN DISPLAY 1472 2160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a19o
            WIRE 1472 2096 1520 2096
            BEGIN DISPLAY 1472 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a11o
            WIRE 1472 2032 1520 2032
            BEGIN DISPLAY 1472 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a23o
            WIRE 1472 2016 1520 2016
            BEGIN DISPLAY 1472 2016 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a18o
            WIRE 1472 1952 1520 1952
            BEGIN DISPLAY 1472 1952 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a14o
            WIRE 1472 1888 1520 1888
            BEGIN DISPLAY 1472 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a17o
            WIRE 1472 1872 1520 1872
            BEGIN DISPLAY 1472 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a16o
            WIRE 1472 1808 1520 1808
            BEGIN DISPLAY 1472 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a15o
            WIRE 1472 1744 1520 1744
            BEGIN DISPLAY 1472 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a16o
            WIRE 1472 1728 1520 1728
            BEGIN DISPLAY 1472 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a15o
            WIRE 1472 1664 1520 1664
            BEGIN DISPLAY 1472 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1472 1600 1520 1600
            BEGIN DISPLAY 1472 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a15o
            WIRE 1472 1568 1520 1568
            BEGIN DISPLAY 1472 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a09o
            WIRE 1472 1504 1520 1504
            BEGIN DISPLAY 1472 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a17o
            WIRE 1472 1472 1520 1472
            BEGIN DISPLAY 1472 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a13o
            WIRE 1472 1408 1520 1408
            BEGIN DISPLAY 1472 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1472 1344 1520 1344
            BEGIN DISPLAY 1472 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a13o
            WIRE 1472 1328 1520 1328
            BEGIN DISPLAY 1472 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1472 1264 1520 1264
            BEGIN DISPLAY 1472 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a11o
            WIRE 1472 1200 1520 1200
            BEGIN DISPLAY 1472 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a10o
            WIRE 1472 1184 1520 1184
            BEGIN DISPLAY 1472 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a07o
            WIRE 1472 1120 1520 1120
            BEGIN DISPLAY 1472 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a08o
            WIRE 1472 1056 1520 1056
            BEGIN DISPLAY 1472 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a10o
            WIRE 1472 1040 1520 1040
            BEGIN DISPLAY 1472 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a07o
            WIRE 1472 976 1520 976
            BEGIN DISPLAY 1472 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 1472 912 1520 912
            BEGIN DISPLAY 1472 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 1472 880 1520 880
            BEGIN DISPLAY 1472 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 1472 816 1520 816
            BEGIN DISPLAY 1472 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a08o
            WIRE 1472 784 1520 784
            BEGIN DISPLAY 1472 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 1472 720 1520 720
            BEGIN DISPLAY 1472 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 1472 656 1520 656
            BEGIN DISPLAY 1472 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a09o
            WIRE 1472 640 1520 640
            BEGIN DISPLAY 1472 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 1472 576 1520 576
            BEGIN DISPLAY 1472 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a03o
            WIRE 1472 512 1520 512
            BEGIN DISPLAY 1472 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a04o
            WIRE 1472 496 1520 496
            BEGIN DISPLAY 1472 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a03o
            WIRE 1472 432 1520 432
            BEGIN DISPLAY 1472 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a02o
            WIRE 1472 368 1520 368
            BEGIN DISPLAY 1472 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DOS6_1
            WIRE 1776 144 1808 144
            WIRE 1808 144 1824 144
            BEGIN DISPLAY 1808 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1472 208 1520 208
            BEGIN DISPLAY 1472 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ien
            WIRE 1472 144 1520 144
            BEGIN DISPLAY 1472 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rd4
            WIRE 1472 80 1520 80
            BEGIN DISPLAY 1472 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a14o
            WIRE 1472 352 1520 352
            BEGIN DISPLAY 1472 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a01o
            WIRE 1472 288 1520 288
            BEGIN DISPLAY 1472 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ie
            WIRE 1472 224 1520 224
            BEGIN DISPLAY 1472 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1824 144 DOS6_1 R0 28
        INSTANCE c01 2304 272 R0
        INSTANCE c02 2304 416 R0
        INSTANCE c03 2304 560 R0
        INSTANCE c04 2304 704 R0
        INSTANCE c05 2304 912 R0
        INSTANCE c06 2304 1056 R0
        BEGIN BRANCH b05o
            WIRE 2256 80 2304 80
            BEGIN DISPLAY 2256 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b09o
            WIRE 2256 144 2304 144
            BEGIN DISPLAY 2256 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b14o
            WIRE 2256 208 2304 208
            BEGIN DISPLAY 2256 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b04o
            WIRE 2256 224 2304 224
            BEGIN DISPLAY 2256 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b10o
            WIRE 2256 288 2304 288
            BEGIN DISPLAY 2256 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b17o
            WIRE 2256 352 2304 352
            BEGIN DISPLAY 2256 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b06o
            WIRE 2256 368 2304 368
            BEGIN DISPLAY 2256 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b11o
            WIRE 2256 432 2304 432
            BEGIN DISPLAY 2256 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b13o
            WIRE 2256 496 2304 496
            BEGIN DISPLAY 2256 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b07o
            WIRE 2256 512 2304 512
            BEGIN DISPLAY 2256 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b12o
            WIRE 2256 576 2304 576
            BEGIN DISPLAY 2256 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b18o
            WIRE 2256 640 2304 640
            BEGIN DISPLAY 2256 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b03o
            WIRE 2256 656 2304 656
            BEGIN DISPLAY 2256 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b08o
            WIRE 2256 720 2304 720
            BEGIN DISPLAY 2256 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b15o
            WIRE 2256 784 2304 784
            BEGIN DISPLAY 2256 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b19o
            WIRE 2256 864 2304 864
            BEGIN DISPLAY 2256 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b20o
            WIRE 2256 928 2304 928
            BEGIN DISPLAY 2256 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b21o
            WIRE 2256 992 2304 992
            BEGIN DISPLAY 2256 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DOS6_2
            WIRE 2560 928 2592 928
            WIRE 2592 928 2592 928
            WIRE 2592 928 2608 928
            BEGIN DISPLAY 2588 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c05o
            WIRE 2560 752 2592 752
            WIRE 2592 752 2608 752
            BEGIN DISPLAY 2592 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c04o
            WIRE 2560 576 2592 576
            WIRE 2592 576 2592 576
            WIRE 2592 576 2608 576
            BEGIN DISPLAY 2600 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c03o
            WIRE 2560 432 2592 432
            WIRE 2592 432 2608 432
            BEGIN DISPLAY 2592 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c02o
            WIRE 2560 288 2592 288
            WIRE 2592 288 2592 288
            WIRE 2592 288 2608 288
            BEGIN DISPLAY 2596 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c01o
            WIRE 2560 144 2592 144
            WIRE 2592 144 2592 144
            WIRE 2592 144 2608 144
            BEGIN DISPLAY 2596 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DOS6_2
            WIRE 2256 1072 2288 1072
            BEGIN DISPLAY 2256 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DOS6_2not
            WIRE 2512 1072 2544 1072
            BEGIN DISPLAY 2544 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE INV_DOS6_2 2288 1104 R0
        INSTANCE INV_c05o 2608 784 R0
        BEGIN BRANCH c05o_not
            WIRE 2832 752 2864 752
            WIRE 2864 752 2864 752
            WIRE 2864 752 2880 752
            BEGIN DISPLAY 2860 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b16o
            WIRE 2256 848 2272 848
            WIRE 2272 848 2304 848
            BEGIN DISPLAY 2272 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2608 928 DOS6_2 R0 28
        INSTANCE d01 3056 224 R0
        INSTANCE d02 3056 336 R0
        INSTANCE d03 3056 448 R0
        INSTANCE d04 3056 560 R0
        INSTANCE d05 3056 672 R0
        INSTANCE d06 3056 784 R0
        INSTANCE d07 3056 1008 R0
        INSTANCE d08 3056 1216 R0
        INSTANCE d09 3056 1312 R0
        BEGIN BRANCH compls6
            WIRE 3024 96 3056 96
            BEGIN DISPLAY 3024 96 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c02o
            WIRE 3024 160 3056 160
            BEGIN DISPLAY 3024 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3024 208 3056 208
            BEGIN DISPLAY 3024 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c04o
            WIRE 3024 272 3056 272
            BEGIN DISPLAY 3024 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3024 320 3056 320
            BEGIN DISPLAY 3024 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c01o
            WIRE 3024 384 3056 384
            BEGIN DISPLAY 3024 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3024 432 3056 432
            BEGIN DISPLAY 3024 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c03o
            WIRE 3024 496 3056 496
            BEGIN DISPLAY 3024 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3024 544 3056 544
            BEGIN DISPLAY 3024 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b02o
            WIRE 3024 608 3056 608
            BEGIN DISPLAY 3024 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3024 656 3056 656
            BEGIN DISPLAY 3024 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c05o
            WIRE 3024 720 3056 720
            BEGIN DISPLAY 3024 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c05o
            WIRE 3024 752 3056 752
            BEGIN DISPLAY 3024 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b02o
            WIRE 3024 816 3056 816
            BEGIN DISPLAY 3024 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rd4n
            WIRE 3024 880 3056 880
            BEGIN DISPLAY 3024 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DOS6_2not
            WIRE 3024 944 3056 944
            BEGIN DISPLAY 3024 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rd4
            WIRE 3024 960 3056 960
            BEGIN DISPLAY 3024 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c05o_not
            WIRE 3024 1024 3056 1024
            BEGIN DISPLAY 3024 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b02o_not
            WIRE 3024 1088 3056 1088
            BEGIN DISPLAY 3024 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH id
            WIRE 3024 1152 3056 1152
            BEGIN DISPLAY 3024 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d07o
            WIRE 3024 1184 3056 1184
            BEGIN DISPLAY 3024 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d08o
            WIRE 3024 1248 3056 1248
            BEGIN DISPLAY 3024 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d09o
            WIRE 3312 1216 3312 1216
            WIRE 3312 1216 3344 1216
            BEGIN DISPLAY 3320 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d08o
            WIRE 3312 1056 3328 1056
            WIRE 3328 1056 3344 1056
            BEGIN DISPLAY 3328 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d07o
            WIRE 3312 848 3328 848
            WIRE 3328 848 3328 848
            WIRE 3328 848 3344 848
            BEGIN DISPLAY 3332 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d06o
            WIRE 3312 688 3328 688
            WIRE 3328 688 3328 688
            WIRE 3328 688 3344 688
            BEGIN DISPLAY 3332 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d05o
            WIRE 3312 576 3328 576
            WIRE 3328 576 3328 576
            WIRE 3328 576 3344 576
            BEGIN DISPLAY 3332 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d04o
            WIRE 3312 464 3328 464
            WIRE 3328 464 3344 464
            BEGIN DISPLAY 3328 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d03o
            WIRE 3312 352 3328 352
            WIRE 3328 352 3328 352
            WIRE 3328 352 3344 352
            BEGIN DISPLAY 3332 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d02o
            WIRE 3312 240 3328 240
            WIRE 3328 240 3328 240
            WIRE 3328 240 3344 240
            BEGIN DISPLAY 3336 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d01o
            WIRE 3312 128 3328 128
            WIRE 3328 128 3328 128
            WIRE 3328 128 3344 128
            BEGIN DISPLAY 3332 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 2864 96 2896 96
        END BRANCH
        IOMARKER 2864 96 compls6 R180 28
        INSTANCE ffa 3536 160 R0
        BEGIN BRANCH clk
            WIRE 3504 144 3536 144
            BEGIN DISPLAY 3504 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH oa
            WIRE 3616 112 3632 112
        END BRANCH
        INSTANCE ffb 3536 240 R0
        INSTANCE ffc 3536 320 R0
        INSTANCE ffd 3536 400 R0
        INSTANCE ffe 3536 480 R0
        INSTANCE ffi 3536 560 R0
        INSTANCE ffs 3536 640 R0
        BEGIN BRANCH clk
            WIRE 3504 224 3536 224
            BEGIN DISPLAY 3504 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3504 304 3536 304
            BEGIN DISPLAY 3504 304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3504 384 3536 384
            BEGIN DISPLAY 3504 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3504 464 3536 464
            BEGIN DISPLAY 3504 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3504 544 3536 544
            BEGIN DISPLAY 3504 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3504 624 3536 624
            BEGIN DISPLAY 3504 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ob
            WIRE 3616 192 3632 192
        END BRANCH
        BEGIN BRANCH oc
            WIRE 3616 272 3632 272
        END BRANCH
        BEGIN BRANCH od
            WIRE 3616 352 3632 352
        END BRANCH
        BEGIN BRANCH oe
            WIRE 3616 432 3632 432
        END BRANCH
        BEGIN BRANCH oi
            WIRE 3616 512 3632 512
        END BRANCH
        BEGIN BRANCH os
            WIRE 3616 592 3632 592
        END BRANCH
        BEGIN BRANCH d01o
            WIRE 3504 112 3536 112
            BEGIN DISPLAY 3504 112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d02o
            WIRE 3504 192 3536 192
            BEGIN DISPLAY 3504 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d03o
            WIRE 3504 272 3536 272
            BEGIN DISPLAY 3504 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d04o
            WIRE 3504 352 3536 352
            BEGIN DISPLAY 3504 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d05o
            WIRE 3504 432 3536 432
            BEGIN DISPLAY 3504 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d06o
            WIRE 3504 512 3536 512
            BEGIN DISPLAY 3504 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d09o
            WIRE 3504 592 3536 592
            BEGIN DISPLAY 3504 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 3632 112 oa R0 28
        IOMARKER 3632 192 ob R0 28
        IOMARKER 3632 272 oc R0 28
        IOMARKER 3632 352 od R0 28
        IOMARKER 3632 432 oe R0 28
        IOMARKER 3632 512 oi R0 28
        IOMARKER 3632 592 os R0 28
    END SHEET
END SCHEMATIC
