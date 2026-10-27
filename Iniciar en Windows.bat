@echo off
chcp 65001 >nul
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "Instagram Follower Tracker" http://localhost:8765/index.html
  py -3 -m http.server 8765
  goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "Instagram Follower Tracker" http://localhost:8765/index.html
  python -m http.server 8765
  goto :eof
)
echo No se ha encontrado Python. Puedes alojar esta carpeta en un servicio HTTPS como GitHub Pages o Netlify para instalar la PWA.
pause
