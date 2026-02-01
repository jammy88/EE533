VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_9(111:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL XLXN_12
        SIGNAL match_en
        SIGNAL XLXN_16
        SIGNAL mrst
        SIGNAL XLXN_18
        SIGNAL hwregA(63:0)
        SIGNAL pipe0(71:0)
        SIGNAL pipe1(71:0)
        SIGNAL ce
        SIGNAL clk
        SIGNAL match
        PORT Input match_en
        PORT Input mrst
        PORT Input hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Input ce
        PORT Input clk
        PORT Output match
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 30 0 54 48
            RECTANGLE N 64 -320 320 -116 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -240 0 -240 
            LINE N 64 -192 0 -192 
            LINE N 64 -144 0 -144 
            RECTANGLE N 320 -300 384 -276 
            LINE N 384 -288 320 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 29 6 45 29
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 29 23 59 54
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
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
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_9(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datain(111:0) XLXN_9(111:0)
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_5 fdce
            PIN C clk
            PIN CE XLXN_16
            PIN CLR XLXN_18
            PIN D XLXN_16
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_7 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_12
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_6 reg9B
            PIN ce ce
            PIN clk clk
            PIN clr XLXN_18
            PIN d(71:0) pipe1(71:0)
            PIN q(71:0) pipe0(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 592 992 R0
        END INSTANCE
        BEGIN BRANCH pipe0(47:0)
            WIRE 384 896 592 896
            BEGIN DISPLAY 384 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 384 960 592 960
            BEGIN DISPLAY 384 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_9(111:0)
            WIRE 976 896 1296 896
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1072 960 1296 960
            BEGIN DISPLAY 1072 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 1552 1600 R0
        INSTANCE XLXI_7 1792 1088 R0
        INSTANCE XLXI_5 2208 1216 R0
        BEGIN BRANCH XLXN_12
            WIRE 1680 896 1792 896
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1552 1120 1680 1120
            WIRE 1680 960 1792 960
            WIRE 1680 960 1680 1120
        END BRANCH
        IOMARKER 1552 1120 match_en R180 28
        BEGIN BRANCH XLXN_16
            WIRE 2048 960 2128 960
            WIRE 2128 960 2208 960
            WIRE 2128 960 2128 1024
            WIRE 2128 1024 2208 1024
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1440 1344 1552 1344
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 544 720 592 720
            WIRE 544 720 544 1600
            WIRE 544 1600 2208 1600
            WIRE 1936 1344 2208 1344
            WIRE 2208 1344 2208 1600
            WIRE 2208 1184 2208 1344
        END BRANCH
        IOMARKER 1440 1344 mrst R180 28
        BEGIN INSTANCE XLXI_3 1296 1056 R0
        END INSTANCE
        BEGIN BRANCH hwregA(62:56)
            WIRE 1072 1024 1296 1024
            BEGIN DISPLAY 1072 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 592 864 R0
        END INSTANCE
        BEGIN BRANCH hwregA(63:0)
            WIRE 608 416 848 416
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 976 576 1072 576
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 528 576 592 576
        END BRANCH
        BEGIN BRANCH ce
            WIRE 512 624 592 624
        END BRANCH
        BEGIN BRANCH clk
            WIRE 512 672 576 672
            WIRE 576 672 592 672
            WIRE 576 672 576 1040
            WIRE 576 1040 576 1472
            WIRE 576 1472 1552 1472
            WIRE 576 1040 592 1040
            WIRE 592 1040 592 1088
            WIRE 592 1088 2208 1088
        END BRANCH
        IOMARKER 608 416 hwregA(63:0) R180 28
        IOMARKER 528 576 pipe1(71:0) R180 28
        IOMARKER 512 624 ce R180 28
        IOMARKER 512 672 clk R180 28
        BEGIN BRANCH match
            WIRE 1728 832 1728 1024
            WIRE 1728 1024 1792 1024
            WIRE 1728 832 2624 832
            WIRE 2624 832 2624 960
            WIRE 2624 960 2688 960
            WIRE 2592 960 2624 960
        END BRANCH
        IOMARKER 2688 960 match R0 28
    END SHEET
END SCHEMATIC
