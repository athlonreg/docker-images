#FROM centos:7
#
#RUN yum -y install https://mirrors.ustc.edu.cn/mysql-repo/mysql80-community-release-el7.rpm
#RUN yum -y install mysql-community-client && \
#    yum clean all && \
#    rm -rf /var/cache/yum


FROM python:3-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add --update --no-cache mariadb-connector-c-dev mysql-client\
	&& apk add --no-cache --virtual .build-deps \
		mariadb-dev \
		gcc \
		musl-dev
RUN pip install mysqlclient -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN apk del .build-deps