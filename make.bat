set build_dir=.,%1
echo %build_dir%
gprclean -Pmain.gpr
gnatchop -w *.adb *.ads
gprbuild -d -Pmain.gpr -XInst-Path=%build_dir% -XBuildfor=release test_data_stream.adb
