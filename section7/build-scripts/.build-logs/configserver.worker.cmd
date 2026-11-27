@echo off
cd /d "C:\microservices\section7\configserver"
call mvn compile jib:dockerBuild > "C:\microservices\section7\build-scripts\.build-logs\configserver.log" 2>&1
echo %errorlevel% > "C:\microservices\section7\build-scripts\.build-logs\configserver.done"
