FROM ubuntu

MAINTAINER Ryuichi Okumura <okuryu@okuryu.com>

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install build-essential
RUN apt-get -y install libssl-dev
RUN apt-get -y install libreadline6-dev
RUN apt-get -y install libcppunit-dev

RUN cd /usr/local/src && git clone git://github.com/yahoo/mdbm.git
RUN cd /usr/local/src/mdbm && make && make install
