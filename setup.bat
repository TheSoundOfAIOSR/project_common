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
python sound_generator\download_checkpoints.py
cd ..\..
cd rg_production
python -m venv venv
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install -r requirements.txt
cd ..
docker build -t tts_image .
