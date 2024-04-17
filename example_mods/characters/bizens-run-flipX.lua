function onCreate()
	makeAnimatedLuaSprite('bizensleg', 'characters/bizens-run-leg', getCharacterX("dad")+1010, getCharacterY("dad")+700-20);
	scaleObject("bizensleg",1.1,1.1)
	addAnimationByPrefix('bizensleg','run','leg',24,true)
	addLuaSprite('bizensleg',false)
	setObjectOrder('bizensleg',getObjectOrder('dadGroup')-1)
	objectPlayAnimation('bizensleg','run');
end