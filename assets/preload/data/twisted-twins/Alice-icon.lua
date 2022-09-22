function onCreate()
	makeAnimatedLuaSprite('Alice', 'Alice', 0, 0)
	addAnimationByPrefix('Alice', 'Madness', 'Madness', 24, true)
	addAnimationByPrefix('Alice', 'Neutral', 'Neutral', 24, true)
	addAnimationByPrefix('Alice', 'Lose', 'Lose', 24, true)
	setObjectCamera('Alice', 'camHUD')
	addLuaSprite('Alice', true)
end

function onCreatePost()
	setProperty('iconP1.alpha', 0)
	setObjectOrder('Alice', getObjectOrder('iconP1'))
end

function onUpdate(elapsed)
	if getProperty('health') > 1.61 then
		objectPlayAnimation('Alice', 'Madness', false)
		setProperty('Alice.x', getProperty('iconP1.x') +45) -- the number is icon offset
		setProperty('Alice.y', getProperty('iconP1.y') -15)
	elseif getProperty('health') < 1.61 and getProperty('health') > 0.4 then
		objectPlayAnimation('Alice', 'Neutral', false)
		setProperty('Alice.x', getProperty('iconP1.x') -55)
		setProperty('Alice.y', getProperty('iconP1.y') -55)
	elseif getProperty('health') < 0.4 then
		objectPlayAnimation('Alice', 'Lose', false)
		setProperty('Alice.x', getProperty('iconP1.x') -105)
		setProperty('Alice.y', getProperty('iconP1.y') -40)
	end

	setProperty('Alice.scale.x', getProperty('iconP1.scale.x'))
	setProperty('Alice.scale.y', getProperty('iconP1.scale.y'))
end