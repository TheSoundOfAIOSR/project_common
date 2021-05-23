FROM python:3.8

WORKDIR /rg_text_to_sound

VOLUME rg_text_to_sound /rg_text_to_sound
RUN cat run_server.sh | sed 's/\r$//' > temp.sh
RUN cat temp.sh > run_server.sh
RUN rm temp.sh
CMD ["bash"]
#RUN ["bash", "setup.sh"]
#CMD ["bash", "run_server.sh"]
