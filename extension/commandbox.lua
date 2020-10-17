function entercommand()
commandmouse = input.getmouse()
if not commandmouse["Left"] then commandSwitch = false end

if commandmouse["X"] >= 1 and commandmouse["X"] <= 100 and commandmouse["Y"] >= downside+150 and commandmouse["Y"] <= downside+158 and commandmouse["Left"] and commandSwitch == false then
commandState = true
commandSwitch = true
elseif commandmouse["X"] >= 101 and commandmouse["X"] <= 239 and commandmouse["Y"] >= downside+0 and commandmouse["Y"] <= downside+160 and commandmouse["Left"] and commandSwitch == false then
commandState = false
commandSwitch = true
elseif commandmouse["X"] >= 0 and commandmouse["X"] <=99 and commandmouse["Y"] >= downside+0 and commandmouse["Y"] <= downside+149 and commandmouse["Left"] and commandSwitch == false then
commandState = false
commandSwitch = true
end



if commandState == false then
	gui.drawBox(1,downside+150, 100, downside+158, "white", 0x60FFFFFF)
	gui.pixelText(2,downside+151, "", "black", "#FFFFFF00")
	
	gui.pixelText(2,151,name,  0x80FFFFFF, "#FFFFFF00")
elseif commandState == true then
	gui.drawBox(1,downside+150, 100, downside+158, "white", 0x85363fe3)
	
	typestripe[2] = (typestripe[2] + 1)%100
    if typestripe[2] <50 then typestripe[1] = " "
    else typestripe[1] = "_" end
	
	gui.pixelText(2,downside+151, name .. typestripe[1], 0xE0FFFFFF, 0x00FFFFFF)
end
end