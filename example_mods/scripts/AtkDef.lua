
function onCreate()
 	ypos = 650;

	makeAnimatedLuaSprite('OP', 'atk_def', -400, ypos);
	makeAnimatedLuaSprite('PLR', 'atk_def', -400, ypos);
	addAnimationByPrefix('OP', 'andrew', 'andrew', 24, true);
	addAnimationByPrefix('PLR', 'ace', 'ace', 24, true);
	addAnimationByPrefix('PLR', 'bf', 'bf', 24, true);
	addAnimationByPrefix('PLR', 'luna', 'luna', 24, true);
	addAnimationByPrefix('PLR', 'pico', 'pico', 24, true);
	setScrollFactor('OP', 0, 0);
	setScrollFactor('PLR', 0, 0);
	setObjectCamera('OP', 'other');
	setObjectCamera('PLR', 'other');
	objectPlayAnimation('OP', 'andrew', true);
	objectPlayAnimation('PLR', 'bf', true);

	addLuaSprite('OP', true);
	addLuaSprite('PLR', true);
end

function onEvent(name, value1, value2)
	if name == 'activatestats' then
		plrx = getCharacterX('boyfriend');
		plry = getCharacterY('boyfriend');
		opx = getCharacterX('dad');
		opy = getCharacterY('dad');

		makeAnimatedLuaSprite('OP', 'atk_def', opx, opy+535);
		makeAnimatedLuaSprite('PLR', 'atk_def', plrx+175, plry+545);
		addAnimationByPrefix('OP', 'andrew', 'andrew', 24, true);
		addAnimationByPrefix('PLR', 'ace', 'ace', 24, true);
		addAnimationByPrefix('PLR', 'bf', 'bf', 24, true);
		addAnimationByPrefix('PLR', 'luna', 'luna', 24, true);
		addAnimationByPrefix('PLR', 'pico', 'pico', 24, true);
		setObjectCamera('OP', 'other');
		setObjectCamera('PLR', 'other');
		setScrollFactor('OP', 1);
		setScrollFactor('PLR', 1);
		objectPlayAnimation('OP', 'andrew', true);
		objectPlayAnimation('PLR', 'bf', true);
		
		addLuaSprite('OP', true);
		addLuaSprite('PLR', true);
	end

	if name == 'statChange' then
		objectPlayAnimation(value1, value2);
	end
end