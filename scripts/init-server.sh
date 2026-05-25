#!/bin/bash

echo "Iniciando atualizacao do jogo..."

/home/steam/steamcmd/steamcmd.sh \
    +force_install_dir /app \
    +login anonymous \
    +app_update "412680 -beta evrima validate" \
    +quit

echo "last update: $(date +"%Y-%m-%d %H:%M:%S")" >> /app/last_updated.txt
echo "Atualizacao do jogo concluida!"

echo "Iniciando servidor..."
exec /app/TheIsleServer.sh -MultiHome=0.0.0.0 -log
