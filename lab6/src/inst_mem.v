module inst_mem(
	input clka,
	input [8:0] addra,
	input [1:0] threada,
	output [31:0] douta,
	
	input [8:0] addrb,
	input [1:0] threadb,
	output [31:0] doutb 
);

reg [31:0] memory [0:511];
integer i;

wire [6:0] adra = addra[6:0];
wire [6:0] adrb = addrb[6:0];

initial begin
    for (i = 0;    i < 205;  i = i + 1) memory[i] = 32'hE1A00000;
    for (i = 205;  i < 410;  i = i + 1) memory[i] = 32'hE1A00000;
    for (i = 410;  i < 512;  i = i + 1) memory[i] = 32'hE1A00000;

// --- Thread 0: Bubble Sort (已成功，保持原樣) ---
    memory[0] = 32'hE3A01009; // MOV R1, #9
    memory[1] = 32'hE3A02000; // MOV R2, #0
    memory[2] = 32'hE3A03000; // MOV R3, #0
    memory[3] = 32'hE5924000; // LDR R4, [R2]
    memory[4] = 32'hE2825004; // ADD R5, R2, #4
    memory[5] = 32'hE5956000; // LDR R6, [R5]
    memory[6] = 32'hE1540006; // CMP R4, R6
    memory[7] = 32'hDA000003; // BLE +3
    memory[8] = 32'hE5826000; // STR R6, [R2]
    memory[9] = 32'hE5854000; // STR R4, [R5]
    memory[11]= 32'hE2822004; // j += 4
    memory[12]= 32'hE2833001; // count++
    memory[13]= 32'hE1530001; // CMP count, R1
    memory[14]= 32'hBBFFFFF5; // BLT -11
    memory[15]= 32'hE2511001; // SUBS R1, R1, #1
    memory[17]= 32'hCAFFFFF0; // BGT -16
    memory[18]= 32'hEAFFFFFE; // HALT

    // --- Thread 1: Shifter & Logic Test ---
    // 測試 MOV 與 LSL, AND
    memory[128] = 32'hE3A01055; // MOV R1, #0x55
    memory[129] = 32'hE1A02101; // MOV R2, R1, LSL #2 (R2 = 0x154)
    memory[130] = 32'hE0013002; // AND R3, R1, R2     (R3 = 0x54)
    memory[131] = 32'hE5803000; // STR R3, [R0]       (存入 DataMem[0])
    memory[132] = 32'hEAFFFFFE; // HALT

    // --- Thread 2: Function Call (BL/BX) Test ---
    memory[256] = 32'hE3A01000; // MOV R1, #0        (初始化累加器) [cite: 3, 34]
	memory[257] = 32'hE3A02005; // MOV R2, #5        (設定上限) [cite: 3, 34]
// --- LOOP START (Index 1026) ---
	memory[258] = 32'hE2811001; // ADD R1, R1, #1    (R1 = R1 + 1) [cite: 2, 6]
	memory[259] = 32'hE1510002; // CMP R1, R2        (比較 R1 與 5) [cite: 2, 7]
	memory[260] = 32'h1AFFFFFE; // BNE -2            (若不相等則跳回 1026) [cite: 37, 65, 67]
	memory[261] = 32'hE5801000; // STR R1, [R0]       (將結果 5 存入 DataMem[0]) [cite: 41, 82]
	memory[262] = 32'hEAFFFFFE;

    // --- Thread 3: Full Conditional Execution Test ---
    // 測試 CMP 與 MOVEQ (只有條件成立才會寫入)
    memory[384] = 32'hE3A010AA; // MOV R1, #0xAA
    memory[385] = 32'hE3A020AA; // MOV R2, #0xAA
    memory[386] = 32'hE1510002; // CMP R1, R2 (Z flag = 1)
    memory[387] = 32'h03A03001; // MOVEQ R3, #1 (條件成立，寫入 1)
    memory[388] = 32'h13A04001; // MOVNE R4, #1 (條件不成立，R4 保持 0)
    memory[389] = 32'hE5803008; // STR R3, [R0, #8]
    memory[390] = 32'hEAFFFFFE; // HALT

end
	


reg [31:0] douta_reg;
reg [31:0] doutb_reg;

always @(posedge clka) begin
    douta_reg <= memory[{threada, adra}];
    doutb_reg <= memory[{threadb, adrb}];
end

assign douta = douta_reg;
assign doutb = doutb_reg;

endmodule
