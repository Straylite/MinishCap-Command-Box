function godmodebase()
	if god == true then memory.writebyte(0x02002AEA, memory.readbyte(0x02002AEB)) end
end

	
function godmode()
	god = not god
end
