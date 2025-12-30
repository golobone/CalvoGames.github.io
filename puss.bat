@echo off
title Panel de Control - Golo
setlocal

:: Tu ruta fija
set "RUTA=C:\Users\Yeray Mendez\Desktop\CalvoGames\CalvoGames"

:: Cambiar a la carpeta del proyecto
cd /d "%RUTA%"

echo ===========================================
echo            SISTEMA DE SUBIDA GOLO
echo ===========================================
echo.

:: 1. Bajar actualizaciones de la nube
echo [ESTADO] Revisando si hay cambios en GitHub...
git pull origin main --quiet

echo.
:: 2. Añadir archivos
echo [INFO] Preparando archivos para subir...
git add .

echo.
:: 3. Mensaje personalizado
echo Escribe que has mejorado en el juego:
set /p msg="> "

:: 4. Commit y Push
echo.
echo [PROCESO] Guardando y enviando...
git commit -m "%msg%" --quiet
git push origin main --quiet

echo.
echo ===========================================
echo        TODO LISTO! CAMBIOS SUBIDOS
echo ===========================================
echo.
pause