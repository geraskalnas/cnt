#!/bin/bash
export -p >> /app/saved_env.sh
shellinaboxd --port $PORT -d --disable-peer-check -t -s /:$(whoami):dyno:/:/usr/bin/start_shell.sh
