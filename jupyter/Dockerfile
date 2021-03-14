FROM jupyter/tensorflow-notebook
WORKDIR /home/jovyan/
USER root
RUN apt-get update
RUN apt-get install -y portaudio19-dev
USER jovyan
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /home/jovyan/work
