cd rg_speech_to_text
start venv\Scripts\python TheSoundOfAIOSR\stt\interface\server_app.py
cd ..
cd rg_sound_generation
start venv\Scripts\python main_rgws.py
cd ..
cd rg_text_to_sound
start venv\Scripts\python main_tts.py
cd ..
start rg_production\venv\Scripts\python rg_production\main.py
