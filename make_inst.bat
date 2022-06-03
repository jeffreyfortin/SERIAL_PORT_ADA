set build_dir=.,%1
echo %build_dir%
gprclean -Pmain.gpr
gnatchop -w *.adb *.ads
gprbuild -d -Pmain_inst.gpr -XInst-Path=%build_dir% -XBuildfor=instrumented test_data_stream.adb
