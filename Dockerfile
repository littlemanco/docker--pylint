FROM python:3.7-slim

ENV GIT_ORIGIN="https://github.com/littlemanco/docker--pylint"
ENV PYFLAKES_VERSION="2.1.1"
ENV PYFLAKES_REVISION="6501af45203dfa3e2d422cfb3ebbecff853db47f"

ARG BUILD_DATE
ARG GIT_HASH

LABEL org.opencontainers.image.ref.name="pylint"
LABEL org.opencontainers.image.title="Python Linters"
LABEL org.opencontainers.image.description="Python Linters including pylint"
LABEL org.opencontainers.image.created="$BUILD_DATE"
LABEL org.opencontainers.image.authors="littleman.co <support@littleman.co>"
LABEL org.opencontainers.image.url="$GIT_ORIGIN"
LABEL org.opencontainers.image.documentation="$GIT_ORIGIN"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="$GIT_ORIGIN/blob/$GIT_HASH/Dockerfile"
LABEL org.opencontainers.image.version="$PYFLAKES_VERSION"
LABEL org.opencontainers.image.revision="$PYFLAKES_REVISION"
LABEL org.opencontainers.image.vendor="littleman.co"

RUN pip install pyflakes==$PYFLAKES_VERSION