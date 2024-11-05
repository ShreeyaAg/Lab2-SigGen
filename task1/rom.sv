module rom #(
    parameter   ADDRESS_WIDTH = 8,
                DATA_WIDTH = 8
)(
    input logic                     clk,
    input logic [ADDRESS_WIDTH-1:0] addr,
    output logic [DATA_WIDTH-1:0]    dout
);

logic [DATA_WIDTH-1:0] rom_array [2**ADDRESS_WIDTH-1:0];
//data width = element in the array, address width = number of elements

initial begin
    $display("Loading rom.");
    $readmemh("sinerom.mem", rom_array);
end
//readmemh allows ROM to be loaded with the contents stored ina  file
//with numbers stored as hex code

always_ff @(posedge clk)
    //output is synchronous (every clock cycle)
    dout <= rom_array [addr]; //dout = element in the address in rom-array

endmodule
