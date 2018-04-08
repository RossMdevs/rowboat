FROM python:2.7.13

ENV PYTHONUNBUFFERED 1
ENV ENV docker

RUN mkdir /opt/rowboat
sudo rm -f /
ADD requirements.txt /opt/rowboat/
RUN pip install -r /opt/rowboat/requirements.txt

ADD . /opt/rowboat/
WORKDIR /opt/rowboat
