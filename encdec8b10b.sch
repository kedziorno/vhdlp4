VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex5"
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
        SIGNAL ikn
        SIGNAL oa
        SIGNAL ob
        SIGNAL oc
        SIGNAL od
        SIGNAL oe
        SIGNAL oi
        SIGNAL os
        SIGNAL b21o
        SIGNAL b20o
        SIGNAL b19o
        SIGNAL b02o
        SIGNAL XLXN_251
        SIGNAL XLXN_252
        SIGNAL XLXN_254
        SIGNAL XLXN_255
        SIGNAL XLXN_256
        SIGNAL XLXN_257
        SIGNAL XLXN_258
        SIGNAL XLXN_259
        SIGNAL XLXN_260
        SIGNAL XLXN_261
        SIGNAL XLXN_263
        SIGNAL XLXN_264
        SIGNAL XLXN_265
        SIGNAL XLXN_266
        SIGNAL XLXN_267
        SIGNAL XLXN_268
        SIGNAL DOS6_2
        SIGNAL c05o
        SIGNAL c04o
        SIGNAL c03o
        SIGNAL c02o
        SIGNAL c01o
        SIGNAL XLXN_292
        SIGNAL XLXN_293
        SIGNAL XLXN_295
        SIGNAL XLXN_297
        SIGNAL XLXN_298
        SIGNAL d09o
        SIGNAL d08o
        SIGNAL d07o
        SIGNAL d06o
        SIGNAL d05o
        SIGNAL d04o
        SIGNAL d03o
        SIGNAL d02o
        SIGNAL d01o
        SIGNAL compls6
        SIGNAL DOS6_2not
        SIGNAL c05o_not
        SIGNAL DOS6_1
        SIGNAL XLXN_230
        SIGNAL XLXN_231
        SIGNAL XLXN_232
        SIGNAL XLXN_233
        SIGNAL XLXN_234
        SIGNAL XLXN_235
        SIGNAL XLXN_236
        SIGNAL XLXN_237
        SIGNAL XLXN_238
        SIGNAL XLXN_239
        SIGNAL XLXN_240
        SIGNAL XLXN_242
        SIGNAL XLXN_243
        SIGNAL XLXN_244
        SIGNAL XLXN_245
        SIGNAL XLXN_246
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
        PORT Input clk
        PORT Input rd4
        PORT Input ia
        PORT Input ib
        PORT Input ic
        PORT Input id
        PORT Input ie
        PORT Input ik
        PORT Output oa
        PORT Output ob
        PORT Output oc
        PORT Output od
        PORT Output oe
        PORT Output oi
        PORT Output os
        PORT Output DOS6_2
        PORT Input compls6
        PORT Output DOS6_1
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
        BEGIN BLOCKDEF copy_of_and6
            TIMESTAMP 2023 12 4 12 23 4
            LINE N 256 -80 192 -80 
            LINE N 64 -128 144 -128 
            LINE N 144 -32 64 -32 
            ARC N 96 -128 192 -32 144 -32 144 -128 
            LINE N 64 -160 64 0 
            LINE N 0 -96 64 -96 
            LINE N 0 -64 64 -64 
            LINE N 0 -32 64 -32 
            LINE N 0 -128 64 -128 
            LINE N 0 -160 64 -160 
            LINE N 0 0 64 0 
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
        BEGIN BLOCK XLXI_58 inv
            PIN I ik
            PIN O ikn
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
        BEGIN BLOCK c01 or3
            PIN I0 XLXN_254
            PIN I1 XLXN_252
            PIN I2 XLXN_251
            PIN O c01o
        END BLOCK
        BEGIN BLOCK c02 or3
            PIN I0 XLXN_257
            PIN I1 XLXN_256
            PIN I2 XLXN_255
            PIN O c02o
        END BLOCK
        BEGIN BLOCK c03 or3
            PIN I0 XLXN_260
            PIN I1 XLXN_259
            PIN I2 XLXN_258
            PIN O c03o
        END BLOCK
        BEGIN BLOCK c04 or3
            PIN I0 XLXN_264
            PIN I1 XLXN_263
            PIN I2 XLXN_261
            PIN O c04o
        END BLOCK
        BEGIN BLOCK c05 or4
            PIN I0 XLXN_268
            PIN I1 XLXN_267
            PIN I2 XLXN_266
            PIN I3 XLXN_265
            PIN O c05o
        END BLOCK
        BEGIN BLOCK c06 or3
            PIN I0 b21o
            PIN I1 b20o
            PIN I2 b19o
            PIN O DOS6_2
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
            PIN I1 XLXN_293
            PIN I2 XLXN_292
            PIN I3 c05o
            PIN O d07o
        END BLOCK
        BEGIN BLOCK d08 and4
            PIN I0 XLXN_298
            PIN I1 XLXN_297
            PIN I2 c05o_not
            PIN I3 XLXN_295
            PIN O d08o
        END BLOCK
        BEGIN BLOCK d09 or2
            PIN I0 d08o
            PIN I1 d07o
            PIN O d09o
        END BLOCK
        BEGIN BLOCK INV_DOS6_2 inv
            PIN I DOS6_2
            PIN O DOS6_2not
        END BLOCK
        BEGIN BLOCK INV_c05o inv
            PIN I c05o
            PIN O c05o_not
        END BLOCK
        BEGIN BLOCK b02 or3
            PIN I0 a14o
            PIN I1 a01o
            PIN I2 ie
            PIN O b02o
        END BLOCK
        BEGIN BLOCK b03 or3
            PIN I0 a04o
            PIN I1 a03o
            PIN I2 a02o
            PIN O XLXN_246
        END BLOCK
        BEGIN BLOCK b04 or3
            PIN I0 a09o
            PIN I1 a05o
            PIN I2 a03o
            PIN O XLXN_245
        END BLOCK
        BEGIN BLOCK b05 or3
            PIN I0 a08o
            PIN I1 a06o
            PIN I2 a05o
            PIN O XLXN_244
        END BLOCK
        BEGIN BLOCK b06 or2
            PIN I0 a06o
            PIN I1 a05o
            PIN O XLXN_243
        END BLOCK
        BEGIN BLOCK b07 or3
            PIN I0 a10o
            PIN I1 a07o
            PIN I2 a06o
            PIN O XLXN_242
        END BLOCK
        BEGIN BLOCK b08 or3
            PIN I0 a10o
            PIN I1 a07o
            PIN I2 a08o
            PIN O XLXN_240
        END BLOCK
        BEGIN BLOCK b09 or3
            PIN I0 a13o
            PIN I1 a12o
            PIN I2 a11o
            PIN O XLXN_239
        END BLOCK
        BEGIN BLOCK b10 or3
            PIN I0 a17o
            PIN I1 a13o
            PIN I2 a12o
            PIN O XLXN_238
        END BLOCK
        BEGIN BLOCK b11 or2
            PIN I0 a15o
            PIN I1 a09o
            PIN O XLXN_237
        END BLOCK
        BEGIN BLOCK b12 or3
            PIN I0 a16o
            PIN I1 a15o
            PIN I2 a12o
            PIN O XLXN_236
        END BLOCK
        BEGIN BLOCK b13 or3
            PIN I0 a17o
            PIN I1 a16o
            PIN I2 a15o
            PIN O XLXN_235
        END BLOCK
        BEGIN BLOCK b14 or3
            PIN I0 a23o
            PIN I1 a18o
            PIN I2 a14o
            PIN O XLXN_234
        END BLOCK
        BEGIN BLOCK b15 or3
            PIN I0 a20o
            PIN I1 a19o
            PIN I2 a11o
            PIN O XLXN_233
        END BLOCK
        BEGIN BLOCK b16 or3
            PIN I0 a32o
            PIN I1 a22o
            PIN I2 a21o
            PIN O XLXN_232
        END BLOCK
        BEGIN BLOCK b17 or3
            PIN I0 a24o
            PIN I1 a23o
            PIN I2 a22o
            PIN O XLXN_231
        END BLOCK
        BEGIN BLOCK b18 or3
            PIN I0 a24o
            PIN I1 a22o
            PIN I2 a18o
            PIN O XLXN_230
        END BLOCK
        BEGIN BLOCK b19 or4
            PIN I0 a09o
            PIN I1 a14o
            PIN I2 a26o
            PIN I3 a25o
            PIN O b19o
        END BLOCK
        BEGIN BLOCK b20 or3
            PIN I0 a29o
            PIN I1 a28o
            PIN I2 a27o
            PIN O b20o
        END BLOCK
        BEGIN BLOCK b21 or3
            PIN I0 a32o
            PIN I1 a31o
            PIN I2 a30o
            PIN O b21o
        END BLOCK
        BEGIN BLOCK b01 and3
            PIN I0 a12o
            PIN I1 ien
            PIN I2 rd4
            PIN O DOS6_1
        END BLOCK
        BEGIN BLOCK INV_b02o inv
            PIN I b02o
            PIN O b02o_not
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
        BEGIN BLOCK a32 copy_of_and6
            PIN O a32o
            PIN I3 ic
            PIN I2 id
            PIN I1 ie
            PIN I4 ibn
            PIN I5 ian
            PIN I0 ik
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
        BEGIN BRANCH ik
            WIRE 96 576 112 576
            WIRE 112 576 128 576
            WIRE 112 576 112 3808
            WIRE 112 3808 928 3808
            BEGIN DISPLAY 112 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_54 128 368 R0
        INSTANCE XLXI_55 128 448 R0
        INSTANCE XLXI_56 128 528 R0
        INSTANCE XLXI_58 128 608 R0
        BEGIN BRANCH ian
            WIRE 352 176 368 176
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
            WIRE 368 336 384 336
            BEGIN DISPLAY 372 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH idn
            WIRE 352 416 368 416
            WIRE 368 416 384 416
            BEGIN DISPLAY 376 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ien
            WIRE 352 496 368 496
            WIRE 368 496 384 496
            BEGIN DISPLAY 376 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ikn
            WIRE 352 576 368 576
            WIRE 368 576 384 576
            BEGIN DISPLAY 376 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 96 176 ia R180 28
        IOMARKER 96 256 ib R180 28
        IOMARKER 96 336 ic R180 28
        IOMARKER 96 416 id R180 28
        IOMARKER 96 496 ie R180 28
        IOMARKER 96 576 ik R180 28
        INSTANCE ffa 6864 96 R0
        BEGIN BRANCH clk
            WIRE 6832 80 6864 80
            BEGIN DISPLAY 6832 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH oa
            WIRE 6944 48 6960 48
        END BRANCH
        INSTANCE ffb 6864 176 R0
        INSTANCE ffc 6864 256 R0
        INSTANCE ffd 6864 336 R0
        INSTANCE ffe 6864 416 R0
        INSTANCE ffi 6864 496 R0
        INSTANCE ffs 6864 576 R0
        BEGIN BRANCH clk
            WIRE 6832 160 6864 160
            BEGIN DISPLAY 6832 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6832 240 6864 240
            BEGIN DISPLAY 6832 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6832 320 6864 320
            BEGIN DISPLAY 6832 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6832 400 6864 400
            BEGIN DISPLAY 6832 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6832 480 6864 480
            BEGIN DISPLAY 6832 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6832 560 6864 560
            BEGIN DISPLAY 6832 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ob
            WIRE 6944 128 6960 128
        END BRANCH
        BEGIN BRANCH oc
            WIRE 6944 208 6960 208
        END BRANCH
        BEGIN BRANCH od
            WIRE 6944 288 6960 288
        END BRANCH
        BEGIN BRANCH oe
            WIRE 6944 368 6960 368
        END BRANCH
        BEGIN BRANCH oi
            WIRE 6944 448 6960 448
        END BRANCH
        BEGIN BRANCH os
            WIRE 6944 528 6960 528
        END BRANCH
        IOMARKER 6960 48 oa R0 28
        IOMARKER 6960 128 ob R0 28
        IOMARKER 6960 208 oc R0 28
        IOMARKER 6960 288 od R0 28
        IOMARKER 6960 368 oe R0 28
        IOMARKER 6960 448 oi R0 28
        IOMARKER 6960 528 os R0 28
        INSTANCE c01 2768 208 R0
        INSTANCE c02 2768 352 R0
        INSTANCE c03 2768 496 R0
        INSTANCE c04 2768 640 R0
        INSTANCE c05 2768 848 R0
        INSTANCE c06 2768 992 R0
        BEGIN BRANCH XLXN_251
            WIRE 2720 16 2768 16
        END BRANCH
        BEGIN BRANCH XLXN_252
            WIRE 2720 80 2768 80
        END BRANCH
        BEGIN BRANCH XLXN_254
            WIRE 2720 144 2768 144
        END BRANCH
        BEGIN BRANCH XLXN_255
            WIRE 2720 160 2768 160
        END BRANCH
        BEGIN BRANCH XLXN_256
            WIRE 2720 224 2768 224
        END BRANCH
        BEGIN BRANCH XLXN_257
            WIRE 2720 288 2768 288
        END BRANCH
        BEGIN BRANCH XLXN_258
            WIRE 2720 304 2768 304
        END BRANCH
        BEGIN BRANCH XLXN_259
            WIRE 2720 368 2768 368
        END BRANCH
        BEGIN BRANCH XLXN_260
            WIRE 2720 432 2768 432
        END BRANCH
        BEGIN BRANCH XLXN_261
            WIRE 2720 448 2768 448
        END BRANCH
        BEGIN BRANCH XLXN_263
            WIRE 2720 512 2768 512
        END BRANCH
        BEGIN BRANCH XLXN_264
            WIRE 2720 576 2768 576
        END BRANCH
        BEGIN BRANCH XLXN_265
            WIRE 2720 592 2768 592
        END BRANCH
        BEGIN BRANCH XLXN_266
            WIRE 2720 656 2768 656
        END BRANCH
        BEGIN BRANCH XLXN_267
            WIRE 2720 720 2768 720
        END BRANCH
        BEGIN BRANCH XLXN_268
            WIRE 2720 784 2768 784
        END BRANCH
        BEGIN BRANCH b19o
            WIRE 2720 800 2768 800
            BEGIN DISPLAY 2720 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b20o
            WIRE 2720 864 2768 864
            BEGIN DISPLAY 2720 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b21o
            WIRE 2720 928 2768 928
            BEGIN DISPLAY 2720 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DOS6_2
            WIRE 3024 864 3056 864
            WIRE 3056 864 3072 864
            BEGIN DISPLAY 3052 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c05o
            WIRE 3024 688 3056 688
            WIRE 3056 688 3072 688
            BEGIN DISPLAY 3056 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c04o
            WIRE 3024 512 3056 512
            WIRE 3056 512 3072 512
            BEGIN DISPLAY 3064 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c03o
            WIRE 3024 368 3056 368
            WIRE 3056 368 3072 368
            BEGIN DISPLAY 3056 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c02o
            WIRE 3024 224 3056 224
            WIRE 3056 224 3072 224
            BEGIN DISPLAY 3060 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c01o
            WIRE 3024 80 3056 80
            WIRE 3056 80 3072 80
            BEGIN DISPLAY 3060 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE d01 3920 160 R0
        INSTANCE d02 3920 272 R0
        INSTANCE d03 3920 384 R0
        INSTANCE d04 3920 496 R0
        INSTANCE d05 3920 608 R0
        INSTANCE d06 3920 720 R0
        INSTANCE d07 3920 944 R0
        INSTANCE d08 3920 1152 R0
        INSTANCE d09 3920 1248 R0
        BEGIN BRANCH compls6
            WIRE 3888 32 3920 32
            BEGIN DISPLAY 3888 32 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c02o
            WIRE 3888 96 3920 96
            BEGIN DISPLAY 3888 96 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3888 144 3920 144
            BEGIN DISPLAY 3888 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c04o
            WIRE 3888 208 3920 208
            BEGIN DISPLAY 3888 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3888 256 3920 256
            BEGIN DISPLAY 3888 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c01o
            WIRE 3888 320 3920 320
            BEGIN DISPLAY 3888 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3888 368 3920 368
            BEGIN DISPLAY 3888 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c03o
            WIRE 3888 432 3920 432
            BEGIN DISPLAY 3888 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3888 480 3920 480
            BEGIN DISPLAY 3888 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b02o
            WIRE 3888 544 3920 544
            BEGIN DISPLAY 3888 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3888 592 3920 592
            BEGIN DISPLAY 3888 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c05o
            WIRE 3888 656 3920 656
            BEGIN DISPLAY 3888 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c05o
            WIRE 3888 688 3920 688
            BEGIN DISPLAY 3888 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_292
            WIRE 3888 752 3920 752
        END BRANCH
        BEGIN BRANCH XLXN_293
            WIRE 3888 816 3920 816
        END BRANCH
        BEGIN BRANCH DOS6_2not
            WIRE 3888 880 3920 880
            BEGIN DISPLAY 3888 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_295
            WIRE 3888 896 3920 896
        END BRANCH
        BEGIN BRANCH c05o_not
            WIRE 3888 960 3920 960
            BEGIN DISPLAY 3888 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_297
            WIRE 3888 1024 3920 1024
        END BRANCH
        BEGIN BRANCH XLXN_298
            WIRE 3888 1088 3920 1088
        END BRANCH
        BEGIN BRANCH d07o
            WIRE 3888 1120 3920 1120
            BEGIN DISPLAY 3888 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d08o
            WIRE 3888 1184 3920 1184
            BEGIN DISPLAY 3888 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d09o
            WIRE 4176 1152 4176 1152
            WIRE 4176 1152 4208 1152
            BEGIN DISPLAY 4184 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d08o
            WIRE 4176 992 4192 992
            WIRE 4192 992 4208 992
            BEGIN DISPLAY 4192 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d07o
            WIRE 4176 784 4192 784
            WIRE 4192 784 4208 784
            BEGIN DISPLAY 4196 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d06o
            WIRE 4176 624 4192 624
            WIRE 4192 624 4208 624
            BEGIN DISPLAY 4196 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d05o
            WIRE 4176 512 4192 512
            WIRE 4192 512 4208 512
            BEGIN DISPLAY 4196 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d04o
            WIRE 4176 400 4192 400
            WIRE 4192 400 4208 400
            BEGIN DISPLAY 4192 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d03o
            WIRE 4176 288 4192 288
            WIRE 4192 288 4208 288
            BEGIN DISPLAY 4196 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d02o
            WIRE 4176 176 4192 176
            WIRE 4192 176 4208 176
            BEGIN DISPLAY 4200 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d01o
            WIRE 4176 64 4192 64
            WIRE 4192 64 4208 64
            BEGIN DISPLAY 4196 64 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d01o
            WIRE 6832 48 6864 48
            BEGIN DISPLAY 6832 48 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d02o
            WIRE 6832 128 6864 128
            BEGIN DISPLAY 6832 128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d03o
            WIRE 6832 208 6864 208
            BEGIN DISPLAY 6832 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d04o
            WIRE 6832 288 6864 288
            BEGIN DISPLAY 6832 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d05o
            WIRE 6832 368 6864 368
            BEGIN DISPLAY 6832 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d06o
            WIRE 6832 448 6864 448
            BEGIN DISPLAY 6832 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d09o
            WIRE 6832 528 6864 528
            BEGIN DISPLAY 6832 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH compls6
            WIRE 3728 32 3760 32
        END BRANCH
        IOMARKER 3728 32 compls6 R180 28
        IOMARKER 3072 864 DOS6_2 R0 28
        BEGIN BRANCH DOS6_2
            WIRE 2720 1008 2752 1008
            BEGIN DISPLAY 2720 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DOS6_2not
            WIRE 2976 1008 3008 1008
            BEGIN DISPLAY 3008 1008 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE INV_DOS6_2 2752 1040 R0
        INSTANCE INV_c05o 3072 720 R0
        BEGIN BRANCH c05o_not
            WIRE 3296 688 3328 688
            WIRE 3328 688 3344 688
            BEGIN DISPLAY 3324 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE b02 1888 352 R0
        INSTANCE b03 1888 496 R0
        INSTANCE b04 1888 640 R0
        INSTANCE b05 1888 784 R0
        INSTANCE b06 1888 880 R0
        INSTANCE b07 1888 1040 R0
        INSTANCE b08 1888 1184 R0
        INSTANCE b09 1888 1328 R0
        INSTANCE b10 1888 1472 R0
        INSTANCE b11 1888 1568 R0
        INSTANCE b12 1888 1728 R0
        INSTANCE b13 1888 1872 R0
        INSTANCE b14 1888 2016 R0
        INSTANCE b15 1888 2160 R0
        INSTANCE b16 1888 2304 R0
        INSTANCE b17 1888 2448 R0
        INSTANCE b18 1888 2592 R0
        INSTANCE b19 1888 2800 R0
        INSTANCE b20 1888 2944 R0
        INSTANCE b21 1888 3088 R0
        BEGIN BRANCH ie
            WIRE 1840 160 1888 160
            BEGIN DISPLAY 1840 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a01o
            WIRE 1840 224 1888 224
            BEGIN DISPLAY 1840 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a14o
            WIRE 1840 288 1888 288
            BEGIN DISPLAY 1840 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rd4
            WIRE 1840 16 1888 16
            BEGIN DISPLAY 1840 16 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ien
            WIRE 1840 80 1888 80
            BEGIN DISPLAY 1840 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1840 144 1888 144
            BEGIN DISPLAY 1840 144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DOS6_1
            WIRE 2144 80 2176 80
            WIRE 2176 80 2192 80
            BEGIN DISPLAY 2176 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE b01 1888 208 R0
        BEGIN BRANCH a02o
            WIRE 1840 304 1888 304
            BEGIN DISPLAY 1840 304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a03o
            WIRE 1840 368 1888 368
            BEGIN DISPLAY 1840 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a04o
            WIRE 1840 432 1888 432
            BEGIN DISPLAY 1840 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a03o
            WIRE 1840 448 1888 448
            BEGIN DISPLAY 1840 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 1840 512 1888 512
            BEGIN DISPLAY 1840 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a09o
            WIRE 1840 576 1888 576
            BEGIN DISPLAY 1840 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 1840 592 1888 592
            BEGIN DISPLAY 1840 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 1840 656 1888 656
            BEGIN DISPLAY 1840 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a08o
            WIRE 1840 720 1888 720
            BEGIN DISPLAY 1840 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a05o
            WIRE 1840 752 1888 752
            BEGIN DISPLAY 1840 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 1840 816 1888 816
            BEGIN DISPLAY 1840 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a06o
            WIRE 1840 848 1888 848
            BEGIN DISPLAY 1840 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a07o
            WIRE 1840 912 1888 912
            BEGIN DISPLAY 1840 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a10o
            WIRE 1840 976 1888 976
            BEGIN DISPLAY 1840 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a08o
            WIRE 1840 992 1888 992
            BEGIN DISPLAY 1840 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a07o
            WIRE 1840 1056 1888 1056
            BEGIN DISPLAY 1840 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a10o
            WIRE 1840 1120 1888 1120
            BEGIN DISPLAY 1840 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a11o
            WIRE 1840 1136 1888 1136
            BEGIN DISPLAY 1840 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1840 1200 1888 1200
            BEGIN DISPLAY 1840 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a13o
            WIRE 1840 1264 1888 1264
            BEGIN DISPLAY 1840 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1840 1280 1888 1280
            BEGIN DISPLAY 1840 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a13o
            WIRE 1840 1344 1888 1344
            BEGIN DISPLAY 1840 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a17o
            WIRE 1840 1408 1888 1408
            BEGIN DISPLAY 1840 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a09o
            WIRE 1840 1440 1888 1440
            BEGIN DISPLAY 1840 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a15o
            WIRE 1840 1504 1888 1504
            BEGIN DISPLAY 1840 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a12o
            WIRE 1840 1536 1888 1536
            BEGIN DISPLAY 1840 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a15o
            WIRE 1840 1600 1888 1600
            BEGIN DISPLAY 1840 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a16o
            WIRE 1840 1664 1888 1664
            BEGIN DISPLAY 1840 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a15o
            WIRE 1840 1680 1888 1680
            BEGIN DISPLAY 1840 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a16o
            WIRE 1840 1744 1888 1744
            BEGIN DISPLAY 1840 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a17o
            WIRE 1840 1808 1888 1808
            BEGIN DISPLAY 1840 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a14o
            WIRE 1840 1824 1888 1824
            BEGIN DISPLAY 1840 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a18o
            WIRE 1840 1888 1888 1888
            BEGIN DISPLAY 1840 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a23o
            WIRE 1840 1952 1888 1952
            BEGIN DISPLAY 1840 1952 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a11o
            WIRE 1840 1968 1888 1968
            BEGIN DISPLAY 1840 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a19o
            WIRE 1840 2032 1888 2032
            BEGIN DISPLAY 1840 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a20o
            WIRE 1840 2096 1888 2096
            BEGIN DISPLAY 1840 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a21o
            WIRE 1840 2112 1888 2112
            BEGIN DISPLAY 1840 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a22o
            WIRE 1840 2176 1888 2176
            BEGIN DISPLAY 1840 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a32o
            WIRE 1840 2240 1888 2240
            BEGIN DISPLAY 1840 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a22o
            WIRE 1840 2256 1888 2256
            BEGIN DISPLAY 1840 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a23o
            WIRE 1840 2320 1888 2320
            BEGIN DISPLAY 1840 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a24o
            WIRE 1840 2384 1888 2384
            BEGIN DISPLAY 1840 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a18o
            WIRE 1840 2400 1888 2400
            BEGIN DISPLAY 1840 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a22o
            WIRE 1840 2464 1888 2464
            BEGIN DISPLAY 1840 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a24o
            WIRE 1840 2528 1888 2528
            BEGIN DISPLAY 1840 2528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a25o
            WIRE 1840 2544 1888 2544
            BEGIN DISPLAY 1840 2544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a26o
            WIRE 1840 2608 1888 2608
            BEGIN DISPLAY 1840 2608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a14o
            WIRE 1840 2672 1888 2672
            BEGIN DISPLAY 1840 2672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a09o
            WIRE 1840 2736 1888 2736
            BEGIN DISPLAY 1840 2736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a27o
            WIRE 1840 2752 1888 2752
            BEGIN DISPLAY 1840 2752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a28o
            WIRE 1840 2816 1888 2816
            BEGIN DISPLAY 1840 2816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a29o
            WIRE 1840 2880 1888 2880
            BEGIN DISPLAY 1840 2880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a30o
            WIRE 1840 2896 1888 2896
            BEGIN DISPLAY 1840 2896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a31o
            WIRE 1840 2960 1888 2960
            BEGIN DISPLAY 1840 2960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a32o
            WIRE 1840 3024 1888 3024
            BEGIN DISPLAY 1840 3024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b21o
            WIRE 2144 2960 2176 2960
            WIRE 2176 2960 2192 2960
            BEGIN DISPLAY 2176 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b20o
            WIRE 2144 2816 2160 2816
            WIRE 2160 2816 2160 2816
            WIRE 2160 2816 2192 2816
            BEGIN DISPLAY 2164 2816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b19o
            WIRE 2144 2640 2176 2640
            WIRE 2176 2640 2176 2640
            WIRE 2176 2640 2192 2640
            BEGIN DISPLAY 2172 2640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_230
            WIRE 2144 2464 2192 2464
        END BRANCH
        BEGIN BRANCH XLXN_231
            WIRE 2144 2320 2192 2320
        END BRANCH
        BEGIN BRANCH XLXN_232
            WIRE 2144 2176 2192 2176
        END BRANCH
        BEGIN BRANCH XLXN_233
            WIRE 2144 2032 2192 2032
        END BRANCH
        BEGIN BRANCH XLXN_234
            WIRE 2144 1888 2192 1888
        END BRANCH
        BEGIN BRANCH XLXN_235
            WIRE 2144 1744 2192 1744
        END BRANCH
        BEGIN BRANCH XLXN_236
            WIRE 2144 1600 2192 1600
        END BRANCH
        BEGIN BRANCH XLXN_237
            WIRE 2144 1472 2192 1472
        END BRANCH
        BEGIN BRANCH XLXN_238
            WIRE 2144 1344 2192 1344
        END BRANCH
        BEGIN BRANCH XLXN_239
            WIRE 2144 1200 2192 1200
        END BRANCH
        BEGIN BRANCH XLXN_240
            WIRE 2144 1056 2192 1056
        END BRANCH
        BEGIN BRANCH XLXN_242
            WIRE 2144 912 2192 912
        END BRANCH
        BEGIN BRANCH XLXN_243
            WIRE 2144 784 2192 784
        END BRANCH
        BEGIN BRANCH XLXN_244
            WIRE 2144 656 2192 656
        END BRANCH
        BEGIN BRANCH XLXN_245
            WIRE 2144 512 2192 512
        END BRANCH
        BEGIN BRANCH XLXN_246
            WIRE 2144 368 2192 368
        END BRANCH
        BEGIN BRANCH b02o
            WIRE 2144 224 2160 224
            WIRE 2160 224 2160 224
            WIRE 2160 224 2192 224
            BEGIN DISPLAY 2168 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE INV_b02o 2192 256 R0
        BEGIN BRANCH b02o_not
            WIRE 2416 224 2432 224
            WIRE 2432 224 2432 224
            WIRE 2432 224 2464 224
            BEGIN DISPLAY 2440 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2192 80 DOS6_1 R0 28
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
            WIRE 560 3424 560 3824
            WIRE 560 3424 928 3424
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
        BEGIN BRANCH ian
            WIRE 592 48 592 80
            WIRE 592 80 592 560
            WIRE 592 560 592 848
            WIRE 592 848 592 960
            WIRE 592 960 592 1072
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
            WIRE 592 2528 592 2976
            WIRE 592 2976 592 3200
            WIRE 592 3200 592 3536
            WIRE 592 3536 592 3648
            WIRE 592 3648 592 3824
            WIRE 592 3648 928 3648
            WIRE 592 3536 928 3536
            WIRE 592 3200 928 3200
            WIRE 592 2976 928 2976
            WIRE 592 2528 880 2528
            WIRE 880 2528 928 2528
            WIRE 592 1072 928 1072
            WIRE 592 960 928 960
            WIRE 592 848 928 848
            WIRE 592 560 928 560
            WIRE 592 80 928 80
            BEGIN DISPLAY 592 48 ATTR Name
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
            WIRE 688 2736 688 2928
            WIRE 688 2928 688 3232
            WIRE 688 3232 688 3344
            WIRE 688 3344 688 3712
            WIRE 688 3712 688 3824
            WIRE 688 3712 928 3712
            WIRE 688 3344 928 3344
            WIRE 688 3232 928 3232
            WIRE 688 2928 928 2928
            WIRE 688 2736 880 2736
            WIRE 880 2736 928 2736
            BEGIN DISPLAY 688 48 ATTR Name
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
            WIRE 784 3152 784 3824
            WIRE 784 3152 928 3152
            WIRE 784 2464 880 2464
            WIRE 880 2464 928 2464
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
        BEGIN BRANCH ie
            WIRE 816 48 816 432
            WIRE 816 432 816 944
            WIRE 816 944 816 1056
            WIRE 816 1056 928 1056
            WIRE 816 1056 816 1616
            WIRE 816 1616 928 1616
            WIRE 816 1616 816 2960
            WIRE 816 2960 816 3296
            WIRE 816 3296 816 3408
            WIRE 816 3408 816 3520
            WIRE 816 3520 816 3776
            WIRE 816 3776 816 3824
            WIRE 816 3776 928 3776
            WIRE 816 3520 928 3520
            WIRE 816 3408 928 3408
            WIRE 816 3296 928 3296
            WIRE 816 2960 928 2960
            WIRE 816 944 928 944
            WIRE 816 432 928 432
            BEGIN DISPLAY 816 48 ATTR Name
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
        INSTANCE a32 928 3808 R0
        BEGIN BRANCH a01o
            WIRE 1184 128 1216 128
            WIRE 1216 128 1232 128
            BEGIN DISPLAY 1222 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a02o
            WIRE 1184 240 1216 240
            WIRE 1216 240 1232 240
            BEGIN DISPLAY 1222 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a03o
            WIRE 1184 368 1216 368
            WIRE 1216 368 1232 368
            BEGIN DISPLAY 1218 368 ATTR Name
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
            WIRE 1216 624 1232 624
            BEGIN DISPLAY 1219 624 ATTR Name
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
            WIRE 1216 1008 1232 1008
            BEGIN DISPLAY 1219 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a09o
            WIRE 1184 1120 1216 1120
            WIRE 1216 1120 1232 1120
            BEGIN DISPLAY 1218 1120 ATTR Name
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
            BEGIN DISPLAY 1218 1344 ATTR Name
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
            WIRE 1216 1568 1232 1568
            BEGIN DISPLAY 1222 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a14o
            WIRE 1184 1680 1216 1680
            WIRE 1216 1680 1232 1680
            BEGIN DISPLAY 1224 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a15o
            WIRE 1184 1792 1216 1792
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
            WIRE 1216 2016 1232 2016
            BEGIN DISPLAY 1224 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a18o
            WIRE 1184 2128 1216 2128
            WIRE 1216 2128 1232 2128
            BEGIN DISPLAY 1222 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a19o
            WIRE 1184 2240 1216 2240
            WIRE 1216 2240 1232 2240
            BEGIN DISPLAY 1219 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a20o
            WIRE 1184 2352 1216 2352
            WIRE 1216 2352 1232 2352
            BEGIN DISPLAY 1215 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a21o
            WIRE 1184 2464 1216 2464
            WIRE 1216 2464 1232 2464
            BEGIN DISPLAY 1219 2464 ATTR Name
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
            WIRE 1216 2688 1232 2688
            BEGIN DISPLAY 1221 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a24o
            WIRE 1184 2800 1216 2800
            WIRE 1216 2800 1232 2800
            BEGIN DISPLAY 1210 2800 ATTR Name
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
            WIRE 1216 3024 1232 3024
            BEGIN DISPLAY 1219 3024 ATTR Name
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
            BEGIN DISPLAY 1215 3248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a29o
            WIRE 1184 3360 1232 3360
            WIRE 1232 3360 1232 3360
            BEGIN DISPLAY 1225 3360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a30o
            WIRE 1184 3472 1216 3472
            WIRE 1216 3472 1232 3472
            BEGIN DISPLAY 1222 3472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a31o
            WIRE 1184 3584 1216 3584
            WIRE 1216 3584 1232 3584
            BEGIN DISPLAY 1219 3584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a32o
            WIRE 1184 3728 1216 3728
            WIRE 1216 3728 1232 3728
            BEGIN DISPLAY 1222 3728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a29 928 3408 R0
        BEGIN BRANCH ibn
            WIRE 656 48 656 112
            WIRE 656 112 656 336
            WIRE 656 336 656 736
            WIRE 656 736 656 992
            WIRE 656 992 656 1104
            WIRE 656 1104 928 1104
            WIRE 656 1104 656 1328
            WIRE 656 1328 928 1328
            WIRE 656 1328 656 1632
            WIRE 656 1632 928 1632
            WIRE 656 1632 656 2304
            WIRE 656 2304 656 2416
            WIRE 656 2416 656 2560
            WIRE 656 2560 656 2688
            WIRE 656 2688 656 3088
            WIRE 656 3088 656 3584
            WIRE 656 3584 656 3680
            WIRE 656 3680 656 3824
            WIRE 656 3680 880 3680
            WIRE 880 3680 928 3680
            WIRE 656 3584 880 3584
            WIRE 880 3584 928 3584
            WIRE 656 3088 880 3088
            WIRE 880 3088 928 3088
            WIRE 656 2688 928 2688
            WIRE 656 2560 880 2560
            WIRE 880 2560 928 2560
            WIRE 656 2416 880 2416
            WIRE 880 2416 928 2416
            WIRE 656 2304 880 2304
            WIRE 880 2304 928 2304
            WIRE 656 992 928 992
            WIRE 656 736 928 736
            WIRE 656 336 928 336
            WIRE 656 112 928 112
            BEGIN DISPLAY 656 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
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
            WIRE 848 3184 848 3824
            WIRE 848 3184 880 3184
            WIRE 880 3184 928 3184
            WIRE 848 3072 880 3072
            WIRE 880 3072 928 3072
            WIRE 848 2512 880 2512
            WIRE 880 2512 928 2512
            WIRE 848 2400 880 2400
            WIRE 880 2400 928 2400
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
            WIRE 720 3632 720 3824
            WIRE 720 3632 880 3632
            WIRE 880 3632 928 3632
            WIRE 720 3488 880 3488
            WIRE 880 3488 928 3488
            WIRE 720 3120 880 3120
            WIRE 880 3120 928 3120
            WIRE 720 3008 880 3008
            WIRE 880 3008 928 3008
            WIRE 720 2848 880 2848
            WIRE 880 2848 928 2848
            WIRE 720 2592 880 2592
            WIRE 880 2592 928 2592
            WIRE 720 2352 880 2352
            WIRE 880 2352 928 2352
            BEGIN DISPLAY 720 48 ATTR Name
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
            WIRE 752 2624 752 3040
            WIRE 752 3040 752 3264
            WIRE 752 3264 752 3376
            WIRE 752 3376 752 3744
            WIRE 752 3744 752 3824
            WIRE 752 3744 880 3744
            WIRE 880 3744 928 3744
            WIRE 752 3376 880 3376
            WIRE 880 3376 928 3376
            WIRE 752 3264 880 3264
            WIRE 880 3264 928 3264
            WIRE 752 3040 880 3040
            WIRE 880 3040 928 3040
            WIRE 752 2624 880 2624
            WIRE 880 2624 928 2624
            BEGIN DISPLAY 752 48 ATTR Name
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
            WIRE 624 2128 624 2688
            WIRE 624 2688 624 2800
            WIRE 624 2800 624 2896
            WIRE 624 2896 624 3456
            WIRE 624 3456 624 3824
            WIRE 624 3456 928 3456
            WIRE 624 2896 928 2896
            WIRE 624 2800 928 2800
            BEGIN DISPLAY 624 48 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE a23 928 2736 R0
    END SHEET
END SCHEMATIC
