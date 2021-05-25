cd rg_speech_to_text
start venv\Scripts\python TheSoundOfAIOSR\stt\interface\server_app.py
cd ..
cd rg_sound_generation\sound_generator
start venv\Scripts\python main_rgws.py
cd ..\..
cd rg_text_to_sound
bash -c "source venv/bin/activate; cd tts_websocketserver/src; python -m tts_websocketserver.tts_server"
cd ..