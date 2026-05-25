FROM cm2network/steamcmd

WORKDIR /app

COPY --chown=steam:steam configs/Game.ini /app/TheIsle/Saved/Config/LinuxServer/Game.ini
COPY --chown=steam:steam configs/Engine.ini /app/TheIsle/Saved/Config/LinuxServer/Engine.ini

COPY --chown=steam:steam scripts/init-server.sh /app-scripts/init-server.sh
RUN chmod +x /app-scripts/init-server.sh

EXPOSE 7777/udp
EXPOSE 7777/tcp
EXPOSE 10000/tcp
EXPOSE 27015/udp

ENTRYPOINT [ "/app-scripts/init-server.sh" ]
