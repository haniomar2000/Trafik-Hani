@echo off
set xv_path=D:\\Vivado\\2016.1\\bin
call %xv_path%/xsim Trafik1_func_impl -key {Post-Implementation:sim_1:Functional:Trafik1} -tclbatch Trafik1.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
