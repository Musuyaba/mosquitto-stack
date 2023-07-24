# Set Base Image
FROM eclipse-mosquitto:2.0 as base

# Using Password Path from docker compose build args
ARG PASSWORD_PATH

# Set Working Directory to Root
WORKDIR /

# Copy Password to create authentication
COPY "config/password.txt.example" "/mosquitto/config/password.txt"

# Encryption default "admin" and "user" 
RUN mosquitto_passwd -U ${PASSWORD_PATH}