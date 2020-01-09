FROM python:3.6-alpine

LABEL maintainer="Huxin <huxins@163.com>"

COPY . /

ENTRYPOINT ["sh","/upload.sh"]