function haveall()							
							memory.writebyte(0x03000FD2, 0xF8) -- White Transition
							memory.writebyte(0x030010AF, 0x00) -- No Cucco
							memory.writebyte(0x030010A8, 0x01) -- Initializing Teleport
				if not ((bit.band(memory.readbyte(0x02002B32), 0x4) == 0x4)) then memory.writebyte(0x02002B32, memory.readbyte(0x02002B32) + 0x4) 																	end
				if not ((bit.band(memory.readbyte(0x02002B32), 0x10) == 0x10)) then memory.writebyte(0x02002B32, memory.readbyte(0x02002B32) + 0x10)																 end
				if not ((bit.band(memory.readbyte(0x02002B32), 0x40) == 0x40)) then memory.writebyte(0x02002B32, memory.readbyte(0x02002B32) + 0x40)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B33), 0x1) == 0x1)) then memory.writebyte(0x02002B33, memory.readbyte(0x02002B33) + 0x1)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B33), 0x10) == 0x10)) then memory.writebyte(0x02002B33, memory.readbyte(0x02002B33) + 0x10)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B33), 0x40) == 0x40)) then memory.writebyte(0x02002B33, memory.readbyte(0x02002B33) + 0x40)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B34), 0x1) == 0x1)) then memory.writebyte(0x02002B34, memory.readbyte(0x02002B34) + 0x1)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B34), 0x4) == 0x4)) then memory.writebyte(0x02002B34, memory.readbyte(0x02002B34) + 0x4)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B34), 0x10) == 0x10)) then memory.writebyte(0x02002B34, memory.readbyte(0x02002B34) + 0x10)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B34), 0x40) == 0x40)) then memory.writebyte(0x02002B34, memory.readbyte(0x02002B34) + 0x40)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B35), 0x1) == 0x1)) then memory.writebyte(0x02002B35, memory.readbyte(0x02002B35) + 0x1)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B35), 0x4) == 0x4)) then memory.writebyte(0x02002B35, memory.readbyte(0x02002B35) + 0x4)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B35), 0x10) == 0x10)) then memory.writebyte(0x02002B35, memory.readbyte(0x02002B35) + 0x10)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B35), 0x40) == 0x40)) then memory.writebyte(0x02002B35, memory.readbyte(0x02002B35) + 0x40)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B36), 0x4) == 0x4)) then memory.writebyte(0x02002B36, memory.readbyte(0x02002B36) + 0x4)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B36), 0x10) == 0x10)) then memory.writebyte(0x02002B36, memory.readbyte(0x02002B36) + 0x10)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B36), 0x40) == 0x40)) then memory.writebyte(0x02002B36, memory.readbyte(0x02002B36) + 0x40)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B37), 0x1) == 0x1)) then memory.writebyte(0x02002B37, memory.readbyte(0x02002B37) + 0x1)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B37), 0x4) == 0x4)) then memory.writebyte(0x02002B37, memory.readbyte(0x02002B37) + 0x4)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B37), 0x40) == 0x40)) then memory.writebyte(0x02002B37, memory.readbyte(0x02002B37) + 0x40)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B39), 0x1) == 0x1)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) + 0x1) memory.writebyte(0x02002AF6, 0x1C)                end
				if not ((bit.band(memory.readbyte(0x02002B39), 0x4) == 0x4)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) + 0x4) memory.writebyte(0x02002AF7, 0x1D)                end
				if not ((bit.band(memory.readbyte(0x02002B39), 0x10) == 0x10)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) + 0x10) memory.writebyte(0x02002AF8, 0x1E)           end
				if not ((bit.band(memory.readbyte(0x02002B39), 0x40) == 0x40)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) + 0x40) memory.writebyte(0x02002AF9, 0x1F)           end
				if not ((bit.band(memory.readbyte(0x02002B42), 0x1) == 0x1)) then memory.writebyte(0x02002B42, memory.readbyte(0x02002B42) + 0x1)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B42), 0x4) == 0x4)) then memory.writebyte(0x02002B42, memory.readbyte(0x02002B42) + 0x4)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B42), 0x10) == 0x10)) then memory.writebyte(0x02002B42, memory.readbyte(0x02002B42) + 0x10)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B42), 0x40) == 0x40)) then memory.writebyte(0x02002B42, memory.readbyte(0x02002B42) + 0x40)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B43), 0x1) == 0x1)) then memory.writebyte(0x02002B43, memory.readbyte(0x02002B43) + 0x1)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B43), 0x4) == 0x4)) then memory.writebyte(0x02002B43, memory.readbyte(0x02002B43) + 0x4)                                                                       end
				if not ((bit.band(memory.readbyte(0x02002B43), 0x10) == 0x10)) then memory.writebyte(0x02002B43, memory.readbyte(0x02002B43) + 0x10)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002B43), 0x40) == 0x40)) then memory.writebyte(0x02002B43, memory.readbyte(0x02002B43) + 0x40)                                                                  end
				if not ((bit.band(memory.readbyte(0x02002C9E), 0x10) == 0x10)) then memory.writebyte(0x02002C9E, memory.readbyte(0x02002C9E) + 0x10)                                                                 end
				if not ((bit.band(memory.readbyte(0x02002C9E), 0x10) == 0x10)) then memory.writebyte(0x02002C9E, memory.readbyte(0x02002C9E) + 0x10) end
				if not ((bit.band(memory.readbyte(0x02002B4E), 0x1) == 0x1)) then memory.writebyte(0x02002B4E, memory.readbyte(0x02002B4E) + 0x1) end
				if not ((bit.band(memory.readbyte(0x02002B4E), 0x4) == 0x4)) then memory.writebyte(0x02002B4E, memory.readbyte(0x02002B4E) + 0x4) end
				if not ((bit.band(memory.readbyte(0x02002B4E), 0x10) == 0x10)) then memory.writebyte(0x02002B4E, memory.readbyte(0x02002B4E) + 0x10) end
				if not ((bit.band(memory.readbyte(0x02002B4E), 0x40) == 0x40)) then memory.writebyte(0x02002B4E, memory.readbyte(0x02002B4E) + 0x40) end
				if not ((bit.band(memory.readbyte(0x02002B4F), 0x1) == 0x1)) then memory.writebyte(0x02002B4F, memory.readbyte(0x02002B4F) + 0x1) end
				if not ((bit.band(memory.readbyte(0x02002B4F), 0x4) == 0x4)) then memory.writebyte(0x02002B4F, memory.readbyte(0x02002B4F) + 0x4) end
				if not ((bit.band(memory.readbyte(0x02002B44), 0x1) == 0x1)) then memory.writebyte(0x02002B44, memory.readbyte(0x02002B44) + 0x1) end
				if not ((bit.band(memory.readbyte(0x02002B44), 0x4) == 0x4)) then memory.writebyte(0x02002B44, memory.readbyte(0x02002B44) + 0x4) end
				if not ((bit.band(memory.readbyte(0x02002B44), 0x10) == 0x10)) then memory.writebyte(0x02002B44, memory.readbyte(0x02002B44) + 0x10) end
				if not ((bit.band(memory.readbyte(0x02002B44), 0x40) == 0x40)) then memory.writebyte(0x02002B44, memory.readbyte(0x02002B44) + 0x40) end
				if not ((bit.band(memory.readbyte(0x02002B45), 0x1) == 0x1)) then memory.writebyte(0x02002B45, memory.readbyte(0x02002B45) + 0x1) end
				if not ((bit.band(memory.readbyte(0x02002B45), 0x4) == 0x4)) then memory.writebyte(0x02002B45, memory.readbyte(0x02002B45) + 0x4) end
				if not ((bit.band(memory.readbyte(0x02002B45), 0x10) == 0x10)) then memory.writebyte(0x02002B45, memory.readbyte(0x02002B45) + 0x10) end
				if not ((bit.band(memory.readbyte(0x02002B45), 0x40) == 0x40)) then memory.writebyte(0x02002B45, memory.readbyte(0x02002B45) + 0x40) end
				
				
end

function loseall()
							memory.writebyte(0x03000FD2, 0xF8) -- White Transition
							memory.writebyte(0x030010AF, 0x00) -- No Cucco
							memory.writebyte(0x030010A8, 0x01) -- Initializing Teleport
				if ((bit.band(memory.readbyte(0x02002B32), 0x4) == 0x4)) then memory.writebyte(0x02002B32, memory.readbyte(0x02002B32) - 0x4) end
				if ((bit.band(memory.readbyte(0x02002B32), 0x4) == 0x4)) then memory.writebyte(0x02002B32, memory.readbyte(0x02002B32) - 0x4) 																	end
				if ((bit.band(memory.readbyte(0x02002B32), 0x10) == 0x10)) then memory.writebyte(0x02002B32, memory.readbyte(0x02002B32) - 0x10)																 end
				if ((bit.band(memory.readbyte(0x02002B32), 0x40) == 0x40)) then memory.writebyte(0x02002B32, memory.readbyte(0x02002B32) - 0x40)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B33), 0x1) == 0x1)) then memory.writebyte(0x02002B33, memory.readbyte(0x02002B33) - 0x1)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B33), 0x10) == 0x10)) then memory.writebyte(0x02002B33, memory.readbyte(0x02002B33) - 0x10)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B33), 0x40) == 0x40)) then memory.writebyte(0x02002B33, memory.readbyte(0x02002B33) - 0x40)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B34), 0x1) == 0x1)) then memory.writebyte(0x02002B34, memory.readbyte(0x02002B34) - 0x1)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B34), 0x4) == 0x4)) then memory.writebyte(0x02002B34, memory.readbyte(0x02002B34) - 0x4)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B34), 0x10) == 0x10)) then memory.writebyte(0x02002B34, memory.readbyte(0x02002B34) - 0x10)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B34), 0x40) == 0x40)) then memory.writebyte(0x02002B34, memory.readbyte(0x02002B34) - 0x40)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B35), 0x1) == 0x1)) then memory.writebyte(0x02002B35, memory.readbyte(0x02002B35) - 0x1)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B35), 0x4) == 0x4)) then memory.writebyte(0x02002B35, memory.readbyte(0x02002B35) - 0x4)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B35), 0x10) == 0x10)) then memory.writebyte(0x02002B35, memory.readbyte(0x02002B35) - 0x10)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B35), 0x40) == 0x40)) then memory.writebyte(0x02002B35, memory.readbyte(0x02002B35) - 0x40)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B36), 0x4) == 0x4)) then memory.writebyte(0x02002B36, memory.readbyte(0x02002B36) - 0x4)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B36), 0x10) == 0x10)) then memory.writebyte(0x02002B36, memory.readbyte(0x02002B36) - 0x10)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B36), 0x40) == 0x40)) then memory.writebyte(0x02002B36, memory.readbyte(0x02002B36) - 0x40)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B37), 0x1) == 0x1)) then memory.writebyte(0x02002B37, memory.readbyte(0x02002B37) - 0x1)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B37), 0x4) == 0x4)) then memory.writebyte(0x02002B37, memory.readbyte(0x02002B37) - 0x4)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B37), 0x40) == 0x40)) then memory.writebyte(0x02002B37, memory.readbyte(0x02002B37) - 0x40)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B39), 0x1) == 0x1)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) - 0x1) memory.writebyte(0x02002AF6, 0x1C)                end
				if ((bit.band(memory.readbyte(0x02002B39), 0x4) == 0x4)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) - 0x4) memory.writebyte(0x02002AF7, 0x1D)                end
				if ((bit.band(memory.readbyte(0x02002B39), 0x10) == 0x10)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) - 0x10) memory.writebyte(0x02002AF8, 0x1E)           end
				if ((bit.band(memory.readbyte(0x02002B39), 0x40) == 0x40)) then memory.writebyte(0x02002B39, memory.readbyte(0x02002B39) - 0x40) memory.writebyte(0x02002AF9, 0x1F)           end
				if ((bit.band(memory.readbyte(0x02002B42), 0x1) == 0x1)) then memory.writebyte(0x02002B42, memory.readbyte(0x02002B42) - 0x1)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B42), 0x4) == 0x4)) then memory.writebyte(0x02002B42, memory.readbyte(0x02002B42) - 0x4)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B42), 0x10) == 0x10)) then memory.writebyte(0x02002B42, memory.readbyte(0x02002B42) - 0x10)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B42), 0x40) == 0x40)) then memory.writebyte(0x02002B42, memory.readbyte(0x02002B42) - 0x40)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B43), 0x1) == 0x1)) then memory.writebyte(0x02002B43, memory.readbyte(0x02002B43) - 0x1)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B43), 0x4) == 0x4)) then memory.writebyte(0x02002B43, memory.readbyte(0x02002B43) - 0x4)                                                                       end
				if ((bit.band(memory.readbyte(0x02002B43), 0x10) == 0x10)) then memory.writebyte(0x02002B43, memory.readbyte(0x02002B43) - 0x10)                                                                  end
				if ((bit.band(memory.readbyte(0x02002B43), 0x40) == 0x40)) then memory.writebyte(0x02002B43, memory.readbyte(0x02002B43) - 0x40)                                                                  end
				if ((bit.band(memory.readbyte(0x02002C9E), 0x10) == 0x10)) then memory.writebyte(0x02002C9E, memory.readbyte(0x02002C9E) - 0x10)   																end
				if ((bit.band(memory.readbyte(0x02002C9E), 0x10) == 0x10)) then memory.writebyte(0x02002C9E, memory.readbyte(0x02002C9E) - 0x10)  end
end