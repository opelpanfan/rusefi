@echo off
cd ../../../
make -j12 PROJECT_BOARD=core8 PROJECT_CPU=ARCH_STM32F4
cd config/boards/core8/
@REM bash.exe gen_config_board.sh core8 core8




