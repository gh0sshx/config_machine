#!/usr/bin/python

import os
import sys
import subprocess

os.setuid(0)
os.system("curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o /root/install.sh")
os.system("cd /root && sh install.sh")
os.remove("/root/install.sh")