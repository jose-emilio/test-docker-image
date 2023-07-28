FROM public.ecr.aws/ubuntu/ubuntu:20.04
RUN apt-get update && apt-get install -y apache2
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
COPY . /root
RUN chmod +x /root/entrypoint.sh
WORKDIR /root
ENTRYPOINT ["./entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
