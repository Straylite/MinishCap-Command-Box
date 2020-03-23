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

function lockrngfunction()
if lockrng == true then
	memory.write_u32_le(0x03001150, rngvalue)
end
end

function rngset(x)
	rngvalue = tonumber(x[1])
end

function rngguidisplay()
if rnggui == true and lockrng == false then
gui.pixelText(114,151, "RNG: " .. string.upper(string.format("%02x", memory.read_u32_le(0x03001150))))
elseif rnggui == true and lockrng == true then
gui.pixelText(114,151, "RNG: " .. string.upper(string.format("%02x", rngvalue)))
end
end