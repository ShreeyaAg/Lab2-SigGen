module sigdelay #(
    parameter   A_WIDTH = 9,
                D_WIDTH = 8
)(
    //interface signals
    input logic                 clk,
    input logic                 rst,
    input logic                 en,
    input logic                 wr_en,
    input logic                 rd_en,
    input logic [A_WIDTH-1:0]   incr,
    input logic [A_WIDTH-1:0]   offset, //needs to be on write address as havent read from new address yet
    input logic [D_WIDTH-1:0]   din,
    output logic [D_WIDTH-1:0]  dout
);

logic   [A_WIDTH-1:0]           address; //interconnect wire

counter addrCounter(
    .clk(clk),
    .en(en),
    .rst(rst),
    .incr(incr),
    .count (address)
);

ram2port sigRam(
    .clk(clk),
    .wr_addr (address+offset),
    .rd_addr (address),
    .wr_en (wr_en),
    .rd_en (rd_en),
    .din (din),
    .dout (dout)
);

endmodule
