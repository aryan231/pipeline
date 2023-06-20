FROM centos:latest
LABEL Name="aryan"
RUN  yum install httpd  -y \
     zip \
    unzip
ADD https://mobirise.com/extensions/coworkingamp/coworking_space/ /var/www/html/
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
