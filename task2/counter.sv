module counter #(
    parameter WIDTH = 8
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
  else if(en) count <= count + 3;
  // if enable true than increase count by incr
  else count <= count;
  //reincluded enable using if statement

endmodule 
