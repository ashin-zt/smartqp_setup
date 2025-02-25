winget install --id Git.Git -e --source winget
curl -o %USERPROFILE%\Downloads\python-3.8.exe https://www.python.org/ftp/python/3.8.10/python-3.8.10-amd64.exe
cd %USERPROFILE%\Downloads
python-3.8.exe /quiet InstallAllUsers=1 PrependPath=1
c:
cd \
git clone --branch dev_ash_fullapp --single-branch https://github.com/tech-tlai/open-qpg.git
cd c:open-qpg
py -3.8 -m venv .\odoo_venv
call  .\odoo_venv\Scripts\activate
pip install -r requirements.txt
pip install libsass
pip install openpyxl
pip install pyopenssl --upgrade
c:\open-qpg\odoo_venv\Scripts\python.exe c:\open-qpg\odoo-bin