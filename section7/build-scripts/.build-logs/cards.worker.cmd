@echo off
cd /d "C:\microservices\section7\cards"
call mvn compile jib:dockerBuild > "C:\microservices\section7\build-scripts\.build-logs\cards.log" 2>&1
echo %errorlevel% > "C:\microservices\section7\build-scripts\.build-logs\cards.done"
