#!/bin/bash

mkdir /minecraft
cd /minecraft

mkdir -p /minecraft/world && \
	wget --no-check-certificate https://media.forgecdn.net/files/2731/545/FTBInfinityServer_3.1.0.zip && \
	unzip FTBInfinityServer_3.1.0.zip && \
	rm FTBInfinityServer_3.1.0.zip && \
	chmod u+x FTBInstall.sh ServerStart.sh && \
	echo "#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://account.mojang.com/documents/minecraft_eula)." > eula.txt && \
	echo "$(date)" >> eula.txt && \
	echo "eula=TRUE" >> eula.txt

sh ./FTBInstall.sh
sh ./ServerStart.sh