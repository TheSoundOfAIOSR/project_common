python utils\check_version.py || Exit /b
cd rg_speech_to_text
python -m venv venv
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install torch==1.7.1+cpu torchvision==0.8.2+cpu torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
venv\Scripts\python -m pip install -r requirements-win.txt
cd ..
cd rg_sound_generation\sound_generator
python -m venv venv
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install -r requirements.txt
cd ..\..
cd rg_production
python -m venv venv
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install -r requirements.txt
cd ..
cd ..
cd rg_text_to_sound
bash -c "python3 -m venv venv; source venv/bin/activate; pip install --upgrade pip setuptools; pip install rgws; pip install git+https://git@github.com/TheSoundOfAIOSR/rg_text_to_sound.git#'subdirectory=tts_pipeline';"
