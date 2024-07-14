// arg: Name Units Place UpdateTime

start "Emulator: Room Temp" python emulator.py DHT-1 Celsius /Room_1 7
timeout 3 
start "Emulator: Pulse&Breathing" python emulator.py ElecSensitivityMeter kWh /Metrics 13
timeout 3
start "Emulator: Alarm" python emulator.py Alarm N /Bed-Alarm 5
timeout 3
start "Emulator: Bed Sensor" python emulator.py Motion km /BedPressure 8
timeout 3
start "Tesla Security Manager" python manager.py
timeout 10
start "System GUI" python gui.py



