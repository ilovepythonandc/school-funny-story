function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if (counter == 4) then
		noteTweenAlpha("first clear opponent note", 0, 0, 0.5, "cudeOut")
		noteTweenAlpha("next clear opponent note", 1, 0, 0.7, "cudeOut")
		noteTweenAlpha("thrid clear opponent note", 2, 0, 0.9, "cudeOut")
		noteTweenAlpha("fourth clear opponent note", 3, 0, 1.1, "cudeOut")
	end
end