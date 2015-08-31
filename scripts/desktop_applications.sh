#!/bin/bash -e
apt-get -y install \
evince \
gftp \
imagemagick \
leafpad \
xrdp \
tightvncserver \
gksu \
lxrandr \
&& apt-get install -y --no-install-recommends \
firefox