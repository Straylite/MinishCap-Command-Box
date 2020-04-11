function og(arg)
    local str = table.concat(arg," ")
		if str == "on" then ogmode = true
		elseif str == "off" then ogmode = false
		end
		if ogmode == true then	
		memory.writebyte(0x02034490, 0x1)
		memory.writebyte(0x03001171, 0x16)
		memory.writebyte(0x03003DC0, 0x06)
		memory.writebyte(0x03003FB3, 0x10)
		elseif ogmode == false then
		memory.writebyte(0x02034490, 0)
		memory.writebyte(0x03001171, 0x11)
		memory.writebyte(0x03003DC0, 0)
		memory.writebyte(0x03003FB3, 0)
		end
end

