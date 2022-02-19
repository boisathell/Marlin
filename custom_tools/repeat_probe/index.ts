#!/usr/bin/env ts-node

import { SerialPort, ReadlineParser } from 'serialport';

const USAGE = `USAGE: ./probe.ts [PORT] [BAUDRATE?] [PROBE_CYCLES?]

Default BAUDRATE=115200
Default PROBE_CYCLES=225

Output: Raw floating point Z positions seperated by newlines.`
let args = process.argv.slice(2);
if (args.length == 0) {
    console.log(USAGE);
    process.exit(1);
}


let k = {
    port: args[0],
    rate: args[1] ? parseInt(args[1]) : 115200,
    cycles: args[2] ? parseInt(args[2]) : 225,
}

let port = new SerialPort({ path: k.port, baudRate: k.rate });
const parser = new ReadlineParser()
port.pipe(parser)

function probe_cmd() {
    port.write("G30 X100 Y100\n");
    port.drain();
}


let completed_n = 0;
parser.on('data', (line:string) => {
    if (line.startsWith('ok')) { 
        /* finished probing */
        completed_n++;
        if (completed_n >= k.cycles) {
            process.exit(0);
        } else {
            probe_cmd();
        }
    }
    if (line.startsWith('Bed X:')) {
        /* z probe line */
        let z = parseInt(line.split('Z: ')[1]);
        if (z != NaN) {
            console.log(z);
        }
    }
});


probe_cmd();
