Import("env")
from pathlib import Path
import serial.tools.list_ports
import sys

def on_upload(source, target, env):
    firmware_path = str(source[0])
    port=""
    envd=env.Dictionary()
    if "UPLOAD_PORT" in envd:
        port=str(env["UPLOAD_PORT"])
    else:
        possible=serial.tools.list_ports.grep("MARLIN")
        print(possible)
        try:
            port=str(next(possible).device)
        except (StopIteration):
            sys.exit("Automatic port search failed. Specifiy a port manually with '--upload-port'")
    env.Execute("custom_tools/skr_uploader/upload.py " + port + " 115200 " + firmware_path)
    return 0

env.Replace(UPLOADCMD=on_upload)