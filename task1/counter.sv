module counter #(
    parameter WIDTH = 8
)(
    //interface signals
    input logic     clk,            //clock
    input logic     rst,            //reset
    input logic     en,             //counter enable
    input logic     incr,
    output logic [WIDTH-1:0] count  //count output
);

always_ff @ (posedge clk)
  if(rst) count <= {WIDTH{1'b0}};
  else if(en) count <= count + incr;
  // if enable true than increase count by incr
  else count <= count;
  //reincluded enable using if statement

endmodule
