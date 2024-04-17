function onCreate()
	makeAnimatedLuaSprite('binarimileg', 'characters/binarimi-run-leg', getProperty('boyfriend.x')-1020, getProperty('boyfriend.y')-50);
	addAnimationByPrefix('binarimileg','run','runleg',60,true)
	addLuaSprite('binarimileg',false)
	setObjectOrder('binarimileg',getObjectOrder('boyfriendGroup')-1)
	objectPlayAnimation('binarimileg','run',true);
end