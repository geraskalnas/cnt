FROM ubuntu:latest
RUN apt update -qq
RUN apt install -y shellinabox screen
RUN apt install -y wget vim
RUN apt install -y julia
RUN apt install -y python3 python3-pip
RUN apt install -y sudo

COPY start_shellinaboxd.sh start_shell.sh /usr/bin/
RUN chmod +x /usr/bin/start_shellinaboxd.sh /usr/bin/start_shell.sh

RUN mkdir -p /app/.screen
ENV SCREENDIR /app/.screen

RUN useradd -m main && echo "main:main" | chpasswd && adduser main sudo
RUN groupadd dyno && adduser main dyno

EXPOSE $PORT
USER main
CMD ["/usr/bin/start_shellinaboxd.sh"]
