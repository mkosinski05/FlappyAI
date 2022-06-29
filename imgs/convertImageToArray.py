from PIL import Image
import numpy as np
import ctypes
import typing
import binascii

FILES = ["bg", "base", "bird1", "bird2", "bird3", "pipe1", "pipe2"]

for file in FILES :
	image = Image.open(file+".png")
	image = image.convert("RGBA")

	data = list(image.getdata())
	fp = open(file+".raw", "wb")
	hdr = open(file+".h", "w")
	hdr.write ("uint8_t "+file+"[] = { \n")
	
	for ndx, d in enumerate(data) :
		for x, i in enumerate(d) :
			fp.write(i.to_bytes(1, "big"))
			b = i.to_bytes(1, "big")
			if len(data)*4 > ((ndx+1)*4)-(3-x) :
				hdr.write(f'0x{binascii.hexlify(b).decode("ascii")}'+", ")
			else :
				hdr.write(f'0x{binascii.hexlify(b).decode("ascii")}')
		if ((((ndx+1)*4) % 20) == 0 ) and (ndx != 0) :
			hdr.write("\n")
	hdr.write(" }");

