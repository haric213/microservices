@echo off
cd /d "C:\microservices\section7\loans"
call mvn compile jib:dockerBuild > "C:\microservices\section7\build-scripts\.build-logs\loans.log" 2>&1
echo %errorlevel% > "C:\microservices\section7\build-scripts\.build-logs\loans.done"
