# Logstash for KUMC #
# jstirnaman@kumc.edu #

## Starting up ##
  Startup Logstash from the rakefile (purely for convenience) and load the EZProxy configuration: rake logstash:start CONF=ezproxy.conf

## Example query of EZProxy logs having been indexed in ElasticSearch using config/ezproxy.conf. ##
  * curl -s -XGET http://127.0.0.1:9200/_search?q=request_client_ip:"10.21.*" => Find all requests coming from Dykes Library's internal IP range.

