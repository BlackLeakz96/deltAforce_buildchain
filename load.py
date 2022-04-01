#!/usr/bin/env Python3
# load.py


import os
import sys
import subprocess



def perf():
    os.system("sudo su delta")
    os.system("mkdir -p /home/delta/buildchain")
    os.system("sudo chmod 777 -R /home/delta/buildchain")
    os.system("sudo chown delta -hR /home/delta/buildchain")
    os.system("git clone https://github.com/bootlin/buildroot-toolchains.git /home/delta/buildchain/bootlin")




def main():
    perf()



if __name__ == '__main__':
    main()
