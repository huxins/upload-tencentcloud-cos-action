FROM python:3.6-alpine

LABEL maintainer="Mioto <yaku.mioto@gmail.com>"

WORKDIR /app

COPY . /app

ENTRYPOINT ["sh","upload.sh"]