FROM grafana/grafana:main

## all dashboard json need to be patched by sed
## sed -i 's#${DS_PROMETHEUS}#Prometheus#g' dashboards
## sed -i 's#${DS_PROMETHEUS-DEV-EU}#Prometheus#g' dashboards
## sed -i 's#${DS_TEST-PROMETHEUS}#Prometheus#g' dashboards
## sed -i 's#${VAR_DATASOURCE}#Prometheus#g' dashboards
## sed -i 's#${DS_PROMETHEUS.INTERNAL-ODMONT.COM}#Prometheus#g' dashboards
COPY dashboards /usr/share/grafana/dashboards