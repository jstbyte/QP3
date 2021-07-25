@ECHO OFF

SET PARAM=-%1

RMDIR BUILD /S /Q
RMDIR dist /S /Q
RMDIR __pycache__ /S /Q
DEL rmbg.spec

REM pyinstaller -w rmbg.py
@ECHO ON
if NOT %PARAM%==-clean pyinstaller -w rmbg.py