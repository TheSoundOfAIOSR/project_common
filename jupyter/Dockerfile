FROM jupyter/tensorflow-notebook
WORKDIR /home/jovyan/
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /home/jovyan/work
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
