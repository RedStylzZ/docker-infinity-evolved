# FROM adoptopenjdk:8-jre
FROM openjdk:8-slim

#Copy script to docker container
COPY script.sh .

# Updating container
RUN apt-get update && \
	apt-get install apt-utils wget unzip -y && \
	apt-get upgrade -y --allow-remove-essential && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

#Install and start server
CMD [ "sh", "./script.sh" ]

#Expose ports to connect
EXPOSE 25565
EXPOSE 25575

#Expose Volume
VOLUME /minecraft
