playDialogue = true;
function onStartCountdown()
	if isStoryMode then
		if playDialogue then
			triggerEvent("Camera Follow Pos", "1520", "490");
			runTimer("Look at bizens1", 6.5)
			return Function_Stop; --Prevents the song from starting naturally
		--else if playDialogue then
		--	startDialogue('dialogue', 'breakfast');
		--	playDialogue = false;
		--	return Function_Stop; --Prevents the song from starting naturally
		--	end
		end
	end
	return Function_Continue; --Played video and dialogue, now the song can start normally
end

function onUpdate()
	if isStoryMode then
		if playDialogue then
			if keyJustPressed('accept')then
				skip()

			end
			makeLuaText("pressentertoskip", "Press Enter for Skip", 100, 0, 0)
			addLuaText("pressentertoskip")
		else 
			removeLuaText("pressentertoskip")
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == "Look at bizens1" then
		triggerEvent("Camera Follow Pos", "1120", "490");
		runTimer("Look at Lijiatian1", 6.25);
	end
	if tag == "Look at Lijiatian1" then
		triggerEvent("Camera Follow Pos", "1520", "490");
		runTimer("Look at bizens2", 3.125);
	end  
	if tag == "Look at bizens2" then
		triggerEvent("Camera Follow Pos", "1120", "490")
		runTimer("Look at Lijiatian2", 1.5625)
	end
	if tag == "Look at Lijiatian2" then
		triggerEvent("Camera Follow Pos", "1520", "490");
		runTimer("Look at bizens3", 0.78125);
	end
	if tag == "Look at bizens3" then
		triggerEvent("Camera Follow Pos", "1120", "490");
		runTimer("Look at Lijiatian3", 0.390625);
	end
	if tag == "Look at Lijiatian3" then
		startDialogue('dialogue', 'breakfast');
		playDialogue = false;
	end
end
function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end 
function skip()
	cancelTimer("Look at bizens1")
	cancelTimer("Look at Lijiatian1")
	cancelTimer("Look at bizens2")
	cancelTimer("Look at Lijiatian2")
	cancelTimer("Look at bizens3")
	cancelTimer("Look at Lijiatian3")
	startDialogue('dialogue', 'breakfast');
	playDialogue = false;
end