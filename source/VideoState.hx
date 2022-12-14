package;

import flixel.text.FlxText;
import flixel.FlxState;
import flixel.FlxG;
import FlashingState;

import extension.webview.WebView;

using StringTools;

class VideoState extends MusicBeatState
{
	public static var androidPath:String = 'file:///android_asset/';

	public var nextState:FlxState;

	var text:FlxText;

	public function new(source:String, toTrans:FlxState)
	{
		super();

		text = new FlxText(0, 0, 0, "TOUCH TO CONTINUE", 48);
		text.screenCenter();
		text.alpha = 0;
		add(text);

		nextState = toTrans;

        if (FlashingState.caipira) { // NOME SUS??}!?!??!??!?!?!??!?!?!?!?!?!/!??!??!/1//

        #if android
        addVirtualPad(NONE, A);
        #end

        if(controls.ACCEPT) {
            FlashingState.caipira = false;
            onClose();
        }
    }

		//FlxG.autoPause = false;

		WebView.onClose=onClose;
		WebView.onURLChanging=onURLChanging;

		WebView.open(androidPath + source + '.html', false, null, ['http://exitme(.*)']);
	}

	public override function update(dt:Float) {
		for (touch in FlxG.touches.list)
			if (touch.justReleased)
				onClose(); //hmmmm maybe

		super.update(dt);	
	}

	function onClose(){// not working
		text.alpha = 0;
		//FlxG.autoPause = true;
		trace('close!');
		trace(nextState);
		FlxG.switchState(nextState);
	}

	function onURLChanging(url:String) {
		text.alpha = 1;
		if (url == 'http://exitme(.*)') onClose(); // drity hack lol
		trace("WebView is about to open: "+url);
	}
}