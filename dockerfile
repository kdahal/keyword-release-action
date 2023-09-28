FROM alpine

RUN apt-get update && apt-get install -y sudo
RUN apk add --no-cache\
		bash \
		httpie \
		jq && \
		which bash && \
		which http && \
		which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY sample_push_event.json /sample_push_event.json

ENTRYPOINT ["entrypoint.sh"]


