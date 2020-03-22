local bottlelist = {
[0] = 0xFFFFFFFF,
[1] = 0x02002AF6,
[2] = 0x02002AF7,
[3] = 0x02002AF8,
[4] = 0x02002AF9
}
function bottle(arg)
	if arg[2] == nil then return nil end
	y,x = unpack(arg)
	memory.writebyte(bottlelist[tonumber(y or 0)], tonumber(x or 0))
end