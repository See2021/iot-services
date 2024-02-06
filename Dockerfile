# Use the official eclipse-mosquitto image as a base
FROM eclipse-mosquitto

RUN echo "persistence true" > /mosquitto/config/mosquitto.conf && \
    echo "persistence_location /mosquitto/data/" >> /mosquitto/config/mosquitto.conf && \
    echo "user mosquitto" >> /mosquitto/config/mosquitto.conf && \
    echo "listener 1883" >> /mosquitto/config/mosquitto.conf && \
    echo "allow_anonymous true" >> /mosquitto/config/mosquitto.conf && \
    echo "log_dest file /mosquitto/log/mosquitto.log" >> /mosquitto/config/mosquitto.conf && \
    echo "log_dest stdout" >> /mosquitto/config/mosquitto.conf

