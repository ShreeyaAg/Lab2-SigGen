module counter #(
    parameter WIDTH = 9 //9 allows for 512 bits
)(
    //interface signals 
    input logic              clk, //clock
    input logic              rst, //reset
    input logic              en, //counter enable
    input logic [WIDTH-1:0]  incr,
    //add increment input
    output logic [WIDTH-1:0] count //count ouput
);

always_ff @ (posedge clk)
  if(rst) count <= {WIDTH{1'b0}};
  //in all logic you should have a reset 
  else if(en) count <= count + incr;
  // if enable true than increase count by incr
  else count <= count;
  //reincluded enable using if statement

endmodule 
