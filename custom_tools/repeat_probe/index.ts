import { SerialPort, ReadlineParser } from 'serialport';

let k = {
    port: '/dev/ttyACM0',
    rate: 115200,
}

let port = new SerialPort({ path: k.port, baudRate: k.rate });
const parser = new ReadlineParser()
port.pipe(parser)
parser.on('data', console.log)

port.write("G30 X100 Y100\n");
port.drain();

