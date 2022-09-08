function onEvent(name, value1)
	if name == 'glow' then
		makeLuaSprite('colorOverlay', 'glow', 0, 0);
		setScrollFactor('colorOverlay', 0, 0);
		setObjectCamera('colorOverlay', 'hud');		
		scaleObject('colorOverlay', .75, .75);


		if value1 == '1' then
			addLuaSprite('colorOverlay', true);
		end
		
		if value1 == '2' then
			removeLuaSprite('colorOverlay', true);
		end
	end
end