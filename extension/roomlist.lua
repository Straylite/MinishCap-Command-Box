require("extension\\arlist")

function warptext()
	local x = 114
	if rID == nil then roomtext = "N/A" end
	if help == false and warpmenu == true then	
		--areatext = Locations[aID][1]
		--roomtext = Locations[aID][2][rID]
		gui.drawBox(1-2,115, 297, 123, 0x00FFFFFF, 0xA0457599)
		gui.drawBox(1-2,122, 297, 130, 0x00FFFFFF, 0xA000589c)
		gui.pixelText(2,x+2, areatext, "white", 0x60000000)
		gui.pixelText(2,x+9, roomtext, "white", 0x60000066)
		
		if aID == 0 then areatext = "Minish Woods"
			if rID == 0 then roomtext = "Main"
			elseif rID > 0 then roomtext = "N/A"
			end
			
		elseif aID == 1 then areatext = "Minish Village"
			if rID == 0 then roomtext = "Main"
			elseif rID == 1 then roomtext = "Side House Area"
			elseif rID > 1 then roomtext = "N/A"
			end		
			
		elseif aID == 2 then areatext = "Hyrule Town"
			if rID == 0 then roomtext = "Main"
			elseif rID > 0 then roomtext = "N/A"
			end		
			
		elseif aID == 0x3 then areatext = "Hyrule Field"
			if rID == 0 then roomtext = "Western Wood (South)"
			elseif rID == 1 then roomtext = "Outside Link's House"
			elseif rID == 2 then roomtext = "Exit from Minish Woods"
			elseif rID == 3 then roomtext = "North from Minish Woods Exit"
			elseif rID == 4 then roomtext = "Minish Woods Entrance & Farmers"
			elseif rID == 5 then roomtext = "Lon Lon Ranch"
			elseif rID == 6 then roomtext = "Outside Castle"
			elseif rID == 7 then roomtext = "West Hyrule (Crenel)"
			elseif rID == 8 then roomtext = "West Hyrule (Castor Wilds)"
			elseif rID == 9 then roomtext = "Percy's House Area (Moblin)"
			elseif rID > 9 then roomtext = "N/A"
			end
			
		elseif aID == 0x4 then areatext = "Castor Wilds"
			if rID == 0 then roomtext = "Main"
			elseif rID > 0 then roomtext = "N/A"
			end
			
		elseif aID == 0x5 then areatext = "Wind Ruins"
			if rID == 0 then roomtext = "Entrance"
			elseif rID == 1 then roomtext = "Beanstalk"
			elseif rID == 2 then roomtext = "Triple Tektites"
			elseif rID == 3 then roomtext = "Ladder to Tektites"
			elseif rID == 4 then roomtext = "Minish & Fortress Entrance"
			elseif rID == 5 then roomtext = "Armos & Beetle"
			elseif rID > 5 then roomtext = "N/A"
			end
			
		elseif aID == 0x6 then areatext = "Mount Crenel"
			if rID == 0 then roomtext = "Mountain Top (Jump to Rain)"
			elseif rID == 1 then roomtext = "The Wall Climb"
			elseif rID == 2 then roomtext = "Cave of Flames Entrance"
			elseif rID == 3 then roomtext = "Gust Jar Shortcut"
			elseif rID == 4 then roomtext = "Entrance"
			elseif rID > 4 then roomtext = "N/A"		
			end
			
		elseif aID == 0x7 then areatext = "Hyrule Castle Garden"
			if rID == 0 then roomtext = "Main"
			elseif rID > 0 then roomtext = "N/A"
			end
		
		elseif aID == 0x8 then areatext = "Cloud Tops"
			if rID == 0 then roomtext = "Cloud Tops (House)"
			elseif rID == 1 then roomtext = "Cloud Middles"
			elseif rID == 2 then roomtext = "Cloud Bottoms"
			elseif rID > 2 then roomtext = "N/A"
			end
		
		elseif aID == 0x9 then areatext = "Royal Valley"
			if rID == 0 then roomtext = "Main"
			elseif rID == 1 then roomtext = "Forest Maze"
			elseif rID > 1 then roomtext = "N/A"
			end		
		
		elseif aID == 0xA then areatext = "Veil Falls"
			if rID == 0 then roomtext = "Main"
			elseif rID > 0 then roomtext = "N/A"
			end
		
		elseif aID == 0xB then areatext = "Lake Hylia"
			if rID == 0 then roomtext = "Main"
			elseif rID == 1 then roomtext = "Beanstalk & Ladders"	
			elseif rID > 1 then roomtext = "N/A"
			end
		
		elseif aID == 0xC then areatext = "Caves"
			if rID == 0x00 then roomtext = "Minish Woods - Lake Hylia"	
			elseif rID > 0 then roomtext = "N/A"
			end							
		
		elseif aID == 0xD then areatext = "Beanstalk"
			      if rID == 0x00 then roomtext = "Mount Crenel Beanstalk"
			elseif rID == 0x01 then roomtext = "Lake Hylia Beanstalk"
			elseif rID == 0x02 then roomtext = "Wind Ruins Beanstalk"
			elseif rID == 0x03 then roomtext = "Eastern Hills Beanstalk (Exit from Minish Woods)"
			elseif rID == 0x04 then roomtext = "Western Woods (South) Beanstalk"
			elseif rID == 0x05 then roomtext = "N/A"
			elseif rID == 0x06 then roomtext = "N/A"
			elseif rID == 0x07 then roomtext = "N/A"
			elseif rID == 0x08 then roomtext = "N/A"
			elseif rID == 0x09 then roomtext = "N/A"
			elseif rID == 0x0A then roomtext = "N/A"
			elseif rID == 0x0B then roomtext = "N/A"
			elseif rID == 0x0C then roomtext = "N/A"
			elseif rID == 0x0D then roomtext = "N/A"
			elseif rID == 0x0E then roomtext = "N/A"
			elseif rID == 0x0F then roomtext = "N/A"
			elseif rID == 0x10 then roomtext = "Mount Crenel Beanstalk Climb"
			elseif rID == 0x11 then roomtext = "Lake Hylia Beanstalk Climb"
			elseif rID == 0x12 then roomtext = "Wind Ruins Beanstalk Climb"
			elseif rID == 0x13 then roomtext = "Eastern Hills Beanstalk Climb"
			elseif rID == 0x14 then roomtext = "Western Woods Beanstalk Climb"
			elseif rID > 0x14 then roomtext = "N/A"
			end
		
		elseif aID == 0xF then areatext =  "Digging Cave" 
			if rID == 0x00 then roomtext = "Hyrule Town"	
			elseif rID > 0 then roomtext = "N/A"
			end						
		
		elseif aID == 0x10 then areatext ="Melari's Mine"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end							
		
		elseif aID == 0x11 then areatext ="Minish Paths"
			      if rID == 0x00 then roomtext = "Minish Woods - Minish Village"
			elseif rID == 0x01 then roomtext = "To Bow (Castor Wilds)"
			elseif rID == 0x02 then roomtext = "Hyrule Town Schoolyard"
			elseif rID == 0x03 then roomtext = "Lon Lon Ranch"
			elseif rID == 0x04 then roomtext = "Lake Hylia - Mayor's Cabin"
			elseif rID > 0x4 then roomtext = "N/A"
			end		
		
		elseif aID == 0x12 then areatext ="Crenel Minish Paths"
			      if rID == 0x00 then roomtext = "Crenel Bean"
			elseif rID == 0x01 then roomtext = "Crenel Water"
			elseif rID == 0x02 then roomtext = "Rainfall"
			elseif rID == 0x03 then roomtext = "To Melari's Mine"
			elseif rID > 0x3 then roomtext = "N/A"
			end		
		
		elseif aID == 0x13 then areatext ="Digging Cave"
			      if rID == 0x00 then roomtext = "Hyrule Field Farm"
			elseif rID == 0x01 then roomtext = "N/A"
			elseif rID == 0x02 then roomtext = "N/A"
			elseif rID == 0x03 then roomtext = "Trilby Highlands"
			elseif rID > 0x3 then roomtext = "N/A"
			end
		
		elseif aID == 0x14 then areatext ="Digging Cave"
			if rID == 0x00 then roomtext = "Crenel Wall"	
			elseif rID > 0 then roomtext = "N/A"
			end					
		
		elseif aID == 0x15 then areatext ="Hyrule Town"
			if rID == 0x00 then roomtext = "Festival Room"	
			elseif rID > 0 then roomtext = "N/A"
			end			
		
		elseif aID == 0x16 then areatext ="Digging Cave"
			if rID == 0x00 then roomtext = "Veil Falls"	
			elseif rID > 0 then roomtext = "N/A"
			end						
		
		elseif aID == 0x17 then areatext ="Digging Cave"
			if rID == 0x00 then roomtext = "Castor Wilds"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x18 then areatext ="Fortress of Winds (Outside)"
			      if rID == 0x00 then roomtext = "Entrance Hall"
			elseif rID == 0x01 then roomtext = "2F"
			elseif rID == 0x02 then roomtext = "3F"
			elseif rID == 0x03 then roomtext = "Mole Mitts Room"
			elseif rID == 0x04 then roomtext = "Small Key Spark Room"
			elseif rID > 0x4 then roomtext = "N/A"
			end
		
		elseif aID == 0x19 then areatext ="Digging Cave"
			if rID == 0x00 then roomtext = "Lake Hylia Middle Cave"	
			elseif rID == 0x01 then roomtext = "Lake Hylia Northern Cave"	
			elseif rID > 1 then roomtext = "N/A"
			end		
		
		elseif aID == 0x1A then areatext ="Veil Springs (Top)"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end			
		
		elseif aID == 0x20 then areatext ="Minish House Interiors"
			      if rID == 0x00 then roomtext = "Minish Elder Gentari's House (Main)"
			elseif rID == 0x01 then roomtext = "Minish Elder Gentari's House (Exit)"
			elseif rID == 0x02 then roomtext = "House to Deepwood, Festari"
			elseif rID == 0x03 then roomtext = "Red Minish House"
			elseif rID == 0x04 then roomtext = "Green Minish House"
			elseif rID == 0x05 then roomtext = "Blue Minish House"
			elseif rID == 0x06 then roomtext = "Side Area House"
			elseif rID == 0x07 then roomtext = "Shoe Minish House"
			elseif rID == 0x08 then roomtext = "Pot Minish House"
			elseif rID == 0x09 then roomtext = "Barrel Minish House"
			elseif rID == 0x0A then roomtext = "N/A"
			elseif rID == 0x0B then roomtext = "N/A"
			elseif rID == 0x0C then roomtext = "N/A"
			elseif rID == 0x0D then roomtext = "N/A"
			elseif rID == 0x0E then roomtext = "N/A"
			elseif rID == 0x0F then roomtext = "N/A"
			elseif rID == 0x10 then roomtext = "Melari's Mines Southwest Room"
			elseif rID == 0x11 then roomtext = "Melari's Mines Southeast Room"
			elseif rID == 0x12 then roomtext = "Melari's Mines East Room"
			elseif rID == 0x13 then roomtext = "N/A"
			elseif rID == 0x14 then roomtext = "N/A"
			elseif rID == 0x15 then roomtext = "N/A"
			elseif rID == 0x16 then roomtext = "N/A"
			elseif rID == 0x17 then roomtext = "N/A"
			elseif rID == 0x18 then roomtext = "N/A"
			elseif rID == 0x19 then roomtext = "N/A"
			elseif rID == 0x1A then roomtext = "N/A"
			elseif rID == 0x1B then roomtext = "N/A"
			elseif rID == 0x1C then roomtext = "N/A"
			elseif rID == 0x1D then roomtext = "N/A"
			elseif rID == 0x1E then roomtext = "N/A"
			elseif rID == 0x1F then roomtext = "N/A"
			elseif rID == 0x20 then roomtext = "Hyrule Field Southwest Minish House"
			elseif rID == 0x21 then roomtext = "Hyrule Field Minish House Outside Link's House"
			elseif rID == 0x22 then roomtext = "Hyrule Field Minish House next to Knuckle"
			elseif rID == 0x23 then roomtext = "Lake Hylia Librari's House"
			elseif rID == 0x24 then roomtext = "Hyrule Field Minish Woods Exit Minish House"
			elseif rID == 0x25 then roomtext = "Hyrule Town Minish House"
			elseif rID == 0x26 then roomtext = "Minish Woods Bomb Minish House"
			elseif rID == 0x27 then roomtext = "Lake Hylia Ocarina Minish House"
			elseif rID > 0x27 then roomtext = "N/A"
			end
		
		elseif aID == 0x21 then areatext ="House Green Interiors"
			      if rID == 0x00 then roomtext =   "Mayor's House"
			elseif rID == 0x01 then roomtext =   "Post Office"
			elseif rID == 0x02 then roomtext =   "Library 2F"
			elseif rID == 0x03 then roomtext =   "Library 1F"
			elseif rID == 0x04 then roomtext =   "Inn 1F"
			elseif rID == 0x05 then roomtext =   "Inn West Room"
			elseif rID == 0x06 then roomtext =   "Inn Middle Room"
			elseif rID == 0x07 then roomtext =   "Inn East Room"
			elseif rID == 0x08 then roomtext =   "Inn 2F West"
			elseif rID == 0x09 then roomtext =   "Inn 2F East"
			elseif rID == 0x0A then roomtext =   "Inn Minish Heart Piece"
			elseif rID == 0x0B then roomtext =   "School West"
			elseif rID == 0x0C then roomtext =   "School East"
			elseif rID > 0x0C then roomtext = "N/A"
			end
			
		elseif aID == 0x22 then areatext ="House Wood Interiors"
			      if rID == 0x00 then roomtext =  "Stranger's House"
			elseif rID == 0x01 then roomtext =  "West Oracle House (Nayru?)"
			elseif rID == 0x02 then roomtext =  "West Oracle House (Farore?)"
			elseif rID == 0x03 then roomtext =  "West Oracle House (Din?)"
			elseif rID == 0x04 then roomtext =  "Dr. Left's House"
			elseif rID == 0x05 then roomtext =  "ナシ Unused Room"
			elseif rID == 0x06 then roomtext =  "Romio's House"
			elseif rID == 0x07 then roomtext =  "Julietta's House"
			elseif rID == 0x08 then roomtext =  "Percy's House"
			elseif rID == 0x09 then roomtext =  "East Oracle House (Nayru?)"
			elseif rID == 0x0A then roomtext =  "East Oracle House (Farore?)"
			elseif rID == 0x0B then roomtext =  "East Oracle House (Din?)"
			elseif rID == 0x0C then roomtext =  "Cucco House"
			elseif rID == 0x0D then roomtext =  "N/A"
			elseif rID == 0x0E then roomtext =  "N/A"
			elseif rID == 0x0F then roomtext =  "N/A"
			elseif rID == 0x10 then roomtext =  "Link's House (Entrance)"
			elseif rID == 0x11 then roomtext =  "Link's House (Smith)"
			elseif rID == 0x12 then roomtext =  "Dampe's House"
			elseif rID == 0x13 then roomtext =  "ナシ Unused Room"
			elseif rID == 0x14 then roomtext =  "Lake Hylia Stockwell's House"
			elseif rID == 0x15 then roomtext =  "Link's House 2F"
			elseif rID > 0x15 then roomtext = "N/A"
			end
			
		elseif aID == 0x23 then areatext ="Hyrule Blue Interiors"
			      if rID == 0x00 then roomtext =  "Stockwell's Shop"
			elseif rID == 0x01 then roomtext =  "Cafe"
			elseif rID == 0x02 then roomtext =  "Rem's Shoe Shop"
			elseif rID == 0x03 then roomtext =  "Bakery"
			elseif rID == 0x04 then roomtext =  "Simon's Simulations"
			elseif rID == 0x05 then roomtext =  "Figurine Reward House"
			elseif rID == 0x06 then roomtext =  "Borlov Chest Game Entrance"
			elseif rID == 0x07 then roomtext =  "Carlov's Room"
			elseif rID == 0x08 then roomtext =  "Borlov Chest Game"
			elseif rID > 0x8 then roomtext = "N/A"
			end
		
		elseif aID == 0x24 then areatext ="Tree Interiors"
			      if rID == 0x00 then roomtext =  "Witch Hut"
			elseif rID == 0x01 then roomtext =  "N/A"
			elseif rID == 0x02 then roomtext =  "N/A"
			elseif rID == 0x03 then roomtext =  "N/A"
			elseif rID == 0x04 then roomtext =  "N/A"
			elseif rID == 0x05 then roomtext =  "N/A"
			elseif rID == 0x06 then roomtext =  "N/A"
			elseif rID == 0x07 then roomtext =  "N/A"
			elseif rID == 0x08 then roomtext =  "N/A"
			elseif rID == 0x09 then roomtext =  "N/A"
			elseif rID == 0x0A then roomtext =  "N/A"
			elseif rID == 0x0B then roomtext =  "N/A"
			elseif rID == 0x0C then roomtext =  "N/A"
			elseif rID == 0x0D then roomtext = "N/A"
			elseif rID == 0x0E then roomtext =  "N/A"
			elseif rID == 0x0F then roomtext =  "N/A"
			elseif rID == 0x10 then roomtext =  "Stairs to Carlov"
			elseif rID == 0x11 then roomtext =  "Percy's Tree House (West Field)"
			elseif rID == 0x12 then roomtext =  "Heart Piece (Southeast from Link's House)"
			elseif rID == 0x13 then roomtext =  "Stairs to Blade Brother (Lake Hylia)"
			elseif rID == 0x14 then roomtext =  "Unused (Exits to Minish Woods Business Scrub)"
			elseif rID == 0x15 then roomtext =  "Stairs to Magic Boomerang (Northwest)"
			elseif rID == 0x16 then roomtext =  "Stairs to Magic Boomerang (Northeast)"
			elseif rID == 0x17 then roomtext =  "Stairs to Magic Boomerang (Southwest)"
			elseif rID == 0x18 then roomtext =  "Stairs to Magic Boomerang (Southeast)"
			elseif rID == 0x19 then roomtext =  "Heart Piece (Southwest Field)"
			elseif rID == 0x1A then roomtext =  "Stairs to Fairy Fountain (East of Magic Boomerang)"
			elseif rID == 0x1B then roomtext =  "Stairs to Minish Woods Wallet Fairy"
			elseif rID == 0x1C then roomtext =  "未 Unfinished Room"
			elseif rID == 0x1D then roomtext = " Stairs to Business Scrub (Minish Woods)"
			elseif rID == 0x1E then roomtext =  "未 Unfinished Room"
			elseif rID == 0x1F then roomtext =  " Heart Container (Lake Hylia Minish House)" 
			end
			
		elseif aID == 0x25 then areatext ="Blade Brothers"
				  if rID == 0x00 then roomtext = "Grayblade (Mount Crenel)"
			elseif rID == 0x01 then roomtext = "Splitblade (Veil Falls)"
			elseif rID == 0x02 then roomtext = "Greatblade (North Hyrule)"
			elseif rID == 0x03 then roomtext = "Scarblade (Castor Wilds North)"
			elseif rID == 0x04 then roomtext = "Swiftblade I (Castor Wilds Grave)"
			elseif rID == 0x05 then roomtext = "Grimblade (Castle Garden)"
			elseif rID == 0x06 then roomtext = "Waveblade (Lake Hylia)"
			elseif rID == 0x07 then roomtext = "ナシ Unused Room"
			elseif rID == 0x08 then roomtext = "ナシ Unused Room"
			elseif rID == 0x09 then roomtext = "ナシ Unused Room"
			elseif rID == 0x0A then roomtext = "To Grimblade"
			elseif rID == 0x0B then roomtext = "To Splitblade"
			elseif rID == 0x0C then roomtext = "To Greatblade"
			elseif rID == 0x0D then roomtext = "To Scarblade"
			elseif rID > 0x0D then roomtext = "N/A"
			end
		
		elseif aID == 0x26 then areatext ="Crenel Caves"
				  if rID == 0x00 then roomtext = "Block Pushing/Helmasaur"
			elseif rID == 0x01 then roomtext = "Pillar Cave"
			elseif rID == 0x02 then roomtext = "Bridge Switch"
			elseif rID == 0x03 then roomtext = "Exit to Melari's Mines entrance"
			elseif rID == 0x04 then roomtext = "Grip Ring Business Scrub"
			elseif rID == 0x05 then roomtext = "Fairy Fountain Heart Piece"
			elseif rID == 0x06 then roomtext = "Spiny Chu Bomb Block Puzzle"
			elseif rID == 0x07 then roomtext = "Chuchu Pot Chest"
			elseif rID == 0x08 then roomtext = "Water Heart Piece"
			elseif rID == 0x09 then roomtext = "15 Rupee Fairy Fountain"
			elseif rID == 0x0A then roomtext = "Helmasaur Hallway (2F)"
			elseif rID == 0x0B then roomtext = "Mushroom and Keese (1F)"
			elseif rID == 0x0C then roomtext = "Ladder to Green Water"
			elseif rID == 0x0D then roomtext = "Bomb Business Scrub"
			elseif rID == 0x0E then roomtext = "Hermit's Cave"
			elseif rID == 0x0F then roomtext = " Hint Scrub "
			elseif rID == 0x10 then roomtext = "To Grayblade"
			elseif rID > 0x10 then roomtext = "N/A"
			end
			
		elseif aID == 0x27 then areatext ="Minish Holes"
				  if rID == 0x00 then roomtext = "Lon Lon Ranch, north"
			elseif rID == 0x01 then roomtext = "Lake Hylia East Minish Hole House"
			elseif rID == 0x02 then roomtext = "Hyrule Castle Garden, top right"
			elseif rID == 0x03 then roomtext = "Mt. Crenel Minish Hole House"
			elseif rID == 0x04 then roomtext = "Outside Hyrule Castle, East"
			elseif rID == 0x05 then roomtext = "ナシ Unused Room"
			elseif rID == 0x06 then roomtext = "Castor Wilds Bow Hole"
			elseif rID == 0x07 then roomtext = "Wind Ruins Entrance Minish Hole House"
			elseif rID == 0x08 then roomtext = "Minish Woods South Hole"
			elseif rID == 0x09 then roomtext = "Castor Wilds North Hole"
			elseif rID == 0x0A then roomtext = "Castor Wilds West Hole"
			elseif rID == 0x0B then roomtext = "Castor Wilds Middle Hole"
			elseif rID == 0x0C then roomtext = "Wind Ruins Tektite Room"
			elseif rID == 0x0D then roomtext = "Castor Wilds Next to Bow Hole"
			elseif rID == 0x0E then roomtext = "ナシ Unused Room"
			elseif rID == 0x0F then roomtext = " ナシ Unused Room"
			elseif rID == 0x10 then roomtext = "ナシ Unused Room"
			elseif rID == 0x11 then roomtext = "ナシ Unused Room"	
			elseif rID > 0x11 then roomtext = "N/A"
			end
		
		elseif aID == 0x28 then areatext ="House Tile Interiors"
			if rID == 0x00 then roomtext = "Carpenter House"
			elseif rID == 0x01 then roomtext = "Swiftblade's House"
			elseif rID == 0x02 then roomtext = "Ranch House West"
			elseif rID == 0x03 then roomtext = "Ranch House East"
			elseif rID == 0x04 then roomtext = "Farm House"
			elseif rID == 0x05 then roomtext = "Lake Hylia Mayor's House"
			elseif rID > 0x5 then roomtext = "N/A"
			end
		
		elseif aID == 0x29 then areatext ="Great Fairy Fountains"
				if rID == 0x00 then roomtext = "Graveyard Quiver Fairy"
			elseif rID == 0x01 then roomtext = "Minish Woods Wallet Fairy"
			elseif rID == 0x02 then roomtext = "Mount Crenel Bomb Fairy"
			elseif rID > 0x2 then roomtext = "N/A"
			end
		
		elseif aID == 0x2A then areatext ="Castor Wilds Caves"
			if rID == 0x00 then roomtext = "South Gold Kinstone"
			elseif rID == 0x01 then roomtext = "North Business Scrub & Gold Kinstone"
			elseif rID == 0x02 then roomtext = "Wind Ruins Cave"
			elseif rID == 0x03 then roomtext = "Darknut Cave Entrance"
			elseif rID == 0x04 then roomtext = "Northeast Heart Piece Cave"
			elseif rID > 0x04 then roomtext = "N/A"
			end
		
		elseif aID == 0x2B then areatext ="Castor Wilds Darknut Cave"
			if rID == 0x00 then roomtext = "Darknut Room"
			elseif rID == 0x01 then roomtext = "Hallway"
			elseif rID > 0x1 then roomtext = "N/A"
			end			
		
		elseif aID == 0x2C then areatext ="Armos Interiors"
			if rID == 0x00 then roomtext = "Wind Ruins Entrance North"
			elseif rID == 0x01 then roomtext = "Wind Ruins Entrance South"
			elseif rID == 0x02 then roomtext = "Wind Ruins 4 Armos Leftmost"
			elseif rID == 0x03 then roomtext = "Wind Ruins 4 Armos Middle left"
			elseif rID == 0x04 then roomtext = "Wind Ruins 4 Armos Middle right"
			elseif rID == 0x05 then roomtext = "Wind Ruins 4 Armos Rightmost"
			elseif rID == 0x06 then roomtext = "Unused? (Exit from 05)"
			elseif rID == 0x07 then roomtext = "Wind Ruins Minish Grass Path"
			elseif rID == 0x08 then roomtext = "Unused? Wind Ruins Entrance, front of cave"
			elseif rID == 0x09 then roomtext = "Fortress of Winds East Side Left Armos"
			elseif rID == 0x0A then roomtext = "Fortress of Winds East Side Right Armos"
			elseif rID > 0xA then roomtext = "N/A"
			end
		
		elseif aID == 0x2D then areatext ="Town House Minish"
				  if rID == 0x00 then roomtext = "Mayor's House Hole"
			elseif rID == 0x01 then roomtext = "West Oracle House Hole"
			elseif rID == 0x02 then roomtext = "Dr. Left's House Hole"
			elseif rID == 0x03 then roomtext = "Carpenter House Hole"
			elseif rID == 0x04 then roomtext = "Cafe Hole"
			elseif rID == 0x05 then roomtext = "Unused"
			elseif rID == 0x06 then roomtext = "N/A"
			elseif rID == 0x07 then roomtext = "N/A"
			elseif rID == 0x08 then roomtext = "N/A"
			elseif rID == 0x09 then roomtext = "N/A"
			elseif rID == 0x0A then roomtext = "N/A"
			elseif rID == 0x0B then roomtext = "N/A"
			elseif rID == 0x0C then roomtext = "N/A"
			elseif rID == 0x0D then roomtext = "N/A"
			elseif rID == 0x0E then roomtext = "N/A"
			elseif rID == 0x0F then roomtext = "N/A"
			elseif rID == 0x10 then roomtext = "Library Bookshelf"
			elseif rID == 0x11 then roomtext = "Librari's Book House"
			elseif rID == 0x12 then roomtext = "Rem's Shoe Shop"
			elseif rID > 0x12 then roomtext = "N/A"
			end
		
		elseif aID == 0x2E then areatext ="House Roofs"
			if rID == 0x00 then roomtext = "Cafe Roof"
			elseif rID == 0x01 then roomtext = "Stockwell's Roof"
			elseif rID == 0x02 then roomtext = "Dr. Left's Roof"
			elseif rID == 0x03 then roomtext = "Bakery Roof"
			elseif rID > 0x3 then roomtext = "N/A"
			end		
		
		elseif aID == 0x2F then areatext ="Goron Cave"
			if rID == 0x00 then roomtext = "Stairs to Cave"
			elseif rID == 0x01 then roomtext = "Main"
			elseif rID > 0x1 then roomtext = "N/A"
			end	
		
		elseif aID == 0x30 then areatext ="Wind Tribe Tower"
			if rID == 0x00 then roomtext = "Entrance"
			elseif rID == 0x01 then roomtext = "Floor 2"
			elseif rID == 0x02 then roomtext = "Floor 3"
			elseif rID == 0x03 then roomtext = "Floor 4"
			elseif rID > 0x3 then roomtext = "N/A"
			end
		
		elseif aID == 0x31 then areatext ="Entrance to Palace of Winds"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x32 then areatext ="Caves"
			if rID == 0x00 then roomtext = "Magic Boomerang"
			elseif rID == 0x01 then roomtext = "To Graveyard"
			elseif rID == 0x02 then roomtext = "Unused Spring Cave"
			elseif rID == 0x03 then roomtext = "Unused Spring Cave"
			elseif rID == 0x04 then roomtext = "Unused Bomb Block Cave"
			elseif rID == 0x05 then roomtext = "Unused Bomb Block Cave"
			elseif rID == 0x06 then roomtext = "Unused Block Cave"
			elseif rID == 0x07 then roomtext = "Keese Chest Cave (Trilby Highlands)"
			elseif rID == 0x08 then roomtext = "Fairy Fountain (Trilby Highlands)"
			elseif rID == 0x09 then roomtext = "Fairy Fountain (Outside Link's House)"
			elseif rID == 0x0A then roomtext = "Unused Water Cave"
			elseif rID == 0x0B then roomtext = "Hyrule Town Waterfall"
			elseif rID == 0x0C then roomtext = "Lon Lon Ranch Cave"
			elseif rID == 0x0D then roomtext = "Lon Lon Ranch Secret Cave"
			elseif rID == 0x0E then roomtext = "Trilby Highlands Cave"
			elseif rID == 0x0F then roomtext = "Lon Lon Ranch Wallet"
			elseif rID == 0x10 then roomtext = "75 Rupee Cave (Outside Link's House)"
			elseif rID == 0x11 then roomtext = "75 Rupee Cave (Trilby Highlands)"
			elseif rID == 0x12 then roomtext = "Fairy Fountain (Trilby Highlands Mole Mitts Cave)"
			elseif rID == 0x13 then roomtext = "Keese Chest Cave (Southeast Hyrule)"
			elseif rID == 0x14 then roomtext = "Bottle Business Scrub"
			elseif rID == 0x15 then roomtext = "Heart Piece Hallway"
			elseif rID == 0x16 then roomtext = "Fairy Fountain (Tree East of Magic Boomerang)"
			elseif rID == 0x17 then roomtext = "Kinstone Business Scrub"
			elseif rID > 0x17 then roomtext = "N/A"
			end
		
		elseif aID == 0x33 then areatext ="Veil Falls Caves"
			if rID == 0x00 then roomtext = "Helmasaur Keese Hallway 2F"
			elseif rID == 0x01 then roomtext = "Helmasaur Keese Hallway 1F"
			elseif rID == 0x02 then roomtext = "Helmasaur Keese Hallway Secret Room"
			elseif rID == 0x03 then roomtext = "Entrance Cave"
			elseif rID == 0x04 then roomtext = "Entrance Cave Exit"
			elseif rID == 0x05 then roomtext = "Entrance Cave Secret Chest Room"
			elseif rID == 0x06 then roomtext = "Entrance Cave Secret Staircases"
			elseif rID == 0x07 then roomtext = "Entrance Cave Clone Block Puzzle"
			elseif rID == 0x08 then roomtext = "Water Rupee Path"
			elseif rID == 0x09 then roomtext = "Waterfall Heart Piece Cave"
			elseif rID > 0x9 then roomtext = "N/A"
			end		
		
		elseif aID == 0x34 then areatext ="Graveyard Caves"
			if rID == 0x00 then roomtext = "Heart Piece Grave"
			elseif rID == 0x01 then roomtext = "Gina Grave"
			elseif rID > 0x1 then roomtext = "N/A"
			end				
		
		elseif aID == 0x35 then areatext ="Minish Caves"
			if rID == 0x00 then roomtext = "Mount Crenel Bean Plant Pesto Cave"
			elseif rID == 0x01 then roomtext = "Castor Wilds Southeast Water 1"
			elseif rID == 0x02 then roomtext = "Castor Wilds Southeast Water 2"
			elseif rID == 0x03 then roomtext = "Wind Ruins Minish Cave"
			elseif rID == 0x04 then roomtext = "Outside Link's House, Water Cave"
			elseif rID == 0x05 then roomtext = "Minish Woods North Cave 1"
			elseif rID == 0x06 then roomtext = "Minish Woods North Cave 2"
			elseif rID == 0x07 then roomtext = "Lake Hylia North Cave"
			elseif rID == 0x08 then roomtext = "Lake Hylia, Cave to Librari's House"
			elseif rID == 0x09 then roomtext = "Minish Woods Southwest Caves"
			elseif rID > 0x9 then roomtext = "N/A"
			end
		
		elseif aID == 0x36 then areatext ="Castle Garden Minish Holes"
			if rID == 0x00 then roomtext = "East Fountain Hole"
			elseif rID == 0x01 then roomtext = "West Fountain Hole"
			elseif rID > 0x1 then roomtext = "N/A"
			end				
		
		elseif aID == 0x37 then areatext ="Castle Garden Minish Holes"
			if rID == 0x00 then roomtext = "Unused"
			elseif rID == 0x01 then roomtext = "Unused"
			elseif rID > 0x1 then roomtext = "N/A"
			end			
		
		elseif aID == 0x38 then areatext ="Ezlo's Room"
			if rID == 0x00 then roomtext = "Ezlo's Room"	
			elseif rID > 0 then roomtext = "N/A"
			end						
		
		elseif aID == 0x40 then areatext ="Castle Underground Test Dungeon"
			if rID == 0x00 then roomtext = "Top Left Room"
			elseif rID == 0x01 then roomtext = "Top Room"
			elseif rID == 0x02 then roomtext = "Top Right Room"
			elseif rID == 0x03 then roomtext = "Left Room"
			elseif rID == 0x04 then roomtext = "Middle Room"
			elseif rID == 0x05 then roomtext = "Right Room"
			elseif rID == 0x06 then roomtext = "Bottom Right Room"
			elseif rID == 0x07 then roomtext = "Bottom Room"
			elseif rID == 0x08 then roomtext = "Bottom Left Room"
			elseif rID > 0x8 then roomtext = "N/A"
			end
		
		elseif aID == 0x41 then areatext ="Hyrule Town Well"
			if rID == 0x00 then roomtext = "Main"
			elseif rID == 0x01 then roomtext = "Well Entrance"
			elseif rID > 0x1 then roomtext = "N/A"
			end				
		
		elseif aID == 0x42 then areatext ="Castle Garden Fountain Stairs"
			if rID == 0x00 then roomtext = "East Heart Piece"
			elseif rID == 0x01 then roomtext = "West Fairy Fountain"
			elseif rID > 0x1 then roomtext = "N/A"
			end		
		
		elseif aID == 0x43 then areatext ="Castle Garden Underground"
			if rID == 0x00 then roomtext = "Entrance"
			elseif rID == 0x01 then roomtext = "Exit to Castle"
			elseif rID > 0x1 then roomtext = "N/A"
			end
		
		elseif aID == 0x44 then areatext ="Simon's Simulations"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x45 then areatext ="Pillar Test Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x46 then areatext ="Cave Test Dungeon"
			if rID == 0x00 then roomtext = "Top Left Room"
			elseif rID == 0x01 then roomtext = "Top Room"
			elseif rID == 0x02 then roomtext = "Top Right Room"
			elseif rID == 0x03 then roomtext = "Left Room"
			elseif rID == 0x04 then roomtext = "Middle Room"
			elseif rID == 0x05 then roomtext = "Right Room"
			elseif rID == 0x06 then roomtext = "Middle Bottom Room"
			elseif rID == 0x07 then roomtext = "Bottom Middle"
			elseif rID > 0x07 then roomtext = "N/A"
			end
		
		elseif aID == 0x47 then areatext ="Clone Test Cave"
			if rID == 0x00 then roomtext = "Entrance"	
			elseif rID == 0x01 then roomtext = "Middle"	
			elseif rID == 0x02 then roomtext = "End"	
			elseif rID > 2 then roomtext = "N/A"
			end				
		
		elseif aID == 0x48 then areatext ="Deepwood Shrine"
			if rID == 0x00 then roomtext = "Madderpillar"
			elseif rID == 0x01 then roomtext = "Pre-Madderpillar, Blue Portal"
			elseif rID == 0x02 then roomtext = "Stairs to B1"
			elseif rID == 0x03 then roomtext = "Pot Bridge Room"
			elseif rID == 0x04 then roomtext = "Double Statue Room"
			elseif rID == 0x05 then roomtext = "Map & Heart Piece Room"
			elseif rID == 0x06 then roomtext = "Barrel Room"
			elseif rID == 0x07 then roomtext = "Button & Mushrooms"
			elseif rID == 0x08 then roomtext = "Mulldozer Fight"
			elseif rID == 0x09 then roomtext = "Pillars & Slugs"
			elseif rID == 0x0A then roomtext = "Lever & Mushroom"
			elseif rID == 0x0B then roomtext = "Entrance Room"
			elseif rID == 0x0C then roomtext = "N/A"
			elseif rID == 0x0D then roomtext = "N/A"
			elseif rID == 0x0E then roomtext = "N/A"
			elseif rID == 0x0F then roomtext = "N/A"
			elseif rID == 0x10 then roomtext = "Slug & Torch Room"
			elseif rID == 0x11 then roomtext = "Boss Key Room"
			elseif rID == 0x12 then roomtext = "Compass Room"
			elseif rID == 0x13 then roomtext = "Unused"
			elseif rID == 0x14 then roomtext = "Lily Pad West"
			elseif rID == 0x15 then roomtext = "Lily Pad East"
			elseif rID == 0x16 then roomtext = "Softlock"
			elseif rID == 0x17 then roomtext = "Pre-Boss Room"
			elseif rID == 0x18 then roomtext = "N/A"
			elseif rID == 0x19 then roomtext = "N/A"
			elseif rID == 0x1A then roomtext = "N/A"
			elseif rID == 0x1B then roomtext = "N/A"
			elseif rID == 0x1C then roomtext = "N/A"
			elseif rID == 0x1D then roomtext = "N/A"
			elseif rID == 0x1E then roomtext = "N/A"
			elseif rID == 0x1F then roomtext = "N/A"
			elseif rID == 0x20 then roomtext = "Inside Barrel"
			elseif rID > 0x20 then roomtext = "N/A"
			end
		
		elseif aID == 0x49 then areatext ="Deepwood Shrine Boss Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end			
		
		elseif aID == 0x4A then areatext ="Outside Deepwood Shrine"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end			
		
		elseif aID == 0x4D then areatext = "Deepwood Shrine Test Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end			
		
		elseif aID == 0x50 then areatext ="Cave of Flames"
			if rID == 0x00 then roomtext = "Room After Cane"
			elseif rID == 0x01 then roomtext = "Spiny Chu Room"
			elseif rID == 0x02 then roomtext = "Cart to Spiny Chu"
			elseif rID == 0x03 then roomtext = "Entrance Room"
			elseif rID == 0x04 then roomtext = "Main Cart"
			elseif rID == 0x05 then roomtext = "North from Entrance"
			elseif rID == 0x06 then roomtext = "Cart West"
			elseif rID == 0x07 then roomtext = "Helmasaur Fight"
			elseif rID == 0x08 then roomtext = "Rollobite Lava Room"
			elseif rID == 0x09 then roomtext = "Minish Lava Room"
			elseif rID == 0x0A then roomtext = "N/A"
			elseif rID == 0x0B then roomtext = "N/A"
			elseif rID == 0x0C then roomtext = "N/A"
			elseif rID == 0x0D then roomtext = "N/A"
			elseif rID == 0x0E then roomtext = "N/A"
			elseif rID == 0x0F then roomtext = "N/A"
			elseif rID == 0x10 then roomtext = "Minish Spike Trap Room"
			elseif rID == 0x11 then roomtext = "Four Rollobite Switch Room"
			elseif rID == 0x12 then roomtext = "Hole to Gleerok"
			elseif rID == 0x13 then roomtext = "Path to Boss Key"
			elseif rID == 0x14 then roomtext = "Path to Boss Key 2"
			elseif rID == 0x15 then roomtext = "Compass Room"
			elseif rID == 0x16 then roomtext = "Bob-omb Cracked Wall Room"
			elseif rID == 0x17 then roomtext = "Boss Door & Boss Key Room"
			elseif rID > 0x17 then roomtext = "N/A"
			end
		
		elseif aID == 0x51 then areatext ="Cave of Flames Boss Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x57 then areatext ="Cave of Flames Test Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x58 then areatext ="Fortress of Winds"
			if rID == 0x00 then roomtext = "Double Eyegore"
			elseif rID == 0x01 then roomtext = "Before Mazaal"
			elseif rID == 0x02 then roomtext = "East Side Key Lever"
			elseif rID == 0x03 then roomtext = "Pit Platforms"
			elseif rID == 0x04 then roomtext = "West Side Key Lever"
			elseif rID == 0x05 then roomtext = "N/A"
			elseif rID == 0x06 then roomtext = "N/A"
			elseif rID == 0x07 then roomtext = "N/A"
			elseif rID == 0x08 then roomtext = "N/A"
			elseif rID == 0x09 then roomtext = "N/A"
			elseif rID == 0x0A then roomtext = "N/A"
			elseif rID == 0x0B then roomtext = "N/A"
			elseif rID == 0x0C then roomtext = "N/A"
			elseif rID == 0x0D then roomtext = "N/A"
			elseif rID == 0x0E then roomtext = "N/A"
			elseif rID == 0x0F then roomtext = "N/A"
			elseif rID == 0x10 then roomtext = "Darknut Room"
			elseif rID == 0x11 then roomtext = "Arrow Eye Bridge to Darknut"
			elseif rID == 0x12 then roomtext = "North Split Path Pit"
			elseif rID == 0x13 then roomtext = "Wallmaster Minish Portal"
			elseif rID == 0x14 then roomtext = "Pillar Clone Buttons"
			elseif rID == 0x15 then roomtext = "Rotating Spike Traps after Darknut"
			elseif rID == 0x16 then roomtext = "Mazaal"
			elseif rID == 0x17 then roomtext = "West Side Stalfos Fight"
			elseif rID == 0x18 then roomtext = "West Side Eye/Entrance to Mole Mitts Room"
			elseif rID == 0x19 then roomtext = "2F Main Room"
			elseif rID == 0x1A then roomtext = "Wallmaster Minish Hole to Small Key"
			elseif rID == 0x1B then roomtext = "Boss Key"
			elseif rID == 0x1C then roomtext = "West Side Stairs 2F"
			elseif rID == 0x1D then roomtext = "East Side Stairs 2F"
			elseif rID == 0x1E then roomtext = "N/A"
			elseif rID == 0x1F then roomtext = "N/A"
			elseif rID == 0x20 then roomtext = "West Side Stairs 1F"
			elseif rID == 0x21 then roomtext = "Center Stairs 1F"
			elseif rID == 0x22 then roomtext = "East Side Stairs 1F"
			elseif rID == 0x23 then roomtext = "West Wizzrobe Fight Room"
			elseif rID == 0x24 then roomtext = "East Heart Piece Room"
			elseif rID > 0x24 then roomtext = "N/A"
			end
		
		elseif aID == 0x59 then areatext ="Top of Fortress"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x5A then areatext ="Inside Mazaal"
			if rID == 0x00 then roomtext = "Other Phases"	
			elseif rID == 0x1 then roomtext = "Phase 1"
			elseif rID > 1 then roomtext = "N/A"
			end					
		
		elseif aID == 0x5F then areatext ="Fortress of Winds Test Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end					
		
		elseif aID == 0x60 then areatext ="Temple of Droplets"
			if rID == 0x00 then roomtext = "West Hole to Boss Key"
			elseif rID == 0x01 then roomtext = "North Split Room"
			elseif rID == 0x02 then roomtext = "East Hole to Key"
			elseif rID == 0x03 then roomtext = "Entrance Room"
			elseif rID == 0x04 then roomtext = "Stairs to Northwest Lever"
			elseif rID == 0x05 then roomtext = "Scissors Beetle Miniboss Room"
			elseif rID == 0x06 then roomtext = "West Waterfall Northwest"
			elseif rID == 0x07 then roomtext = "West Waterfall Northeast"
			elseif rID == 0x08 then roomtext = "Waifu & Element"
			elseif rID == 0x09 then roomtext = "Ice Corner to East"
			elseif rID == 0x0A then roomtext = "Ice Pit Maze"
			elseif rID == 0x0B then roomtext = "Hole to Blue Chuchu Key"
			elseif rID == 0x0C then roomtext = "West Waterfall Southeast"
			elseif rID == 0x0D then roomtext = "West Waterfall Southwest"
			elseif rID == 0x0E then roomtext = "Big Octo Room"
			elseif rID == 0x0F then roomtext = "Room to Big Blue Chuchu"
			elseif rID == 0x10 then roomtext = "Big Blue Chuchu Room"
			elseif rID == 0x11 then roomtext = "Big Blue Chuchu Key"
			elseif rID == 0x12 then roomtext = "N/A"
			elseif rID == 0x13 then roomtext = "N/A"
			elseif rID == 0x14 then roomtext = "N/A"
			elseif rID == 0x15 then roomtext = "N/A"
			elseif rID == 0x16 then roomtext = "N/A"
			elseif rID == 0x17 then roomtext = "N/A"
			elseif rID == 0x18 then roomtext = "N/A"
			elseif rID == 0x19 then roomtext = "N/A"
			elseif rID == 0x1A then roomtext = "N/A"
			elseif rID == 0x1B then roomtext = "N/A"
			elseif rID == 0x1C then roomtext = "N/A"
			elseif rID == 0x1D then roomtext = "N/A"
			elseif rID == 0x1E then roomtext = "N/A"
			elseif rID == 0x1F then roomtext = "N/A"
			elseif rID == 0x20 then roomtext = "Boss Key Room"
			elseif rID == 0x21 then roomtext = "North Small Key Room"
			elseif rID == 0x22 then roomtext = "Block Clone Button Puzzle"
			elseif rID == 0x23 then roomtext = "Block Clone Puzzle"
			elseif rID == 0x24 then roomtext = "Block Clone Ice Bridge"
			elseif rID == 0x25 then roomtext = "Stairs to Scissors Beetle Miniboss Room"
			elseif rID == 0x26 then roomtext = "Spike Bar Flipper Room after 9 Lanterns"
			elseif rID == 0x27 then roomtext = "9 Lanterns"
			elseif rID == 0x28 then roomtext = "Lilypad Ice Blocks"
			elseif rID == 0x29 then roomtext = "1 Frame Roll Pit"
			elseif rID == 0x2A then roomtext = "Mulldozers & Fire Bars"
			elseif rID == 0x2B then roomtext = "Dark Lantern Maze"
			elseif rID == 0x2C then roomtext = "Twin Madderpillars"
			elseif rID == 0x2D then roomtext = "After Twin Madderpillars"
			elseif rID == 0x2E then roomtext = "Blue Chuchu Key Lever"
			elseif rID == 0x2F then roomtext = "Mulldozer Key Room"
			elseif rID == 0x30 then roomtext = "Bomb Wall to Twin Madderpillars"
			elseif rID == 0x31 then roomtext = "Lilypad B2 West"
			elseif rID == 0x32 then roomtext = "Compass Room to 4 Lanterns"
			elseif rID == 0x33 then roomtext = "4 Lantern Scissors Beetles"
			elseif rID == 0x34 then roomtext = "Lilypad B2 Middle"
			elseif rID == 0x35 then roomtext = "Lilypad B2 East Madderpillar"
			elseif rID == 0x36 then roomtext = "Flamebar Block Puzzle"
			elseif rID > 0x36 then roomtext = "N/A"
			end
		
		elseif aID == 0x61 then areatext ="Unused (Outside Droplets?)"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end						
		
		elseif aID == 0x62 then areatext ="Hyrule Town Sewer (Bracelets)"
			if rID == 0x00 then roomtext = "Entrance"
			elseif rID == 0x01 then roomtext = "North Room"
			elseif rID == 0x02 then roomtext = "Pacci Jump Room"
			elseif rID == 0x03 then roomtext = "Blue Mulldozer Fight"
			elseif rID == 0x04 then roomtext = "West Chest Room"
			elseif rID == 0x05 then roomtext = "N/A"
			elseif rID == 0x06 then roomtext = "N/A"
			elseif rID == 0x07 then roomtext = "N/A"
			elseif rID == 0x08 then roomtext = "N/A"
			elseif rID == 0x09 then roomtext = "N/A"
			elseif rID == 0x0A then roomtext = "N/A"
			elseif rID == 0x0B then roomtext = "N/A"
			elseif rID == 0x0C then roomtext = "N/A"
			elseif rID == 0x0D then roomtext = "N/A"
			elseif rID == 0x0E then roomtext = "N/A"
			elseif rID == 0x0F then roomtext = "N/A"
			elseif rID == 0x10 then roomtext = "Flippers Room"
			elseif rID == 0x11 then roomtext = "Librari Trapdoor Entrance"
			elseif rID == 0x12 then roomtext = "West Frozen Chest"
			elseif rID == 0x13 then roomtext = "Cross Intersection"
			elseif rID == 0x14 then roomtext = "Southeast Corner"
			elseif rID == 0x15 then roomtext = "Entrance"
			elseif rID > 0x15 then roomtext = "N/A"
			end
		
		elseif aID == 0x67 then areatext ="Temple of Droplets Test Room"
			if rID == 0x00 then roomtext = "Broken Room"	
			elseif rID > 0 then roomtext = "N/A"
			end			
		
		elseif aID == 0x68 then areatext ="Royal Crypt"
			if rID == 0x00 then roomtext = "King Gustaf's Room"
			elseif rID == 0x01 then roomtext = "Water Rope Hallway"
			elseif rID == 0x02 then roomtext = "Gibdo Fight"
			elseif rID == 0x03 then roomtext = "Unused Clone Button Room"
			elseif rID == 0x04 then roomtext = "Key Block Room"
			elseif rID == 0x05 then roomtext = "Unused Block Room"
			elseif rID == 0x06 then roomtext = "Unused Door Hall"
			elseif rID == 0x07 then roomtext = "Mushroom Pit"
			elseif rID == 0x08 then roomtext = "Entrance"
			elseif rID > 0x8 then roomtext = "N/A"
			end
		
		elseif aID == 0x6F then areatext ="Royal Crypt Test Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x70 then areatext ="Palace of Winds"
			if rID == 0x00 then roomtext = "Tornado to Gyorg Pair"
			elseif rID == 0x01 then roomtext = "Boss Key Room"
			elseif rID == 0x02 then roomtext = "Before Ball and Chain Soldiers"
			elseif rID == 0x03 then roomtext = "Boss Door to Gyorg"
			elseif rID == 0x04 then roomtext = "East Chest from Gyorg Boss Door"
			elseif rID == 0x05 then roomtext = "Moblin & Wizzrobe Fight"
			elseif rID == 0x06 then roomtext = "4 Button Stalfos"
			elseif rID == 0x07 then roomtext = "Fan & Small Key to Boss Key"
			elseif rID == 0x08 then roomtext = "Ball and Chain Soldiers"
			elseif rID == 0x09 then roomtext = "Bombarossa Path"
			elseif rID == 0x0A then roomtext = "Hole to Red Darknut Miniboss"
			elseif rID == 0x0B then roomtext = "To Bombarossa Path"
			elseif rID == 0x0C then roomtext = "Red Darknut Miniboss Fight"
			elseif rID == 0x0D then roomtext = "Bombable Wall to Outside"
			elseif rID == 0x0E then roomtext = "Bombable Walls Outside"
			elseif rID == 0x0F then roomtext = "Cloud Jumps to Ball and Chain Soldiers"
			elseif rID == 0x10 then roomtext = "Block Maze to Boss Door"
			elseif rID == 0x11 then roomtext = "Cracked Floor Lakitu Jumps"
			elseif rID == 0x12 then roomtext = "Bridge to Heart Piece"
			elseif rID == 0x13 then roomtext = "Bridge Fan Floor Spike Room"
			elseif rID == 0x14 then roomtext = "To Bridge Fan Floor Spike Room"
			elseif rID == 0x15 then roomtext = "Red Portal Hall"
			elseif rID == 0x16 then roomtext = "Platform Clone Ride to Block"
			elseif rID == 0x17 then roomtext = "Pit Corner after Switch Small Key"
			elseif rID == 0x18 then roomtext = "Platform Crow Ride"
			elseif rID == 0x19 then roomtext = "Grate Platform Ride"
			elseif rID == 0x1A then roomtext = "Spike Bar Minish Pot Maze"
			elseif rID == 0x1B then roomtext = "Floormaster Lever Room"
			elseif rID == 0x1C then roomtext = "Fire Wizzrobe Map Room"
			elseif rID == 0x1D then roomtext = "Corner to Fire Wizzrobe Map Room"
			elseif rID == 0x1E then roomtext = "Stairs after Floormaster Lever"
			elseif rID == 0x1F then roomtext = "Hole to Kinstone Wizzrobe Fight"
			elseif rID == 0x20 then roomtext = "Key Arrow Button from Minish"
			elseif rID == 0x21 then roomtext = "Grates to 3F"
			elseif rID == 0x22 then roomtext = "Spiny Fight & Fan Path"
			elseif rID == 0x23 then roomtext = "Peahat Switch Cracked Floor Room"
			elseif rID == 0x24 then roomtext = "Whirlwind Bombarossa Room"
			elseif rID == 0x25 then roomtext = "Door to Stalfos Fire Bar Room"
			elseif rID == 0x26 then roomtext = "Stalfos Fire Bar Hole to Small Key"
			elseif rID == 0x27 then roomtext = "Shortcut Door Buttons"
			elseif rID == 0x28 then roomtext = "To Peahat Switch Cracked Floor Room"
			elseif rID == 0x29 then roomtext = "Kinstone Wizzrobe Fight"
			elseif rID == 0x2A then roomtext = "Gibdo Stairs"
			elseif rID == 0x2B then roomtext = "Spike Bar Small Key"
			elseif rID == 0x2C then roomtext = "Roc's Cape Room"
			elseif rID == 0x2D then roomtext = "Fire Bar Grates"
			elseif rID == 0x2E then roomtext = "Platform Ride Bombarossas"
			elseif rID == 0x2F then roomtext = "Bridge after Red Darknut Miniboss"
			elseif rID == 0x30 then roomtext = "Bridge Switches & Clone Block"
			elseif rID == 0x31 then roomtext = "Entrance Room"
			elseif rID == 0x32 then roomtext = "Dark Compass Hall"
			elseif rID > 0x32 then roomtext = "N/A"
			end
		
		elseif aID == 0x71 then areatext ="Palace of Winds Boss Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end					
		
		elseif aID == 0x77 then areatext ="Palace of Winds Test Room"
			if rID == 0x00 then roomtext = "---"	
			elseif rID > 0 then roomtext = "---"
			end					
		
		elseif aID == 0x78 then areatext ="Elemental Sanctuary"
			if rID == 0x00 then roomtext = "Hall"
			elseif rID == 0x01 then roomtext = "Main"
			elseif rID == 0x02 then roomtext = "Stained Glass"			
			elseif rID > 0x02 then roomtext = "N/A"
			end
		
		elseif aID == 0x7F then areatext ="Elemental Sanctuary Test Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end			
		
		elseif aID == 0x80 then areatext ="Hyrule Castle"
			if rID == 0x00 then roomtext = "Entrance Room"
			elseif rID == 0x01 then roomtext = "Halls"
			elseif rID == 0x02 then roomtext = "Throne Room"
			elseif rID == 0x03 then roomtext = "Basement Halls"
			elseif rID == 0x04 then roomtext = "Throne Bed Room"
			elseif rID > 0x4 then roomtext = "N/A"
			end
		
		elseif aID == 0x81 then areatext ="Hyrule Castle"
			if rID == 0x00 then roomtext = "Garden to Elemental Sanctuary"	
			elseif rID > 0 then roomtext = "N/A"
			end				
		
		elseif aID == 0x87 then areatext ="Hyrule Castle Test Room"
			if rID == 0x00 then roomtext = "Main"	
			elseif rID > 0 then roomtext = "N/A"
			end		
		
		elseif aID == 0x88 then areatext ="Dark Hyrule Castle"
			if rID == 0x00 then roomtext = "Entrance Room"
			elseif rID == 0x01 then roomtext = "Top Left Corner Key Chest"
			elseif rID == 0x02 then roomtext = "Top Right Corner Key Chest"
			elseif rID == 0x03 then roomtext = "Bottom Left Corner Key Chest"
			elseif rID == 0x04 then roomtext = "Bottom Right Corner Key Chest"
			elseif rID == 0x05 then roomtext = "Keaton Hall to Vaati"
			elseif rID == 0x06 then roomtext = "Triple Darknut Fight"
			elseif rID == 0x07 then roomtext = "Top Left Stairs Corner"
			elseif rID == 0x08 then roomtext = "Top Left Eye Fire Bar"
			elseif rID == 0x09 then roomtext = "Boss Key Room"
			elseif rID == 0x0A then roomtext = "Darknut Miniboss to Boss Key"
			elseif rID == 0x0B then roomtext = "Top Right Ghini Fight"
			elseif rID == 0x0C then roomtext = "8 Lantern Fire Bar"
			elseif rID == 0x0D then roomtext = "Top Right Stairs Corner"
			elseif rID == 0x0E then roomtext = "Top Left Darknut Fight"
			elseif rID == 0x0F then roomtext = "Sparks to Darknut Miniboss"
			elseif rID == 0x10 then roomtext = "Top Right Twin Darknut Fight"
			elseif rID == 0x11 then roomtext = "Bomb Block Grate Switches"
			elseif rID == 0x12 then roomtext = "East Clone Block & Grate"
			elseif rID == 0x13 then roomtext = "Bottom Left Darknut Fight"
			elseif rID == 0x14 then roomtext = "Ball and Chain Soldier Boss Door Room"
			elseif rID == 0x15 then roomtext = "Bottom Right Corner Darknut Fight"
			elseif rID == 0x16 then roomtext = "Bottom Left Floor Tile Puzzle"
			elseif rID == 0x17 then roomtext = "Entrance to Boss Door Section"
			elseif rID == 0x18 then roomtext = "Clone Buttons to Bottom Right Stairs Corner"
			elseif rID == 0x19 then roomtext = "Bottom Left Stairs Corner"
			elseif rID == 0x1A then roomtext = "Bottom Left Ghini Fight"
			elseif rID == 0x1B then roomtext = "Empty room?"
			elseif rID == 0x1C then roomtext = "Basement, North"
			elseif rID == 0x1D then roomtext = "Bottom Right Stairs Corner"
			elseif rID == 0x1E then roomtext = "Top Left Corner Gibdo Room"
			elseif rID == 0x1F then roomtext = "Throne Room Darknut"
			elseif rID == 0x20 then roomtext = "Compass Room"
			elseif rID == 0x21 then roomtext = "Moldorm Stairs"
			elseif rID == 0x22 then roomtext = "Entrance to Throne Room"
			elseif rID == 0x23 then roomtext = "Floormasters"
			elseif rID == 0x24 then roomtext = "Floor Tiles"
			elseif rID == 0x25 then roomtext = "Moblin Corner to Key"
			elseif rID == 0x26 then roomtext = "Cannons"
			elseif rID == 0x27 then roomtext = "Spike Trap Clone Buttons"
			elseif rID == 0x28 then roomtext = "Corner to Cannon"
			elseif rID == 0x29 then roomtext = "Entrance Hall to 1F Small Key"
			elseif rID == 0x2A then roomtext = "Corner from Small Key"
			elseif rID == 0x2B then roomtext = "Bottom Left Corner Pot Room"
			elseif rID == 0x2C then roomtext = "Bottom Left Corner Gibdo Room"
			elseif rID == 0x2D then roomtext = "Dark Gibdo Hall West"
			elseif rID == 0x2E then roomtext = "Dark Gibdo Hall East"
			elseif rID == 0x2F then roomtext = "Stairs to Throne Room"
			elseif rID == 0x30 then roomtext = "Stairs to Prison"
			elseif rID == 0x31 then roomtext = "Minish Portal & Fire Bars"
			elseif rID == 0x32 then roomtext = "Purple Keaton Room"
			elseif rID == 0x33 then roomtext = "Basement West Firebars"
			elseif rID == 0x34 then roomtext = "Basement East Cannons"
			elseif rID == 0x35 then roomtext = "Basement West Hall"
			elseif rID == 0x36 then roomtext = "Basement East Hall"
			elseif rID == 0x37 then roomtext = "Basement, South"
			elseif rID == 0x38 then roomtext = "Prison, West"
			elseif rID == 0x39 then roomtext = "Prison, East"
			elseif rID == 0x3A then roomtext = "Prison, South"
			end
		
		elseif aID == 0x89 then areatext ="Dark Hyrule Castle (Outside)"
			if rID == 0x00 then roomtext = "Zelda Statue Platform"
			elseif rID == 0x01 then roomtext = "Garden to Elemental Sanctuary"
			elseif rID == 0x02 then roomtext = "Outside, Northwest"
			elseif rID == 0x03 then roomtext = "Outside, Northeast"
			elseif rID == 0x04 then roomtext = "Outside, East"
			elseif rID == 0x05 then roomtext = "Outside, Southwest"
			elseif rID == 0x06 then roomtext = "Outside, South"
			elseif rID == 0x07 then roomtext = "Outside, Southeast"
			elseif rID > 0x07 then roomtext = "N/A"
			end
		
		elseif aID == 0x8A then areatext ="Vaati's Wrath Hand Rooms"
			if rID == 0x00 then roomtext = "First Hand"
			elseif rID == 0x01 then roomtext = "Second Hand"
			elseif rID == 0x02 then roomtext = "Unused"
			elseif rID > 0x02 then roomtext = "N/A"
			end
		
		elseif aID == 0x8B then areatext ="Dark Hyrule Castle"
			if rID == 0x00 then roomtext = "Vaati's Wrath"	
			elseif rID > 0 then roomtext = "N/A"
			end
		
		elseif aID == 0x8C then areatext ="Dark Hyrule Castle"
			if rID == 0x00 then roomtext = "Vaati Transfigured"		
			elseif rID > 0 then roomtext = "N/A"
			end
			
		elseif aID == 0x8D then areatext = "Dark Hyrule Castle"
			if rID == 0x00 then roomtext = "First Hallway to Vaati 1"		
			elseif rID > 0 then roomtext = "N/A"
			end
			
		elseif aID == 0x8F then areatext ="Dark Hyrule Castle Test Room"
			if rID == 0 then roomtext = "Main"
			elseif rID > 0 then roomtext = "N/A"
			end
		
		
		
		elseif aID == 0x0E then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x1B then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x1C then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x1D then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x1E then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x1F then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x39 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x3A then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x3B then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x3C then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x3D then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x3E then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x3F then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x4B then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x4C then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x4E then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x4F then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x52 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x53 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x54 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x55 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x56 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x5B then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x5C then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x5D then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x5E then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x63 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x64 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x65 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x66 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x69 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x6A then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x6B then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x6C then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x6D then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x6E then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x72 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x73 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x74 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x75 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x76 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x79 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x7A then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x7B then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x7C then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x7D then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x7E then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x82 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x83 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x84 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x85 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x86 then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		elseif aID == 0x8E then areatext ="N/A"
			if rID >= 0 then roomtext = "N/A" end
		end
	end
end