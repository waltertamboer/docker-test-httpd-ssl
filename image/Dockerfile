FROM httpd:latest

# Arguments
ENV DOMAIN_NAME=www.example.com

# Update the system
RUN apt-get update && apt-get install openssl

# Copy over the files
COPY usr/local/bin/httpd-foreground /usr/local/bin/

# Enable SSL
RUN sed -i "s/#LoadModule ssl_module modules\/mod_ssl.so/LoadModule ssl_module modules\/mod_ssl.so/g" /usr/local/apache2/conf/httpd.conf
RUN sed -i "s/#LoadModule socache_shmcb_module modules\/mod_socache_shmcb.so/LoadModule socache_shmcb_module modules\/mod_socache_shmcb.so/g" /usr/local/apache2/conf/httpd.conf
RUN sed -i "s/#Include conf\/extra\/httpd-ssl.conf/Include conf\/extra\/httpd-ssl.conf/g" /usr/local/apache2/conf/httpd.conf
