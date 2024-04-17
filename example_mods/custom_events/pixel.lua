function onEvent(name,value1,value2)
	if name == 'pixel' then
        move = 350
        black2startx = 1500
		makeLuaSprite('black1', '', -500, -300)
        setScrollFactor('black1', 0, 0)
        makeGraphic('black1', move, 5000, '000000')
        makeLuaSprite('black2', '',black2startx, -300)
        setScrollFactor('black2', 0, 0)
        makeGraphic('black2', move, 5000, '000000')
        addLuaSprite('black1', true)
        addLuaSprite('black2', true)
        doTweenX('balck1', 'black1', -500+move, 0.3, 'cubeIn')
        doTweenX('balck2', 'black2', black2startx-move, 0.3, 'cubeIn')
	end
end 