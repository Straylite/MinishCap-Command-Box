function rupee(arg)
		x = unpack(arg)
		memory.write_u16_le(0x02002B00, tonumber(x or 0))
end