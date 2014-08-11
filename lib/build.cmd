@echo off
if not exist target mkdir target
if not exist target\classes mkdir target\classes


echo compile classes
javac -nowarn -d target\classes -sourcepath jvm -cp "d:\dev\langtransition\jni4net-0.8.6.0-bin\lib\jni4net.j-0.8.6.0.jar"; "jvm\mschedule\Game.java" "jvm\mschedule\Schedule.java" 
IF %ERRORLEVEL% NEQ 0 goto end


echo MSchedule.j4n.jar 
jar cvf MSchedule.j4n.jar  -C target\classes "mschedule\Game.class"  -C target\classes "mschedule\Schedule.class"  > nul 
IF %ERRORLEVEL% NEQ 0 goto end


echo MSchedule.j4n.dll 
csc /nologo /warn:0 /t:library /out:MSchedule.j4n.dll /recurse:clr\*.cs  /reference:"d:\dev\LangTransition\lib\MSchedule.dll" /reference:"d:\dev\LangTransition\jni4net-0.8.6.0-bin\lib\jni4net.n-0.8.6.0.dll"
IF %ERRORLEVEL% NEQ 0 goto end


:end
