FROM broadinstitute/gatk:4.1.8.1
LABEL \
    description="Adds identity management library to the official gatk image"
RUN apt-get update && apt-get install -y libnss-sss && apt-get clean all
