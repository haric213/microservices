@echo off
cd /d "C:\microservices\section6\v2-spring-cloud-config\loans"
call mvn compile jib:dockerBuild > "C:\microservices\section6\v2-spring-cloud-config\build-scripts\.build-logs\loans.log" 2>&1
if not errorlevel 1 docker push "chennahari/loans:s6" >> "C:\microservices\section6\v2-spring-cloud-config\build-scripts\.build-logs\loans.log" 2>&1
echo %errorlevel% > "C:\microservices\section6\v2-spring-cloud-config\build-scripts\.build-logs\loans.done"
