local itemlist = {
				{"smiths sword",0x02002b32,0x4},
				{"white sword 1",0x02002b32,0x10},
				{"white sword 2",0x02002b32,0x40},
				{"white sword 3",0x02002b33,0x1},
				{"four sword",0x02002b33,0x10},
				{"bombs",0x02002b33,0x40},
				{"remote bombs",0x02002b34,0x1},
				{"bow",0x02002b34,0x4},
				{"light arrows",0x02002b34,0x10},
				{"boomerang",0x02002b34,0x40},
				{"magical boomerang",0x02002b35,0x1},
				{"shield",0x02002b35,0x4},
				{"mirror shield",0x02002b35,0x10},
				{"lantern",0x02002b35,0x40},
				{"gust jar",0x02002b36,0x4},
				{"cane of pacci",0x02002b36,0x10},
				{"mole mitts",0x02002b36,0x40},
				{"rocs cape",0x02002b37,0x1},
				{"pegasus boots",0x02002b37,0x4},
				{"ocarina of wind",0x02002b37,0x40},
				{"earth element",0x02002b42,0x1},
				{"fire element",0x02002b42,0x4},
				{"water element",0x02002b42,0x10},
				{"wind element",0x02002b42,0x40},
				{"grip ring",0x02002b43,0x1},
				{"power bracelets",0x02002b43,0x4},
				{"flippers",0x02002b43,0x10},
				{"map of hyrule",0x02002b43,0x40}
}

function have(arg)
    local str = table.concat(arg," ")
	
	    local function checkWrite(name,addr,value,shortcut)
			if str == name and not(bit.band(memory.readbyte(addr),value)==value) then
				memory.writebyte(addr,memory.readbyte(addr)+value)
			end
		end
		
		for i=1,#itemlist do
			checkWrite(unpack(itemlist[i]))
		end

	if 		str == "bottle 1"and not ((bit.band(memory.readbyte(0x02002B39), 0x1) == 0x1)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) + 0x1) memory.writebyte(0x02002AF6, 0x1C)
	elseif str == "bottle 2" and not ((bit.band(memory.readbyte(0x02002B39), 0x4) == 0x4)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) + 0x4) memory.writebyte(0x02002AF7, 0x1D)
	elseif str == "bottle 3" and not ((bit.band(memory.readbyte(0x02002B39), 0x10) == 0x10)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) + 0x10) memory.writebyte(0x02002AF8, 0x1E)
	elseif str == "bottle 4" and not ((bit.band(memory.readbyte(0x02002B39), 0x40) == 0x40)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) + 0x40) memory.writebyte(0x02002AF9, 0x1F)
    elseif str == "ezlo" and 	 not ((bit.band(memory.readbyte(0x02002C9E), 0x10) == 0x10)) then memory.writebyte(0x02002C9E, memory.readbyte(0x02002C9E) + 0x10)
	memory.writebyte(0x03000FD2, 0xF8) -- White Transition
    memory.writebyte(0x030010AF, 0x00) -- No Cucco
	memory.writebyte(0x030010A8, 0x01) -- Initializing Teleport
	
	elseif str == "all" then
		haveall()
		memory.writebyte(0x02002AED, 99)
		memory.writebyte(0x02002AEC, 99)
		memory.writebyte(0x02002AEE, 0x03)
		
   end
  
end

function lose(arg)
    local str = table.concat(arg," ")
	
		    local function checkWrite(name,addr,value,shortcut)
			if str == name and(bit.band(memory.readbyte(addr),value)==value) then
				memory.writebyte(addr,memory.readbyte(addr)-value)
			end
		end
		
		for i=1,#itemlist do
			checkWrite(unpack(itemlist[i]))
		end
	if str == "bottle 1" and  ((bit.band(memory.readbyte(0x02002B39), 0x1) == 0x1)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) - 0x1) 
	elseif str == "bottle 2" and  ((bit.band(memory.readbyte(0x02002B39), 0x4) == 0x4)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) - 0x4) 
	elseif str == "bottle 3" and  ((bit.band(memory.readbyte(0x02002B39), 0x10) == 0x10)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) - 0x10) 
	elseif str == "bottle 4" and  ((bit.band(memory.readbyte(0x02002B39), 0x40) == 0x40)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) - 0x40) 
    elseif str == "ezlo" and ((bit.band(memory.readbyte(0x02002C9E), 0x10) == 0x10)) then memory.writebyte(0x02002C9E, memory.readbyte(0x02002C9E) - 0x10) 
	memory.writebyte(0x03000FD2, 0xF8) -- White Transition
    memory.writebyte(0x030010AF, 0x00) -- No Cucco
	memory.writebyte(0x030010A8, 0x01) -- Initializing Teleport
		elseif str == "all" then
			loseall()
		end
end