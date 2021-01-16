#!/usr/bin/python
import sys
from time import sleep
import pexpect
if __name__ == "__main__":
    print("Start........")
    child = pexpect.spawn("/home/eijpnae/toolScript/visbyAnd8863AutoBuildImp.sh",timeout=60*30)
    child.logfile = sys.stdout
    child.expect("Is your radoisw repo under path /repo/eijpnae/radiosw")
    child.sendline("y")
    child.expect("#?")
    child.sendline("5")
    child.expect(pexpect.EOF)
