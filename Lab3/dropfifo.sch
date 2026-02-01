VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL lastword
        SIGNAL firstword
        SIGNAL fifowrite
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL drop_pkt
        SIGNAL clk
        SIGNAL raddr(7:0)
        SIGNAL XLXN_14(7:0)
        SIGNAL waddr(7:0)
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_19
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL fiforead
        SIGNAL XLXN_25
        SIGNAL rst
        SIGNAL XLXN_27
        SIGNAL valid_data
        SIGNAL in_fifo0(71:0)
        SIGNAL out_fifo(71:0)
        PORT Input lastword
        PORT Input firstword
        PORT Input fifowrite
        PORT Input drop_pkt
        PORT Input clk
        PORT Input in_fifo(71:0)
        PORT Input fiforead
        PORT Input rst
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF mem72bit
            TIMESTAMP 2026 1 30 5 53 7
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C clk
            PIN CE XLXN_17
            PIN CLR XLXN_16
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_14(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 or2
            PIN I0 XLXN_6
            PIN I1 XLXN_7
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_10 and2b1
            PIN I0 XLXN_21
            PIN I1 XLXN_8
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_6 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_27
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_14 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_15 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_14(7:0)
            PIN EQ XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_7 cb8cle
            PIN C clk
            PIN CE XLXN_25
            PIN CLR rst
            PIN D(7:0) XLXN_14(7:0)
            PIN L XLXN_21
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_8 cb8ce
            PIN C clk
            PIN CE XLXN_27
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_18 and3b2
            PIN I0 XLXN_23
            PIN I1 XLXN_22
            PIN I2 fiforead
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_19 reg9B
            PIN ce XLXN_19
            PIN clk clk
            PIN clr XLXN_16
            PIN d(71:0) in_fifo(71:0)
            PIN q(71:0) in_fifo0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_22 vcc
            PIN P XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_23 mem72bit
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea XLXN_25
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 432 512 R0
        INSTANCE XLXI_2 432 912 R0
        INSTANCE XLXI_5 464 1328 R0
        INSTANCE XLXI_9 960 720 R0
        INSTANCE XLXI_10 1312 816 R0
        INSTANCE XLXI_3 1248 512 R0
        INSTANCE XLXI_14 960 1680 R0
        INSTANCE XLXI_15 960 2064 R0
        INSTANCE XLXI_8 2064 1888 R0
        INSTANCE XLXI_18 1552 1584 R0
        BEGIN BRANCH lastword
            WIRE 288 656 432 656
        END BRANCH
        BEGIN BRANCH firstword
            WIRE 288 256 432 256
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1104 256 1248 256
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 816 656 960 656
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 816 256 880 256
            WIRE 880 256 880 592
            WIRE 880 592 960 592
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1216 624 1264 624
            WIRE 1264 624 1264 688
            WIRE 1264 688 1312 688
        END BRANCH
        INSTANCE XLXI_4 448 2448 R0
        BEGIN BRANCH drop_pkt
            WIRE 304 2192 448 2192
        END BRANCH
        BEGIN BRANCH clk
            WIRE 304 2320 368 2320
            WIRE 368 2320 448 2320
            WIRE 368 384 432 384
            WIRE 368 384 368 480
            WIRE 368 480 368 784
            WIRE 368 784 432 784
            WIRE 368 784 368 864
            WIRE 368 864 368 1200
            WIRE 368 1200 368 2320
            WIRE 368 1200 464 1200
            WIRE 368 864 1712 864
            WIRE 368 480 832 480
            WIRE 832 384 832 480
            WIRE 832 384 1248 384
            WIRE 1712 448 1712 864
            WIRE 1712 448 1984 448
            WIRE 1984 448 2176 448
            WIRE 1984 448 1984 1328
            WIRE 1984 1328 2000 1328
            WIRE 2000 1328 2080 1328
            WIRE 1920 1328 1984 1328
            WIRE 1920 1328 1920 1760
            WIRE 1920 1760 2064 1760
            WIRE 1920 1760 1920 2176
            WIRE 1920 2176 2064 2176
            WIRE 2000 928 2000 1328
            WIRE 2000 928 2512 928
            WIRE 2512 928 2512 1392
            WIRE 2512 1392 2640 1392
            WIRE 2640 1392 2736 1392
            WIRE 2640 1392 2640 1616
            WIRE 2640 1616 2736 1616
        END BRANCH
        IOMARKER 304 2192 drop_pkt R180 28
        IOMARKER 304 2320 clk R180 28
        IOMARKER 288 256 firstword R180 28
        IOMARKER 288 656 lastword R180 28
        IOMARKER 1104 256 fifowrite R180 28
        BEGIN INSTANCE XLXI_19 2176 640 R0
        END INSTANCE
        BEGIN BRANCH raddr(7:0)
            WIRE 944 1552 960 1552
            WIRE 944 1552 944 1632
            WIRE 944 1632 944 1744
            WIRE 944 1744 960 1744
            WIRE 944 1632 1408 1632
            WIRE 1408 1632 1408 1920
            WIRE 1408 1920 2592 1920
            WIRE 2448 1632 2592 1632
            WIRE 2592 1632 2592 1920
            WIRE 2592 1424 2592 1632
            WIRE 2592 1424 2736 1424
        END BRANCH
        BEGIN BRANCH XLXN_14(7:0)
            WIRE 848 1072 944 1072
            WIRE 944 1072 2080 1072
            WIRE 944 1072 944 1088
            WIRE 864 1088 944 1088
            WIRE 864 1088 864 1936
            WIRE 864 1936 960 1936
        END BRANCH
        INSTANCE XLXI_7 2080 1456 R0
        BEGIN BRANCH waddr(7:0)
            WIRE 416 1072 464 1072
            WIRE 416 1072 416 1360
            WIRE 416 1360 848 1360
            WIRE 848 1360 960 1360
            WIRE 848 1360 848 2336
            WIRE 848 2336 2544 2336
            WIRE 2464 1072 2544 1072
            WIRE 2544 1072 2544 2336
            WIRE 2544 1072 2624 1072
            WIRE 2624 1072 2624 1200
            WIRE 2624 1200 2736 1200
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 352 496 352 1296
            WIRE 352 1296 464 1296
            WIRE 352 496 2176 496
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 448 944 448 1136
            WIRE 448 1136 464 1136
            WIRE 448 944 1648 944
            WIRE 1568 720 1648 720
            WIRE 1648 720 1648 944
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2128 352 2160 352
            WIRE 2160 352 2176 352
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1936 224 1936 400
            WIRE 1936 400 2176 400
        END BRANCH
        INSTANCE XLXI_22 1872 224 R0
        IOMARKER 2128 352 in_fifo(71:0) R180 28
        BEGIN BRANCH XLXN_21
            WIRE 832 2192 928 2192
            WIRE 928 1200 928 2192
            WIRE 928 1200 1232 1200
            WIRE 1232 1200 2080 1200
            WIRE 1232 752 1312 752
            WIRE 1232 752 1232 1200
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1344 1456 1552 1456
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1344 1840 1440 1840
            WIRE 1440 1520 1440 1840
            WIRE 1440 1520 1552 1520
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1472 1392 1552 1392
        END BRANCH
        IOMARKER 1472 1392 fiforead R180 28
        BEGIN BRANCH XLXN_25
            WIRE 1632 256 1856 256
            WIRE 1856 256 1856 1264
            WIRE 1856 1264 2080 1264
            WIRE 1856 1264 1856 1520
            WIRE 1856 1520 2528 1520
            WIRE 2528 1264 2528 1520
            WIRE 2528 1264 2736 1264
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2016 1424 2048 1424
            WIRE 2048 1424 2080 1424
            WIRE 2048 1424 2048 1856
            WIRE 2048 1856 2064 1856
            WIRE 2048 1856 2048 2272
            WIRE 2048 2272 2064 2272
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1808 1456 1936 1456
            WIRE 1936 1456 1936 1696
            WIRE 1936 1696 2064 1696
            WIRE 1936 1696 1936 2048
            WIRE 1936 2048 2064 2048
        END BRANCH
        INSTANCE XLXI_6 2064 2304 R0
        IOMARKER 2016 1424 rst R180 28
        BEGIN INSTANCE XLXI_23 2736 1152 R0
        END INSTANCE
        BEGIN BRANCH valid_data
            WIRE 2448 2048 2640 2048
        END BRANCH
        IOMARKER 2640 2048 valid_data R0 28
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2560 352 2640 352
            WIRE 2640 352 2640 1232
            WIRE 2640 1232 2736 1232
        END BRANCH
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3024 1424 3200 1424
        END BRANCH
        IOMARKER 3200 1424 out_fifo(71:0) R0 28
    END SHEET
END SCHEMATIC
