VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ce
        SIGNAL clk
        SIGNAL clr
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL d(71:64)
        SIGNAL d(63:48)
        SIGNAL d(47:32)
        SIGNAL q(47:32)
        SIGNAL q(63:48)
        SIGNAL q(71:64)
        SIGNAL q(31:16)
        SIGNAL q(15:0)
        SIGNAL d(31:16)
        SIGNAL d(15:0)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        PORT Input d(71:0)
        PORT Output q(71:0)
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1600 720 R0
        INSTANCE XLXI_2 1600 1088 R0
        INSTANCE XLXI_3 1600 1456 R0
        INSTANCE XLXI_4 1600 1824 R0
        INSTANCE XLXI_5 1600 2192 R0
        BEGIN BRANCH ce
            WIRE 1520 2000 1600 2000
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1504 2064 1600 2064
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1504 2160 1600 2160
        END BRANCH
        BEGIN BRANCH d(71:0)
            WIRE 1232 416 1232 464
            WIRE 1232 464 1232 832
            WIRE 1232 832 1232 1200
            WIRE 1232 1200 1232 1568
            WIRE 1232 1568 1232 1936
            WIRE 1232 1936 1232 2304
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 2224 400 2224 448
            WIRE 2224 448 2224 464
            WIRE 2224 464 2224 528
            WIRE 2224 528 2224 832
            WIRE 2224 832 2224 1200
            WIRE 2224 1200 2224 1568
            WIRE 2224 1568 2224 1936
            WIRE 2224 1936 2224 2240
            WIRE 2224 528 2352 528
        END BRANCH
        BUSTAP 1232 464 1328 464
        BUSTAP 1232 832 1328 832
        BUSTAP 1232 1200 1328 1200
        BUSTAP 1232 1936 1328 1936
        BUSTAP 1232 1568 1328 1568
        BUSTAP 2224 464 2128 464
        BUSTAP 2224 832 2128 832
        BUSTAP 2224 1200 2128 1200
        BUSTAP 2224 1568 2128 1568
        BUSTAP 2224 1936 2128 1936
        BEGIN BRANCH d(71:64)
            WIRE 1328 464 1600 464
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1328 832 1600 832
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1328 1200 1600 1200
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1984 1200 2128 1200
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1984 832 2128 832
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1984 464 2128 464
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1984 1568 2128 1568
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1984 1936 2128 1936
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1328 1568 1600 1568
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1328 1936 1600 1936
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1536 1792 1600 1792
            BEGIN DISPLAY 1536 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1552 1696 1600 1696
            BEGIN DISPLAY 1552 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1520 1632 1600 1632
            BEGIN DISPLAY 1520 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1504 1424 1600 1424
            BEGIN DISPLAY 1504 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1504 1328 1600 1328
            BEGIN DISPLAY 1504 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1504 1264 1520 1264
            WIRE 1520 1264 1600 1264
            BEGIN DISPLAY 1504 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1520 528 1600 528
            BEGIN DISPLAY 1520 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1520 592 1600 592
            BEGIN DISPLAY 1520 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1520 688 1600 688
            BEGIN DISPLAY 1520 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1520 896 1600 896
            BEGIN DISPLAY 1520 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1520 960 1600 960
            BEGIN DISPLAY 1520 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1504 1056 1600 1056
            BEGIN DISPLAY 1504 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1520 2000 ce R180 28
        IOMARKER 1504 2064 clk R180 28
        IOMARKER 1504 2160 clr R180 28
        IOMARKER 1232 416 d(71:0) R270 28
        IOMARKER 2352 528 q(71:0) R0 28
    END SHEET
END SCHEMATIC
