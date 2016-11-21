FROM alpine:3.4
MAINTAINER typhoonzero<typhoonzero1986@gmail.com>

RUN apk add --no-cache collectd collectd-curl collectd-rrdtool collectd-nginx collectd-write_http collectd-network py-pip

RUN pip install envtpl
ADD collectd.conf.tpl /etc/collectd/collectd.conf.tpl
ADD collectd.d /etc/collectd/collectd.d
CMD sleep 10; for template in /etc/collectd/collectd.conf.tpl ; do envtpl $template ; done && exec collectd -f
