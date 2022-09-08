function onEvent(name, value1, value2) 
	if name == 'aceDrain' then
			damageValue = 0.0015;
		end
	end

function onUpdate()
	curHealth = getProperty('health');
	if curHealth < 2 and boyfriendName == 'bf-ace' then
		setProperty('health', curHealth + damageValue);
			
	end
	
	if curHealth > 2 and boyfriendName == 'bf-ace' then
			setProperty('health', 2);
		end
	end