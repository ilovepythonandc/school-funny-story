function onCreate()
	makeAnimatedLuaSprite('bizensleg', 'characters/bizens-run-leg-flipX', getCharacterX("dad")+985, getCharacterY("dad")+520);
	scaleObject("bizensleg",1.3,1.3)
	addAnimationByPrefix('bizensleg','run','legflip',24,true)
	addLuaSprite('bizensleg',false)
	setObjectOrder('bizensleg',getObjectOrder('dadGroup')-1)
	objectPlayAnimation('bizensleg','run');
end