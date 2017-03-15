FROM ubuntu:14.04
MAINTAINER <MAINTAINER DETAILS>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx
ADD /root/myweb/index.php /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

