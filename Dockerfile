FROM ubuntu:latest
RUN apt update -qq && apt install -y screen shellinabox python3 python3-pip
RUN pip3 install spotdl
RUN passwd -d root
RUN mkdir /app
COPY start_shellinabox.sh start_shell /usr/bin/
EXPOSE $PORT
CMD ["/usr/bin/start_shellinaboxd.sh"]
