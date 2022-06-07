FROM pytorch/pytorch:1.10.1-cuda11.3-cudnn8-runtime

RUN apt-get update && apt-get -y install git curl

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

ADD . /app
WORKDIR /app
RUN pip install -e .
