FROM centos:7 as centos7
ARG TARGETARCH
ENV OS=neokylin
ENV OS_VERSION=V7
ARG BUILD_TOOLS="yum-utils createrepo mkisofs epel-release"
ARG DIR=${OS}${OS_VERSION}-${TARGETARCH}-rpms

RUN yum install -q -y ${BUILD_TOOLS} \
    && yum-config-manager --add-repo https://mirrors.ustc.edu.cn/docker-ce/linux/centos/docker-ce.repo \
    && yum makecache

WORKDIR package
COPY packages.yaml .
COPY --from=hub.geovis.com.cn/library/yq:4.11.1 /usr/bin/yq /usr/bin/yq
RUN mkdir ${DIR}
RUN if [ "${TARGETARCH}" = "amd64" ] ; then curl -o ${DIR}/audit-2.8.5-4.el7.x86_64.rpm https://mirrors.aliyun.com/centos/7.9.2009/os/x86_64/Packages/audit-2.8.5-4.el7.x86_64.rpm ; fi
RUN yq eval ".common[],.rpms[],.${OS}[],.${OS}${OS_VERSION}" packages.yaml > packages.list

RUN sort -u packages.list | xargs repotrack -p ${DIR} \
    && createrepo -d ${DIR} \
    && mkisofs -r -o ${DIR}.iso ${DIR}

FROM hub.geovis.com.cn/library/busybox:1.35.0
COPY --from=centos7 /package/*.iso /
