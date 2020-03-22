function resetpos()
require("extension\\resets")
	local area = memory.readbyte(0x03000BF4)
	local room = memory.readbyte(0x03000BF5)
    local x, y, layer = unpack(resets["a".. area.."r".. room])
    memory.write_u16_le(0x0300118E, tonumber(x or 0)) -- Coordinates
    memory.write_u16_le(0x03001192, tonumber(y or 0)) -- Coordinates
    memory.writebyte(0x03001198, tonumber(layer or 0)) -- Layer
end

function savepos(arg)
    name = unpack(arg)
	if arg[1] == nil then return nil end
    require("extension\\position")
    x = memory.read_u16_le(0x0300118E)
    y = memory.read_u16_le(0x03001192)
    layer = memory.readbyte(0x030010B4)
    positions[name] = {x,y,layer}
    local s = "positions = {\n"
    for k,v in pairs(positions) do
        s = s .. "[\"" .. k .. "\"] = {" .. table.concat(v,",") .. "},\n"
    end
    s = s:sub(1,-3) .. "\n}"
    local f = io.open("extension\\position.lua","w+")
    f:write(s)
    f:close()
end



function loadpos(arg)
require("extension\\position")
	name = unpack(arg)
    local str = name
	if positions[str] == nil then return nil end
    local x, y, layer = unpack(positions[str])
    memory.write_u16_le(0x0300118E, tonumber(x or 0)) -- Coordinates
    memory.write_u16_le(0x03001192, tonumber(y or 0)) -- Coordinates
    memory.writebyte(0x03001198, tonumber(layer or 0)) -- Layer
end