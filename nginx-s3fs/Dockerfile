FROM centos:7
MAINTAINER zhanghl
ENV NGINX_VERSION 1.21.3
COPY nginx /usr/local/nginx
COPY docker-entrypoint.sh /
WORKDIR /usr/local/nginx
RUN mkdir -p /mnt/icenter \
    && yum -y install epel-release \
	&& yum install -y s3fs-fuse \
	&& yum -y install gcc-c++ pcre-devel zlib zlib-devel openssl openssl-devel wget \
	&& chmod +x configure \
    && ./configure --prefix=/usr/local/nginx --conf-path=/usr/local/nginx/nginx.conf \
	&& make \
	&& make install \
	&& yum clean all \
	&& ln -sf /dev/stdout /usr/local/nginx/logs/access.log \
	&& ln -sf /dev/stderr /usr/local/nginx/logs/error.log
ENV PATH="/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/nginx/sbin"
EXPOSE 80
STOPSIGNAL SIGQUIT
#ENTRYPOINT ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
