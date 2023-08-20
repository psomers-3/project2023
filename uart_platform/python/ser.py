import serial

ser = serial.Serial()
ser.baudrate = 9600
ser.port = 'COM4'
ser.timeout = None
print(ser)

ser.open()
print(ser.isOpen())

for i in range(2):
	x = ser.read(1)
	y = ser.read(1)
	z = ser.read(1)
	print(int.from_bytes(x, 'big', signed=False))
	print(int.from_bytes(y, 'big', signed=False))
	print(int.from_bytes(z, 'big', signed=False))
	print("\n")

ser.close()