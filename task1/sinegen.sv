module sinegen #( //initialise parameters
    parameter   A_WIDTH = 8,
                D_WIDTH = 8
)(
    //INTERFACE SIGNALS
    input logic                 clk, //clock
    input logic                 rst, //reset
    input logic                 en,  //enable
    input logic [D_WIDTH-1:0]   incr,//increment for addr counter
    output logic [D_WIDTH-1:0]  dout //output data
);

    logic [A_WIDTH-1:0]         address; //interconnect wire between counter and rom module

counter addrCounter( //instantiate counter module
    .clk (clk),
    .rst (rst),
    .en (en),
    .incr (incr),
    .count (address)
);

rom sineRom( //instantiate ROM module
    .clk  (clk),
    .addr (address),
    .dout (dout)
);

endmodule
