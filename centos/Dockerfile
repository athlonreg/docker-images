FROM centos:7

RUN yum -y install kde-l10n-Chinese && \
    yum -y reinstall glibc-common && \
    yum clean all
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8

ENV LC_ALL "zh_CN.UTF-8"