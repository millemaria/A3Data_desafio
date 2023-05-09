FROM jupyter/pyspark-notebook:latest

USER root

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt && \
    pip install "jupyterlab>=3" "ipywidgets>=7.6"

EXPOSE 8888