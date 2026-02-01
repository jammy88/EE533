VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_14
        SIGNAL XLXN_16
        SIGNAL XLXN_18
        SIGNAL XLXN_21
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_32
        SIGNAL match
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL amask(3)
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(4)
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        PORT Output match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_5 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_14
            PIN O XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_6 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_16
            PIN O XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_7 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_18
            PIN O XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_21
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_10 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_29
            PIN O XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_30
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_32
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_15 and7
            PIN I0 XLXN_35
            PIN I1 XLXN_36
            PIN I2 XLXN_37
            PIN I3 XLXN_44
            PIN I4 XLXN_43
            PIN I5 XLXN_42
            PIN I6 XLXN_41
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 464 992 R0
        INSTANCE XLXI_4 464 2144 R0
        INSTANCE XLXI_3 464 1760 R0
        INSTANCE XLXI_2 464 1376 R0
        INSTANCE XLXI_5 1056 896 R0
        INSTANCE XLXI_6 1056 1280 R0
        INSTANCE XLXI_7 1072 1664 R0
        INSTANCE XLXI_8 1056 2048 R0
        BEGIN BRANCH XLXN_14
            WIRE 848 768 1056 768
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 848 1152 1056 1152
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 848 1536 1072 1536
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 848 1920 1056 1920
        END BRANCH
        INSTANCE XLXI_9 1536 992 R0
        INSTANCE XLXI_10 1536 1376 R0
        INSTANCE XLXI_11 1536 1760 R0
        INSTANCE XLXI_12 2064 896 R0
        INSTANCE XLXI_13 2064 1280 R0
        INSTANCE XLXI_14 2064 1664 R0
        BEGIN BRANCH XLXN_29
            WIRE 1920 768 2064 768
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1920 1152 2064 1152
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1920 1536 2064 1536
        END BRANCH
        INSTANCE XLXI_15 2576 1488 R0
        BEGIN BRANCH match
            WIRE 2832 1232 2976 1232
        END BRANCH
        IOMARKER 2976 1232 match R0 28
        BEGIN BRANCH XLXN_35
            WIRE 2320 1568 2576 1568
            WIRE 2576 1424 2576 1568
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 2320 1184 2448 1184
            WIRE 2448 1184 2448 1360
            WIRE 2448 1360 2576 1360
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 2320 800 2464 800
            WIRE 2464 800 2464 1296
            WIRE 2464 1296 2576 1296
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 1312 800 1376 800
            WIRE 1376 800 1376 976
            WIRE 1376 976 1984 976
            WIRE 1984 976 1984 1040
            WIRE 1984 1040 2576 1040
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 1312 1184 1392 1184
            WIRE 1392 960 1392 1184
            WIRE 1392 960 1968 960
            WIRE 1968 960 1968 1104
            WIRE 1968 1104 2576 1104
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 1328 1568 1408 1568
            WIRE 1408 1568 1408 1744
            WIRE 1408 1744 2400 1744
            WIRE 2400 1168 2400 1744
            WIRE 2400 1168 2576 1168
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1312 1952 2336 1952
            WIRE 2336 1232 2336 1952
            WIRE 2336 1232 2576 1232
        END BRANCH
        BEGIN BRANCH a(55:0)
            WIRE 128 384 128 480
            WIRE 128 480 128 672
            WIRE 128 672 128 1056
            WIRE 128 1056 128 1440
            WIRE 128 1440 128 1824
            WIRE 128 1824 128 1920
            WIRE 128 1920 128 2112
            WIRE 128 2112 128 2288
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 288 384 288 560
            WIRE 288 560 288 864
            WIRE 288 864 288 1248
            WIRE 288 1248 288 1632
            WIRE 288 1632 288 1952
            WIRE 288 1952 288 2016
            WIRE 288 2016 288 2160
            WIRE 288 2160 288 2288
        END BRANCH
        IOMARKER 128 384 a(55:0) R270 28
        IOMARKER 288 384 b(55:0) R270 28
        BEGIN BRANCH amask(6:0)
            WIRE 848 2288 864 2288
            WIRE 864 368 864 512
            WIRE 864 512 864 832
            WIRE 864 832 864 1216
            WIRE 864 1216 864 1600
            WIRE 864 1600 864 1760
            WIRE 864 1760 864 1984
            WIRE 864 1984 864 2144
            WIRE 864 2144 864 2288
        END BRANCH
        BUSTAP 128 672 224 672
        BUSTAP 288 864 384 864
        BUSTAP 288 1248 384 1248
        BUSTAP 128 1056 224 1056
        BUSTAP 128 1440 224 1440
        BUSTAP 288 1632 384 1632
        BUSTAP 128 1824 224 1824
        BUSTAP 288 2016 384 2016
        BEGIN BRANCH a(55:48)
            WIRE 224 672 464 672
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 384 864 464 864
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 224 1056 464 1056
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 384 1248 464 1248
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 224 1440 464 1440
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 384 1632 464 1632
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 224 1824 464 1824
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 384 2016 464 2016
        END BRANCH
        IOMARKER 864 368 amask(6:0) R270 28
        BUSTAP 864 832 960 832
        BUSTAP 864 1216 960 1216
        BUSTAP 864 1600 960 1600
        BUSTAP 864 1984 960 1984
        BEGIN BRANCH amask(3)
            WIRE 960 1984 1056 1984
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 960 832 1056 832
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 960 1216 1056 1216
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 960 1600 1072 1600
        END BRANCH
        BUSTAP 864 512 960 512
        BUSTAP 864 2144 960 2144
        BUSTAP 864 1760 960 1760
        BEGIN BRANCH amask(2)
            WIRE 960 512 1984 512
            WIRE 1984 512 1984 832
            WIRE 1984 832 2064 832
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 960 1760 1984 1760
            WIRE 1984 1216 1984 1760
            WIRE 1984 1216 2064 1216
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 960 2144 1968 2144
            WIRE 1968 1600 1968 2144
            WIRE 1968 1600 2064 1600
        END BRANCH
        BUSTAP 128 480 224 480
        BUSTAP 288 560 384 560
        BUSTAP 128 1920 224 1920
        BUSTAP 288 1952 384 1952
        BUSTAP 128 2112 224 2112
        BUSTAP 288 2160 384 2160
        BEGIN BRANCH a(23:16)
            WIRE 224 480 976 480
            WIRE 976 480 976 672
            WIRE 976 672 1536 672
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 384 560 992 560
            WIRE 992 560 992 864
            WIRE 992 864 1536 864
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 224 1920 272 1920
            WIRE 272 1920 272 2096
            WIRE 272 2096 1040 2096
            WIRE 1040 1056 1040 2096
            WIRE 1040 1056 1536 1056
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 384 1952 448 1952
            WIRE 448 1952 448 2112
            WIRE 448 2112 976 2112
            WIRE 976 1248 976 2112
            WIRE 976 1248 1536 1248
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 224 2112 272 2112
            WIRE 272 2112 272 2224
            WIRE 272 2224 1024 2224
            WIRE 1024 1440 1024 2224
            WIRE 1024 1440 1536 1440
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 384 2160 448 2160
            WIRE 448 2160 448 2208
            WIRE 448 2208 1008 2208
            WIRE 1008 1632 1008 2208
            WIRE 1008 1632 1536 1632
        END BRANCH
    END SHEET
END SCHEMATIC
