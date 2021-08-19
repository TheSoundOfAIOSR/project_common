cd rg_speech_to_text
start venv\Scripts\python TheSoundOfAIOSR\stt\interface\server_app.py
cd ..
cd rg_sound_generation
start venv\Scripts\python main_rgws.py
cd ..
cd rg_text_to_sound\tts_websocketserver\src
start ..\..\venv\Scripts\python -m tts_websocketserver.tts_server
cd ..\..\..
