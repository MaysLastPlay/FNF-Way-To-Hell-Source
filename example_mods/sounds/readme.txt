Drop you custom sounds here!
It should be in .ogg otherwise it won't work!!!


                makeAnimatedLuaSprite('static', 'hitStatic', 0, 0);
                addAnimationByPrefix('static', 'staticmiss', 'staticANIMATION', 24, false);
                objectPlayAnimation('static', 'staticmiss', false);
                setGraphicSize('static', FlxG.width, FlxG.height);
                addLuaSprite('static', true);