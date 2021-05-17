FROM centos

RUN yum install openssh-server -y

RUN yum install httpd -y

EXPOSE 22

EXPOSE 80

CMD ["/usr/sbin/sshd", "-D", "/usr/sbin/httpd", "-DFOREGROUND"]
