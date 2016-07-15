= Creates buckets in Couchbase

```console
docker build -t foo/couchbase-server .

This image:

- Configures a Couchbase node
- Creates buckets needed

run the image
docker run -d -p 8091-8093:8091-8093 -p 11210:11210 foo/couchbase

Access the admin URL
http://192.168.99.100:8091/

username : admin
password : password

