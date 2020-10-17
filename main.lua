require("commandslist")
require("extension\\help")
require("extension\\commandbox")
require("extension\\warpmenu")

function space(a,b,c,d)
    client.SetGameExtraPadding(a,b,c,d)
end

leftside = 0
rightside = 0
downside = 44
topside = 0

-- Godmode Variables
god = false

-- RNG Variables
lockrng = false
rngvalue = 0
rnggui = false

-- Help Variables
help = false
helpswitch = false
helpx = 0
--
-- Command Variables
commandState = false
commandSwitch = false
name = ""
typestripe = {"_",0}

-- Warp Menu Variables
areatext = ""
roomtext = ""
warpmenu = false
warpmenuswitch = false
aID = 0x00
rID = 0x00

-- OG Variables
ogmode = false

local mouse ={}
local namePrevious = ""
local xCursor,yCursor = 0,0

local charInputs = {{},{},{}}
	for i=1,10 do table.insert(charInputs[1],"D" ..tostring(i-1)) end
	for i=1,10 do table.insert(charInputs[1],"Number"..tostring(i-1)) end
    for i=1,26 do table.insert(charInputs[1],string.char(i+0x40)) end
	table.insert(charInputs[1],"Space")
	table.insert(charInputs[1],"BackSpace")    
	
local otherInputs = {{"Enter","Escape","Left","Right","Up","Down"},{},{}}
local key = {}

local bg_pos = 0
local bg_dir = false
local bg_random = math.random(1,5)
------------------------------------------------------------------------------------
while true do

	if bg_dir == false then
	bg_pos = bg_pos-(1/2)
	elseif bg_dir == true then
	bg_pos = bg_pos+(1/2)
	end

	if bg_pos < 0-750 then bg_dir = not bg_dir end
	if bg_pos > 0 then bg_dir = not bg_dir end

	space(0,0,0,downside)
	gui.drawImage("img//bg" .. bg_random .. ".png",bg_pos,160)
	gui.drawImage("img//shadow.png", 0,160)

-- God Mode Functions
godmodebase()

-- RNG Functions
rngguidisplay()
lockrngfunction()

-- Help Functions
helpbox()

-- Command Functions
entercommand()

-- Warp Menu
warpmenufunction()
warptext()

-- Command Box
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
				if s == "Enter" then

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
				elseif s == "Up" and commandState == true then
					name = namePrevious
				end
			end
		end
	end
end
	emu.frameadvance()
end