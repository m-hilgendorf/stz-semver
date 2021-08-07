#!/bin/bash -eu
mkdir -p build/pkg
mkdir -p build/bin
mkdir -p stanza-modules

wget "http://lbstanza.org/resources/stanza/lstanza_0_14_4.zip"
unzip "lstanza_0_14_4.zip" -d stanza-modules/stanza
rm "lstanza_0_14_4.zip"
echo "platform = linux" > .stanza
echo "install-dir = \"stanza-modules/stanza\"" >> .stanza
