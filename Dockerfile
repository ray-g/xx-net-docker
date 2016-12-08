FROM python:2.7

RUN git clone https://github.com/XX-net/XX-Net.git xx-net

RUN apt-get update && apt-get install -y \
python-openssl \
libffi-dev \
python-gtk2 \
python-appindicator \
libnss3-tools

RUN mkdir /xx-net/data

EXPOSE 1080 8085 8087

WORKDIR /xx-net
ENTRYPOINT ['/xx-net/code/default/xx_net.sh', 'start']
