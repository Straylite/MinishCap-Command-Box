function pos(arg)
	x,y = unpack(arg)
	memory.write_u16_le(0x0300118E, tonumber(x or 0))
    memory.write_u16_le(0x03001192, tonumber(y or 0)) 
end