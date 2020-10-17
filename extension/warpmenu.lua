require("extension\\warps")
local timer = 0
function warp(a,b)
	require("extension\\warps")
	x = a
	y = b
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

function wmb(x,y)
gui.drawBox(x+1,downside+130, x+9, downside+138, "white", 0xA000916f)
gui.pixelText(x+3,downside+131, "-","white", 0x00000009)
gui.drawBox(x+1+10,downside+130, x+9+12, downside+138, "white", 0xA000916f)
gui.pixelText(x+2+10,downside+131, string.upper(string.format("%02x", y)),"white", 0x00000009)
gui.drawBox(x+22+1,downside+130, x+22+9, downside+138, "white", 0xA000916f)
gui.pixelText(x+25,downside+131, "+","white", 0x00000009)
end

function warpmenufunction()
wmm = input.getmouse()

if help == false or help == true then
if not wmm["Left"] then warpmenuswitch = false timer = 0 end

if wmm["X"] >= 1 and wmm["X"] <= 39 and wmm["Y"] >= downside+140 and wmm["Y"] <= downside+148 and wmm["Left"] and warpmenuswitch == false then
warpmenu = not warpmenu
warpmenuswitch = true
end

if warpmenu == true then
	if wmm["X"] >= 1 and wmm["X"] <= 9 and wmm["Y"] >= downside+130 and wmm["Y"] <= downside+138 and wmm["Left"] then
		timer = timer + 1
		gui.drawBox(1,downside+130, 9, downside+138, "white", 0xA000120e)
		if aID > 0 then
		if timer > 20 then aID = aID - 1 end
		if warpmenuswitch == false then
		aID = aID - 1
		warpmenuswitch = true
		end
		end
	elseif wmm["X"] >= 22+1 and wmm["X"] <= 22+9 and wmm["Y"] >= downside+130 and wmm["Y"] <= downside+138 and wmm["Left"] then
		timer = timer + 1
		gui.drawBox(22+1,downside+130, 22+9, downside+138, "white", 0xA000120e)
		if aID < 0x8F then
		if timer > 20 then aID = aID + 1 end
		if warpmenuswitch == false then
		aID = aID + 1
		warpmenuswitch = true
		end
		end
	elseif wmm["X"] >= 34+1 and wmm["X"] <= 34+9 and wmm["Y"] >= downside+130 and wmm["Y"] <= downside+138 and wmm["Left"] then
		timer = timer + 1
		gui.drawBox(34+1,downside+130, 34+9, downside+138, "white", 0xA000120e)
		if rID > 0 then
		if timer > 20 then rID = rID - 1 end
		if warpmenuswitch == false then
		rID = rID - 1
		warpmenuswitch = true
		end
		end
	elseif wmm["X"] >= 34+22+1 and wmm["X"] <= 34+22+9 and wmm["Y"] >= downside+130 and wmm["Y"] <= downside+138 and wmm["Left"] then
		timer = timer + 1
		if rID < 0x3A then
		if timer > 20 then rID = rID + 1 end
		if warpmenuswitch == false then
		rID = rID + 1
		warpmenuswitch = true
		end
		end	
end

if warpmenu == true then
	if wmm["Left"] and  wmm["X"] >= 44+22+1 and wmm["X"] <= 54+22+9 and wmm["Y"] >= downside+130 and wmm["Y"] <= downside+138 and wmm["Left"] then
		gui.drawBox(44+22+1,downside+130, 54+22+9, downside+138, "white", 0xA000120e)
		if warpmenuswitch == false then
		warp(aID, rID)
		warpmenuswitch = true
		end
	end
end

end

if warpmenu == true then
wmb(0,aID)
wmb(34,rID)

gui.drawBox(44+22+1,downside+130, 54+22+9, downside+138, "white", 0xA000916f)
gui.pixelText(43+25,downside+131, "Warp","white", 0x00000009)

end

if wmm["Left"] and  wmm["X"] >= 1 and wmm["X"] <= 39 and wmm["Y"] >= downside+140 and wmm["Y"] <= downside+148 then
gui.drawBox(1,downside+140, 39, downside+148, "white", 0xA000120e)
end
gui.drawBox(1,downside+140, 39, downside+148, "white", 0xA000916f)
gui.pixelText(2,downside+141, "Warp Menu","white", 0x00000009)
end
end