# edgemax_exporter

Containerised version of [edgemax_exporter](https://github.com/mdlayher/edgemax_exporter)

edgemax_exporter is a metrics exporter for [Prometheus](https://prometheus.io/)

---
#### 0.0.2 (2017-12-13)

- Initial release
- Dramatically reduced image size

---
#### Example Run Command

```
docker run -d -p 9132:9132 -e ARGUMENTS="-edgemax.addr https://10.0.0.1 -edgemax.username admin -edgemax.password password -edgemax.insecure" b3vis/edgemax_exporter
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
      - "9132:9132"

```
---
