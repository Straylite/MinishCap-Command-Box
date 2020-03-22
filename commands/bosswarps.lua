function fightwarp(area, room, x, y, layer)
	memory.writebyte(0x030010A8, 0x01) -- Initializing Teleport
	memory.writebyte(0x030010AC, area) -- Area
	memory.writebyte(0x030010AD, room) -- Room
	memory.writebyte(0x030010AF, 0x00) -- No Cucco
	memory.write_u16_le(0x030010B0, x) -- Coordinates
	memory.write_u16_le(0x030010B2, y) -- Coordinates
	memory.writebyte(0x030010B4, layer) -- Layer
end
function gyorgfix()
	memory.writebyte(0x030010AF, 0x0A)
	memory.writebyte(0x030010AE, 0x04)
end