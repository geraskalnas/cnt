#!/bin/bash
export -p >> /app/saved_env.sh
shellinaboxd --disable-peer-check -t -s /:$(whoami):dyno:/:/usr/bin/start_shell.sh
