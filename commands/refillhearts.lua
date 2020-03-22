function refill(arg)
    local str = table.concat(arg," ")
	if str == "hearts" then memory.writebyte(0x02002AEA, memory.readbyte(0x02002AEB)) end
end