function warp(arg)
	require("extension\\warps")
	x,y = unpack(arg)
    local str = "a"..tonumber(x or 0).."r"..tonumber(y or 0)
	if warps[str] == nil then return nil end
    local Awarp, Rwarp, xwarp, ywarp, lwarp = unpack(warps[str])
	memory.writebyte(0x03000FD2, 0xF8) -- White Transition
	memory.writebyte(0x030010A8, 0x01) -- Initializing Teleport
    memory.writebyte(0x030010AC, tonumber(Awarp or 0)) -- Area
    memory.writebyte(0x030010AD, tonumber(Rwarp or 0)) -- Room
    memory.writebyte(0x030010AF, 0x00) -- No Cucco
    memory.write_u16_le(0x030010B0, tonumber(xwarp or 0)) -- Coordinates
    memory.write_u16_le(0x030010B2, tonumber(ywarp or 0)) -- Coordinates
    memory.writebyte(0x030010B4, tonumber(lwarp or 0)) -- Layer
end