FROM nginx

RUN apt-get update -y --fix-missing && \
	apt-get -y install php-fpm && \
	apt-get -y install  php7.0-mysql

RUN    mkdir -p  /srv/www/cmt

COPY wp  /srv/www/cmt

RUN chmod -R 755 /srv/www/cmt

COPY default.conf /etc/nginx/conf.d/default.conf

COPY www.conf /etc/php/7.0/fpm/pool.d/www.conf

COPY start.sh  /srv/www/start.sh

RUN chmod +x /srv/www/start.sh
EXPOSE 80

ENTRYPOINT "/srv/www/start.sh" && /bin/bash
