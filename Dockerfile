FROM nginx
RUN apt-get update && \
    apt-get install vim --yes
RUN mkdir /server
COPY index.html ./server
COPY erro.html ./server
COPY default.conf ./etc/nginx/conf.d/default.conf
#RUN nginx -s reload
