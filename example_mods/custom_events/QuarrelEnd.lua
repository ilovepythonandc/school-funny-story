function onEvent(name,value1,value2)
    if name == "QuarrelEnd" then 
        triggerEvent("Change Character", "dad", "bizens-run-flipX");
        doTweenX("end run", "boyfriend", getProperty("boyfriend.x")-100, 1.7, "cubeOut");
        doTweenX("end run leg", "bizensleg", getProperty("bizensleg.x")-1250, 1.7, "cubeOut");
        doTweenX("end hit", "dad", getProperty("dad.x")-900, 1, "cubeOut");
    end
end