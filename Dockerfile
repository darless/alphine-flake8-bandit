FROM python:3-alpine

# --build-arg FLAKE8_VERSION
ARG FLAKE8_VERSION

# --build-arg BANDIT_VERSION
ARG BANDIT_VERSION

RUN pip install flake8==$FLAKE8_VERSION flake8-bandit==$BANDIT_VERSION

WORKDIR /apps
ENTRYPOINT ["flake8"]
CMD ["--help"]
