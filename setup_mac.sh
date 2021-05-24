cd rg_speech_to_text
python3 -m venv venv
venv/bin/python -m pip install --upgrade pip setuptools
venv/bin/python -m pip install torch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2
venv/bin/python -m pip install -r requirements-linux.txt
cd ..
cd rg_text_to_sound
python3 -m venv venv
venv/bin/python -m pip install --upgrade pip setuptools
venv/bin/python -m pip install rgws
venv/bin/python -m pip install git+https://github.com/TheSoundOfAIOSR/rg_text_to_sound.git\#"subdirectory=tts_pipeline"
cd ..
cd rg_sound_generation
python3 -m venv venv
venv/bin/python -m pip install --upgrade pip setuptools
venv/bin/python -m pip install -r sound_generator/requirements.txt
python3 sound_generator/sound_generator/download_checkpoints.py
cd ..
brew install csound
cd rg_production
python3 -m venv venv
venv/bin/python -m pip install --upgrade pip setuptools
venv/bin/python -m pip install -r requirements.txt
cd ..
