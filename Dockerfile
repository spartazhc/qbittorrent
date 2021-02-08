FROM gists/qbittorrent:latest as builder

RUN apk add --no-cache python3 py3-pip && \
    pip3 install autoremove-torrents && \
	pip3 install flexget --ignore-installed six && \
	rm -rf \
		/tmp/* \
		/var/tmp/*

COPY 99-custom-files /etc/cont-init.d/99-custom-files
