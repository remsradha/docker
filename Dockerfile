FROM library/debian:wheezy
MAINTAINER Radha Montell <radha.montell@gmail.com>
# Minimal changes to httpd
#RUN sed -i "s/AllowOverride None/AllowOverride All/" /usr/local/apache2/conf/httpd.conf && \
#rm /usr/local/apache2/htdocs/index.html
#El canvi de nameserver només ens cal a l'Esteve Terradas
RUN echo "nameserver 10.27.100.2" > /etc/resolv.conf &&\ 
apt-get update && \
apt-get -y upgrade && \
apt-get install -y funny-manpages man-db manpages && \
apt-get clean && apt-get autoclean && \
  rm -rf /var/lib/apt/lists/* 

