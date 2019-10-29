FROM centos:7
RUN	yum update -y && \
	yum install httpd php php-mysql -y

COPY	index.php /var/www/html

COPY	dockers	/tmp/dockerhosts

RUN	cat /tmp/dockerhosts >> /etc/hosts

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
