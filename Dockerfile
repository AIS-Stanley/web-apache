# Base Image
FROM ubuntu:16.04

# Update and Install apache2
RUN apt update && apt install apache2 -y

# Copy dari local ke container
COPY index.html /var/www/html

# start service apache2
CMD ["apachectl", "-D", "FOREGROUND"]
