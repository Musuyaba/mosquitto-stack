#!/bin/bash
cd "generated"

openssl genrsa -des3 -out ca.key -passout pass:1234 2048
openssl req -new -x509 -days 1826 -key ca.key -out ca.crt --passin pass:1234 -subj "/C=ID/ST=EastJava/L=MusuyabaHut/O=CaMasterMusuyaba/OU=TestCAMaster/CN=mosquitto-broker"
openssl genrsa -out server.key 2048
openssl req -new -out server.csr -key server.key --passin pass:1234 -subj "/C=ID/ST=EastJava/L=MusuyabaHut/O=ServerCertMusuyaba/OU=TestServerCert/CN=mosquitto-broker"
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 360 --passin pass:1234
openssl verify -CAfile ca.crt server.crt