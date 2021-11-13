Import("env")
from pathlib import Path

# Python callback
def on_upload(source, target, env):
    for x in source:
        print(x)
    for x in target:
        print(x)
    print(env)
    for k,v in env.items():
        print(str(k) + " " + str(v))
    firmware_path = str(source[0])
    # do something

    env.Execute("custom_tools/skr_uploader/upload.py "+str(target[0])+" "+"115200"+" "+firmware_path)

env.Replace(UPLOADCMD=on_upload)