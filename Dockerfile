FROM steamcmd/steamcmd:debian-12
RUN steamcmd +force_install_dir /home/dst +login anonymous +app_update 343050 validate +quit
RUN apt-get update && apt-get install -y libcurl4-gnutls-dev
WORKDIR /home/dst/bin64
ADD command.sh /home/dst/bin64/command.sh
RUN chmod +x /home/dst/bin64/command.sh
ENTRYPOINT ["/home/dst/bin64/command.sh"]