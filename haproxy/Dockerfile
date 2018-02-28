FROM ubuntu:16.04

RUN apt-get update \
	&& apt-get install -y --no-install-recommends haproxy \
	&& rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["haproxy", "-f", "/etc/haproxy/haproxy-alt.cfg"]