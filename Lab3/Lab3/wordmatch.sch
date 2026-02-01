VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datacomp(55:0)
        SIGNAL wildcard(6:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL match
        SIGNAL datain(111:0)
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Output match
        PORT Input datain(111:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 29 7 23 45
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_16 or8
            PIN I0 XLXN_24
            PIN I1 XLXN_23
            PIN I2 XLXN_22
            PIN I3 XLXN_21
            PIN I4 XLXN_20
            PIN I5 XLXN_19
            PIN I6 XLXN_18
            PIN I7 XLXN_17
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 960 864 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 960 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 960 1392 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 960 1648 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 960 1904 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 960 2160 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 960 2416 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 960 592 R0
        END INSTANCE
        BEGIN BRANCH datacomp(55:0)
            WIRE 688 432 752 432
            WIRE 752 432 960 432
            WIRE 752 432 752 704
            WIRE 752 704 752 976
            WIRE 752 976 752 1232
            WIRE 752 1232 752 1488
            WIRE 752 1488 752 1744
            WIRE 752 1744 752 2000
            WIRE 752 2000 752 2256
            WIRE 752 2256 960 2256
            WIRE 752 2000 960 2000
            WIRE 752 1744 960 1744
            WIRE 752 1488 960 1488
            WIRE 752 1232 960 1232
            WIRE 752 976 960 976
            WIRE 752 704 960 704
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 720 560 784 560
            WIRE 784 560 960 560
            WIRE 784 560 784 832
            WIRE 784 832 960 832
            WIRE 784 832 784 1104
            WIRE 784 1104 960 1104
            WIRE 784 1104 784 1360
            WIRE 784 1360 960 1360
            WIRE 784 1360 784 1616
            WIRE 784 1616 960 1616
            WIRE 784 1616 784 1872
            WIRE 784 1872 784 2128
            WIRE 784 2128 784 2384
            WIRE 784 2384 960 2384
            WIRE 784 2128 960 2128
            WIRE 784 1872 960 1872
        END BRANCH
        BEGIN BRANCH datain(55:0)
            WIRE 832 496 960 496
            BEGIN DISPLAY 832 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 832 768 960 768
            BEGIN DISPLAY 832 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 816 1040 960 1040
            BEGIN DISPLAY 816 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 816 1296 960 1296
            BEGIN DISPLAY 816 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 816 1552 960 1552
            BEGIN DISPLAY 816 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 816 1808 960 1808
            BEGIN DISPLAY 816 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 800 2064 960 2064
            BEGIN DISPLAY 800 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 800 2320 960 2320
            BEGIN DISPLAY 800 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 688 432 datacomp(55:0) R180 28
        IOMARKER 720 560 wildcard(6:0) R180 28
        INSTANCE XLXI_16 1840 1616 R0
        BEGIN BRANCH XLXN_17
            WIRE 1344 432 1840 432
            WIRE 1840 432 1840 1104
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1344 704 1584 704
            WIRE 1584 704 1584 1168
            WIRE 1584 1168 1840 1168
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1344 976 1568 976
            WIRE 1568 976 1568 1232
            WIRE 1568 1232 1840 1232
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1344 1232 1552 1232
            WIRE 1552 1232 1552 1296
            WIRE 1552 1296 1840 1296
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1344 1488 1584 1488
            WIRE 1584 1360 1584 1488
            WIRE 1584 1360 1840 1360
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1344 1744 1600 1744
            WIRE 1600 1424 1600 1744
            WIRE 1600 1424 1840 1424
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1344 2000 1616 2000
            WIRE 1616 1488 1616 2000
            WIRE 1616 1488 1840 1488
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1344 2256 1840 2256
            WIRE 1840 1552 1840 2256
        END BRANCH
        BEGIN BRANCH match
            WIRE 2096 1328 2112 1328
            WIRE 2112 1328 2160 1328
        END BRANCH
        IOMARKER 2160 1328 match R0 28
        BEGIN BRANCH datain(111:0)
            WIRE 384 1120 592 1120
        END BRANCH
        IOMARKER 384 1120 datain(111:0) R180 28
    END SHEET
END SCHEMATIC
