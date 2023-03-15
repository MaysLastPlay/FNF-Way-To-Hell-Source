local bfcamX = 0;
local bfcamY = 0;
local camX = 0;
local camY = 0;

function onCreate()
	makeLuaSprite('blackbg', 'dablack', 0, 0);

    makeLuaSprite('circle', 'CircleYouCantRun', 777, 0);

    makeLuaSprite('text', 'TextYouCantRun', -1200, 0);

    setObjectCamera('blackbg', 'hud');

    setObjectCamera('circle', 'hud');

    setObjectCamera('text', 'hud');

    makeLuaSprite('vg', 'RedVG');

    setObjectCamera('vg', 'hud');

    addLuaSprite('blackbg', true);
    addLuaSprite('circle', true);
    addLuaSprite('text', true);


end

function onUpdate()
    setProperty('camFollow.x', getProperty('camFollow.x') + bfcamX); 
    setProperty('camFollow.y', getProperty('camFollow.y') + bfcamY);

    setProperty('camFollow.x', getProperty('camFollow.x') + camX); 
    setProperty('camFollow.y', getProperty('camFollow.y') + camY);

    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
        bfcamX = 0;
        bfcamY = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'idle' then
        camX = 0;
        camY = 0;
    end

    if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
        bfcamX = -1;
        bfcamY = 0;
    end
    if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
        bfcamX = 1;
        bfcamY = 0;
    end
    if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
        bfcamY = -1;
        bfcamX = 0;
    end
    if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
        bfcamY = 1;
        bfcamX = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
        camX = -1;
        camY = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
        camX = 1;
        camY = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'singUP' then
        camY = -1;
        camX = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
        camY = 1;
        camX = 0;
    end

    if getProperty('vg.alpha') == 1 then
        doTweenAlpha('dothetweenvg', 'vg', 0, 1, 'quadInOut');
    end
    -- Sonic camera movement is somehow not working???? idk how to fix that so lol
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
	if getProperty('dad.curCharacter') == 'sonic.exe' then
		cameraShake('game', 0.005, 0.50)
	end      
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'notfuckedanymore' then
        removeLuaSprite('theshitassthatdistractsyou', false);
    end
    if tag == 'bye1' then
        removeLuaSprite('wowa', false);
    end
    if tag == 'bye2' then
        removeLuaSprite('wowa2', false);
    end
end

function onTweenCompleted(tag)
    if tag == 'circleTweenX' then
        doTweenAlpha('removecircle', 'circle', 0, 1, 'linear');
    end
    if tag == 'textTweenX' then
        doTweenAlpha('removetext', 'text', 0, 1, 'linear');
    end
    if tag == 'removetext' then 
        removeLuaSprite('text');
        doTweenAlpha('removebg', 'blackbg', 0, 0.5, 'linear');
    end
    if tag == 'removecircle' then 
        removeLuaSprite('circle');
    end
    if tag == 'removebg' then 
        removeLuaSprite('blackbg');
    end
    if tag == 'dothetweenvg' then
        doTweenAlpha('dothetweenvgagain', 'vg', 1, 1, 'quadInOut');
    end
end

function onEvent(name, value1, value2)
    if name == 'YOU MISSED THE STATIC NOTE NOW GET FUCKED' then
        makeAnimatedLuaSprite('theshitassthatdistractsyou', 'hitStatic', 0, 0);

        addAnimationByPrefix('FUCKYOU', 'static', 'staticANIMATION', 24, false);
        
        objectPlayAnimation('FUCKYOU', true);

        setObjectCamera('theshitassthatdistractsyou', 'hud');

        addLuaSprite('theshitassthatdistractsyou', true);

        runTimer('notfuckedanymore', 0.2, 1);
    end
end


function onStepHit()
    if curStep == 1 then 
        doTweenX('circleTweenX', 'circle', 0, 1, 'linear');
        doTweenX('textTweenX', 'text', 0, 1, 'linear');
        
        setProperty('vg.visible', false);

        addLuaSprite('vg', true);
    end 
    if curStep == 80 then 
        setProperty('vg.visible', true);
    end 
    if curStep == 528 then
        setProperty('vg.visible', false);

        playSound('staticBUZZ', 1);

        makeAnimatedLuaSprite('wowa', 'daSTAT', 0, 0);

        addAnimationByPrefix('flashyboi', 'static', 'staticFLASH', 24, false);
        
        objectPlayAnimation('flashyboi', true);

        setGraphicSize('wowa', 1280, 720);

        setObjectCamera('wowa', 'hud');

        addLuaSprite('wowa', true);

        runTimer('bye1', 0.3, 1);

    end
    if curStep == 784 then
        setProperty('vg.visible', true);

        playSound('staticBUZZ', 1);

        makeAnimatedLuaSprite('wowa2', 'daSTAT', 0, 0);

        addAnimationByPrefix('flashyboi', 'static', 'staticFLASH', 24, false);
        
        objectPlayAnimation('flashyboi', true);

        setGraphicSize('wowa2', 1280, 720);

        setObjectCamera('wowa2', 'hud');

        addLuaSprite('wowa2', true);

        runTimer('bye2', 0.3, 1);
    end
end 




