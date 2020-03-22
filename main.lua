require("commandslist")

local LnInput = {}
local positionControl = 0
local windows = {}
function drawWindow(tbl,xPos,yPos,lineCount)
end

local commandState = false
local commandSwitch = false

local enterSwitch = false
local rollswitch = false
local mouse ={}

local name = ""
local namePrevious = ""
local typestripe = {"_",0}
local xCursor,yCursor = 0,0
local commandState = false
local help = false
local helpswitch = false

local charInputs = {{},{},{}}
	for i=1,10 do table.insert(charInputs[1],"D" ..tostring(i-1)) end
	for i=1,10 do table.insert(charInputs[1],"NumberPad"..tostring(i-1)) end
    for i=1,26 do table.insert(charInputs[1],string.char(i+0x40)) end
	table.insert(charInputs[1],"Space")
	table.insert(charInputs[1],"Backspace")    
	
local otherInputs = {{"Return","Escape","LeftArrow","RightArrow","UpArrow","DownArrow"},{},{}}

local key = {}
local letters =  {"A", "B"}

local god = false

local timer = false

local frames = 0
function convertToTime(frameCount)
	local frames = frameCount % 60
	frameCount = math.floor(frameCount / 60)
	local seconds = frameCount % 60
	frameCount = math.floor(frameCount / 60)
	local minutes = frameCount --% 60
	return string.format("%02d:%02d:%02d", minutes, seconds, frames)
end

local lockrng = false
local rngvalue = 0
local rnggui = false

local helpx = 0
------------------------------------------------------------------------------------
while true do

if help == true then
	gui.pixelText(7+helpx,25, "Commands: \n\nhave	all \nlose	all \n\nrefill	hearts \nrupee	(x) \nreset	room \ntoggle	minish \n\nfight	big green chu\n 	big blue chu\n 	gleerok\n 	mazaal\n 	big octorok\n	gyorg pair\n 	vaati               ", "white")
	gui.pixelText(95+helpx,25, "pos 	(x) (y) \n\nbombs 	(x)\narrows 	(x)\n\njump\ncharm 	nayru\n 	din\n 	farore\nwallet 	100\n 	300\n 	500\n 	999\nbottle 	(x[1-4]) (itemid)\nhearts 	all\nwarp 	(0xAREA ID) (0xROOM ID)\nnewname 	type new name          ", "white")
	gui.pixelText(128+95+helpx,25, "godmode\n\n\nsavepos 	(name)\nloadpos 	(name)\nresetpos\n\nredhouse 	nayru\n 		farore\n 		din\nbluehouse 	nayru\n 		farore\n 		din\n\ndisplay 	rng\nrnglock 	on/off\nrngset 		(x)             ", "white")
end

function rnglock(arg)
    local str = table.concat(arg," ")
		if str == "on"then
			lockrng = true
		elseif str == "off" then
			lockrng = false
			memory.write_u32_le(0x03001150, 0x12345678)
		end
end

function display(arg)
    local str = table.concat(arg," ")
		if str == "rng"then
			rnggui = not rnggui
		end
end

if lockrng == true then
	memory.write_u32_le(0x03001150, rngvalue)
end

function rngset(x)
	rngvalue = tonumber(x[1])
end

if rnggui == true then
gui.pixelText(114,151, "RNG: " .. string.upper(string.format("%02x", memory.read_u32_le(0x03001150))))
end
		
	function godmode()
		god = true
	end
	
if god == true then memory.writebyte(0x02002AEA, memory.readbyte(0x02002AEB)) end

local mouse = input.getmouse()
local key = input.get()

if commandState == true then
	local inputs,previousInputs,heldInputs = unpack(charInputs)

	for k in pairs(previousInputs) do
		if key[k] == true then heldInputs[k] = (heldInputs[k] or 0) + 1 end
	end
	for k,v in pairs(heldInputs) do
		if previousInputs[k] == nil then heldInputs[k] = nil end
		if v >= 30 then previousInputs[k] = nil end
	end
	
	for i=1,#inputs do
		local s = inputs[i]
		if key[s] ~= previousInputs[s] then
			previousInputs[s] = key[s]
			if key[s] == true then
				local c = ""
				if i <= 20 then c = (i-1)%10
				elseif i <= 46 then
					local charNum = 0x60 + i - 20
					if key["LeftShift"] then charNum = charNum - 0x20 end
					c = string.char(charNum)
				elseif i == 47 then c = " "
				elseif i == 48 then name = name:sub(1,-2); c = ""
				end

				name = name..c
			end
		end
	end
end

do
	local inputs,previousInputs = unpack(otherInputs)
	for i=1,#inputs do
		local s = inputs[i]
		if key[s] ~= previousInputs[s] then
			previousInputs[s] = key[s]
			if key[s] == true then
				if s == "Return" then

					if commandState and name ~= "" then
						local args = {}
						for s in name:gmatch("%S+") do table.insert(args,s) end
						if _G[args[1]] then _G[args[1]]({unpack(args,2,#args)}) end
						
						namePrevious = name
						name = ""
					end
					commandState = not(commandState)
				elseif s == "Escape" then
					if commandState then
						if name == "" then commandState = false
						else name = "" end
					end
				elseif s == "UpArrow" and commandState == true then
					name = namePrevious
				end
			end
		end
	end
end

if not mouse["Left"] then commandSwitch = false end
if not mouse["Left"] then helpswitch = false end

if mouse["X"] >= 1 and mouse["X"] <= 100 and mouse["Y"] >= 150 and mouse["Y"] <= 158 and mouse["Left"] and commandSwitch == false then
commandState = true
commandSwitch = true
elseif mouse["X"] >= 101 and mouse["X"] <= 239 and mouse["Y"] >= 0 and mouse["Y"] <= 160 and mouse["Left"] and commandSwitch == false then
commandState = false
commandSwitch = true
elseif mouse["X"] >= 0 and mouse["X"] <=99 and mouse["Y"] >= 0 and mouse["Y"] <= 149 and mouse["Left"] and commandSwitch == false then
commandState = false
commandSwitch = true
end

if mouse["X"] >= 102 and mouse["X"] <= 112 and mouse["Y"] >= 150 and mouse["Y"] <= 158 and mouse["Left"] and helpswitch == false then
help = not help
helpswitch = true
end

if commandState == false then
	gui.drawBox(1,150, 100, 158, "white", 0x60FFFFFF)
	gui.pixelText(2,151, "", "black", "#FFFFFF00")
	
	gui.pixelText(2,151,name,  0x80FFFFFF, "#FFFFFF00")
elseif commandState == true then
	gui.drawBox(1,150, 100, 158, "white", 0x85363fe3)
	
	typestripe[2] = (typestripe[2] + 1)%100
    if typestripe[2] <50 then typestripe[1] = " "
    else typestripe[1] = "_" end
	
	gui.pixelText(2,151, name .. typestripe[1], 0xE0FFFFFF, 0x00FFFFFF)
end

if help == false then
gui.drawBox(102, 150, 112, 158, "white", 0x45363fe3)
gui.pixelText(105, 151, "?", "white", 0x00000000)
elseif help == true then
gui.drawBox(102, 150, 112, 158, "white", 0x85363fe3)
gui.pixelText(105, 151, "?", "white", 0x00000000)

gui.drawBox(100,8, 110,18, "white", 0x85363fe3)
gui.pixelText(103, 10, "<", "white", 0x00000000)
gui.drawBox(112,8, 122,18, "white", 0x85363fe3)
gui.pixelText(115, 10, ">", "white", 0x00000000)

end

if helpx > 0 then helpx = 0 
elseif helpx < 0-138 then helpx = 0-138 end

if mouse["X"] >= 100 and mouse["X"] <= 110 and mouse["Y"] >= 8 and mouse["Y"] <= 18 and mouse["Left"] then
helpx = helpx+6
elseif mouse["X"] >= 112 and mouse["X"] <= 121 and mouse["Y"] >= 8 and mouse["Y"] <= 18 and mouse["Left"] then
helpx = helpx-6
end

	emu.frameadvance()
end