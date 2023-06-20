FROM centos:latest
LABEL Name="aryan"
RUN  yum install -y httpd  \
     zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/carserv.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip carserv.zip
RUN cp -rvf car-repair-html-template/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
