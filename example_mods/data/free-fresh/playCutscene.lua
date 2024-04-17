playDialogue = true
dadx = getProperty("dad.x")
function onStartCountdown()
	if isStoryMode then
		if playDialogue then
            setProperty("gf.visible", false)
            setProperty("dad.x", getProperty("dad.x")+100)
            makeLuaSprite("bg", "stage/CD-room/CD-room", -700, -300)
            runTimer("wait", 5)
            addLuaSprite("bg")
			return Function_Stop; --Prevents the song from starting naturally
		end
	end
	return Function_Continue; --Played video and dialogue, now the song can start normally
end
function onUpdate()
	if isStoryMode then
		if playDialogue then
			if keyJustPressed('accept')then
				playDialogue = false
			end
		else 
			removeLuaText("pressentertoskip")
		end
	end
end
function onTimerCompleted(tag)
	--debugPrint(tag)
	if tag == "wait" then
        runTimer("change to outside", 2)
        triggerEvent("Camera Follow Pos", '610', '450')
		playSound("knock", getPropertyFromClass('backend.ClientPrefs', 'data.soundvolume'))
	end
    if tag == "change to outside" then
        cameraFlash("game", 1, 2, true);
        removeLuaSprite("bg")
        setProperty("gf.visible", true)
        setProperty("dad.x", dadx)
        runTimer("wait to dialogue", 3)
	end
    if tag == "wait to dialogue" then
        playDialogue("dialogue", "breakfast")
    end
end