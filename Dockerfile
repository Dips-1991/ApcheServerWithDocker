//Pull the base image from the Docker hub repository
FROM centos

//Install the httpd(apche server into the centos)
RUN yum install httpd -y

//copy index.html file from local system to /var/www/html folder to render
COPY index.html /var/www/html/

//Start the apache server
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]

//Expose the port 80 to access the index.html page 
EXPOSE 80
