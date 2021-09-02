echo "1/4 Installing Speech to text"
cd rg_speech_to_text
python3 -m venv venv
venv/bin/python -m pip install --upgrade pip setuptools
venv/bin/python -m pip install torch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2
venv/bin/python -m pip install -r requirements-linux.txt
cd ..
echo "2/4 Installing Text to sound"
cd rg_text_to_sound
python3 -m venv venv
venv/bin/python -m pip install --upgrade pip setuptools
venv/bin/python -m pip install -r tts_websocketserver/requirements.txt
cd tts_websocketserver/src
../../venv/bin/python -m tts_websocketserver.initialize
cd ../..
cd ..
echo "3/4 Installing Sound Generation"
cd ./rg_sound_generation
python3 -m venv venv
venv/bin/python -m pip install --upgrade pip setuptools
venv/bin/python -m pip install -r requirements.txt
cd ..
echo "4/4 Installing Production"
brew install csound
cd rg_production
python3 -m venv venv
venv/bin/python -m pip install --upgrade pip setuptools
venv/bin/python -m pip install -r requirements.txt
cd ..