function fight(arg)
    local str = table.concat(arg," ")
	if str == "big green chu" then fightwarp(0x49, 0x00, 0x88, 0xD8-26-5, 1)
		if ((bit.band(memory.readbyte(0x02002C9C), 0x04) == 0x04)) then memory.writebyte(0x02002C9C, memory.readbyte(0x02002C9C) - 0x04) end
	elseif str == "gleerok"then fightwarp(0x51, 0x00, 0xC0, 0xF8, 2)
		if ((bit.band(memory.readbyte(0x02002C9C), 0x08) == 0x08)) then memory.writebyte(0x02002C9C, memory.readbyte(0x02002C9C) - 0x08) end
	elseif str == "big blue chu"then fightwarp(0x60, 0x10, 0x85B7, 0xAF, 1)
		if ((bit.band(memory.readbyte(0x02002D8D), 0x1) == 0x1)) then memory.writebyte(0x02002D8D, memory.readbyte(0x02002D8D) - 0x01) end
		if ((bit.band(memory.readbyte(0x02002D8C), 0x80) == 0x80)) then memory.writebyte(0x02002D8C, memory.readbyte(0x02002D8C) - 0x80) end
		if ((bit.band(memory.readbyte(0x02002D8C), 0x40) == 0x40)) then memory.writebyte(0x02002D8C, memory.readbyte(0x02002D8C) - 0x40) end
	elseif str == "big octorok" then fightwarp(0x60, 0x0E, 0x108, 0x18, 1)
		if ((bit.band(memory.readbyte(0x02002C9C), 0x20) == 0x20)) then memory.writebyte(0x02002C9C, memory.readbyte(0x02002C9C) - 0x20) end
	elseif str == "gyorg pair" then fightwarp(0x70, 0x00, 0x1D8, 0xC8, 1)
		if ((bit.band(memory.readbyte(0x02002C9C), 0x40) == 0x40)) then memory.writebyte(0x02002C9C, memory.readbyte(0x02002C9C) - 0x40) end
		if ((bit.band(memory.readbyte(0x02002DAB), 0x08) == 0x08)) then memory.writebyte(0x02002DAB, memory.readbyte(0x02002DAB) - 0x08) end
	elseif str == "mazaal" then fightwarp(0x58, 0x16, 0xB8, 0x96, 1)
		if ((bit.band(memory.readbyte(0x02002D72), 0x02) == 0x02)) then memory.writebyte(0x02002D72, memory.readbyte(0x02002D72) - 0x02) end
		if memory.readbyte(0x030010D9) ~= 0x5A then memory.writebyte(0x030010D9, 0x5A) end
		if memory.read_u16_le(0x02002C9E) ~= 0xEFBC then memory.write_u16_le(0x02002C9E, 0xEFBC) end
	elseif str == "vaati" then fightwarp(0x88, 0x06, 0xA8, 0x88, 1) memory.writebyte(0x02002DC2, bit.bor(memory.readbyte(0x02002DC2), 0X80))
		if not ((bit.band(memory.readbyte(0x02002C9E), 0x20) == 0x20)) then memory.writebyte(0x02002C9E, memory.readbyte(0x02002C9E) + 0x20) end
	end
end