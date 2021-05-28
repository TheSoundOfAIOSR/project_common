python3.8 utils\check_version.py || Exit /b
echo "1/4 Installing Speech to text"
cd rg_speech_to_text
python3.8 -m venv venv
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install torch==1.7.1+cpu torchvision==0.8.2+cpu torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
venv\Scripts\python -m pip install sounddevice
venv\Scripts\python -m pip install pipwin
venv\Scripts\pipwin install pyaudio
venv\Scripts\python -m pip install sounddevice
venv\Scripts\python -m pip install -r requirements.txt
cd ..
echo "2/4 Installing Sound Generation"
cd rg_sound_generation\sound_generator
python3.8 -m venv venv
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install -r requirements.txt
venv\Scripts\python -m pip install requests
venv\Scripts\python sound_generator\download_checkpoints.py
rem venv\Scripts\garden.bat install knob
cd ..\..
echo "3/4 Installing Production"
cd rg_production
python3.8 -m venv venv
venv\Scripts\python -m pip install --upgrade pip setuptools
venv\Scripts\python -m pip install -r requirements.txt
cd ..
echo "4/4 Installing Text to sound"
cd rg_text_to_sound
python3.8 -m venv venv
venv\Scripts\python -m pip install rgws
venv\Scripts\python -m pip install -r tts_pipeline\requirements\prod.txt
cd ..
