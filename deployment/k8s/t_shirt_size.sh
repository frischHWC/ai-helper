
#
# Sum of all CPU requests: 3000 m
# Sum of all Memory requests: 6432 MiB
# Sum of all PVC requests: 192 GiB
# Sum of all CPU limits: 6800 m
# Sum of all Memory limits: 19792 MiB
#
apply_XS() {
    # OPEN WEBUI
    export OW_DB_POOL_SIZE=3
    export OW_DISK_SIZE="10Gi"
    export OW_REQ_CPU="250m"
    export OW_REQ_MEM="512Mi"
    export OW_LIM_CPU="1"
    export OW_LIM_MEM="2Gi"

    # POSTRGESQL
    export PSQL_DISK_SIZE="20Gi"
    export PSQL_REQ_CPU="100m"
    export PSQL_REQ_MEM="128Mi"
    export PSQL_LIM_CPU="250m"
    export PSQL_LIM_MEM="256Mi"

    # OLLAMA
    export OLLAMA_DISK_SIZE="50Gi"
    export OLLAMA_REQ_CPU="500m"
    export OLLAMA_REQ_MEM="2Gi"
    export OLLAMA_LIM_CPU="1"
    export OLLAMA_LIM_MEM="4Gi"

    # MILVUS
    # Standalone
    export MILVUS_STANDALONE_DISK_SIZE="50Gi"
    export MILVUS_STANDALONE_REPLICAS=1
    export MILVUS_STANDALONE_REQ_CPU="500m"
    export MILVUS_STANDALONE_REQ_MEM="512Mi"
    export MILVUS_STANDALONE_LIM_CPU="2"
    export MILVUS_STANDALONE_LIM_MEM="8Gi"
    # Proxy
    export MILVUS_PROXY_REPLICAS=0
    export MILVUS_PROXY_REQ_CPU="100m"
    export MILVUS_PROXY_REQ_MEM="256Mi"
    export MILVUS_PROXY_LIM_CPU="500m"
    export MILVUS_PROXY_LIM_MEM="512Mi"
    # Mix Coord
    export MILVUS_MIXCOORD_REPLICAS=0
    export MILVUS_MIXCOORD_REQ_CPU="200m"
    export MILVUS_MIXCOORD_REQ_MEM="512Mi"
    export MILVUS_MIXCOORD_LIM_CPU="1"
    export MILVUS_MIXCOORD_LIM_MEM="1Gi"
    # Root Coord
    export MILVUS_ROOTCOORD_REPLICAS=0
    export MILVUS_ROOTCOORD_REQ_CPU="200m"
    export MILVUS_ROOTCOORD_REQ_MEM="512Mi"
    export MILVUS_ROOTCOORD_LIM_CPU="1"
    export MILVUS_ROOTCOORD_LIM_MEM="1Gi"
    # Query Coord
    export MILVUS_QUERYCOORD_REPLICAS=0
    export MILVUS_QUERYCOORD_REQ_CPU="200m"
    export MILVUS_QUERYCOORD_REQ_MEM="512Mi"
    export MILVUS_QUERYCOORD_LIM_CPU="1"
    export MILVUS_QUERYCOORD_LIM_MEM="1Gi"
    # Query node
    export MILVUS_QUERYNODE_REPLICAS=0
    export MILVUS_QUERYNODE_REQ_CPU="500m"
    export MILVUS_QUERYNODE_REQ_MEM="2Gi"
    export MILVUS_QUERYNODE_LIM_CPU="1"
    export MILVUS_QUERYNODE_LIM_MEM="4Gi"
    # Index Coord
    export MILVUS_INDEXCOORD_REPLICAS=0
    export MILVUS_INDEXCOORD_REQ_CPU="250m"
    export MILVUS_INDEXCOORD_REQ_MEM="500Mi"
    export MILVUS_INDEXCOORD_LIM_CPU="1"
    export MILVUS_INDEXCOORD_LIM_MEM="1Gi"
    # Index Node
    export MILVUS_INDEXNODE_REPLICAS=0
    export MILVUS_INDEXNODE_REQ_CPU="500m"
    export MILVUS_INDEXNODE_REQ_MEM="1Gi"
    export MILVUS_INDEXNODE_LIM_CPU="1"
    export MILVUS_INDEXNODE_LIM_MEM="4Gi"
    # Datacoord
    export MILVUS_DATACOORD_REPLICAS=0
    export MILVUS_DATACOORD_REQ_CPU="250m"
    export MILVUS_DATACOORD_REQ_MEM="512Mi"
    export MILVUS_DATACOORD_LIM_CPU="500m"
    export MILVUS_DATACOORD_LIM_MEM="1Gi"
    # Datanode
    export MILVUS_DATANODE_REPLICAS=0
    export MILVUS_DATANODE_REQ_CPU="500m"
    export MILVUS_DATANODE_REQ_MEM="1Gi"
    export MILVUS_DATANODE_LIM_CPU="1"
    export MILVUS_DATANODE_LIM_MEM="4Gi"
    # Attu
    export MILVUS_ATTU_REQ_CPU="100m"
    export MILVUS_ATTU_REQ_MEM="256Mi"
    export MILVUS_ATTU_LIM_CPU="250m"
    export MILVUS_ATTU_LIM_MEM="512Mi"
    # MinIo
    export MILVUS_MINIO_DISK_SIZE="50Gi"
    export MILVUS_MINIO_REPLICAS=1
    export MILVUS_MINIO_REQ_CPU="250m"
    export MILVUS_MINIO_REQ_MEM="1Gi"
    export MILVUS_MINIO_LIM_CPU="500m"
    export MILVUS_MINIO_LIM_MEM="2Gi"
    # Etcd
    export MILVUS_ETCD_DISK_SIZE="10Gi"
    export MILVUS_ETCD_REPLICAS=1
    export MILVUS_ETCD_REQ_CPU="500m"
    export MILVUS_ETCD_REQ_MEM="1Gi"
    export MILVUS_ETCD_LIM_CPU="1"
    export MILVUS_ETCD_LIM_MEM="2Gi"
    # Kafka
    export MILVUS_KAFKA_REPLICAS=0
    export MILVUS_KAFKA_DISK_SIZE="10Gi"
    export MILVUS_KAFKA_REQ_CPU="250m"
    export MILVUS_KAFKA_REQ_MEM="1Gi"
    export MILVUS_KAFKA_LIM_CPU="500m"
    export MILVUS_KAFKA_LIM_MEM="2Gi"
    export MILVUS_KAKFA_HEAP_OPTS="-Xmx1024m -Xms512m"
    export MILVUS_KAFKA_ZK_NODES=0
}

#
# Sum of all CPU requests: 5900 m
# Sum of all Memory requests: 13712 MiB
# Sum of all PVC requests: 210 GiB
# Sum of all CPU limits: 11900 m
# Sum of all Memory limits: 33072 MiB
#
apply_S() {
    # OPEN WEBUI
    export OW_DB_POOL_SIZE=3
    export OW_DISK_SIZE="10Gi"
    export OW_REQ_CPU="500m"
    export OW_REQ_MEM="512Mi"
    export OW_LIM_CPU="1"
    export OW_LIM_MEM="2Gi"

    # POSTRGESQL
    export PSQL_DISK_SIZE="20Gi"
    export PSQL_REQ_CPU="100m"
    export PSQL_REQ_MEM="128Mi"
    export PSQL_LIM_CPU="250m"
    export PSQL_LIM_MEM="256Mi"

    # OLLAMA
    export OLLAMA_DISK_SIZE="50Gi"
    export OLLAMA_REQ_CPU="500m"
    export OLLAMA_REQ_MEM="2Gi"
    export OLLAMA_LIM_CPU="2"
    export OLLAMA_LIM_MEM="6Gi"

    # MILVUS
    # Standalone
    export MILVUS_STANDALONE_DISK_SIZE="50Gi"
    export MILVUS_STANDALONE_REPLICAS=0
    export MILVUS_STANDALONE_REQ_CPU="500m"
    export MILVUS_STANDALONE_REQ_MEM="512Mi"
    export MILVUS_STANDALONE_LIM_CPU="2"
    export MILVUS_STANDALONE_LIM_MEM="8Gi"
    # Proxy
    export MILVUS_PROXY_REPLICAS=1
    export MILVUS_PROXY_REQ_CPU="100m"
    export MILVUS_PROXY_REQ_MEM="256Mi"
    export MILVUS_PROXY_LIM_CPU="500m"
    export MILVUS_PROXY_LIM_MEM="512Mi"
    # Mix Coord
    export MILVUS_MIXCOORD_REPLICAS=1
    export MILVUS_MIXCOORD_REQ_CPU="200m"
    export MILVUS_MIXCOORD_REQ_MEM="512Mi"
    export MILVUS_MIXCOORD_LIM_CPU="1"
    export MILVUS_MIXCOORD_LIM_MEM="2Gi"
    # Root Coord
    export MILVUS_ROOTCOORD_REPLICAS=0
    export MILVUS_ROOTCOORD_REQ_CPU="200m"
    export MILVUS_ROOTCOORD_REQ_MEM="512Mi"
    export MILVUS_ROOTCOORD_LIM_CPU="1"
    export MILVUS_ROOTCOORD_LIM_MEM="1Gi"
    # Query Coord
    export MILVUS_QUERYCOORD_REPLICAS=0
    export MILVUS_QUERYCOORD_REQ_CPU="200m"
    export MILVUS_QUERYCOORD_REQ_MEM="512Mi"
    export MILVUS_QUERYCOORD_LIM_CPU="1"
    export MILVUS_QUERYCOORD_LIM_MEM="1Gi"
    # Query node
    export MILVUS_QUERYNODE_REPLICAS=1
    export MILVUS_QUERYNODE_REQ_CPU="500m"
    export MILVUS_QUERYNODE_REQ_MEM="2Gi"
    export MILVUS_QUERYNODE_LIM_CPU="1"
    export MILVUS_QUERYNODE_LIM_MEM="4Gi"
    # Index Coord
    export MILVUS_INDEXCOORD_REPLICAS=0
    export MILVUS_INDEXCOORD_REQ_CPU="250m"
    export MILVUS_INDEXCOORD_REQ_MEM="500Mi"
    export MILVUS_INDEXCOORD_LIM_CPU="1"
    export MILVUS_INDEXCOORD_LIM_MEM="1Gi"
    # Index Node
    export MILVUS_INDEXNODE_REPLICAS=1
    export MILVUS_INDEXNODE_REQ_CPU="500m"
    export MILVUS_INDEXNODE_REQ_MEM="1Gi"
    export MILVUS_INDEXNODE_LIM_CPU="1"
    export MILVUS_INDEXNODE_LIM_MEM="4Gi"
    # Datacoord
    export MILVUS_DATACOORD_REPLICAS=0
    export MILVUS_DATACOORD_REQ_CPU="250m"
    export MILVUS_DATACOORD_REQ_MEM="512Mi"
    export MILVUS_DATACOORD_LIM_CPU="500m"
    export MILVUS_DATACOORD_LIM_MEM="1Gi"
    # Datanode
    export MILVUS_DATANODE_REPLICAS=1
    export MILVUS_DATANODE_REQ_CPU="500m"
    export MILVUS_DATANODE_REQ_MEM="1Gi"
    export MILVUS_DATANODE_LIM_CPU="1"
    export MILVUS_DATANODE_LIM_MEM="4Gi"
    # Attu
    export MILVUS_ATTU_REQ_CPU="100m"
    export MILVUS_ATTU_REQ_MEM="256Mi"
    export MILVUS_ATTU_LIM_CPU="250m"
    export MILVUS_ATTU_LIM_MEM="512Mi"
    # MinIo
    export MILVUS_MINIO_DISK_SIZE="100Gi"
    export MILVUS_MINIO_REPLICAS=1
    export MILVUS_MINIO_REQ_CPU="500m"
    export MILVUS_MINIO_REQ_MEM="2Gi"
    export MILVUS_MINIO_LIM_CPU="1"
    export MILVUS_MINIO_LIM_MEM="4Gi"
    # Etcd
    export MILVUS_ETCD_DISK_SIZE="10Gi"
    export MILVUS_ETCD_REPLICAS=1
    export MILVUS_ETCD_REQ_CPU="500m"
    export MILVUS_ETCD_REQ_MEM="1Gi"
    export MILVUS_ETCD_LIM_CPU="1"
    export MILVUS_ETCD_LIM_MEM="2Gi"
    # Kafka
    export MILVUS_KAFKA_REPLICAS=1
    export MILVUS_KAFKA_DISK_SIZE="10Gi"
    export MILVUS_KAFKA_REQ_CPU="250m"
    export MILVUS_KAFKA_REQ_MEM="1Gi"
    export MILVUS_KAFKA_LIM_CPU="500m"
    export MILVUS_KAFKA_LIM_MEM="2Gi"
    export MILVUS_KAKFA_HEAP_OPTS="-Xmx1024m -Xms512m"
    export MILVUS_KAFKA_ZK_NODES=1
}

#
# Sum of all CPU requests: 11800 m
# Sum of all Memory requests: 28772 MiB
# Sum of all PVC requests: 1451 GiB
# Sum of all CPU limits: 25100 m
# Sum of all Memory limits: 85840 MiB
# 
apply_M() {
    # OPEN WEBUI
    export OW_DB_POOL_SIZE=10
    export OW_DISK_SIZE="50Gi"
    export OW_REQ_CPU="1"
    export OW_REQ_MEM="2Gi"
    export OW_LIM_CPU="2"
    export OW_LIM_MEM="8Gi"

    # POSTRGESQL
    export PSQL_DISK_SIZE="50Gi"
    export PSQL_REQ_CPU="100m"
    export PSQL_REQ_MEM="128Mi"
    export PSQL_LIM_CPU="1"
    export PSQL_LIM_MEM="1Gi"

    # OLLAMA
    export OLLAMA_DISK_SIZE="100Gi"
    export OLLAMA_REQ_CPU="500m"
    export OLLAMA_REQ_MEM="2Gi"
    export OLLAMA_LIM_CPU="2"
    export OLLAMA_LIM_MEM="16Gi"

    # MILVUS
    # Standalone
    export MILVUS_STANDALONE_DISK_SIZE="50Gi"
    export MILVUS_STANDALONE_REPLICAS=0
    export MILVUS_STANDALONE_REQ_CPU="500m"
    export MILVUS_STANDALONE_REQ_MEM="512Mi"
    export MILVUS_STANDALONE_LIM_CPU="2"
    export MILVUS_STANDALONE_LIM_MEM="8Gi"
    # Proxy
    export MILVUS_PROXY_REPLICAS=1
    export MILVUS_PROXY_REQ_CPU="100m"
    export MILVUS_PROXY_REQ_MEM="256Mi"
    export MILVUS_PROXY_LIM_CPU="500m"
    export MILVUS_PROXY_LIM_MEM="512Mi"
    # Mix Coord
    export MILVUS_MIXCOORD_REPLICAS=0
    export MILVUS_MIXCOORD_REQ_CPU="200m"
    export MILVUS_MIXCOORD_REQ_MEM="512Mi"
    export MILVUS_MIXCOORD_LIM_CPU="1"
    export MILVUS_MIXCOORD_LIM_MEM="2Gi"
    # Root Coord
    export MILVUS_ROOTCOORD_REPLICAS=1
    export MILVUS_ROOTCOORD_REQ_CPU="200m"
    export MILVUS_ROOTCOORD_REQ_MEM="512Mi"
    export MILVUS_ROOTCOORD_LIM_CPU="1"
    export MILVUS_ROOTCOORD_LIM_MEM="1Gi"
    # Query Coord
    export MILVUS_QUERYCOORD_REPLICAS=1
    export MILVUS_QUERYCOORD_REQ_CPU="200m"
    export MILVUS_QUERYCOORD_REQ_MEM="512Mi"
    export MILVUS_QUERYCOORD_LIM_CPU="1"
    export MILVUS_QUERYCOORD_LIM_MEM="1Gi"
    # Query node
    export MILVUS_QUERYNODE_REPLICAS=1
    export MILVUS_QUERYNODE_REQ_CPU="500m"
    export MILVUS_QUERYNODE_REQ_MEM="2Gi"
    export MILVUS_QUERYNODE_LIM_CPU="1"
    export MILVUS_QUERYNODE_LIM_MEM="4Gi"
    # Index Coord
    export MILVUS_INDEXCOORD_REPLICAS=1
    export MILVUS_INDEXCOORD_REQ_CPU="250m"
    export MILVUS_INDEXCOORD_REQ_MEM="500Mi"
    export MILVUS_INDEXCOORD_LIM_CPU="1"
    export MILVUS_INDEXCOORD_LIM_MEM="1Gi"
    # Index Node
    export MILVUS_INDEXNODE_REPLICAS=1
    export MILVUS_INDEXNODE_REQ_CPU="500m"
    export MILVUS_INDEXNODE_REQ_MEM="1Gi"
    export MILVUS_INDEXNODE_LIM_CPU="1"
    export MILVUS_INDEXNODE_LIM_MEM="4Gi"
    # Datacoord
    export MILVUS_DATACOORD_REPLICAS=1
    export MILVUS_DATACOORD_REQ_CPU="250m"
    export MILVUS_DATACOORD_REQ_MEM="512Mi"
    export MILVUS_DATACOORD_LIM_CPU="500m"
    export MILVUS_DATACOORD_LIM_MEM="1Gi"
    # Datanode
    export MILVUS_DATANODE_REPLICAS=1
    export MILVUS_DATANODE_REQ_CPU="500m"
    export MILVUS_DATANODE_REQ_MEM="1Gi"
    export MILVUS_DATANODE_LIM_CPU="1"
    export MILVUS_DATANODE_LIM_MEM="4Gi"
    # Attu
    export MILVUS_ATTU_REQ_CPU="100m"
    export MILVUS_ATTU_REQ_MEM="256Mi"
    export MILVUS_ATTU_LIM_CPU="500m"
    export MILVUS_ATTU_LIM_MEM="1Gi"
    # MinIo
    export MILVUS_MINIO_DISK_SIZE="250Gi"
    export MILVUS_MINIO_REPLICAS=4
    export MILVUS_MINIO_REQ_CPU="500m"
    export MILVUS_MINIO_REQ_MEM="2Gi"
    export MILVUS_MINIO_LIM_CPU="1"
    export MILVUS_MINIO_LIM_MEM="4Gi"
    # Etcd
    export MILVUS_ETCD_DISK_SIZE="50Gi"
    export MILVUS_ETCD_REPLICAS=3
    export MILVUS_ETCD_REQ_CPU="500m"
    export MILVUS_ETCD_REQ_MEM="1Gi"
    export MILVUS_ETCD_LIM_CPU="1"
    export MILVUS_ETCD_LIM_MEM="4Gi"
    # Kafka
    export MILVUS_KAFKA_REPLICAS=3
    export MILVUS_KAFKA_DISK_SIZE="25Gi"
    export MILVUS_KAFKA_REQ_CPU="250m"
    export MILVUS_KAFKA_REQ_MEM="1Gi"
    export MILVUS_KAFKA_LIM_CPU="1"
    export MILVUS_KAFKA_LIM_MEM="4Gi"
    export MILVUS_KAKFA_HEAP_OPTS="-Xmx3782m -Xms512m"
    export MILVUS_KAFKA_ZK_NODES=3
}


#
# 
# 
# 
# 
# 
#
apply_L() {
    # OPEN WEBUI
    export OW_DB_POOL_SIZE=10
    export OW_DISK_SIZE="50Gi"
    export OW_REQ_CPU="1"
    export OW_REQ_MEM="2Gi"
    export OW_LIM_CPU="2"
    export OW_LIM_MEM="8Gi"

    # POSTRGESQL
    export PSQL_DISK_SIZE="50Gi"
    export PSQL_REQ_CPU="100m"
    export PSQL_REQ_MEM="128Mi"
    export PSQL_LIM_CPU="1"
    export PSQL_LIM_MEM="1Gi"

    # OLLAMA
    export OLLAMA_DISK_SIZE="100Gi"
    export OLLAMA_REQ_CPU="500m"
    export OLLAMA_REQ_MEM="2Gi"
    export OLLAMA_LIM_CPU="2"
    export OLLAMA_LIM_MEM="16Gi"

    # MILVUS
    # Standalone
    export MILVUS_STANDALONE_DISK_SIZE="50Gi"
    export MILVUS_STANDALONE_REPLICAS=0
    export MILVUS_STANDALONE_REQ_CPU="500m"
    export MILVUS_STANDALONE_REQ_MEM="512Mi"
    export MILVUS_STANDALONE_LIM_CPU="2"
    export MILVUS_STANDALONE_LIM_MEM="8Gi"
    # Proxy
    export MILVUS_PROXY_REPLICAS=1
    export MILVUS_PROXY_REQ_CPU="100m"
    export MILVUS_PROXY_REQ_MEM="256Mi"
    export MILVUS_PROXY_LIM_CPU="500m"
    export MILVUS_PROXY_LIM_MEM="512Mi"
    # Mix Coord
    export MILVUS_MIXCOORD_REPLICAS=0
    export MILVUS_MIXCOORD_REQ_CPU="200m"
    export MILVUS_MIXCOORD_REQ_MEM="512Mi"
    export MILVUS_MIXCOORD_LIM_CPU="1"
    export MILVUS_MIXCOORD_LIM_MEM="2Gi"
    # Root Coord
    export MILVUS_ROOTCOORD_REPLICAS=1
    export MILVUS_ROOTCOORD_REQ_CPU="200m"
    export MILVUS_ROOTCOORD_REQ_MEM="512Mi"
    export MILVUS_ROOTCOORD_LIM_CPU="1"
    export MILVUS_ROOTCOORD_LIM_MEM="1Gi"
    # Query Coord
    export MILVUS_QUERYCOORD_REPLICAS=1
    export MILVUS_QUERYCOORD_REQ_CPU="200m"
    export MILVUS_QUERYCOORD_REQ_MEM="512Mi"
    export MILVUS_QUERYCOORD_LIM_CPU="1"
    export MILVUS_QUERYCOORD_LIM_MEM="1Gi"
    # Query node
    export MILVUS_QUERYNODE_REPLICAS=1
    export MILVUS_QUERYNODE_REQ_CPU="500m"
    export MILVUS_QUERYNODE_REQ_MEM="2Gi"
    export MILVUS_QUERYNODE_LIM_CPU="1"
    export MILVUS_QUERYNODE_LIM_MEM="4Gi"
    # Index Coord
    export MILVUS_INDEXCOORD_REPLICAS=1
    export MILVUS_INDEXCOORD_REQ_CPU="250m"
    export MILVUS_INDEXCOORD_REQ_MEM="500Mi"
    export MILVUS_INDEXCOORD_LIM_CPU="1"
    export MILVUS_INDEXCOORD_LIM_MEM="1Gi"
    # Index Node
    export MILVUS_INDEXNODE_REPLICAS=1
    export MILVUS_INDEXNODE_REQ_CPU="500m"
    export MILVUS_INDEXNODE_REQ_MEM="1Gi"
    export MILVUS_INDEXNODE_LIM_CPU="1"
    export MILVUS_INDEXNODE_LIM_MEM="4Gi"
    # Datacoord
    export MILVUS_DATACOORD_REPLICAS=1
    export MILVUS_DATACOORD_REQ_CPU="250m"
    export MILVUS_DATACOORD_REQ_MEM="512Mi"
    export MILVUS_DATACOORD_LIM_CPU="500m"
    export MILVUS_DATACOORD_LIM_MEM="1Gi"
    # Datanode
    export MILVUS_DATANODE_REPLICAS=1
    export MILVUS_DATANODE_REQ_CPU="500m"
    export MILVUS_DATANODE_REQ_MEM="1Gi"
    export MILVUS_DATANODE_LIM_CPU="1"
    export MILVUS_DATANODE_LIM_MEM="4Gi"
    # Attu
    export MILVUS_ATTU_REQ_CPU="100m"
    export MILVUS_ATTU_REQ_MEM="256Mi"
    export MILVUS_ATTU_LIM_CPU="500m"
    export MILVUS_ATTU_LIM_MEM="1Gi"
    # MinIo
    export MILVUS_MINIO_DISK_SIZE="250Gi"
    export MILVUS_MINIO_REPLICAS=4
    export MILVUS_MINIO_REQ_CPU="500m"
    export MILVUS_MINIO_REQ_MEM="2Gi"
    export MILVUS_MINIO_LIM_CPU="1"
    export MILVUS_MINIO_LIM_MEM="4Gi"
    # Etcd
    export MILVUS_ETCD_DISK_SIZE="50Gi"
    export MILVUS_ETCD_REPLICAS=3
    export MILVUS_ETCD_REQ_CPU="500m"
    export MILVUS_ETCD_REQ_MEM="1Gi"
    export MILVUS_ETCD_LIM_CPU="1"
    export MILVUS_ETCD_LIM_MEM="4Gi"
    # Kafka
    export MILVUS_KAFKA_REPLICAS=3
    export MILVUS_KAFKA_DISK_SIZE="25Gi"
    export MILVUS_KAFKA_REQ_CPU="250m"
    export MILVUS_KAFKA_REQ_MEM="1Gi"
    export MILVUS_KAFKA_LIM_CPU="1"
    export MILVUS_KAFKA_LIM_MEM="4Gi"
    export MILVUS_KAKFA_HEAP_OPTS="-Xmx3782m -Xms512m"
    export MILVUS_KAFKA_ZK_NODES=3
}

#
# 
# 
# 
# 
# 
#
apply_XL() {
    # OPEN WEBUI
    export OW_DB_POOL_SIZE=20
    export OW_DISK_SIZE="50Gi"
    export OW_REQ_CPU="1"
    export OW_REQ_MEM="2Gi"
    export OW_LIM_CPU="4"
    export OW_LIM_MEM="32Gi"

    # POSTRGESQL
    export PSQL_DISK_SIZE="250Gi"
    export PSQL_REQ_CPU="100m"
    export PSQL_REQ_MEM="128Mi"
    export PSQL_LIM_CPU="2"
    export PSQL_LIM_MEM="8Gi"

    # OLLAMA
    export OLLAMA_DISK_SIZE="1000Gi"
    export OLLAMA_REQ_CPU="500m"
    export OLLAMA_REQ_MEM="2Gi"
    export OLLAMA_LIM_CPU="4"
    export OLLAMA_LIM_MEM="32Gi"

    # MILVUS
    # Standalone
    export MILVUS_STANDALONE_DISK_SIZE="50Gi"
    export MILVUS_STANDALONE_REPLICAS=0
    export MILVUS_STANDALONE_REQ_CPU="500m"
    export MILVUS_STANDALONE_REQ_MEM="512Mi"
    export MILVUS_STANDALONE_LIM_CPU="2"
    export MILVUS_STANDALONE_LIM_MEM="8Gi"
    # Proxy
    export MILVUS_PROXY_REPLICAS=3
    export MILVUS_PROXY_REQ_CPU="100m"
    export MILVUS_PROXY_REQ_MEM="256Mi"
    export MILVUS_PROXY_LIM_CPU="1"
    export MILVUS_PROXY_LIM_MEM="4Gi"
    # Mix Coord
    export MILVUS_MIXCOORD_REPLICAS=0
    export MILVUS_MIXCOORD_REQ_CPU="200m"
    export MILVUS_MIXCOORD_REQ_MEM="512Mi"
    export MILVUS_MIXCOORD_LIM_CPU="1"
    export MILVUS_MIXCOORD_LIM_MEM="2Gi"
    # Root Coord
    export MILVUS_ROOTCOORD_REPLICAS=3
    export MILVUS_ROOTCOORD_REQ_CPU="200m"
    export MILVUS_ROOTCOORD_REQ_MEM="512Mi"
    export MILVUS_ROOTCOORD_LIM_CPU="1"
    export MILVUS_ROOTCOORD_LIM_MEM="4Gi"
    # Query Coord
    export MILVUS_QUERYCOORD_REPLICAS=3
    export MILVUS_QUERYCOORD_REQ_CPU="200m"
    export MILVUS_QUERYCOORD_REQ_MEM="512Mi"
    export MILVUS_QUERYCOORD_LIM_CPU="1"
    export MILVUS_QUERYCOORD_LIM_MEM="4Gi"
    # Query node
    export MILVUS_QUERYNODE_REPLICAS=6
    export MILVUS_QUERYNODE_REQ_CPU="500m"
    export MILVUS_QUERYNODE_REQ_MEM="2Gi"
    export MILVUS_QUERYNODE_LIM_CPU="2"
    export MILVUS_QUERYNODE_LIM_MEM="8Gi"
    # Index Coord
    export MILVUS_INDEXCOORD_REPLICAS=3
    export MILVUS_INDEXCOORD_REQ_CPU="250m"
    export MILVUS_INDEXCOORD_REQ_MEM="500Mi"
    export MILVUS_INDEXCOORD_LIM_CPU="1"
    export MILVUS_INDEXCOORD_LIM_MEM="4Gi"
    # Index Node
    export MILVUS_INDEXNODE_REPLICAS=3
    export MILVUS_INDEXNODE_REQ_CPU="500m"
    export MILVUS_INDEXNODE_REQ_MEM="1Gi"
    export MILVUS_INDEXNODE_LIM_CPU="2"
    export MILVUS_INDEXNODE_LIM_MEM="8Gi"
    # Datacoord
    export MILVUS_DATACOORD_REPLICAS=3
    export MILVUS_DATACOORD_REQ_CPU="250m"
    export MILVUS_DATACOORD_REQ_MEM="512Mi"
    export MILVUS_DATACOORD_LIM_CPU="1"
    export MILVUS_DATACOORD_LIM_MEM="4Gi"
    # Datanode
    export MILVUS_DATANODE_REPLICAS=6
    export MILVUS_DATANODE_REQ_CPU="500m"
    export MILVUS_DATANODE_REQ_MEM="1Gi"
    export MILVUS_DATANODE_LIM_CPU="2"
    export MILVUS_DATANODE_LIM_MEM="8Gi"
    # Attu
    export MILVUS_ATTU_REQ_CPU="100m"
    export MILVUS_ATTU_REQ_MEM="256Mi"
    export MILVUS_ATTU_LIM_CPU="500m"
    export MILVUS_ATTU_LIM_MEM="1Gi"
    # MinIo
    export MILVUS_MINIO_DISK_SIZE="500Gi"
    export MILVUS_MINIO_REPLICAS=8
    export MILVUS_MINIO_REQ_CPU="500m"
    export MILVUS_MINIO_REQ_MEM="2Gi"
    export MILVUS_MINIO_LIM_CPU="1"
    export MILVUS_MINIO_LIM_MEM="4Gi"
    # Etcd
    export MILVUS_ETCD_DISK_SIZE="100Gi"
    export MILVUS_ETCD_REPLICAS=3
    export MILVUS_ETCD_REQ_CPU="500m"
    export MILVUS_ETCD_REQ_MEM="1Gi"
    export MILVUS_ETCD_LIM_CPU="1"
    export MILVUS_ETCD_LIM_MEM="4Gi"
    # Kafka
    export MILVUS_KAFKA_REPLICAS=3
    export MILVUS_KAFKA_DISK_SIZE="50Gi"
    export MILVUS_KAFKA_REQ_CPU="250m"
    export MILVUS_KAFKA_REQ_MEM="1Gi"
    export MILVUS_KAFKA_LIM_CPU="1"
    export MILVUS_KAFKA_LIM_MEM="4Gi"
    export MILVUS_KAKFA_HEAP_OPTS="-Xmx3782m -Xms512m"
    export MILVUS_KAFKA_ZK_NODES=3
}