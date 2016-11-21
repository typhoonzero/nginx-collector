Hostname "{{ HOSTNAME }}"

FQDNLookup false
Interval 10
Timeout 2
ReadThreads 5
WriteThreads 5

LoadPlugin nginx
LoadPlugin network

<Plugin "nginx">
    URL "http://{{ NGINX_HOST }}:{{ NGINX_PORT }}/nginx_status"
</Plugin>


<Plugin "network">
    Server "{{ INFLUX_HOST }}" "{{ INFLUX_PORT }}"
</Plugin>

