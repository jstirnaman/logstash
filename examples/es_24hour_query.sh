# Query two days of indexes and return all docs with timestamp in a 24-hour period.
# For pretty indented output, _search?pretty=true
curl -XGET http://libraryweb.kumc.edu:9200/logstash-2013.09.03,logstash-2013.09.02/_search? -d'
{
  "query": {
    "filtered": {
      "query": {
        "query_string": {
          "query": "*:*"
        }
      },
      "filter": {
        "range": {
          "@timestamp": {
            "from": "2013-09-02T18:42:10.120Z",
            "to": "2013-09-03T18:42:10.120Z"
          }
        }
      }
    }
  },
  "highlight": {
    "fields": {},
    "fragment_size": 2147483647,
    "pre_tags": [
      "@start-highlight@"
    ],
    "post_tags": [
      "@end-highlight@"
    ]
  },
  "size": 500,
  "sort": [
    {
      "@timestamp": {
        "order": "desc"
      }
    }
  ]
}'
