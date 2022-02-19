import { SerialPort } from 'serialport';

let k = {
    port: '/dev/ttyACM0',
    rate: 115200,
}

let port = new SerialPort({ path: k.port, baudRate: k.rate });
port.write("G30 X100 Y100");
port.drain();

