cd rg_speech_to_text
python3.8 -m venv venv
rem venv\Scripts\activate : activating venv breaks the bat file execution
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install -r requirements-win.txt
