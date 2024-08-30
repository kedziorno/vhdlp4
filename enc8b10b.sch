VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex5"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    ATTR RenameBusIO "Always|BaseDashIndex"
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_18
        SIGNAL PA
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL PB
        SIGNAL PC
        SIGNAL PD
        SIGNAL PE
        SIGNAL pbf
        SIGNAL nbg
        SIGNAL nj
        SIGNAL ph
        SIGNAL nfgh
        SIGNAL PL30
        SIGNAL nl30d
        SIGNAL peodn
        SIGNAL ne
        SIGNAL nd
        SIGNAL nl12dnen
        SIGNAL nl03d
        SIGNAL pl03
        SIGNAL pdnen
        SIGNAL pdne
        SIGNAL nden
        SIGNAL nde
        SIGNAL nbb
        SIGNAL nbc
        SIGNAL nbd
        SIGNAL pl21
        SIGNAL pde
        SIGNAL pbi
        SIGNAL pl12
        SIGNAL pkoduee
        SIGNAL ndne
        SIGNAL pdenfgh
        SIGNAL pbe
        SIGNAL pdnefgh
        SIGNAL pfgh
        SIGNAL pk
        SIGNAL pfghasak
        SIGNAL nk
        SIGNAL pndfs6
        SIGNAL pdfs6
        SIGNAL n9
        SIGNAL n8
        SIGNAL nfghk
        SIGNAL ncmpls6
        SIGNAL pca
        SIGNAL pcd
        SIGNAL pcc
        SIGNAL pcb
        SIGNAL pci
        SIGNAL pce
        SIGNAL XLXN_93
        SIGNAL XLXN_94
        SIGNAL XLXN_95
        SIGNAL XLXN_96
        SIGNAL XLXN_97
        SIGNAL XLXN_99
        SIGNAL n6
        SIGNAL nl03den
        SIGNAL XLXN_55
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_64
        SIGNAL XLXN_65
        SIGNAL PG
        SIGNAL nf
        SIGNAL pfnhn
        SIGNAL n10
        SIGNAL pfueg
        SIGNAL pf
        SIGNAL pcf
        SIGNAL pcg
        SIGNAL pch
        SIGNAL pcj
        SIGNAL pcwpls4
        PORT Input PA
        PORT Input PB
        PORT Input PC
        PORT Input PD
        PORT Input PE
        PORT Input ph
        PORT Input pk
        PORT Input pndfs6
        PORT Input ncmpls6
        PORT Output pca
        PORT Output pcd
        PORT Output pcc
        PORT Output pcb
        PORT Output pci
        PORT Output pce
        PORT Input PG
        PORT Input pf
        PORT Output pcf
        PORT Output pcg
        PORT Output pch
        PORT Output pcj
        PORT Input pcwpls4
        BEGIN BLOCKDEF nand3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 216 -128 
            CIRCLE N 192 -140 216 -116 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF or3b3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 28 -64 
            CIRCLE N 28 -72 48 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 48 -140 72 -116 
            LINE N 0 -192 28 -192 
            CIRCLE N 28 -200 48 -180 
            LINE N 256 -128 192 -128 
            LINE N 112 -176 48 -176 
            LINE N 112 -80 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 48 -64 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            LINE N 40 -128 48 -128 
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
        BEGIN BLOCKDEF and2b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 64 -48 64 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
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
        BEGIN BLOCKDEF nor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N 28 -144 204 32 192 -96 112 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -48 48 -48 
            LINE N 112 -144 48 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF nand2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
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
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 nand3
            PIN I0 PA
            PIN I1 XLXN_23
            PIN I2 XLXN_18
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_2 nand3
            PIN I0 PB
            PIN I1 XLXN_23
            PIN I2 XLXN_24
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_3 nand3
            PIN I0 PC
            PIN I1 XLXN_24
            PIN I2 XLXN_18
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_4 and3b3
            PIN I0 XLXN_24
            PIN I1 XLXN_18
            PIN I2 XLXN_23
            PIN O PL30
        END BLOCK
        BEGIN BLOCK XLXI_8 or3b3
            PIN I0 XLXN_6
            PIN I1 XLXN_4
            PIN I2 XLXN_5
            PIN O pl12
        END BLOCK
        BEGIN BLOCK A301 inv
            PIN I PB
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK A302 inv
            PIN I PA
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_5 nand3
            PIN I0 PA
            PIN I1 PB
            PIN I2 XLXN_23
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_6 nand3
            PIN I0 PA
            PIN I1 PC
            PIN I2 XLXN_18
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_7 nand3
            PIN I0 XLXN_24
            PIN I1 PB
            PIN I2 PA
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK A303 inv
            PIN I PC
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_9 or3b3
            PIN I0 XLXN_9
            PIN I1 XLXN_7
            PIN I2 XLXN_8
            PIN O pl21
        END BLOCK
        BEGIN BLOCK XLXI_19 and3b3
            PIN I0 PA
            PIN I1 PB
            PIN I2 PC
            PIN O pl03
        END BLOCK
        BEGIN BLOCK a334 or3b3
            PIN I0 nk
            PIN I1 ndne
            PIN I2 nden
            PIN O pkoduee
        END BLOCK
        BEGIN BLOCK a308 inv
            PIN I nfgh
            PIN O pfgh
        END BLOCK
        BEGIN BLOCK a309 inv
            PIN I pk
            PIN O nk
        END BLOCK
        BEGIN BLOCK a354 and2b2
            PIN I0 nfgh
            PIN I1 ndne
            PIN O pdnefgh
        END BLOCK
        BEGIN BLOCK a310 inv
            PIN I pndfs6
            PIN O pdfs6
        END BLOCK
        BEGIN BLOCK a335 nand3
            PIN I0 pdnefgh
            PIN I1 pl12
            PIN I2 pndfs6
            PIN O n8
        END BLOCK
        BEGIN BLOCK a336 nand3
            PIN I0 pdenfgh
            PIN I1 pl21
            PIN I2 pdfs6
            PIN O n9
        END BLOCK
        BEGIN BLOCK a339 nand2
            PIN I0 pk
            PIN I1 pfgh
            PIN O nfghk
        END BLOCK
        BEGIN BLOCK a337 or3b3
            PIN I0 nfghk
            PIN I1 n9
            PIN I2 n8
            PIN O pfghasak
        END BLOCK
        BEGIN BLOCK a367 xor2
            PIN I0 ncmpls6
            PIN I1 nbb
            PIN O pcb
        END BLOCK
        BEGIN BLOCK a368 xor2
            PIN I0 ncmpls6
            PIN I1 nbc
            PIN O pcc
        END BLOCK
        BEGIN BLOCK a369 xor2
            PIN I0 ncmpls6
            PIN I1 nbd
            PIN O pcd
        END BLOCK
        BEGIN BLOCK XLXI_72 xnor2
            PIN I0 ncmpls6
            PIN I1 PA
            PIN O pca
        END BLOCK
        BEGIN BLOCK a358 xnor2
            PIN I0 ncmpls6
            PIN I1 pbe
            PIN O pce
        END BLOCK
        BEGIN BLOCK a359 xnor2
            PIN I0 ncmpls6
            PIN I1 pbi
            PIN O pci
        END BLOCK
        BEGIN BLOCK a307 inv
            PIN I nde
            PIN O pde
        END BLOCK
        BEGIN BLOCK a311 inv
            PIN I pdne
            PIN O ndne
        END BLOCK
        BEGIN BLOCK a353 and2b2
            PIN I0 nden
            PIN I1 nfgh
            PIN O pdenfgh
        END BLOCK
        BEGIN BLOCK XLXI_59 and2
            PIN I0 pdnen
            PIN I1 pl21
            PIN O XLXN_93
        END BLOCK
        BEGIN BLOCK XLXI_60 and2
            PIN I0 pkoduee
            PIN I1 pl12
            PIN O XLXN_95
        END BLOCK
        BEGIN BLOCK XLXI_61 and2
            PIN I0 pdne
            PIN I1 pl03
            PIN O XLXN_94
        END BLOCK
        BEGIN BLOCK XLXI_62 and2
            PIN I0 pde
            PIN I1 PL30
            PIN O XLXN_96
        END BLOCK
        BEGIN BLOCK XLXI_63 or2
            PIN I0 XLXN_95
            PIN I1 XLXN_93
            PIN O XLXN_97
        END BLOCK
        BEGIN BLOCK XLXI_64 or2
            PIN I0 XLXN_96
            PIN I1 XLXN_94
            PIN O XLXN_99
        END BLOCK
        BEGIN BLOCK XLXI_65 or2
            PIN I0 XLXN_99
            PIN I1 XLXN_97
            PIN O pbi
        END BLOCK
        BEGIN BLOCK a332 nand2
            PIN I0 PD
            PIN I1 nl30d
            PIN O nbd
        END BLOCK
        BEGIN BLOCK a333 or3b3
            PIN I0 nl03den
            PIN I1 n6
            PIN I2 nl12dnen
            PIN O pbe
        END BLOCK
        BEGIN BLOCK a331 nand2
            PIN I0 PE
            PIN I1 nl03d
            PIN O n6
        END BLOCK
        BEGIN BLOCK a330 nand3
            PIN I0 PD
            PIN I1 ne
            PIN I2 pl03
            PIN O nl03den
        END BLOCK
        BEGIN BLOCK XLXI_47 or2
            PIN I0 XLXN_58
            PIN I1 XLXN_57
            PIN O XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_46 and2
            PIN I0 nd
            PIN I1 pl03
            PIN O XLXN_58
        END BLOCK
        BEGIN BLOCK XLXI_45 and2
            PIN I0 PB
            PIN I1 nl30d
            PIN O XLXN_57
        END BLOCK
        BEGIN BLOCK XLXI_48 inv
            PIN I XLXN_55
            PIN O nbb
        END BLOCK
        BEGIN BLOCK XLXI_49 or2
            PIN I0 PC
            PIN I1 XLXN_65
            PIN O XLXN_64
        END BLOCK
        BEGIN BLOCK XLXI_51 and2
            PIN I0 peodn
            PIN I1 pl03
            PIN O XLXN_65
        END BLOCK
        BEGIN BLOCK XLXI_52 inv
            PIN I XLXN_64
            PIN O nbc
        END BLOCK
        BEGIN BLOCK a324 nand2
            PIN I0 PD
            PIN I1 PL30
            PIN O nl30d
        END BLOCK
        BEGIN BLOCK a325 nor2
            PIN I0 PD
            PIN I1 ne
            PIN O peodn
        END BLOCK
        BEGIN BLOCK a326 nand3
            PIN I0 ne
            PIN I1 nd
            PIN I2 PD
            PIN O nl12dnen
        END BLOCK
        BEGIN BLOCK a327 nand2
            PIN I0 PD
            PIN I1 pl03
            PIN O nl03d
        END BLOCK
        BEGIN BLOCK a351 and2b2
            PIN I0 PE
            PIN I1 PD
            PIN O pdnen
        END BLOCK
        BEGIN BLOCK a352 and2b2
            PIN I0 PD
            PIN I1 ne
            PIN O pdne
        END BLOCK
        BEGIN BLOCK a328 nand2
            PIN I0 PE
            PIN I1 PD
            PIN O nde
        END BLOCK
        BEGIN BLOCK a329 nand2
            PIN I0 PD
            PIN I1 ne
            PIN O nden
        END BLOCK
        BEGIN BLOCK a321 nand3
            PIN I0 ph
            PIN I1 PG
            PIN I2 pf
            PIN O nfgh
        END BLOCK
        BEGIN BLOCK a346 and2b2
            PIN I0 ph
            PIN I1 pf
            PIN O pfnhn
        END BLOCK
        BEGIN BLOCK a375 and2b1
            PIN I0 ph
            PIN I1 pfueg
            PIN O n10
        END BLOCK
        BEGIN BLOCK a305 inv
            PIN I pf
            PIN O nf
        END BLOCK
        BEGIN BLOCK XLXI_27 xor2
            PIN I0 pf
            PIN I1 PG
            PIN O pfueg
        END BLOCK
        BEGIN BLOCK XLXI_28 and2b2
            PIN I0 nf
            PIN I1 pfghasak
            PIN O pbf
        END BLOCK
        BEGIN BLOCK XLXI_29 nor2
            PIN I0 PG
            PIN I1 pfnhn
            PIN O nbg
        END BLOCK
        BEGIN BLOCK XLXI_30 nor2
            PIN I0 pfghasak
            PIN I1 n10
            PIN O nj
        END BLOCK
        BEGIN BLOCK XLXI_31 xor2
            PIN I0 pcwpls4
            PIN I1 pbf
            PIN O pcf
        END BLOCK
        BEGIN BLOCK XLXI_32 xor2
            PIN I0 pcwpls4
            PIN I1 nbg
            PIN O pcg
        END BLOCK
        BEGIN BLOCK XLXI_33 xor2
            PIN I0 pcwpls4
            PIN I1 ph
            PIN O pch
        END BLOCK
        BEGIN BLOCK XLXI_34 xor2
            PIN I0 pcwpls4
            PIN I1 nj
            PIN O pcj
        END BLOCK
        BEGIN BLOCK XLXI_20 inv
            PIN I PD
            PIN O nd
        END BLOCK
        BEGIN BLOCK XLXI_22 inv
            PIN I PE
            PIN O ne
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        INSTANCE XLXI_1 1344 368 R0
        INSTANCE XLXI_2 1344 528 R0
        INSTANCE XLXI_3 1344 704 R0
        BEGIN BRANCH XLXN_4
            WIRE 1600 400 1632 400
        END BRANCH
        INSTANCE XLXI_8 1632 528 R0
        LINE N 1600 236 1636 340 
        BEGIN BRANCH XLXN_5
            WIRE 1600 240 1616 240
            WIRE 1616 240 1616 336
            WIRE 1616 336 1632 336
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1600 576 1616 576
            WIRE 1616 464 1616 576
            WIRE 1616 464 1632 464
        END BRANCH
        BEGIN BRANCH PC
            WIRE 1280 656 1344 656
            WIRE 1344 640 1344 656
            BEGIN DISPLAY 1280 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 1344 864 R0
        INSTANCE XLXI_6 1344 1200 R0
        BEGIN BRANCH XLXN_7
            WIRE 1600 1072 1632 1072
        END BRANCH
        INSTANCE XLXI_9 1632 1200 R0
        BEGIN BRANCH XLXN_8
            WIRE 1600 928 1616 928
            WIRE 1616 928 1616 1008
            WIRE 1616 1008 1632 1008
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1600 1216 1616 1216
            WIRE 1616 1136 1632 1136
            WIRE 1616 1136 1616 1216
        END BRANCH
        INSTANCE XLXI_7 1344 1344 R0
        INSTANCE XLXI_5 1344 1056 R0
        BEGIN BRANCH XLXN_18
            WIRE 1040 176 1328 176
            WIRE 1328 176 1344 176
            WIRE 1328 176 1328 512
            WIRE 1328 512 1344 512
            WIRE 1328 512 1328 736
            WIRE 1328 736 1344 736
            WIRE 1328 736 1328 1008
            WIRE 1328 1008 1344 1008
        END BRANCH
        INSTANCE A301 816 208 R0
        INSTANCE A302 816 368 R0
        INSTANCE A303 816 896 R0
        BEGIN BRANCH PA
            WIRE 736 112 784 112
            WIRE 784 112 1264 112
            WIRE 1264 112 1264 304
            WIRE 1264 304 1344 304
            WIRE 784 112 784 336
            WIRE 784 336 816 336
            WIRE 784 336 784 992
            WIRE 784 992 1344 992
            WIRE 784 992 784 1136
            WIRE 784 1136 1344 1136
            WIRE 784 1136 784 1152
            WIRE 784 1152 784 1488
            WIRE 784 1488 816 1488
            WIRE 784 1152 1344 1152
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1040 864 1312 864
            WIRE 1312 864 1344 864
            WIRE 1312 240 1344 240
            WIRE 1312 240 1312 400
            WIRE 1312 400 1344 400
            WIRE 1312 400 1312 672
            WIRE 1312 672 1344 672
            WIRE 1312 672 1312 864
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1040 336 1296 336
            WIRE 1296 336 1344 336
            WIRE 1296 336 1296 576
            WIRE 1296 576 1344 576
            WIRE 1296 576 1296 800
            WIRE 1296 800 1344 800
            WIRE 1296 800 1296 1280
            WIRE 1296 1280 1344 1280
        END BRANCH
        IOMARKER 736 112 PA R180 28
        INSTANCE XLXI_19 816 1552 R0
        BEGIN BRANCH PB
            WIRE 736 176 768 176
            WIRE 768 176 816 176
            WIRE 768 176 768 464
            WIRE 768 464 768 928
            WIRE 768 928 768 1216
            WIRE 768 1216 768 1424
            WIRE 768 1424 816 1424
            WIRE 768 1216 1344 1216
            WIRE 768 928 1344 928
            WIRE 768 464 1344 464
        END BRANCH
        IOMARKER 736 176 PB R180 28
        BEGIN BRANCH PC
            WIRE 720 864 752 864
            WIRE 752 864 816 864
            WIRE 752 864 752 1072
            WIRE 752 1072 752 1360
            WIRE 752 1360 816 1360
            WIRE 752 1072 1344 1072
        END BRANCH
        IOMARKER 720 864 PC R180 28
        BEGIN BRANCH PL30
            WIRE 1600 736 1616 736
            WIRE 1616 736 1616 736
            WIRE 1616 736 1632 736
            BEGIN DISPLAY 1620 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl03
            WIRE 1072 1424 1104 1424
            BEGIN DISPLAY 1104 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl21
            WIRE 1888 1072 1904 1072
            WIRE 1904 1072 1936 1072
            BEGIN DISPLAY 1904 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl12
            WIRE 1888 400 1936 400
            BEGIN DISPLAY 1936 400 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE a334 5552 3168 R0
        INSTANCE a308 5552 3264 R0
        INSTANCE a309 5552 3360 R0
        INSTANCE a354 5536 3536 R0
        BEGIN BRANCH nden
            WIRE 5520 2976 5552 2976
            BEGIN DISPLAY 5520 2976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndne
            WIRE 5520 3040 5552 3040
            BEGIN DISPLAY 5520 3040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nk
            WIRE 5520 3104 5552 3104
            BEGIN DISPLAY 5520 3104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkoduee
            WIRE 5808 3040 5824 3040
            WIRE 5824 3040 5824 3040
            WIRE 5824 3040 5840 3040
            BEGIN DISPLAY 5828 3040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfgh
            WIRE 5520 3232 5552 3232
            BEGIN DISPLAY 5520 3232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndne
            WIRE 5504 3408 5536 3408
            BEGIN DISPLAY 5504 3408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfgh
            WIRE 5504 3472 5536 3472
            BEGIN DISPLAY 5504 3472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdnefgh
            WIRE 5792 3440 5808 3440
            WIRE 5808 3440 5824 3440
            BEGIN DISPLAY 5808 3440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nk
            WIRE 5776 3328 5792 3328
            WIRE 5792 3328 5792 3328
            WIRE 5792 3328 5808 3328
            BEGIN DISPLAY 5796 3328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfgh
            WIRE 5776 3232 5792 3232
            WIRE 5792 3232 5792 3232
            WIRE 5792 3232 5808 3232
            BEGIN DISPLAY 5800 3232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pk
            WIRE 5520 3328 5552 3328
        END BRANCH
        IOMARKER 5520 3328 pk R180 28
        INSTANCE a310 6352 2016 R0
        INSTANCE a335 6336 2224 R0
        INSTANCE a336 6336 2400 R0
        INSTANCE a339 6336 2496 R0
        INSTANCE a337 6336 2672 R0
        BEGIN BRANCH pndfs6
            WIRE 6320 1984 6352 1984
            BEGIN DISPLAY 6320 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdfs6
            WIRE 6576 1984 6592 1984
            WIRE 6592 1984 6592 1984
            WIRE 6592 1984 6608 1984
            BEGIN DISPLAY 6600 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pndfs6
            WIRE 6304 2032 6336 2032
            BEGIN DISPLAY 6304 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl12
            WIRE 6304 2096 6336 2096
            BEGIN DISPLAY 6304 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdnefgh
            WIRE 6304 2160 6336 2160
            BEGIN DISPLAY 6304 2160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdfs6
            WIRE 6304 2208 6336 2208
            BEGIN DISPLAY 6304 2208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl21
            WIRE 6304 2272 6336 2272
            BEGIN DISPLAY 6304 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdenfgh
            WIRE 6304 2336 6336 2336
            BEGIN DISPLAY 6304 2336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n9
            WIRE 6592 2272 6608 2272
            WIRE 6608 2272 6608 2272
            WIRE 6608 2272 6624 2272
            BEGIN DISPLAY 6612 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n8
            WIRE 6592 2096 6608 2096
            WIRE 6608 2096 6608 2096
            WIRE 6608 2096 6624 2096
            BEGIN DISPLAY 6612 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfgh
            WIRE 6304 2368 6336 2368
            BEGIN DISPLAY 6304 2368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pk
            WIRE 6304 2432 6336 2432
            BEGIN DISPLAY 6304 2432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n8
            WIRE 6304 2480 6336 2480
            BEGIN DISPLAY 6304 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n9
            WIRE 6304 2544 6336 2544
            BEGIN DISPLAY 6304 2544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfghk
            WIRE 6304 2608 6336 2608
            BEGIN DISPLAY 6304 2608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfghasak
            WIRE 6592 2544 6624 2544
            BEGIN DISPLAY 6624 2544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfghk
            WIRE 6592 2400 6608 2400
            WIRE 6608 2400 6608 2400
            WIRE 6608 2400 6624 2400
            BEGIN DISPLAY 6612 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pndfs6
            WIRE 6064 1936 6128 1936
        END BRANCH
        IOMARKER 6064 1936 pndfs6 R180 28
        INSTANCE a367 6016 624 R0
        INSTANCE a368 6016 736 R0
        INSTANCE a369 6016 848 R0
        INSTANCE XLXI_72 6016 960 R0
        INSTANCE a358 6016 1088 R0
        INSTANCE a359 6016 1216 R0
        BEGIN BRANCH nbb
            WIRE 5984 496 6016 496
            BEGIN DISPLAY 5984 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 5984 560 6016 560
            BEGIN DISPLAY 5984 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbc
            WIRE 5984 608 6016 608
            BEGIN DISPLAY 5984 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 5984 672 6016 672
            BEGIN DISPLAY 5984 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbd
            WIRE 5984 720 6016 720
            BEGIN DISPLAY 5984 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 5984 784 6016 784
            BEGIN DISPLAY 5984 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PA
            WIRE 5984 832 6016 832
            BEGIN DISPLAY 5984 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 5984 896 6016 896
            BEGIN DISPLAY 5984 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pca
            WIRE 6272 864 6304 864
        END BRANCH
        BEGIN BRANCH pcd
            WIRE 6272 752 6304 752
        END BRANCH
        BEGIN BRANCH pcc
            WIRE 6272 640 6304 640
        END BRANCH
        BEGIN BRANCH pcb
            WIRE 6272 528 6304 528
        END BRANCH
        BEGIN BRANCH pbe
            WIRE 5984 960 6016 960
            BEGIN DISPLAY 5984 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 5984 1024 6016 1024
            BEGIN DISPLAY 5984 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pbi
            WIRE 5984 1088 6016 1088
            BEGIN DISPLAY 5984 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 5984 1152 6016 1152
            BEGIN DISPLAY 5984 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pci
            WIRE 6272 1120 6304 1120
        END BRANCH
        BEGIN BRANCH pce
            WIRE 6272 992 6304 992
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 5728 480 5776 480
        END BRANCH
        IOMARKER 6304 528 pcb R0 28
        IOMARKER 6304 640 pcc R0 28
        IOMARKER 6304 752 pcd R0 28
        IOMARKER 6304 992 pce R0 28
        IOMARKER 6304 1120 pci R0 28
        IOMARKER 6304 864 pca R0 28
        IOMARKER 5728 480 ncmpls6 R180 28
        INSTANCE a307 3936 3568 R0
        BEGIN BRANCH pde
            WIRE 4160 3536 4176 3536
            WIRE 4176 3536 4176 3536
            WIRE 4176 3536 4192 3536
            BEGIN DISPLAY 4184 3536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nde
            WIRE 3904 3536 3936 3536
            BEGIN DISPLAY 3904 3536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a311 3936 3664 R0
        BEGIN BRANCH ndne
            WIRE 4160 3632 4176 3632
            WIRE 4176 3632 4192 3632
            BEGIN DISPLAY 4176 3632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdne
            WIRE 3904 3632 3920 3632
            WIRE 3920 3632 3936 3632
            BEGIN DISPLAY 3904 3632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a353 3952 3840 R0
        BEGIN BRANCH nfgh
            WIRE 3920 3712 3952 3712
            BEGIN DISPLAY 3920 3712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nden
            WIRE 3920 3776 3952 3776
            BEGIN DISPLAY 3920 3776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdenfgh
            WIRE 4208 3744 4224 3744
            WIRE 4224 3744 4224 3744
            WIRE 4224 3744 4240 3744
            BEGIN DISPLAY 4232 3744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_59 3840 2880 R0
        INSTANCE XLXI_60 3840 2992 R0
        INSTANCE XLXI_61 3840 3104 R0
        INSTANCE XLXI_62 3840 3216 R0
        BEGIN BRANCH XLXN_93
            WIRE 4096 2784 4128 2784
        END BRANCH
        INSTANCE XLXI_63 4128 2912 R0
        BEGIN BRANCH XLXN_94
            WIRE 4096 3008 4128 3008
        END BRANCH
        INSTANCE XLXI_64 4128 3136 R0
        BEGIN BRANCH XLXN_95
            WIRE 4096 2896 4112 2896
            WIRE 4112 2848 4112 2896
            WIRE 4112 2848 4128 2848
        END BRANCH
        BEGIN BRANCH XLXN_96
            WIRE 4096 3120 4112 3120
            WIRE 4112 3072 4112 3120
            WIRE 4112 3072 4128 3072
        END BRANCH
        BEGIN BRANCH XLXN_97
            WIRE 4384 2816 4416 2816
        END BRANCH
        INSTANCE XLXI_65 4416 2944 R0
        BEGIN BRANCH XLXN_99
            WIRE 4384 3040 4400 3040
            WIRE 4400 2880 4416 2880
            WIRE 4400 2880 4400 3040
        END BRANCH
        BEGIN BRANCH pl21
            WIRE 3808 2752 3840 2752
            BEGIN DISPLAY 3808 2752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdnen
            WIRE 3808 2816 3840 2816
            BEGIN DISPLAY 3808 2816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl03
            WIRE 3808 2976 3840 2976
            BEGIN DISPLAY 3808 2976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdne
            WIRE 3808 3040 3840 3040
            BEGIN DISPLAY 3808 3040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PL30
            WIRE 3808 3088 3840 3088
            BEGIN DISPLAY 3808 3088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pde
            WIRE 3808 3152 3840 3152
            BEGIN DISPLAY 3808 3152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pbi
            WIRE 4672 2848 4688 2848
            WIRE 4688 2848 4704 2848
            BEGIN DISPLAY 4688 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl12
            WIRE 3808 2864 3840 2864
            BEGIN DISPLAY 3808 2864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkoduee
            WIRE 3808 2928 3840 2928
            BEGIN DISPLAY 3808 2928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a332 3968 1888 R0
        BEGIN BRANCH nl30d
            WIRE 3936 1760 3968 1760
            BEGIN DISPLAY 3936 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3936 1824 3968 1824
            BEGIN DISPLAY 3936 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbd
            WIRE 4224 1792 4256 1792
            BEGIN DISPLAY 4256 1792 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE a333 4000 2176 R0
        BEGIN BRANCH nl12dnen
            WIRE 3968 1984 4000 1984
            BEGIN DISPLAY 3968 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n6
            WIRE 3968 2048 4000 2048
            BEGIN DISPLAY 3968 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nl03den
            WIRE 3968 2112 4000 2112
            BEGIN DISPLAY 3968 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pbe
            WIRE 4256 2048 4272 2048
            WIRE 4272 2048 4272 2048
            WIRE 4272 2048 4288 2048
            BEGIN DISPLAY 4276 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a331 3968 2336 R0
        BEGIN BRANCH nl03d
            WIRE 3936 2208 3968 2208
            BEGIN DISPLAY 3936 2208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PE
            WIRE 3936 2272 3968 2272
            BEGIN DISPLAY 3936 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n6
            WIRE 4224 2240 4256 2240
            BEGIN DISPLAY 4256 2240 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nl03den
            WIRE 4224 2384 4240 2384
            WIRE 4240 2384 4240 2384
            WIRE 4240 2384 4256 2384
            BEGIN DISPLAY 4248 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a330 3968 2512 R0
        BEGIN BRANCH pl03
            WIRE 3936 2320 3968 2320
            BEGIN DISPLAY 3936 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ne
            WIRE 3936 2384 3968 2384
            BEGIN DISPLAY 3936 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3936 2448 3968 2448
            BEGIN DISPLAY 3936 2448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_47 4464 496 R0
        BEGIN BRANCH XLXN_55
            WIRE 4720 400 4736 400
        END BRANCH
        BEGIN BRANCH XLXN_57
            WIRE 4432 368 4464 368
        END BRANCH
        BEGIN BRANCH XLXN_58
            WIRE 4432 480 4448 480
            WIRE 4448 432 4464 432
            WIRE 4448 432 4448 480
        END BRANCH
        INSTANCE XLXI_46 4176 576 R0
        INSTANCE XLXI_45 4176 464 R0
        INSTANCE XLXI_48 4736 432 R0
        BEGIN BRANCH nl30d
            WIRE 4144 336 4176 336
            BEGIN DISPLAY 4144 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PB
            WIRE 4144 400 4176 400
            BEGIN DISPLAY 4144 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl03
            WIRE 4144 448 4176 448
            BEGIN DISPLAY 4144 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nd
            WIRE 4144 512 4176 512
            BEGIN DISPLAY 4144 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbb
            WIRE 4960 400 4992 400
            WIRE 4992 400 4992 400
            WIRE 4992 400 5008 400
            BEGIN DISPLAY 5000 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_49 4464 736 R0
        BEGIN BRANCH XLXN_64
            WIRE 4720 640 4736 640
        END BRANCH
        BEGIN BRANCH XLXN_65
            WIRE 4432 608 4464 608
        END BRANCH
        BEGIN BRANCH PC
            WIRE 4400 720 4448 720
            WIRE 4448 672 4464 672
            WIRE 4448 672 4448 720
            BEGIN DISPLAY 4400 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_51 4176 704 R0
        INSTANCE XLXI_52 4736 672 R0
        BEGIN BRANCH pl03
            WIRE 4144 576 4176 576
            BEGIN DISPLAY 4144 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH peodn
            WIRE 4144 640 4176 640
            BEGIN DISPLAY 4144 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbc
            WIRE 4960 640 4992 640
            WIRE 4992 640 4992 640
            WIRE 4992 640 5008 640
            BEGIN DISPLAY 5000 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a324 3056 672 R0
        BEGIN BRANCH PL30
            WIRE 3024 544 3056 544
            BEGIN DISPLAY 3024 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3024 608 3056 608
            BEGIN DISPLAY 3024 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nl30d
            WIRE 3312 576 3328 576
            WIRE 3328 576 3328 576
            WIRE 3328 576 3344 576
            BEGIN DISPLAY 3324 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a325 3056 896 R0
        BEGIN BRANCH peodn
            WIRE 3312 800 3344 800
            BEGIN DISPLAY 3344 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ne
            WIRE 3024 768 3056 768
            BEGIN DISPLAY 3024 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3024 832 3056 832
            BEGIN DISPLAY 3024 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a326 3056 1088 R0
        BEGIN BRANCH PD
            WIRE 3024 896 3056 896
            BEGIN DISPLAY 3024 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nd
            WIRE 3024 960 3056 960
            BEGIN DISPLAY 3024 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ne
            WIRE 3024 1024 3056 1024
            BEGIN DISPLAY 3024 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nl12dnen
            WIRE 3312 960 3328 960
            WIRE 3328 960 3328 960
            WIRE 3328 960 3360 960
            BEGIN DISPLAY 3332 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a327 3056 1232 R0
        BEGIN BRANCH nl03d
            WIRE 3312 1136 3328 1136
            WIRE 3328 1136 3328 1136
            WIRE 3328 1136 3344 1136
            BEGIN DISPLAY 3324 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl03
            WIRE 3024 1104 3056 1104
            BEGIN DISPLAY 3024 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3024 1168 3056 1168
            BEGIN DISPLAY 3024 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a351 3072 1408 R0
        BEGIN BRANCH PD
            WIRE 3040 1280 3072 1280
            BEGIN DISPLAY 3040 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PE
            WIRE 3040 1344 3072 1344
            BEGIN DISPLAY 3040 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdnen
            WIRE 3328 1312 3360 1312
            BEGIN DISPLAY 3360 1312 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE a352 3104 1600 R0
        BEGIN BRANCH ne
            WIRE 3072 1472 3104 1472
            BEGIN DISPLAY 3072 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3072 1536 3104 1536
            BEGIN DISPLAY 3072 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdne
            WIRE 3360 1504 3376 1504
            WIRE 3376 1504 3376 1504
            WIRE 3376 1504 3392 1504
            BEGIN DISPLAY 3380 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3072 1616 3104 1616
            BEGIN DISPLAY 3072 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PE
            WIRE 3072 1680 3104 1680
            BEGIN DISPLAY 3072 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ne
            WIRE 3072 1744 3104 1744
            BEGIN DISPLAY 3072 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3072 1808 3104 1808
            BEGIN DISPLAY 3072 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nden
            WIRE 3360 1776 3392 1776
            BEGIN DISPLAY 3392 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nde
            WIRE 3360 1648 3376 1648
            WIRE 3376 1648 3376 1648
            WIRE 3376 1648 3392 1648
            BEGIN DISPLAY 3380 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a328 3104 1744 R0
        INSTANCE a329 3104 1872 R0
        BEGIN BRANCH PG
            WIRE 656 3504 688 3504
        END BRANCH
        INSTANCE a321 688 3312 R0
        INSTANCE a346 688 3408 R0
        INSTANCE a375 688 3520 R0
        INSTANCE a305 688 3104 R0
        INSTANCE XLXI_27 688 3632 R0
        INSTANCE XLXI_28 1120 3200 R0
        INSTANCE XLXI_29 1120 3344 R0
        INSTANCE XLXI_30 1136 3520 R0
        BEGIN BRANCH nf
            WIRE 912 3072 944 3072
            WIRE 944 3072 944 3072
            WIRE 944 3072 960 3072
            BEGIN DISPLAY 940 3072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nf
            WIRE 1088 3136 1120 3136
            BEGIN DISPLAY 1088 3136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfnhn
            WIRE 944 3312 960 3312
            WIRE 960 3312 976 3312
            BEGIN DISPLAY 960 3312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfnhn
            WIRE 1088 3216 1088 3216
            WIRE 1088 3216 1120 3216
            BEGIN DISPLAY 1096 3216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n10
            WIRE 944 3424 960 3424
            WIRE 960 3424 960 3424
            WIRE 960 3424 976 3424
            BEGIN DISPLAY 964 3424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n10
            WIRE 1104 3392 1104 3392
            WIRE 1104 3392 1136 3392
            BEGIN DISPLAY 1112 3392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pbf
            WIRE 1376 3104 1408 3104
            BEGIN DISPLAY 1408 3104 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbg
            WIRE 1376 3248 1392 3248
            WIRE 1392 3248 1392 3248
            WIRE 1392 3248 1408 3248
            BEGIN DISPLAY 1396 3248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nj
            WIRE 1392 3424 1408 3424
            WIRE 1408 3424 1408 3424
            WIRE 1408 3424 1424 3424
            BEGIN DISPLAY 1404 3424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfueg
            WIRE 944 3536 960 3536
            WIRE 960 3536 960 3536
            WIRE 960 3536 976 3536
            BEGIN DISPLAY 968 3536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfueg
            WIRE 656 3392 688 3392
            BEGIN DISPLAY 656 3392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfgh
            WIRE 944 3184 960 3184
            WIRE 960 3184 976 3184
            BEGIN DISPLAY 960 3184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PG
            WIRE 656 3184 688 3184
            BEGIN DISPLAY 656 3184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ph
            WIRE 656 3248 688 3248
            BEGIN DISPLAY 656 3248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ph
            WIRE 656 3344 688 3344
            BEGIN DISPLAY 656 3344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ph
            WIRE 656 3456 688 3456
            BEGIN DISPLAY 656 3456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pf
            WIRE 672 3072 688 3072
        END BRANCH
        BEGIN BRANCH pf
            WIRE 656 3120 688 3120
            BEGIN DISPLAY 656 3120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pf
            WIRE 656 3280 688 3280
            BEGIN DISPLAY 656 3280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pf
            WIRE 640 3568 688 3568
            BEGIN DISPLAY 640 3568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfghasak
            WIRE 1104 3456 1136 3456
            BEGIN DISPLAY 1104 3456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfghasak
            WIRE 1088 3072 1120 3072
            BEGIN DISPLAY 1088 3072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PG
            WIRE 1088 3280 1120 3280
            BEGIN DISPLAY 1088 3280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 672 3072 pf R180 28
        IOMARKER 656 3504 PG R180 28
        INSTANCE XLXI_31 2512 2944 R0
        INSTANCE XLXI_32 2512 3072 R0
        INSTANCE XLXI_33 2512 3200 R0
        INSTANCE XLXI_34 2512 3328 R0
        BEGIN BRANCH pcf
            WIRE 2768 2848 2800 2848
        END BRANCH
        BEGIN BRANCH pcg
            WIRE 2768 2976 2800 2976
        END BRANCH
        BEGIN BRANCH pch
            WIRE 2768 3104 2800 3104
        END BRANCH
        BEGIN BRANCH pcj
            WIRE 2768 3232 2800 3232
        END BRANCH
        BEGIN BRANCH pbf
            WIRE 2480 2816 2496 2816
            WIRE 2496 2816 2496 2816
            WIRE 2496 2816 2512 2816
            BEGIN DISPLAY 2504 2816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 2480 2880 2496 2880
            WIRE 2496 2880 2512 2880
            BEGIN DISPLAY 2480 2880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbg
            WIRE 2480 2944 2496 2944
            WIRE 2496 2944 2496 2944
            WIRE 2496 2944 2512 2944
            BEGIN DISPLAY 2492 2944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 2480 3008 2480 3008
            WIRE 2480 3008 2512 3008
            BEGIN DISPLAY 2488 3008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ph
            WIRE 2480 3072 2512 3072
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 2480 3136 2480 3136
            WIRE 2480 3136 2512 3136
            BEGIN DISPLAY 2484 3136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nj
            WIRE 2480 3200 2496 3200
            WIRE 2496 3200 2512 3200
            BEGIN DISPLAY 2496 3200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 2480 3264 2480 3264
            WIRE 2480 3264 2512 3264
            BEGIN DISPLAY 2488 3264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 2416 2704 2448 2704
        END BRANCH
        IOMARKER 2800 2848 pcf R0 28
        IOMARKER 2800 2976 pcg R0 28
        IOMARKER 2800 3104 pch R0 28
        IOMARKER 2800 3232 pcj R0 28
        IOMARKER 2480 3072 ph R180 28
        IOMARKER 2416 2704 pcwpls4 R180 28
        BEGIN BRANCH PD
            WIRE 592 2544 672 2544
            WIRE 672 2544 1024 2544
            WIRE 672 2448 720 2448
            WIRE 672 2448 672 2544
        END BRANCH
        INSTANCE XLXI_20 720 2480 R0
        BEGIN BRANCH PE
            WIRE 608 2336 688 2336
            WIRE 688 2336 1024 2336
            WIRE 688 2240 736 2240
            WIRE 688 2240 688 2336
        END BRANCH
        INSTANCE XLXI_22 736 2272 R0
        BEGIN BRANCH ne
            WIRE 960 2240 1024 2240
            BEGIN DISPLAY 1024 2240 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nd
            WIRE 944 2448 1008 2448
            WIRE 1008 2448 1008 2448
            WIRE 1008 2448 1024 2448
            BEGIN DISPLAY 1004 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 592 2544 PD R180 28
        IOMARKER 608 2336 PE R180 28
    END SHEET
END SCHEMATIC
