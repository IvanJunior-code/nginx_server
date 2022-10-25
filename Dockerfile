FROM nginx
RUN apt-get update && \
    apt-get install vim --yes
WORKDIR /server
COPY index.html .
COPY erro.html .
COPY default.conf /etc/nginx/conf.d/default.conf
