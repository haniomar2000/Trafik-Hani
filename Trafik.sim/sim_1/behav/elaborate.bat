@echo off
set xv_path=D:\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto a4889979cde44a7f95ad49808b91564a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Trafik1_behav xil_defaultlib.Trafik1 xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
