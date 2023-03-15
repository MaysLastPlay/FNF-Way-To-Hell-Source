function onCreate()
	makeLuaSprite('YCR_sky', 'SonicP2/sky', -1000, -500);
	makeLuaSprite('YCR_Grass', 'SonicP2/Grass', -550, -150)
	makeLuaSprite('YCR_trees', 'SonicP2/trees', -550, -150)
	makeLuaSprite('YCR_TreesFront', 'SonicP2/TreesFront', -550, -150)
	makeLuaSprite('YCR_GrassBack', 'SonicP2/GrassBack', -550, -250)
	makeLuaSprite('YCR_TopOverlay', 'SonicP2/TopOverlay', -550, -150)
	scaleObject('YCR_sky', 2.0, 2.0);
	setScrollFactor('YCR_sky', 0.9, 0.9);
	setScrollFactor('YCR_backtrees', 1.05, 1.0);
	setScrollFactor('YCR_trees', 1.025, 1.0);
	setProperty('YCR_sky.antialiasing', true);
	setProperty('p3_Stats.antialiasing', true);
	setProperty('YCR_backtrees.antialiasing', true);
	setProperty('YCR_floor.antialiasing', true);
	setProperty('YCR_trees.antialiasing', true);
	
	addLuaSprite('YCR_sky', false)
	addLuaSprite('YCR_GrassBack', false)
	addLuaSprite('YCR_trees', false)
	addLuaSprite('YCR_Grass', false)
	addLuaSprite('YCR_TopOverlay', false)
	addLuaSprite('YCR_TreesFront', true)
end


function onBeatHit()

     if curBeat %1 == 0 then

        setProperty('timeBar.color', getColorFromHex('cc1100'))-- put the hex code for the color here
     end

     if curBeat %2 == 0 then

        setProperty('timeBar.color', getColorFromHex('cc1100'))-- put the hex code for the color here

     end

end

function onStepHit()
if curStep == 1 then
		setCharacterX('dad', 60);
		setCharacterY('dad', -270);
    end
end