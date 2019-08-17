FROM alpine:latest
LABEL maintainer "mi2428 <tmiya@protonmail.ch>"

WORKDIR /opt
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh wait-for-it.sh

RUN apk --no-cache add bash
RUN chmod +x wait-for-it.sh

ENTRYPOINT ["/opt/wait-for-it.sh"]
