@ECHO OFF
ECHO Checking administrator right.

OPENFILES >NUL 2>&1
IF %ERRORLEVEL% EQU 0 (

	ECHO Administrator right detected.
	ECHO.
	ECHO Hosts file : %WINDIR%\system32\drivers\etc\hosts
	ECHO.

	SETLOCAL ENABLEDELAYEDEXPANSION
	
		SET BLOCKLINE=0.0.0.0 
		ECHO Checking : !BLOCKLINE!
	    FIND /C /I "!BLOCKLINE!" "%WINDIR%\system32\drivers\etc\hosts" >NUL 2>NUL
	    IF !ERRORLEVEL! NEQ 0 (
	    	ECHO Line not found, adding to the hosts file.
	    	ECHO !BLOCKLINE!>>%WINDIR%\system32\drivers\etc\hosts
	    ) ELSE (
	    	ECHO Line found.
	    )
    	ECHO.
    	
	ENDLOCAL
	
	ECHO Patching is completed.
	ECHO Check hosts file if you want to see the result.
	ECHO.

) ELSE (

	ECHO Administrator right not detected.
    ECHO You need admin right to use this hosts patch!
    ECHO.
    
)

PAUSE
