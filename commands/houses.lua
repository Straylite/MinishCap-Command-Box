function redhouse(arg)
    local str = table.concat(arg," ")
	if str == "farore" then
		if ((bit.band(memory.readbyte(0x02002CA1), 0x40) == 0x40)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x40) end
		if ((bit.band(memory.readbyte(0x02002CA1), 0x80) == 0x80)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x80) end
		if not ((bit.band(memory.readbyte(0x02002CA2), 0x1) == 0x1)) then memory.writebyte(0x02002CA2, memory.readbyte(0x02002CA2) + 0x1) end
	elseif str == "din" then
		if not ((bit.band(memory.readbyte(0x02002CA1), 0x40) == 0x40)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) + 0x40) end
		if ((bit.band(memory.readbyte(0x02002CA1), 0x80) == 0x80)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x80) end
		if ((bit.band(memory.readbyte(0x02002CA2), 0x1) == 0x1)) then memory.writebyte(0x02002CA2, memory.readbyte(0x02002CA2) - 0x1) end
	elseif str == "nayru" then
		if ((bit.band(memory.readbyte(0x02002CA1), 0x40) == 0x40)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x40) end
		if not ((bit.band(memory.readbyte(0x02002CA1), 0x80) == 0x80)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) + 0x80) end
		if ((bit.band(memory.readbyte(0x02002CA2), 0x1) == 0x1)) then memory.writebyte(0x02002CA2, memory.readbyte(0x02002CA2) - 0x1) end
	end
end

function bluehouse(arg)
    local str = table.concat(arg," ")
	if str == "farore" then
		if ((bit.band(memory.readbyte(0x02002CA1), 0x8) == 0x8)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x8) end
		if ((bit.band(memory.readbyte(0x02002CA1), 0x10) == 0x10)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x10) end
		if not ((bit.band(memory.readbyte(0x02002CA1), 0x20) == 0x20)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) + 0x20) end
	elseif str == "din" then
		if not ((bit.band(memory.readbyte(0x02002CA1), 0x8) == 0x8)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) + 0x8) end
		if ((bit.band(memory.readbyte(0x02002CA1), 0x10) == 0x10)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x10) end
		if ((bit.band(memory.readbyte(0x02002CA1), 0x20) == 0x20)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x20) end
	elseif str == "nayru" then
		if ((bit.band(memory.readbyte(0x02002CA1), 0x8) == 0x8)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x8) end
		if not ((bit.band(memory.readbyte(0x02002CA1), 0x10) == 0x10)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) + 0x10) end
		if ((bit.band(memory.readbyte(0x02002CA1), 0x20) == 0x20)) then memory.writebyte(0x02002CA1, memory.readbyte(0x02002CA1) - 0x20) end
	end
end