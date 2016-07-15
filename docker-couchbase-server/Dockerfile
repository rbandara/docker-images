FROM couchbase

COPY create-bucket.sh /opt/couchbase
COPY data /opt/couchbase/data

CMD ["/opt/couchbase/create-bucket.sh"]

