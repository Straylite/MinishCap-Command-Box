function hearts(arg)
    local str = table.concat(arg," ")
	if str == "all" then memory.writebyte(0x02002AEB, 0xA0) end
end