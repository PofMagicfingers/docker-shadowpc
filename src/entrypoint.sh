#!/bin/bash

sudo chown -R $(id -u):$(id -g) /home/shadowpc
sudo dbus-daemon --system --fork

exec $@
