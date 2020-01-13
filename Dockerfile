FROM python:3.6-alpine

LABEL maintainer="Huxin <huxins@163.com>"

RUN pip install --quiet --no-cache-dir coscmd

COPY . /

ENTRYPOINT ["sh","/upload.sh"]