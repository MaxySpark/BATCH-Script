@ECHO OFF
TITLE WI-FI PASSWORD VIEWER
ECHO WI-FI PASSWORD VIEWER 
ECHO IT CAN ONLY FIND THE PASSWORD IF THE WIFI IS ALREADY CONNECTED TO THE PC
ECHO THIS TOOL IS MADE BY BHARGAB(MAXYSPARK)
SET /P SSID=TYPE THE SSID OR WI-FI NAME CONNECTED TO THE PC 
echo. | NETSH WLAN SHOW PROFILE NAME="%SSID%" KEY=CLEAR > wlan.log
@move /y wlan.log %~dp0
echo You Will Find The PASSWORD in the wlan.log file Under
echo "Security settings" Section As
echo Key Content  :   your wifi password 
%SystemRoot%\explorer.exe "%~dp0"
PAUSE