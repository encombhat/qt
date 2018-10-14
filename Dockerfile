FROM ubuntu:bionic
MAINTAINER Black Hat <bhat@encom.eu.org>

RUN apt-get update && apt-get install git wget software-properties-common -y && add-apt-repository ppa:beineri/opt-qt-5.11.1-bionic -y && apt-get update && apt-get install qt511-meta-full -y && apt-get clean

RUN source /opt/qt*/bin/qt*-env.sh
RUN cd /usr/bin && wget -c -nv "https://github.com/probonopd/linuxdeployqt/releases/download/continuous/linuxdeployqt-continuous-x86_64.AppImage" && chmod a+x linuxdeployqt-continuous-x86_64.AppImage && cd ~
