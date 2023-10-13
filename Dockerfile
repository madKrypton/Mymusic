FROM ubuntu
RUN apt-get update 
RUN apt-get install nginx -y 
COPY index.html /var/www/html/
COPY song1.mp3 /var/www/html/
COPY song2.mp3 /var/www/html/
COPY video.mp4 /var/www/html/
COPY k8bg.jpg /var/www/html/ 
EXPOSE 80 
CMD ["nginx","-g","daemon off;"]