onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cryptoprocessor_opt

do {wave.do}

view wave
view structure
view signals

do {cryptoprocessor.udo}

run -all

quit -force
