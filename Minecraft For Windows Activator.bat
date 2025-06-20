::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFB9RShaHAE+1BaAR7ebv/NamplscWuE6fM/y1KeaIewf71fYfIUi2nVdl4sCDQlZcBiqLgw7py5Qs2eQNsOOvEHuWUuc9ER+EmZ75w==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZks0
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIdIRVRTxaDOn/6JLAY+uf45KqmoVkUQuMrd527
::eg0/rx1wNQPfEVWB+kM9LVsJDCWBKGKsB7ET+qjW5uSCoV8cUvZ/WorfyLuNK61Twlz0cIQk2XQ6
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIZJghATQiDfGe7FfUQ5Ont6vnHpkhdRPAwfJrYzrvOI+8e+lflcZlt03QalMQfTBpKfRqieAAn6WpHuiSWPtSItgLgCkyMpnw5FWF7kHCw
::dhA7uBVwLU+EWHGd5EciIRRaDDaHLGq5DaZ8
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFB9RShaHAE+1BaAR7ebv/NamplscWuE6fM/y1KeaIewf71fYWJ8j03lImc0YTD1XbFKcZwEwpnlR9kWGI86KshvuWHSk70U1GHd1gXeQqiQpIORhlMcMxDP+3U7rlrMRxXftEKwWEAM=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal
chcp 65001
color E
echo --------------------------------------------------------------------------
echo   ##  ##  ###  ### ######   #######  ######    ######   #####   ##   ## 
echo   ##  ##   ##  ##   ##  ##   ##   #   ##  ##     ##    ### ###  ###  ## 
echo   ##  ##    ####    ##  ##   ##       ##  ##     ##    ##   ##  #### ## 
echo   ######     ##     #####    ####     #####      ##    ##   ##  ####### 
echo   ##  ##     ##     ##       ##       ## ##      ##    ##   ##  ## #### 
echo   ##  ##     ##     ##       ##   #   ## ##      ##    ### ###  ##  ### 
echo   ##  ##    ####   ####     #######  #### ##   ######   #####   ##   ## 
echo ---------------------------------------------------------------------------
echo IMPORTANTE:
echo  1. Si hay aplicaciones que usas de la Microsoft Store, mantenlas fuera de ejecución
echo  2. Si tu antivirus no permite realizar la activación de manera satisfactoria ya sabes lo que tienes que hacer...
echo     puedes verificar tu mismo que no hay nada extraño en este script, Nosotros hacemos esto por la comunidad
echo  3. No habrá oportunidad de restaurar. Recomandamos crear un punto de restauración antes de continuar
echo ---------------------------------------------------------------------------
echo Estás a punto de instalar las licencias de compra de Minecraft For Windows ¿Deseas Continuar?
echo ---------------------------------------------------------------------------
pause
echo ---------------------------------------------------------------------------
:pregunta
color 7
rem Preguntar al usuario si desea continuar
set /p RESPUESTA="¿Ya has instalado Minecraft For Windows? (s/n): "
if /i "%RESPUESTA%"=="s" (
    echo Omitiendo Instalación de Minecraft For Windows
    goto proces
) else (
    echo Descargalo desde la tienda de Xbox
    echo https://www.microsoft.com/store/productId/9NBLGGH2JHXJ
    start https://www.microsoft.com/store/productId/9NBLGGH2JHXJ
    echo -----------------------------------------------------------------------
    goto pregunta
)
:proces
echo ---------------------------------------------------------------------------
rem Lista de procesos a detener

echo Deteniendo procesos que no permitan la activación...
color
powershell -Command "Stop-Process -Name 'RuntimeBroker' -Force"
powershell -Command "Stop-Process -Name 'GameBar' -Force"
powershell -Command "Stop-Process -Name 'GameBarElevatedFT' -Force"
powershell -Command "Stop-Process -Name 'GameBarFTServer' -Force"
powershell -Command "Stop-Process -Name 'XboxPartyChatHost' -Force"
powershell -Command "Stop-Process -Name 'XboxPcApp' -Force"
powershell -Command "Stop-Process -Name 'XboxPcAppAdminServer' -Force"
powershell -Command "Stop-Process -Name 'XboxPcAppCE' -Force"
powershell -Command "Stop-Process -Name 'XboxPcAppFT' -Force"
powershell -Command "Stop-Process -Name 'XboxPcTray' -Force"
powershell -Command "Stop-Process -Name 'WhatsApp' -Force"
powershell -Command "Stop-Process -Name 'Telegram' -Force"
powershell -Command "Stop-Process -Name 'Unigram' -Force"
powershell -Command "Stop-Process -Name 'explorer' -Force"
powershell -Command "Stop-Process -Name 'Minecraft.Windows' -Force"
rem Esperar un momento para asegurarse de que los procesos se detengan
echo ---------------------------------------------------------------------------
echo Esperando a que los procesos se terminen de cerrar...
echo Mientras tanto visita nuestro sitio oficial https://hyperion.yeet.su/
echo No importa, igual lo vas a visitar cueste lo que cueste
echo ---------------------------------------------------------------------------
timeout /t 5

:EliminarDLLs
rem Tomar posesión y otorgar permisos a los archivos DLL
takeown /f "C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll"
icacls "C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll" /grant Administradores:F

takeown /f "C:\Windows\System32\Windows.ApplicationModel.Store.dll"
icacls "C:\Windows\System32\Windows.ApplicationModel.Store.dll" /grant Administradores:F

rem Eliminar los archivos DLL
IF EXIST "C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll" (
    rem Eliminando C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll
    del /f "C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll"
    if ERRORLEVEL 1 (
        echo Error al eliminar C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll.
        echo Puede que el archivo esté en uso. Cierre todas las aplicaciones de la Microsoft Store y vuelva a intentarlo.
        timeout /t 5
        goto EliminarDLLs
    ) ELSE (
        echo El archivo C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll se eliminó correctamente.
    )
) ELSE (
    echo El archivo C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll no existe.
)

IF EXIST "C:\Windows\System32\Windows.ApplicationModel.Store.dll" (
    rem Eliminando C:\Windows\System32\Windows.ApplicationModel.Store.dll
    del /f "C:\Windows\System32\Windows.ApplicationModel.Store.dll"
    if ERRORLEVEL 1 (
        echo Error al eliminar C:\Windows\System32\Windows.ApplicationModel.Store.dll.
        echo Puede que el archivo esté en uso. Cierre todas las aplicaciones de la Microsoft Store y vuelva a intentarlo.
        timeout /t 5
        goto EliminarDLLs
    ) ELSE (
        echo El archivo C:\Windows\System32\Windows.ApplicationModel.Store.dll se eliminó correctamente.
    )
) ELSE (
    echo El archivo C:\Windows\System32\Windows.ApplicationModel.Store.dll no existe.
)

echo Proceso completado.
echo ---------------------------------------------------------------------------------
rem Descargar los archivos DLL usando PowerShell
rem Descargando Windows.ApplicationModel.Store.dll para System32...
powershell -Command "Invoke-WebRequest -Uri 'https://archive.org/download/windows.-application-model.-store-system32/Windows.ApplicationModel.Store.dll' -OutFile 'C:\Windows\System32\Windows.ApplicationModel.Store.dll'"

rem Verificar si la descarga fue exitosa
if ERRORLEVEL 1 (
    echo Error al descargar Windows.ApplicationModel.Store.dll para System32.
    goto Reintentar
)

rem Descargando Windows.ApplicationModel.Store.dll para SysWOW64...
powershell -Command "Invoke-WebRequest -Uri 'https://archive.org/download/windows.-application-model.-store-syswow/Windows.ApplicationModel.Store.dll' -OutFile 'C:\Windows\SysWOW64\Windows.ApplicationModel.Store.dll'"
rem Verificar si la descarga fue exitosa
if ERRORLEVEL 1 (
    echo .
    echo ---------------------------------------------------------------------
    echo Error al descargar Windows.ApplicationModel.Store.dll para SysWOW64.
    goto Reintentar
    echo ---------------------------------------------------------------------
)

echo Todos los archivos DLL han sido procesados correctamente.
start "" "C:\Program Files\WindowsApps\Microsoft.MinecraftUWP_1.21.7301.0_x64__8wekyb3d8bbwe\Minecraft.Windows.exe"
pause
goto Fin

:Reintentar
echo.
set /p RESPUESTA="¿Desea intentar nuevamente? (s/n): "
if /i "%RESPUESTA%"=="s" (
    goto EliminarDLLs
) else (
    echo Saliendo del script.
)
start explorer.exe
echo Se han completado todos los pasos de la activación
start https://hyperion.yeet.su/
echo Gracias por visitar nuestro sitio 
echo ---------------------------------------------------------------------------
echo Si no funcionó recuerda asegurarte que no haya ninguna aplicación abierta que use la Microsoft Store
start explorer
pause
endlocal