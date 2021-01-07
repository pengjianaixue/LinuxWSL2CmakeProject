#/usr/bin/python3.8
#!/usr/bin/python
import sys
from time import sleep
import pexpect
if __name__ == "__main__":
    print("Start........")
    child = pexpect.spawn("/home/eijpnae/toolScript/visbyAnd8863AutoBuildImp.sh",timeout=60*30)
    # child = pexpect.spawn("ls -a",encoding='utf-8')
    child.logfile = sys.stdout
    child.expect("Is your radoisw repo under path /repo/eijpnae/radiosw")
    child.send("y\n")
    child.expect("#?")
    child.sendline("1")
    child.expect(pexpect.EOF)
    # while child.isalive:
    #     sleep(0.1)
