FROM ubuntu:xenial
MAINTAINER Black Hat <bhat@encom.eu.org>

RUN apt-get update && apt-get install apt-utils git wget gcc g++ make fuse mesa-common-dev libgl1-mesa-dev software-properties-common -y && add-apt-repository ppa:beineri/opt-qt-5.12.0-xenial -y && apt-get update && apt-get install qt512-meta-minimal qt512quickcontrols2 qt512graphicaleffects qt512multimedia -y && apt-get clean

RUN cd /usr/bin && wget -c -nv "https://github.com/probonopd/linuxdeployqt/releases/download/continuous/linuxdeployqt-continuous-x86_64.AppImage" && chmod a+x linuxdeployqt-continuous-x86_64.AppImage && cd ~
