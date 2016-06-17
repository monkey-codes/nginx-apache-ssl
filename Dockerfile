FROM webdevops/apache
RUN apt-get update -y
RUN apt-get install nginx -y
#ADD ./vhost.conf /opt/docker/etc/httpd/
#ADD ./static/ /var/www/
ADD ./apache/ports.conf /etc/apache2/ports.conf
ADD ./supervisord/nginx.conf /opt/docker/etc/supervisor.d/
ADD ./nginx/default /etc/nginx/sites-enabled/
RUN a2enmod proxy
RUN a2enmod proxy_http
