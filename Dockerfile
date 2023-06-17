FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
COPY . /var/www/html
WORKDIR /var/www/html
RUN chmod +x /var/www/html/entrypoint.sh
ENTRYPOINT ["/var/www/html/entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
