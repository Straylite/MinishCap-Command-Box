function reset(arg)
    local str = table.concat(arg," ")
	if str == "room" then 
	memory.writebyte(0x03000FD2, 0xF8) -- White Transition
    memory.writebyte(0x030010AF, 0x00) -- No Cucco
	memory.writebyte(0x030010A8, 0x01) -- Initializing Teleport
	end
end