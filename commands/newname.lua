function newname(arg)
    local str = table.concat(arg," ")
    local split = {}
    str:gsub(".", function(s) table.insert(split, s) end)
        for i=1,6 do
            memory.writebyte(0x02002AC0+(i-1), string.byte(split[i] or 0))
                if 
                    split[i] == nil then memory.writebyte(0x02002AC0+(i-1), 0x0) 
                end
        end
end