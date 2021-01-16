#! /afs/sero.gic.ericsson.se/app/vbuild/RHEL7-x86_64/python/3.8.0/bin/python3.8
import re
import os
import subprocess
from sys import stdout
import sys
def dbFormater():
    git_process = subprocess.run("git status",shell=True, stdout=subprocess.PIPE, cwd='/repo/eijpnae/radiosw')
    gitChangedFiles = str(git_process.stdout,"utf-8").split("\n")
    for printStr in gitChangedFiles:
        modifyFiles = r".*modified:.*(\S)"
        regFind = re.search(modifyFiles, printStr)
        if regFind is not None:
            changedFile = regFind.group().split(" ")[-1]
            # print("git changed file info: ",changedFile)
            file_full_path = "/repo/eijpnae/radiosw/" + changedFile
            if os.path.exists(file_full_path) and (changedFile.endswith(".txt") or changedFile.endswith(".am")):
                print("unix format apply on the file: ",changedFile)
                subprocess.run("sed -i 's/\r//g' {0}".format(file_full_path),shell=True, stdout=subprocess.PIPE, cwd='/repo/eijpnae/radiosw')
    pass

if __name__ == "__main__":
    dbFormater()
    code_style_comand = subprocess.run("codestyle", shell=True, stdout=subprocess.PIPE, cwd='/repo/eijpnae/radiosw')
    print(str(code_style_comand.stdout,"utf-8"))
    pass
