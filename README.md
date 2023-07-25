# Mosquitto Stack by Musuyaba

## Table of Contents
* [About The Project](#about-the-project)
* [Requirements](#requirements)

## About The Project
This project included in my portofolio as IoT Engineer, of course what I can use is basic sample for every stack that I use.

## Requirements

## Features
- Authentication user-password
- Encryption user password
- Add user
- Delete user
- Logging Mosquitto Broker
- Securing Connection using OpenSSL
- Example on C++, Python, and Node.js

## Usage
### Docker
- Generate SSL Certificate using this example:
```shell
# View config for debugging config
docker compose --profile ssl config
# Build to generate ssl to ./certs/generated
docker compose --profile ssl up --build
# Please note these are the last lines of ssl  
# ssl  | Certificate request self-signature ok
# ssl  | subject=C = ID, ST = EastJava, L = MusuyabaHut, O = ServerCertMusuyaba, OU = TestServerCert, CN = mosquitto-broker     
# ssl  | server.crt: OK
# ssl exited with code 0
```
- 

## Roadmap
### In Progress
- [ ] CPP Client
- [ ] Node.js Client
- [ ] Python Client

### Done ✓
- [x] Create Readme.md
- [x] Docker for OpenSSL
- [x] Docker for Broker
- [x] Docker for Subscriber
- [x] Docker for Publisher

<!-- LICENSE -->
## License

Distributed under the MIT License. 


<!-- CONTACT -->
## Contact
Please, if you had any hestitate contact me on: 

[Telegram @musuyaba](https://t.me/musuyaba) - m.sulthon.yb@gmail.com


<!-- # Mosquitto - Authentication
## docker compose --profile mosquitto-stack config
## docker compose --profile mosquitto-stack up --build -d
## docker compose logs -f mosquitto-sub
## docker compose exec mosquitto-broker mosquitto_passwd -b /mosquitto/config/password.txt newUser newUser
## docker restart mosquitto-broker
## docker compose exec mosquitto-pub mosquitto_pub -h mosquitto-broker -t topics/iot -m "Wellcome to Hell as admin" -u admin -P admin --cafile /mosquitto/certs/generated/ca.crt --tls-version tlsv1.2 -d
## docker compose exec mosquitto-pub mosquitto_pub -h mosquitto-broker -t topics/iot -m "Wellcome to Hell as user" -u user -P user -d
## docker compose exec mosquitto-pub mosquitto_pub -h mosquitto-broker -t topics/iot -m "Wellcome to Hell as newUser" -u newUser -P newUser -d
## docker compose exec mosquitto-broker mosquitto_passwd -D /mosquitto/config/password.txt user
## docker restart mosquitto-broker
## docker compose exec mosquitto-pub mosquitto_pub -h mosquitto-broker -t topics/iot -m "Wellcome to Hell as user" -u user -P user
## docker compose --profile mosquitto-stack down

RabbitMQ - Telegraf - InfluxDB Grafana
EMQX - Telegraf - InfluxDB Grafana

Kafka
# iot-stack -->
