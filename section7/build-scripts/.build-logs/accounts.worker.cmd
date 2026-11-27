@echo off
cd /d "C:\microservices\section7\accounts"
call mvn compile jib:dockerBuild > "C:\microservices\section7\build-scripts\.build-logs\accounts.log" 2>&1
echo %errorlevel% > "C:\microservices\section7\build-scripts\.build-logs\accounts.done"
