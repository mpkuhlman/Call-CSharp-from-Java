cd lib
copy ..\build\classes\main\ScheduleCaller.class .
java -cp jni4net.j-0.8.6.0.jar;MSchedule.j4n.jar;. ScheduleCaller
cd ..