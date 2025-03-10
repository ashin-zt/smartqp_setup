@echo off
REM Check if C:\open-qpg exists
if not exist "C:\open-qpg" (
    echo Error: Folder "C:\open-qpg" not found.
    exit /b
)

REM Navigate to the directory
cd /d C:\open-qpg

REM Check if virtual environment exists
if not exist "odoo_venv\Scripts\activate" (
    echo Error: Virtual environment not found in "C:\open-qpg\odoo_venv".
    exit /b
)

REM Activate the virtual environment
call odoo_venv\Scripts\activate

REM Check if odoo-bin exists
if not exist "odoo-bin" (
    echo Error: "odoo-bin" not found in "C:\open-qpg".
    exit /b
)

REM Run Odoo
odoo_venv\Scripts\python.exe odoo-bin
