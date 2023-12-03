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
        SIGNAL PG
        SIGNAL nf
        SIGNAL pfnhn
        SIGNAL n10
        SIGNAL pcf
        SIGNAL pcg
        SIGNAL pch
        SIGNAL pcj
        SIGNAL pbf
        SIGNAL nbg
        SIGNAL nj
        SIGNAL ph
        SIGNAL pcwpls4
        SIGNAL pfueg
        SIGNAL nfgh
        SIGNAL pf
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
        SIGNAL XLXN_55
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL nbb
        SIGNAL XLXN_64
        SIGNAL XLXN_65
        SIGNAL XLXN_66
        SIGNAL nbc
        SIGNAL nbd
        SIGNAL n6
        SIGNAL nl03den
        SIGNAL XLXN_93
        SIGNAL XLXN_94
        SIGNAL XLXN_95
        SIGNAL XLXN_96
        SIGNAL XLXN_97
        SIGNAL XLXN_99
        SIGNAL pl21
        SIGNAL pde
        SIGNAL pbi
        SIGNAL pl12
        SIGNAL pkoduee
        SIGNAL ndne
        SIGNAL pdenfgh
        SIGNAL ncmpls6
        SIGNAL pca
        SIGNAL pcd
        SIGNAL pcc
        SIGNAL pcb
        SIGNAL pbe
        SIGNAL pci
        SIGNAL pce
        SIGNAL pndfs6
        SIGNAL pdfs6
        SIGNAL pdnefgh
        SIGNAL n9
        SIGNAL n8
        SIGNAL pfgh
        SIGNAL pk
        SIGNAL pfghasak
        SIGNAL nfghk
        SIGNAL nk
        PORT Input PA
        PORT Input PB
        PORT Input PC
        PORT Input PD
        PORT Input PE
        PORT Input PG
        PORT Output pcf
        PORT Output pcg
        PORT Output pch
        PORT Output pcj
        PORT Input ph
        PORT Input pcwpls4
        PORT Input pf
        PORT Input ncmpls6
        PORT Output pca
        PORT Output pcd
        PORT Output pcc
        PORT Output pcb
        PORT Output pci
        PORT Output pce
        PORT Input pndfs6
        PORT Input pk
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
        BEGIN BLOCK XLXI_20 inv
            PIN I PD
            PIN O nd
        END BLOCK
        BEGIN BLOCK XLXI_22 inv
            PIN I PE
            PIN O ne
        END BLOCK
        BEGIN BLOCK a305 inv
            PIN I pf
            PIN O nf
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
        BEGIN BLOCK XLXI_45 and2
            PIN I0 PB
            PIN I1 nl30d
            PIN O XLXN_57
        END BLOCK
        BEGIN BLOCK XLXI_46 and2
            PIN I0 nd
            PIN I1 pl03
            PIN O XLXN_58
        END BLOCK
        BEGIN BLOCK XLXI_47 or2
            PIN I0 XLXN_58
            PIN I1 XLXN_57
            PIN O XLXN_55
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
        BEGIN BRANCH PD
            WIRE 800 1936 880 1936
            WIRE 880 1936 1568 1936
            WIRE 880 1840 928 1840
            WIRE 880 1840 880 1936
        END BRANCH
        INSTANCE XLXI_20 928 1872 R0
        IOMARKER 800 1936 PD R180 28
        BEGIN BRANCH PE
            WIRE 816 1728 896 1728
            WIRE 896 1728 1584 1728
            WIRE 896 1632 944 1632
            WIRE 896 1632 896 1728
        END BRANCH
        INSTANCE XLXI_22 944 1664 R0
        IOMARKER 816 1728 PE R180 28
        BEGIN BRANCH PG
            WIRE 960 2640 992 2640
        END BRANCH
        INSTANCE a321 992 2448 R0
        INSTANCE a346 992 2544 R0
        INSTANCE a375 992 2656 R0
        INSTANCE a305 992 2240 R0
        INSTANCE XLXI_27 992 2768 R0
        INSTANCE XLXI_28 1424 2336 R0
        INSTANCE XLXI_29 1424 2480 R0
        INSTANCE XLXI_30 1440 2656 R0
        BEGIN BRANCH nf
            WIRE 1216 2208 1248 2208
            WIRE 1248 2208 1264 2208
            BEGIN DISPLAY 1244 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nf
            WIRE 1392 2272 1424 2272
            BEGIN DISPLAY 1392 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfnhn
            WIRE 1248 2448 1264 2448
            WIRE 1264 2448 1280 2448
            BEGIN DISPLAY 1264 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfnhn
            WIRE 1392 2352 1392 2352
            WIRE 1392 2352 1424 2352
            BEGIN DISPLAY 1400 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n10
            WIRE 1248 2560 1264 2560
            WIRE 1264 2560 1280 2560
            BEGIN DISPLAY 1268 2560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n10
            WIRE 1408 2528 1408 2528
            WIRE 1408 2528 1440 2528
            BEGIN DISPLAY 1416 2528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_31 1952 2192 R0
        INSTANCE XLXI_32 1952 2320 R0
        INSTANCE XLXI_33 1952 2448 R0
        INSTANCE XLXI_34 1952 2576 R0
        BEGIN BRANCH pcf
            WIRE 2208 2096 2240 2096
        END BRANCH
        IOMARKER 2240 2096 pcf R0 28
        BEGIN BRANCH pcg
            WIRE 2208 2224 2240 2224
        END BRANCH
        IOMARKER 2240 2224 pcg R0 28
        BEGIN BRANCH pch
            WIRE 2208 2352 2240 2352
        END BRANCH
        IOMARKER 2240 2352 pch R0 28
        BEGIN BRANCH pcj
            WIRE 2208 2480 2240 2480
        END BRANCH
        IOMARKER 2240 2480 pcj R0 28
        BEGIN BRANCH pbf
            WIRE 1680 2240 1712 2240
            BEGIN DISPLAY 1712 2240 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbg
            WIRE 1680 2384 1696 2384
            WIRE 1696 2384 1712 2384
            BEGIN DISPLAY 1700 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nj
            WIRE 1696 2560 1712 2560
            WIRE 1712 2560 1728 2560
            BEGIN DISPLAY 1708 2560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pbf
            WIRE 1920 2064 1936 2064
            WIRE 1936 2064 1952 2064
            BEGIN DISPLAY 1944 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 1920 2128 1952 2128
            BEGIN DISPLAY 1920 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbg
            WIRE 1920 2192 1936 2192
            WIRE 1936 2192 1952 2192
            BEGIN DISPLAY 1932 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 1920 2256 1920 2256
            WIRE 1920 2256 1952 2256
            BEGIN DISPLAY 1928 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ph
            WIRE 1920 2320 1952 2320
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 1920 2384 1920 2384
            WIRE 1920 2384 1952 2384
            BEGIN DISPLAY 1924 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nj
            WIRE 1920 2448 1936 2448
            WIRE 1936 2448 1952 2448
            BEGIN DISPLAY 1936 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pcwpls4
            WIRE 1920 2512 1920 2512
            WIRE 1920 2512 1952 2512
            BEGIN DISPLAY 1928 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1920 2320 ph R180 28
        BEGIN BRANCH pfueg
            WIRE 1248 2672 1264 2672
            WIRE 1264 2672 1280 2672
            BEGIN DISPLAY 1272 2672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfueg
            WIRE 960 2528 992 2528
            BEGIN DISPLAY 960 2528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfgh
            WIRE 1248 2320 1264 2320
            WIRE 1264 2320 1280 2320
            BEGIN DISPLAY 1264 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PG
            WIRE 960 2320 992 2320
            BEGIN DISPLAY 960 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ph
            WIRE 960 2384 992 2384
            BEGIN DISPLAY 960 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ph
            WIRE 960 2480 992 2480
            BEGIN DISPLAY 960 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ph
            WIRE 960 2592 992 2592
            BEGIN DISPLAY 960 2592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pf
            WIRE 976 2208 992 2208
        END BRANCH
        BEGIN BRANCH pf
            WIRE 960 2256 992 2256
            BEGIN DISPLAY 960 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pf
            WIRE 960 2416 992 2416
            BEGIN DISPLAY 960 2416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pf
            WIRE 944 2704 992 2704
            BEGIN DISPLAY 944 2704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 976 2208 pf R180 28
        IOMARKER 960 2640 PG R180 28
        BEGIN BRANCH pfghasak
            WIRE 1408 2592 1440 2592
            BEGIN DISPLAY 1408 2592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfghasak
            WIRE 1392 2208 1424 2208
            BEGIN DISPLAY 1392 2208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PG
            WIRE 1392 2416 1424 2416
            BEGIN DISPLAY 1392 2416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a324 2672 288 R0
        BEGIN BRANCH PL30
            WIRE 1600 736 1616 736
            WIRE 1616 736 1632 736
            BEGIN DISPLAY 1621 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PL30
            WIRE 2640 160 2672 160
            BEGIN DISPLAY 2640 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 2640 224 2672 224
            BEGIN DISPLAY 2640 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nl30d
            WIRE 2928 192 2944 192
            WIRE 2944 192 2960 192
            BEGIN DISPLAY 2940 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a325 2672 512 R0
        BEGIN BRANCH peodn
            WIRE 2928 416 2960 416
            BEGIN DISPLAY 2960 416 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ne
            WIRE 2640 384 2672 384
            BEGIN DISPLAY 2640 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 2640 448 2672 448
            BEGIN DISPLAY 2640 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a326 2672 704 R0
        BEGIN BRANCH PD
            WIRE 2640 512 2672 512
            BEGIN DISPLAY 2640 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nd
            WIRE 2640 576 2672 576
            BEGIN DISPLAY 2640 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ne
            WIRE 2640 640 2672 640
            BEGIN DISPLAY 2640 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nl12dnen
            WIRE 2928 576 2944 576
            WIRE 2944 576 2976 576
            BEGIN DISPLAY 2950 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a327 2672 848 R0
        BEGIN BRANCH nl03d
            WIRE 2928 752 2944 752
            WIRE 2944 752 2960 752
            BEGIN DISPLAY 2940 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl03
            WIRE 2640 720 2672 720
            BEGIN DISPLAY 2640 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 2640 784 2672 784
            BEGIN DISPLAY 2640 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl03
            WIRE 1072 1424 1104 1424
            BEGIN DISPLAY 1104 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE a351 2688 1024 R0
        BEGIN BRANCH PD
            WIRE 2656 896 2688 896
            BEGIN DISPLAY 2656 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PE
            WIRE 2656 960 2688 960
            BEGIN DISPLAY 2656 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdnen
            WIRE 2944 928 2976 928
            BEGIN DISPLAY 2976 928 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE a352 2720 1216 R0
        BEGIN BRANCH ne
            WIRE 2688 1088 2720 1088
            BEGIN DISPLAY 2688 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 2688 1152 2720 1152
            BEGIN DISPLAY 2688 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdne
            WIRE 2976 1120 2992 1120
            WIRE 2992 1120 3008 1120
            BEGIN DISPLAY 2995 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 2688 1232 2720 1232
            BEGIN DISPLAY 2688 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PE
            WIRE 2688 1296 2720 1296
            BEGIN DISPLAY 2688 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ne
            WIRE 2688 1360 2720 1360
            BEGIN DISPLAY 2688 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 2688 1424 2720 1424
            BEGIN DISPLAY 2688 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nden
            WIRE 2976 1392 3008 1392
            BEGIN DISPLAY 3008 1392 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nde
            WIRE 2976 1264 2992 1264
            WIRE 2992 1264 3008 1264
            BEGIN DISPLAY 2996 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a328 2720 1360 R0
        INSTANCE a329 2720 1488 R0
        INSTANCE XLXI_47 3616 256 R0
        BEGIN BRANCH XLXN_55
            WIRE 3872 160 3888 160
        END BRANCH
        BEGIN BRANCH XLXN_57
            WIRE 3584 128 3616 128
        END BRANCH
        BEGIN BRANCH XLXN_58
            WIRE 3584 240 3600 240
            WIRE 3600 192 3616 192
            WIRE 3600 192 3600 240
        END BRANCH
        INSTANCE XLXI_46 3328 336 R0
        INSTANCE XLXI_45 3328 224 R0
        INSTANCE XLXI_48 3888 192 R0
        BEGIN BRANCH nl30d
            WIRE 3296 96 3328 96
            BEGIN DISPLAY 3296 96 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PB
            WIRE 3296 160 3328 160
            BEGIN DISPLAY 3296 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl03
            WIRE 3296 208 3328 208
            BEGIN DISPLAY 3296 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nd
            WIRE 3296 272 3328 272
            BEGIN DISPLAY 3296 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbb
            WIRE 4112 160 4160 160
            WIRE 4160 160 4160 160
            BEGIN DISPLAY 4153 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_49 3616 496 R0
        BEGIN BRANCH XLXN_64
            WIRE 3872 400 3888 400
        END BRANCH
        BEGIN BRANCH XLXN_65
            WIRE 3584 368 3616 368
        END BRANCH
        BEGIN BRANCH PC
            WIRE 3552 480 3600 480
            WIRE 3600 432 3616 432
            WIRE 3600 432 3600 480
            BEGIN DISPLAY 3552 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_51 3328 464 R0
        INSTANCE XLXI_52 3888 432 R0
        BEGIN BRANCH pl03
            WIRE 3296 336 3328 336
            BEGIN DISPLAY 3296 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH peodn
            WIRE 3296 400 3328 400
            BEGIN DISPLAY 3296 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbc
            WIRE 4112 400 4160 400
            WIRE 4160 400 4160 400
            BEGIN DISPLAY 4153 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a332 3328 720 R0
        BEGIN BRANCH nl30d
            WIRE 3296 592 3328 592
            BEGIN DISPLAY 3296 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3296 656 3328 656
            BEGIN DISPLAY 3296 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbd
            WIRE 3584 624 3616 624
            BEGIN DISPLAY 3616 624 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE a333 3360 1008 R0
        BEGIN BRANCH nl12dnen
            WIRE 3328 816 3360 816
            BEGIN DISPLAY 3328 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n6
            WIRE 3328 880 3360 880
            BEGIN DISPLAY 3328 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nl03den
            WIRE 3328 944 3360 944
            BEGIN DISPLAY 3328 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pbe
            WIRE 3616 880 3632 880
            WIRE 3632 880 3648 880
            BEGIN DISPLAY 3635 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a331 3328 1168 R0
        BEGIN BRANCH nl03d
            WIRE 3296 1040 3328 1040
            BEGIN DISPLAY 3296 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PE
            WIRE 3296 1104 3328 1104
            BEGIN DISPLAY 3296 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n6
            WIRE 3584 1072 3616 1072
            BEGIN DISPLAY 3616 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nl03den
            WIRE 3584 1216 3600 1216
            WIRE 3600 1216 3616 1216
            BEGIN DISPLAY 3607 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a330 3328 1344 R0
        BEGIN BRANCH pl03
            WIRE 3296 1152 3328 1152
            BEGIN DISPLAY 3296 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ne
            WIRE 3296 1216 3328 1216
            BEGIN DISPLAY 3296 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PD
            WIRE 3296 1280 3328 1280
            BEGIN DISPLAY 3296 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_59 3440 1568 R0
        INSTANCE XLXI_60 3440 1680 R0
        INSTANCE XLXI_61 3440 1792 R0
        INSTANCE XLXI_62 3440 1904 R0
        BEGIN BRANCH XLXN_93
            WIRE 3696 1472 3728 1472
        END BRANCH
        INSTANCE XLXI_63 3728 1600 R0
        BEGIN BRANCH XLXN_94
            WIRE 3696 1696 3728 1696
        END BRANCH
        INSTANCE XLXI_64 3728 1824 R0
        BEGIN BRANCH XLXN_95
            WIRE 3696 1584 3712 1584
            WIRE 3712 1536 3712 1584
            WIRE 3712 1536 3728 1536
        END BRANCH
        BEGIN BRANCH XLXN_96
            WIRE 3696 1808 3712 1808
            WIRE 3712 1760 3712 1808
            WIRE 3712 1760 3728 1760
        END BRANCH
        BEGIN BRANCH XLXN_97
            WIRE 3984 1504 4016 1504
        END BRANCH
        INSTANCE XLXI_65 4016 1632 R0
        BEGIN BRANCH XLXN_99
            WIRE 3984 1728 4000 1728
            WIRE 4000 1568 4016 1568
            WIRE 4000 1568 4000 1728
        END BRANCH
        BEGIN BRANCH pl21
            WIRE 3408 1440 3440 1440
            BEGIN DISPLAY 3408 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdnen
            WIRE 3408 1504 3440 1504
            BEGIN DISPLAY 3408 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl03
            WIRE 3408 1664 3440 1664
            BEGIN DISPLAY 3408 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdne
            WIRE 3408 1728 3440 1728
            BEGIN DISPLAY 3408 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PL30
            WIRE 3408 1776 3440 1776
            BEGIN DISPLAY 3408 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pde
            WIRE 3408 1840 3440 1840
            BEGIN DISPLAY 3408 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pbi
            WIRE 4272 1536 4288 1536
            WIRE 4288 1536 4304 1536
            BEGIN DISPLAY 4288 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl12
            WIRE 3408 1552 3440 1552
            BEGIN DISPLAY 3408 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkoduee
            WIRE 3408 1616 3440 1616
            BEGIN DISPLAY 3408 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a307 3456 2000 R0
        BEGIN BRANCH pde
            WIRE 3680 1968 3712 1968
            WIRE 3712 1968 3712 1968
            BEGIN DISPLAY 3705 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nde
            WIRE 3424 1968 3456 1968
            BEGIN DISPLAY 3424 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a311 3456 2096 R0
        BEGIN BRANCH ndne
            WIRE 3680 2064 3696 2064
            WIRE 3696 2064 3712 2064
            BEGIN DISPLAY 3697 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdne
            WIRE 3424 2064 3440 2064
            WIRE 3440 2064 3456 2064
            BEGIN DISPLAY 3424 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE a353 3472 2272 R0
        BEGIN BRANCH nfgh
            WIRE 3440 2144 3472 2144
            BEGIN DISPLAY 3440 2144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nden
            WIRE 3440 2208 3472 2208
            BEGIN DISPLAY 3440 2208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdenfgh
            WIRE 3728 2176 3744 2176
            WIRE 3744 2176 3760 2176
            BEGIN DISPLAY 3752 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a367 4848 224 R0
        INSTANCE a368 4848 336 R0
        INSTANCE a369 4848 448 R0
        INSTANCE XLXI_72 4848 560 R0
        INSTANCE a358 4848 688 R0
        INSTANCE a359 4848 816 R0
        BEGIN BRANCH nbb
            WIRE 4816 96 4848 96
            BEGIN DISPLAY 4816 96 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 4816 160 4848 160
            BEGIN DISPLAY 4816 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbc
            WIRE 4816 208 4848 208
            BEGIN DISPLAY 4816 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 4816 272 4848 272
            BEGIN DISPLAY 4816 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nbd
            WIRE 4816 320 4848 320
            BEGIN DISPLAY 4816 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 4816 384 4848 384
            BEGIN DISPLAY 4816 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PA
            WIRE 4816 432 4848 432
            BEGIN DISPLAY 4816 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 4816 496 4848 496
            BEGIN DISPLAY 4816 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pca
            WIRE 5104 464 5136 464
        END BRANCH
        BEGIN BRANCH pcd
            WIRE 5104 352 5136 352
        END BRANCH
        BEGIN BRANCH pcc
            WIRE 5104 240 5136 240
        END BRANCH
        BEGIN BRANCH pcb
            WIRE 5104 128 5136 128
        END BRANCH
        BEGIN BRANCH pbe
            WIRE 4816 560 4848 560
            BEGIN DISPLAY 4816 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 4816 624 4848 624
            BEGIN DISPLAY 4816 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pbi
            WIRE 4816 688 4848 688
            BEGIN DISPLAY 4816 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 4816 752 4848 752
            BEGIN DISPLAY 4816 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pci
            WIRE 5104 720 5136 720
        END BRANCH
        BEGIN BRANCH pce
            WIRE 5104 592 5136 592
        END BRANCH
        IOMARKER 5136 128 pcb R0 28
        IOMARKER 5136 240 pcc R0 28
        IOMARKER 5136 352 pcd R0 28
        IOMARKER 5136 592 pce R0 28
        IOMARKER 5136 720 pci R0 28
        IOMARKER 5136 464 pca R0 28
        INSTANCE a310 4832 976 R0
        INSTANCE a335 4816 1184 R0
        INSTANCE a336 4816 1360 R0
        INSTANCE a339 4816 1456 R0
        INSTANCE a337 4816 1632 R0
        BEGIN BRANCH pndfs6
            WIRE 4800 944 4832 944
            BEGIN DISPLAY 4800 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdfs6
            WIRE 5056 944 5088 944
            WIRE 5088 944 5088 944
            BEGIN DISPLAY 5082 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pndfs6
            WIRE 4784 992 4816 992
            BEGIN DISPLAY 4784 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl12
            WIRE 4784 1056 4816 1056
            BEGIN DISPLAY 4784 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdnefgh
            WIRE 4784 1120 4816 1120
            BEGIN DISPLAY 4784 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdfs6
            WIRE 4784 1168 4816 1168
            BEGIN DISPLAY 4784 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl21
            WIRE 4784 1232 4816 1232
            BEGIN DISPLAY 4784 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdenfgh
            WIRE 4784 1296 4816 1296
            BEGIN DISPLAY 4784 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n9
            WIRE 5072 1232 5088 1232
            WIRE 5088 1232 5104 1232
            BEGIN DISPLAY 5094 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n8
            WIRE 5072 1056 5088 1056
            WIRE 5088 1056 5104 1056
            BEGIN DISPLAY 5092 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfgh
            WIRE 4784 1328 4816 1328
            BEGIN DISPLAY 4784 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pk
            WIRE 4784 1392 4816 1392
            BEGIN DISPLAY 4784 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n8
            WIRE 4784 1440 4816 1440
            BEGIN DISPLAY 4784 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH n9
            WIRE 4784 1504 4816 1504
            BEGIN DISPLAY 4784 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfghk
            WIRE 4784 1568 4816 1568
            BEGIN DISPLAY 4784 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfghasak
            WIRE 5072 1504 5104 1504
            BEGIN DISPLAY 5104 1504 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfghk
            WIRE 5072 1360 5088 1360
            WIRE 5088 1360 5104 1360
            BEGIN DISPLAY 5092 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE a334 4752 1920 R0
        INSTANCE a308 4752 2016 R0
        INSTANCE a309 4752 2112 R0
        INSTANCE a354 4736 2288 R0
        BEGIN BRANCH nden
            WIRE 4720 1728 4752 1728
            BEGIN DISPLAY 4720 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndne
            WIRE 4720 1792 4752 1792
            BEGIN DISPLAY 4720 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nk
            WIRE 4720 1856 4752 1856
            BEGIN DISPLAY 4720 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pkoduee
            WIRE 5008 1792 5024 1792
            WIRE 5024 1792 5040 1792
            BEGIN DISPLAY 5029 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfgh
            WIRE 4720 1984 4752 1984
            BEGIN DISPLAY 4720 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ndne
            WIRE 4704 2160 4736 2160
            BEGIN DISPLAY 4704 2160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nfgh
            WIRE 4704 2224 4736 2224
            BEGIN DISPLAY 4704 2224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pdnefgh
            WIRE 4992 2192 5008 2192
            WIRE 5008 2192 5024 2192
            BEGIN DISPLAY 5007 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nk
            WIRE 4976 2080 4992 2080
            WIRE 4992 2080 5008 2080
            BEGIN DISPLAY 4998 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pfgh
            WIRE 4976 1984 5008 1984
            WIRE 5008 1984 5008 1984
            BEGIN DISPLAY 5001 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pk
            WIRE 4720 2080 4752 2080
        END BRANCH
        IOMARKER 4720 2080 pk R180 28
        BEGIN BRANCH pcwpls4
            WIRE 1856 1952 1888 1952
        END BRANCH
        IOMARKER 1856 1952 pcwpls4 R180 28
        BEGIN BRANCH ne
            WIRE 1168 1632 1232 1632
            BEGIN DISPLAY 1232 1632 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH nd
            WIRE 1152 1840 1216 1840
            WIRE 1216 1840 1232 1840
            BEGIN DISPLAY 1211 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl21
            WIRE 1888 1072 1904 1072
            WIRE 1904 1072 1936 1072
            BEGIN DISPLAY 1906 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pl12
            WIRE 1888 400 1936 400
            BEGIN DISPLAY 1936 400 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ncmpls6
            WIRE 4560 80 4608 80
        END BRANCH
        IOMARKER 4560 80 ncmpls6 R180 28
        BEGIN BRANCH pndfs6
            WIRE 4544 896 4608 896
        END BRANCH
        IOMARKER 4544 896 pndfs6 R180 28
    END SHEET
END SCHEMATIC
