FROM ubuntu:latest
RUN apt update -qq
RUN apt install -y shellinabox screen
RUN apt install -y wget vim
RUN apt install -y julia
RUN apt install -y python3 python3-pip

COPY start_shellinaboxd.sh start_shell.sh /usr/bin/
RUN chmod +x /usr/bin/start_shellinaboxd.sh /usr/bin/start_shell.sh

RUN mkdir -p /app/.screen
ENV SCREENDIR /app/.screen

EXPOSE $PORT
CMD ["/usr/bin/start_shellinaboxd.sh"]
