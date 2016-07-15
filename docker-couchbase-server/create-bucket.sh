# Enables job control
set -m

# Enables error propagation 
set -e

/entrypoint.sh couchbase-server &

sleep 15

curl --fail -v -X POST http://127.0.0.1:8091/pools/default -d memoryQuota=300 -d indexMemoryQuota=300
curl --fail -v http://127.0.0.1:8091/node/controller/setupServices -d services=kv%2Cn1ql%2Cindex
curl --fail -v http://127.0.0.1:8091/settings/web -d port=8091 -d username=admin -d password=password

#Create the bucket
couchbase-cli bucket-create -c 127.0.0.1 --bucket=my_bucket --bucket-ramsize=100 -u admin -p password

fg 1

