function onCreate()
	--background change things
	makeLuaSprite('stage', '1', -450, -300)
	scaleObject('stage', 1, 1.2)
	addLuaSprite('stage', false)

	makeLuaSprite( 'stage2', '1L', -450, -300)
	scaleObject('stage2', 1, 1.2)
	addLuaSprite('stage2', false)

	makeLuaSprite( 'stage3', '1F', -250, -400)
	scaleObject('stage3', 1, 1.2)
	addLuaSprite('stage3', false)

	makeLuaSprite( 'stage4', '1C', -450, -450)
	scaleObject('stage4', 1, 1.2)
	addLuaSprite('stage4', false)

    makeLuaSprite( 'stage5', 'black', -450, -300)
    scaleObject('stage5', 1, 1.2)
    addLuaSprite('stage5', false)

    makeLuaSprite( 'stage6', 'jumpscare1', -450, -300)
    scaleObject('stage6', 1, 1.2)
    addLuaSprite('stage6', false)

    makeLuaSprite( 'stage7', 'jumpscare2', -450, -300)
    scaleObject('stage7', 1, 1.2)
    addLuaSprite('stage7', false)

    makeLuaSprite( 'stage8', 'jumpscare3', -450, -300)
    scaleObject('stage8', 1, 1.2)
    addLuaSprite('stage8', false)

	setProperty('stage2.visible', false) --so that bg 1, 2 ,3 ,4 ,5 ,6 ,7 , and 8 are not seen
	setProperty('stage3.visible', false)
	setProperty('stage4.visible', false)
	setProperty('stage5.visible', false)
	setProperty('stage6.visible', false)
	setProperty('stage7.visible', false)
	setProperty('stage8.visible', false)
end
--stage change event
function onEvent(name,value1,value2)
	if name == 'Play Animation' then --name of the event to be used
		
		if value1 == 'bgnormal' then --put the normal bg
			setProperty('stage.visible', true);
			setProperty('stage2.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
			setProperty('stage7.visible', false);
			setProperty('stage8.visible', false);
		end
		if value1 == 'bg1' then --put the 1 bg
			setProperty('stage.visible', false);
			setProperty('stage2.visible', true);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
			setProperty('stage7.visible', false);
			setProperty('stage8.visible', false);
		end
		if value1 == 'bg2' then --put the 2 bg
			setProperty('stage.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage3.visible', true);
			setProperty('stage4.visible', false);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
			setProperty('stage7.visible', false);
			setProperty('stage8.visible', false);
		end
		if value1 == 'bg3' then --put the 3 bg
			setProperty('stage.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', true);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
			setProperty('stage7.visible', false);
			setProperty('stage8.visible', false);
		end
		if value1 == 'bgblack' then --put the 4bg
		    setProperty('stage.visible', false);
		    setProperty('stage2.visible', false);
		    setProperty('stage3.visible', false);
		    setProperty('stage4.visible', false);
		    setProperty('stage5.visible', true);
			setProperty('stage6.visible', false);
			setProperty('stage7.visible', false);
			setProperty('stage8.visible', false);
		end
		if value1 == 'bgjumpscare' then --put the 5 bg
			setProperty('stage.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', true);
			setProperty('stage7.visible', false);
			setProperty('stage8.visible', false);
		end
		if value1 == 'bgjumpscare2' then --put the 6 bg
			setProperty('stage.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
			setProperty('stage7.visible', true);
			setProperty('stage8.visible', false);
		end
		if value1 == 'bgjumpscare3' then --put the 7bg
		    setProperty('stage.visible', false);
		    setProperty('stage2.visible', false);
		    setProperty('stage3.visible', false);
		    setProperty('stage4.visible', false);
		    setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
			setProperty('stage7.visible', false);
			setProperty('stage8.visible', true);
		 end
	end
end