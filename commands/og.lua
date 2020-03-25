function og(arg)
    local str = table.concat(arg," ")
		if str == "on" then ogmode = true
		elseif str == "off" then ogmode = false
		end
		if ogmode == true then
		memory.writebyte(0x0300116E, 0xFF)
		memory.writebyte(0x03001171, 0x16)
		memory.writebyte(0x03003DC0, 0x06)
		memory.writebyte(0x03003FB3, 0x10)
		memory.writebyte(0x03003FB8, 0x4)
		memory.writebyte(0x03003FBA, 0x1)
		memory.writebyte(0x03004E22, 0x0)
		memory.writebyte(0x03004E23, 0x0)
		memory.writebyte(0x03004E28, 0x3C)
		memory.writebyte(0x03004E2A, 0x0)
		memory.writebyte(0x03004E31, 0x3C)
		memory.writebyte(0x03004E32, 0x04)
		memory.writebyte(0x03004E33, 0x20)
		memory.writebyte(0x03004E39, 0x00)
		memory.writebyte(0x03004E3B, 0x02)
		memory.writebyte(0x03004E40, 0x0C)
		memory.writebyte(0x03004FE0, 0xDC)
		memory.writebyte(0x03004FE1, 0x2A)
		memory.writebyte(0x03004FE2, 0xEF)
		memory.writebyte(0x03004FEC, 0xC2)
		elseif ogmode == false then
			memory.writebyte(0x03000FD2, 0xF8) -- White Transition
			memory.writebyte(0x030010A8, 0x01) -- Initializing Teleport
			memory.writebyte(0x030010AF, 0x00) -- No Cucco
		end
end

