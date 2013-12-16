FROM centos:6.4
# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm

EXPOSE  8080
USER daemon

ENTRYPOINT ["node", "/var/app/index.js"]