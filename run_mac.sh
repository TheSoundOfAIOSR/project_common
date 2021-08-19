#run all the modules
./rg_speech_to_text/run_mac.sh & ./rg_text_to_sound/run_server_mac.sh & ./rg_sound_generation/run_mac.sh & ./rg_production/run_mac.sh 

# get pid for processes on 8787 8786 8080
# kill them
kill $(lsof -t -i:8787)
kill $(lsof -t -i:8786)
kill $(lsof -t -i:8080)


