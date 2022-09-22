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

class ChangeState extends MusicBeatState
{
	var pergunta:FlxSprite;
    var nao:FlxSprite;

    var cur = 0;

	override function create()
	{
		super.create();

        var tipText:FlxText = new FlxText(10, FlxG.height - 24, 0, 'Left for options, Right for play, A to enter in the cur Option, B for Credits.', 12);
		tipText.setFormat(Paths.font('vcr.ttf'), 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		tipText.borderSize = 2.4;
		tipText.scrollFactor.set();
		add(tipText);

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

        // TESTE
        pergunta = new FlxSprite().loadGraphic(Paths.image('menus/Pergunta'));
        pergunta.x = 0.5; //webi wabo?!?!?1//@!!?1//1/1]/2/1/2/1;2/;12/;/1;2/;1/2;/1;2/;/2;34/1;234/;123/4;/123;5/2;34/5;2/34;5/;234/;6/54;7/;456/7;/456;7/4;56/7;4/56;8/;56/7;8/4;567/;/456;3/456/3;56/;34/56;/;356/34/;6/3;45634/56./:3456?:.3456;3456k345698243657863928475697824658762893475682346897562894375698237465798623498756897234576293487578923645762748935782634785623458723645782³45923648757823465786234780562783456798234657896439857283495798345789234758927345872384579
        pergunta.screenCenter(XY);
        add(pergunta);

        //nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao nao
        nao = new FlxSprite().loadGraphic(Paths.image('menus/nao'));
        nao.screenCenter(XY);
        add(nao);

        #if android
	    addVirtualPad(LEFT_RIGHT, A_B);
    	#end
	}

	override function update(elapsed:Float)
	{
        // Caso apertar esquerda = vai pro options
		if (controls.UI_LEFT) {
            FlxG.sound.play(Paths.sound('scrollMenu'));
            cur = 0; //SIM
		}

        // Caso apertar direita = vai pro menu
        if (controls.UI_RIGHT) {
            FlxG.sound.play(Paths.sound('scrollMenu'));
            cur = 1; //NÃO
		}

        if (controls.BACK) {
            FlxG.sound.play(Paths.sound('confirmMenu'));
            MusicBeatState.switchState(new CreditsState());
        }

        // Só verifica pra trocar de menu
        if (controls.ACCEPT) {
            if (cur == 0)
            {
                FlxG.log.add('Entrou no options');
                FlxG.sound.play(Paths.sound('confirmMenu'));
                MusicBeatState.switchState(new options.OptionsState());
            }

            if (cur == 1)
            {
                FlxG.log.add('Foi pra musica');
                FlxG.sound.play(Paths.sound('confirmMenu'));
                PlayState.SONG = Song.loadFromJson('twisted-twins', 'twisted-twins-mad');
                LoadingState.loadAndSwitchState(new PlayState()); //loading
            }
        }
		super.update(elapsed);
	}
}

