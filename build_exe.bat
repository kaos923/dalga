@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === DALGA exe olusturuluyor (internet gerekir, sadece bu PC'de bir kere) ===

where py >nul 2>nul && (set PY=py) || (set PY=python)
%PY% --version >nul 2>nul || (echo Python bulunamadi. https://www.python.org adresinden kur ^(Add to PATH isaretli^). & pause & exit /b 1)

%PY% -m pip install --upgrade pip pyinstaller keyboard || (echo pip hatasi & pause & exit /b 1)

%PY% -m PyInstaller --noconfirm --clean --onefile --noconsole ^
  --name DALGA ^
  --hidden-import tkinter --hidden-import tkinter.colorchooser --hidden-import tkinter.messagebox ^
  --hidden-import apex_hid ^
  dalga.py || (echo Derleme hatasi & pause & exit /b 1)

echo.
echo TAMAM: dist\DALGA.exe  -  bu tek dosyayi istedigin PC'ye kopyala, Python gerekmez.
pause
