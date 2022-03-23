#!/bin/bash -eu 
STANZA_VERSION=0.15.12
STANZA_ZIP="lstanza_$(echo $STANZA_VERSION | sed -r 's/\./_/g').zip"

mkdir -p ~/.local/share
mkdir -p ~/.local/bin

wget "http://lbstanza.org/resources/stanza/$STANZA_ZIP"
unzip "$STANZA_ZIP" -d stanza-$STANZA_VERSION
rm $STANZA_ZIP

echo "platform = linux" > .stanza
echo "install-dir = \"stanza-$STANZA_VERSION\"" >> .stanza
