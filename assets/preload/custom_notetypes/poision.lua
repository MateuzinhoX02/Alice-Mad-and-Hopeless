local healthDrop = 0;
local FUCKYOU = 0;
function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'poision' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'abomination_notes');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function onUpdate()
	if startDraining == true then
	setProperty('health', getProperty('health') - healthDrop); 
			end
health = getProperty('health')
		if health < 0.08 then
			startDraining = false
			end
		if health > 0.08 then
			startDraining = true
			end
		end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'poision' then
	startDraining = true
		healthDrop = healthDrop + 0.0001;
		if healthDrop == 0.0001 then
			runTimer('BITCHLMAO', 0.1 , 100);		end
    end
end
