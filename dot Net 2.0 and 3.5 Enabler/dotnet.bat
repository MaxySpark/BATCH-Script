@ECHO OFF
title dot Net 2.0 And 3.5 Enabler
ECHO DOT NET 2.0 AND 3.5 ENABLER
ECHO THIS TOOL IS MADE BY BHARGAB(MAXYSPARK)
ECHO MOUNT IMAGE(.ISO) FILE OF THE WINDOWS OR INSERT THE BOOTABLE MEDIA
PAUSE
SET /P DRIVE=ENTER THE DRIVE LEETER OF THE MOUNTED ISO OR INSERTED BOOTABLE MEDIA 
Dism.exe /online /enable-feature /featurename:NetFX3 /All /Source:%DRIVE%:\sources\sxs /LimitAccess
PAUSE