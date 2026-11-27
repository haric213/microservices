@echo off
cd /d "C:\microservices\section6\v2-spring-cloud-config\configserver"
call mvn compile jib:dockerBuild > "C:\microservices\section6\v2-spring-cloud-config\build-scripts\.build-logs\configserver.log" 2>&1
if not errorlevel 1 docker push "chennahari/configserver:s6" >> "C:\microservices\section6\v2-spring-cloud-config\build-scripts\.build-logs\configserver.log" 2>&1
echo %errorlevel% > "C:\microservices\section6\v2-spring-cloud-config\build-scripts\.build-logs\configserver.done"
