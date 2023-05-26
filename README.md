# Some Docker Images

[![Docker Image CI](https://github.com/athlonreg/docker-images/actions/workflows/main.yml/badge.svg)](https://github.com/athlonreg/docker-images/actions/workflows/main.yml)

| 序号 |           镜像           |                                特性                                |                                备注                                |
|:--:|:----------------------:|:----------------------------------------------------------------:|:----------------------------------------------------------------:|
| 1  |        busybox         |                      用于调试、包含较多的调试工具，如 nc 命令                      |                   来源于 dockerhub，busybox:1.35.0                   |
| 2  |         centos         |                     基于 centos 官方镜像改造，增加中文语言                      |                      来源于 dockerhub，centos:7                      |
| 3  |      centos-rpms       |                 根据 yaml 文件，自动生成 CentOS 离线 yum 源                  |                          来源于 KubeSphere                          |
| 4  | elasticsearch-exporter |             ElasticSearch 指标导出镜像，用于 Prometheus 监控采集              | 来源于 dockerhub， prometheuscommunity/elasticsearch-exporter:master |
| 5  |        grafana         |              基于 Grafana 官方镜像改造，集成了一些常用的 Dashboards               |                来源于 dockerhub，grafana/grafana:main                |
| 6  |    mongodb-exporter    |                MongoDB 指标导出镜像，用于 Prometheus 监控采集                 |           来源于 dockerhub，percona/mongodb_exporter:2.37            |
| 7  |      mysql-client      | MySQL 客户端镜像，基于 python 官方镜像改造，安装了 mysqlclient 库，并集成了 MySQL 命令行客户端 |                  来源于 dockerhub，python:3-alpine                   |
| 8  |    mysqld-exporter     |                 MySQL 指标导出镜像，用于 Prometheus 监控采集                  |             来源于 dockerhub，prom/mysqld-exporter:main              |
| 9  |     neokylin-rpms      |                  根据 yaml 文件，自动生成银河麒麟 V7离线 yum 源                  |                          来源于 KubeSphere                          |
| 10 |         nginx          |      基于 Nginx 官方镜像改造，实现了 /etc/nginx 目录下所有 .conf 文件变化时，自动热重载      |                来源于 dockerhub，nginx:stable-alpine                 |
| 11 |       nginx-s3fs       |    基于 CentOS 7 官方镜像改造的 Nginx 镜像，集成了 S3FS 工具，可以直接挂载 Minio 的存储桶    |                      来源于 dockerhub，centos:7                      |
| 12 |     node-exporter      |                   节点指标导出镜像，用于 Prometheus 监控采集                    |       来源于 quay.io，quay.io/prometheus/node-exporter:master        |
| 13 |        postgis         |       基于 Postgres 官方镜像改造，Dockerfile 来自于 postgis/postgis 镜像       |                      来源于 dockerhub，postgres                      |
| 14 |   postgres-exporter    |                Postgres 指标导出镜像，用于 Prometheus 监控采集                | 来源于 quay.io，quay.io/prometheuscommunity/postgres-exporter:master |
| 15 |     redis-exporter     |                 Redis 指标导出镜像，用于 Prometheus 监控采集                  |          来源于 dockerhub，oliver006/redis_exporter:alpine           |

