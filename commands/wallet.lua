function wallet(arg)
    local str = table.concat(arg," ")
	if str == "100" then memory.writebyte(0x02002AE8, 0x00)
	elseif str == "300"then memory.writebyte(0x02002AE8, 0x01)
	elseif str == "500"then memory.writebyte(0x02002AE8, 0x02)
	elseif str == "999"then memory.writebyte(0x02002AE8, 0x03)
	end
end