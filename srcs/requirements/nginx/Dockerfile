FROM	debian:buster

LABEL	maintainer="skim@student.42seoul.kr"

VOLUME	[ "/var/www/html" ]

RUN		apt-get update -y; apt-get upgrade -y; \
		apt-get install -y dumb-init; \
		apt-get install -y nginx openssl vim

RUN		openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=skim/CN=skim.42.fr" \
		-keyout /etc/ssl/private/skim.key -out /etc/ssl/certs/skim.crt;

COPY	./conf/default /etc/nginx/sites-available/

ENTRYPOINT  ["/usr/bin/dumb-init"]

EXPOSE	443

CMD 	["nginx", "-g", "daemon off;"]
