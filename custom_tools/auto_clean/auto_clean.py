import io
import os
import serial.tools.list_ports

def auto_clean():
    possible=serial.tools.list_ports.grep("MARLIN")
    port=str(next(possible).device)
    baudrate=115200
    os.system('stty --file=' + port + ' speed ' + str(baudrate) + ' -echo > /dev/null')
    printer = serial.Serial(port, baudrate)
    sio = io.TextIOWrapper(io.BufferedRWPair(printer, printer))
    #
    print(sio.readlines())
    sio.write(b'M503\n')
    sio.flush()
    for line in sio.readlines():
        print(line)


if __name__ == "__main__":
    auto_clean()



