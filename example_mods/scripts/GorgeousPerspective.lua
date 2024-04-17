function onMoveCamera(focus)
    if getPropertyFromClass('backend.ClientPrefs', 'data.gorgeousPerspective') then
        if firsttime == 0 then
            firsttime=1
        else
            setProperty('defaultCamZoom', getProperty('defaultCamZoom')+1)
            runTimer("camera scale back", 1)
        end
    end
end
function onCreate()
    firsttime = 0
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "camera scale back" then
        setProperty('defaultCamZoom', getProperty('defaultCamZoom')-1)
    end
end