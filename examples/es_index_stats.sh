# Get stats for a single day (index) of Logstash events.
# See more options at http://www.elasticsearch.org/guide/reference/api/admin-indices-stats/
curl -s -XGET 'http://libraryweb.kumc.edu:9200/logstash-2013.09.03/_stats'
