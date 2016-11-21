docker-collectd
===============
use docker to run collectd to get nginx monitor info into influxdb

# Run
```
docker run -e HOSTNAME=aaa ... [your image]
```

# Build
```
docker build -t [yourimage]:[yourtag]
```

# Configuration
config the below environment virables to
* HOSTNAME: hostname for local machine
* INFLUX_HOST: influxdb machine host or IP
* INFLUX_PORT: influxdb port
* INFLUX_USER: you know this
* INFLUX_PASSWD: you know this too
* NGINX_HOST: nginx to monitor
* NGINX_PORT: where nginx serves "nginx_status"
