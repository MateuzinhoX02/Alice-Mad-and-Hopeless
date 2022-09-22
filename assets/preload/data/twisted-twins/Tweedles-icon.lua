function onCreate()
	makeAnimatedLuaSprite('Tweedles', 'Tweedles', 0, 0)
	addAnimationByPrefix('Tweedles', 'BOTHlosing', 'BOTHlosing', 24, true)
	addAnimationByPrefix('Tweedles', 'BOTHneutral', 'BOTHneutral', 24, true)
	addAnimationByPrefix('Tweedles', 'ABMlosing', 'ABMlosing', 24, true)
	setObjectCamera('Tweedles', 'camHUD')
	addLuaSprite('Tweedles', true)
end

function onCreatePost()
	setProperty('iconP2.alpha', 0)
	setObjectOrder('Tweedles', getObjectOrder('iconP2'))
end

function onUpdate(elapsed)
	if getProperty('health') > 1.61 then
		objectPlayAnimation('Tweedles', 'BOTHlosing', false)
		setProperty('Tweedles.x', getProperty('iconP2.x') +45) -- the number is icon offset
		setProperty('Tweedles.y', getProperty('iconP2.y') -15)
	elseif getProperty('health') < 1.61 and getProperty('health') > 0.4 then
		objectPlayAnimation('Tweedles', 'BOTHneutral', false)
		setProperty('Tweedles.x', getProperty('iconP2.x') -55)
		setProperty('Tweedles.y', getProperty('iconP2.y') -55)
	elseif getProperty('health') < 0.4 then
		objectPlayAnimation('Tweedles', 'ABMlosing', false)
		setProperty('Tweedles.x', getProperty('iconP2.x') -105)
		setProperty('Tweedles.y', getProperty('iconP2.y') -40)
	end

	setProperty('Tweedles.scale.x', getProperty('iconP2.scale.x'))
	setProperty('Tweedles.scale.y', getProperty('iconP2.scale.y'))
end