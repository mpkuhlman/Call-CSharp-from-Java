@echo off
copy jni4net-0.8.7.0-bin\lib\*.dll lib
copy jni4net-0.8.7.0-bin\lib\*.jar lib
jni4net-0.8.7.0-bin\bin\proxygen.exe lib\MSchedule.dll -wd lib
cd lib
call build.cmd
cd ..
