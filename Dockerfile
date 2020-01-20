FROM 		aarif8/httpd

MAINTAINER 	aarif@ilg.cat

RUN             yum install epel-release-7 yum-utils -y
RUN		yum update -y
RUN		yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
RUN             yum-config-manager --enable remi-php73 -y
RUN		yum update -y

RUN 		yum install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd -y

RUN		yum clean all && rm -rf /tmp/yum*

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
