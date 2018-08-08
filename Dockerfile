FROM ubuntu:xenial
MAINTAINER John Garza <johnegarza@wustl.edu>

LABEL \
    description="Image containing GATK v3.6"

RUN apt-get update -y && apt-get install -y \
    apt-utils \
    bzip2 \
    default-jre \
    wget

RUN cd /tmp/ \
    && wget -O /tmp/gatk3.6.tar.bz2 'https://software.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=3.6-0-g89b7209' \
    && tar xf gatk3.6.tar.bz2 \
    && cp GenomeAnalysisTK.jar /opt/GenomeAnalysisTK.jar \
    && rm -rf /tmp/*
