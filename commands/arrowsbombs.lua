function bombs(arg)
	x = unpack(arg)
	memory.writebyte(0x02002AEC, tonumber(x) or 0)
end

function arrows(arg)
	x = unpack(arg)
	memory.writebyte(0x02002AED, tonumber(x) or 0)
end