curl http://master node: port/_cat/shards?h=index,shard,prirep,state,unassigned.reason | grep UNASSIGNED | awk '{print "http://master node: port/" $1}'
