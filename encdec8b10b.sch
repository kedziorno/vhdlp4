VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex5"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    ATTR RenameBusIO "Never"
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL rd4
        SIGNAL rd4n
        SIGNAL oa
        SIGNAL ob
        SIGNAL od
        SIGNAL oc
        SIGNAL oe
        SIGNAL oi
        SIGNAL os
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
        PORT Input clk
        PORT Input rd4
        PORT Output oa
        PORT Output ob
        PORT Output od
        PORT Output oc
        PORT Output oe
        PORT Output oi
        PORT Output os
        PORT Input ia
        PORT Input ib
        PORT Input ic
        PORT Input id
        PORT Input ie
        PORT Input ik
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
        BEGIN BLOCK XLXI_1 inv
            PIN I rd4
            PIN O rd4n
        END BLOCK
        BEGIN BLOCK ffb fd
            PIN C clk
            PIN D
            PIN Q ob
        END BLOCK
        BEGIN BLOCK ffc fd
            PIN C clk
            PIN D
            PIN Q oc
        END BLOCK
        BEGIN BLOCK ffd fd
            PIN C clk
            PIN D
            PIN Q od
        END BLOCK
        BEGIN BLOCK ffe fd
            PIN C clk
            PIN D
            PIN Q oe
        END BLOCK
        BEGIN BLOCK ffi fd
            PIN C clk
            PIN D
            PIN Q oi
        END BLOCK
        BEGIN BLOCK ffs fd
            PIN C clk
            PIN D
            PIN Q os
        END BLOCK
        BEGIN BLOCK ffa fd
            PIN C clk
            PIN D
            PIN Q oa
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
        INSTANCE ffb 6528 656 R0
        INSTANCE ffc 6528 928 R0
        INSTANCE ffd 6528 1200 R0
        INSTANCE ffe 6528 1472 R0
        INSTANCE ffi 6528 1744 R0
        INSTANCE ffs 6528 2016 R0
        INSTANCE ffa 6528 384 R0
        BEGIN BRANCH oa
            WIRE 6912 128 6944 128
        END BRANCH
        BEGIN BRANCH ob
            WIRE 6912 400 6944 400
        END BRANCH
        BEGIN BRANCH od
            WIRE 6912 944 6944 944
        END BRANCH
        BEGIN BRANCH oc
            WIRE 6912 672 6944 672
        END BRANCH
        BEGIN BRANCH oe
            WIRE 6912 1216 6944 1216
        END BRANCH
        BEGIN BRANCH oi
            WIRE 6912 1488 6944 1488
        END BRANCH
        BEGIN BRANCH os
            WIRE 6912 1760 6944 1760
        END BRANCH
        IOMARKER 6944 128 oa R0 28
        IOMARKER 6944 400 ob R0 28
        IOMARKER 6944 944 od R0 28
        IOMARKER 6944 672 oc R0 28
        IOMARKER 6944 1216 oe R0 28
        IOMARKER 6944 1488 oi R0 28
        IOMARKER 6944 1760 os R0 28
        BEGIN BRANCH clk
            WIRE 6496 256 6528 256
            BEGIN DISPLAY 6496 256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6496 528 6528 528
            BEGIN DISPLAY 6496 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6496 800 6528 800
            BEGIN DISPLAY 6496 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6496 1072 6528 1072
            BEGIN DISPLAY 6496 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6496 1344 6528 1344
            BEGIN DISPLAY 6496 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6496 1616 6528 1616
            BEGIN DISPLAY 6496 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 6496 1888 6528 1888
            BEGIN DISPLAY 6496 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
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
            BEGIN DISPLAY 112 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_54 128 368 R0
        INSTANCE XLXI_55 128 448 R0
        INSTANCE XLXI_56 128 528 R0
        INSTANCE XLXI_58 128 608 R0
        BEGIN BRANCH ian
            WIRE 352 176 384 176
            WIRE 384 176 384 176
            BEGIN DISPLAY 377 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ibn
            WIRE 352 256 368 256
            WIRE 368 256 384 256
            BEGIN DISPLAY 370 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH icn
            WIRE 352 336 368 336
            WIRE 368 336 384 336
            BEGIN DISPLAY 373 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH idn
            WIRE 352 416 368 416
            WIRE 368 416 384 416
            BEGIN DISPLAY 375 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ien
            WIRE 352 496 384 496
            WIRE 384 496 384 496
            BEGIN DISPLAY 377 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ikn
            WIRE 352 576 384 576
            WIRE 384 576 384 576
            BEGIN DISPLAY 377 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 96 176 ia R180 28
        IOMARKER 96 256 ib R180 28
        IOMARKER 96 336 ic R180 28
        IOMARKER 96 416 id R180 28
        IOMARKER 96 496 ie R180 28
        IOMARKER 96 576 ik R180 28
    END SHEET
END SCHEMATIC
