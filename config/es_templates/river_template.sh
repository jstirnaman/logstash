curl -XPUT 'http://libraryweb.kumc.edu:9200/_river/logstash/_meta' -d '{
    "type" : "rabbitmq",
    "rabbitmq" : {
        "host" : "libraryweb",
        "port" : 5672,
        "user" : "guest",
        "pass" : "guest",
        "vhost" : "/",
        "queue" : "elasticsearch",
        "exchange" : "elasticsearch",
        "routing_key" : "logstash.#",
        "exchange_declare" : true,
        "exchange_type" : "direct",
        "exchange_durable" : true,
        "queue_declare" : true,
        "queue_bind" : true,
        "queue_durable" : true,
        "queue_auto_delete" : false,
        "heartbeat" : "30m"
    },
    "index" : {
        "bulk_size" : 100,
        "bulk_timeout" : "10ms",
        "ordered" : false
    }
}'

