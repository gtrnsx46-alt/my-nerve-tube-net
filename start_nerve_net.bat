@echo off
rem My Nerve Tube Net - local server (YouTube embeds need http origin; file:// causes Error 153)
cd /d "%~dp0"
start "" "http://localhost:8000/"
python -m http.server 8000 || py -m http.server 8000
pause
