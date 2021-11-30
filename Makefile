all: sim-arithmetic sim-fxp_div_pipe sim-fxp_mul_pipe sim-fxp_sin sim-fxp_sqrt sim-fxp_sqrt_pipe sim-float2fxp sim-float2fxp_pipe sim-fxp2float sim-fxp2float_pipe

sim-arithmetic:
	iverilog  -g2012 -o tb_arithmetic.vvp ./RTL/tb_arithmetic.sv ./RTL/fixedpoint.sv
	vvp -n tb_arithmetic.vvp > tb_arithmetic.log
	rm tb_arithmetic.vvp

sim-fxp_div_pipe:
	iverilog  -g2012 -o tb_fxp_div_pipe.vvp ./RTL/tb_fxp_div_pipe.sv ./RTL/fixedpoint.sv
	vvp -n tb_fxp_div_pipe.vvp > tb_fxp_div_pipe.log
	rm tb_fxp_div_pipe.vvp
	
sim-fxp_mul_pipe:
	iverilog  -g2012 -o tb_fxp_mul_pipe.vvp ./RTL/tb_fxp_mul_pipe.sv ./RTL/fixedpoint.sv
	vvp -n tb_fxp_mul_pipe.vvp > tb_fxp_div_pipe.log
	rm tb_fxp_mul_pipe.vvp

sim-fxp_sin:
	iverilog -g2012 -o tb_fxp_sin.vvp ./RTL/tb_fxp_sin.sv ./RTL/fixedpoint.sv
	vvp -n tb_fxp_sin.vvp > tb_fxp_sin.log
	rm tb_fxp_sin.vvp

sim-fxp_sqrt:
	iverilog -g2012 -o tb_fxp_sqrt.vvp ./RTL/tb_fxp_sqrt.sv ./RTL/fixedpoint.sv
	vvp -n tb_fxp_sqrt.vvp > tb_fxp_sqrt.log
	rm tb_fxp_sqrt.vvp

sim-fxp_sqrt_pipe:
	iverilog  -g2012 -o tb_fxp_sqrt_pipe.vvp ./RTL/tb_fxp_sqrt_pipe.sv ./RTL/fixedpoint.sv
	vvp -n tb_fxp_sqrt_pipe.vvp > tb_fxp_sqrt_pipe.log
	rm tb_fxp_sqrt_pipe.vvp

sim-float2fxp:
	iverilog -g2012 -o tb_float2fxp.vvp ./RTL/tb_float2fxp.sv ./RTL/fixedpoint.sv
	vvp -n tb_float2fxp.vvp > tb_float2fxp.log
	rm tb_float2fxp.vvp

sim-float2fxp_pipe:
	iverilog -g2012 -o tb_float2fxp_pipe.vvp ./RTL/tb_float2fxp_pipe.sv ./RTL/fixedpoint.sv
	vvp -n tb_float2fxp_pipe.vvp > tb_float2fxp_pipe.log
	rm tb_float2fxp_pipe.vvp

sim-fxp2float:
	iverilog -g2012 -o tb_fxp2float.vvp ./RTL/tb_fxp2float.sv ./RTL/fixedpoint.sv
	vvp -n tb_fxp2float.vvp > tb_fxp2float.log
	rm tb_fxp2float.vvp

sim-fxp2float_pipe:
	iverilog -g2012 -o tb_fxp2float_pipe.vvp ./RTL/tb_fxp2float_pipe.sv ./RTL/fixedpoint.sv
	vvp -n tb_fxp2float_pipe.vvp > tb_fxp2float.log
	rm tb_fxp2float_pipe.vvp

clean:
	rm *.log
