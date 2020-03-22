function charm(arg)
    local str = table.concat(arg," ")
	if str == "nayru"then memory.writebyte(0x02002AF2, 0x2F) memory.write_u16_le(0x02002B04, 0xE10)
	elseif str == "farore"then memory.writebyte(0x02002AF2, 0x30) memory.write_u16_le(0x02002B04, 0xE10)
	elseif str == "din" then memory.writebyte(0x02002AF2, 0x31) memory.write_u16_le(0x02002B04, 0xE10)
	end
end