FROM python:3.7.2-alpine3.8

ARG c7n_version

RUN pip install c7n==${c7n_version}

RUN mkdir -p /workdir

WORKDIR /workdir

ENTRYPOINT ["/usr/local/bin/custodian"]
