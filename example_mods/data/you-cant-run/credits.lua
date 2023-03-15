function onStepHit()
	if curStep == 20 then
		makeLuaSprite('box', 'box', 433, -1200);
		scaleObject('box', 1.0, 1.0);
		addLuaSprite('box', false);
		setProperty('box.visible', true);
		setObjectCamera('box', 'other');

		makeLuaText('Text', "CREDITS", 299, 485, -700); 
		setTextSize('Text', 35);
		setObjectCamera('Text', 'other');
		setProperty('Text.color', getColorFromHex('FF0000'))
		addLuaText('Text', true);
		
		makeLuaText('Text2', "MUSIC", 299, 485, -700);
		setTextSize('Text2', 30);
		setObjectCamera('Text2', 'other');
		addLuaText('Text2')
		
    makeLuaText('Text3', "DanlyDaMusiciant\nblazingroze", 299, 485, -700);
		setTextSize('Text3', 25);
		setObjectCamera('Text3', 'other');
		addLuaText('Text3')
		
		makeLuaText('Text4', "CHARTER", 299, 485, -700);
		setTextSize('Text4', 30);
		setObjectCamera('Text4', 'other');
    addLuaText('Text4')
    
    makeLuaText('Text5', "Raimbowcore12", 299, 485, -700);
		setTextSize('Text5', 25);
		setObjectCamera('Text5', 'other');
		addLuaText('Text5')
		
		makeLuaText('Text6', "CODING", 299, 485, -700);
		setTextSize('Text6', 30);
		setObjectCamera('Text6', 'other');
		addLuaText('Text6')
		
		makeLuaText('Text7', "MaysLastPlay\nSirox\nAly-Ant", 299, 485, -700);
		setTextSize('Text7', 25);
		setObjectCamera('Text7', 'other');
		addLuaText('Text7')
    
		doTweenY("box", "box", 0, 0.8, "smoothStepIn")
		doTweenY("Text", "Text", 40, 1, "smoothStepIn")
		doTweenY("Text2", "Text2", 150, 1, "smoothStepIn")
		doTweenY("Text3", "Text3", 200, 1, "smoothStepIn")
		doTweenY("Text4", "Text4", 350, 1, "smoothStepIn")
		doTweenY("Text5", "Text5", 400, 1, "smoothStepIn")
		doTweenY("Text6", "Text6", 470, 1, "smoothStepIn")
		doTweenY("Text7", "Text7", 520, 1, "smoothStepIn")
	end
  if curStep == 30 then
    doTweenColor(':llorar:', "Text2", "FF0000", 1.25, "quadInOut")
  end
  if curStep == 50 then
    doTweenColor('AAAAAAA', "Text4", "FF0000", 1.25, "quadInOut")
  end
  if curStep == 70 then
    doTweenColor('I need love.', "Text6", "FF0000", 1.25, "quadInOut")
  end
	if curStep == 80 then
		doTweenY("box", "box", -780, 0.8, "smoothStepIn")	
		doTweenY("Text", "Text", -350, 0.7, "smoothStepIn")
		doTweenY("Text2", "Text2", -400, 1, "smoothStepIn")
		doTweenY("Text3", "Text3", -450, 1, "smoothStepIn")
		doTweenY("Text4", "Text4", -500, 1, "smoothStepIn")
		doTweenY("Text5", "Text5", -550, 1, "smoothStepIn")
		doTweenY("Text6", "Text6", -600, 1, "smoothStepIn")
		doTweenY("Text7", "Text7", -650, 1, "smoothStepIn")
		runTimer('adiosLag',1,1)
	 end
end
function onTimerCompleted(tag)
if tag == 'adiosLag' then
   removeLuaSprite('box')
   removeLuaText('Text')
   removeLuaText('Text2')
   removeLuaText('Text3')
   removeLuaText('Text4')
   removeLuaText('Text5')
   removeLuaText('Text6')
   removeLuaText('Text7')
  end
end