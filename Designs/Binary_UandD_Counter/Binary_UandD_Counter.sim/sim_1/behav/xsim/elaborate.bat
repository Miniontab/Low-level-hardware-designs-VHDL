@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Nov 27 23:59:13 +0100 2019
REM SW Build 2700185 on Thu Oct 24 18:46:05 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto aa217263edf9431699200a7f0a9b5943 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Counter_tb_behav xil_defaultlib.Counter_tb -log elaborate.log"
call xelab  -wto aa217263edf9431699200a7f0a9b5943 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Counter_tb_behav xil_defaultlib.Counter_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0