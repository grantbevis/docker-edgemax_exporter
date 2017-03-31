# edgemax_exporter

Containerised version of [edgemax_exporter](https://github.com/mdlayher/edgemax_exporter)

edgemax_exporter is a metrics exporter for [Prometheus](https://prometheus.io/)

Make sure you set the APCUPSDADDR variable with the details to access your APCUPSD instance

---
#### 0.0.1 (2017-03-31)

Initial release

---
#### Example Run Command

```
docker run -d -p 9162:9162 -e ARGUMENTS="-edgemax.addr https://10.0.0.1 -edgemax.username admin -edgemax.password password -edgemax.insecure" b3vis/edgemax_exporter
```

#### Docker Compose Example
```
version: "2"
services:
  edgemax_exporter:
    image: b3vis/edgemax_exporter
    restart: always
    container_name: edgemax_exporter
    environment:
      - ARGUMENTS="-edgemax.addr https://10.0.0.1 -edgemax.username admin -edgemax.password password -edgemax.insecure"
    ports:
      - "9135:9135"

```
---
