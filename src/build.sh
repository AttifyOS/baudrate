#!/usr/bin/env sh

set -e
apt update && apt install python-minimal python-pip --yes
pip install pyinstaller==3.6 pyserial==3.5
wget https://github.com/devttys0/baudrate/raw/master/baudrate.py
pyinstaller -F baudrate.py
