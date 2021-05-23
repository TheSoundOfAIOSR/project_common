cd rg_speech_to_text
start venv\Scripts\python TheSoundOfAIOSR\stt\interface\server_app.py
cd ..
cd rg_sound_generation\sound_generator
start venv\Scripts\python main_rgws.py
cd ../..
start docker run --name tts_image -ti --rm tts_image
