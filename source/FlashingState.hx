/*
Código sexy! 
- MateusX02
*/

package; 

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;

class FlashingState extends MusicBeatState
{
	public static var leftState:Bool = false;
	public static var caipira:Bool = false;

	var warnText:FlxText;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('WARN'));
		bg.setGraphicSize(Std.int(bg.width * 0.9));
		bg.screenCenter(XY);
		add(bg);

        #if android
	    addVirtualPad(NONE, A);
    	#end
	}

	override function update(elapsed:Float)
	{
		//trilogia bonda é boa dms
		if(!leftState) {
			if (controls.ACCEPT) {
				caipira = true;
				leftState = true;
				FlxTransitionableState.skipNextTransIn = true;
				FlxTransitionableState.skipNextTransOut = true;
				FlxG.sound.play(Paths.sound('confirmMenu'));
				MusicBeatState.switchState(new VideoState('assets/videos/Intro', new ChangeState()));
			}
		}
		super.update(elapsed);
	}
}
