/*
 * RandomTextを作ってみた。
 * こういうのをRandomText,RandomTypo,TextSlotなどと呼ぶらしい。
 * twitterで教えてくれた方々、ありがとう。
 * 
 * いろいろ設定できるように作ったつもりだけど、
 * align = 'right'/'center'と、
 * tween対応をしていない。
 * 日本語の時に2byteとして、とかもやってない。
 * まあ、そのうち。
 * 
 * 
 * private var obj:Object = { cursor:"" , random:true, randomNum: -1, defoltText:"" , targetText:"", delay:0, speed:1 };
 * 
 * 【参考】
 * http://www.5ive.info/blog/archives/60
 * http://blog.bonkura.jp/2008/10/as3-1.html
 * */


package {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	public class Main extends Sprite {
				
		public function Main(){
			
			var test_txt1:TextField = new TextField();
			test_txt1.text = "RandomText defolt"
			test_txt1.height = 21;
			test_txt1.width = 450;
			test_txt1.defaultTextFormat = new TextFormat("_typewriter");
			var randomText1:RandomText = new RandomText( { textField:test_txt1} );
			randomText1.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText1.start() } );
			randomText1.x = 10;
			randomText1.y = 10;
			randomText1.start();
			addChild(randomText1);
			
			//speed:1を基準に早くしたいときは小さな値、遅くしたいときは大きな値を設定する。
			var test_txt2:TextField = new TextField();
			test_txt2.text = "RandomText speed:0.5"
			test_txt2.height = 21;
			test_txt2.width = 450;
			test_txt2.defaultTextFormat = new TextFormat("_typewriter");
			var randomText2:RandomText = new RandomText( { textField:test_txt2, speed:0.5} );
			randomText2.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText2.start() } );
			randomText2.x = 10;
			randomText2.y = 40;
			randomText2.start();
			addChild(randomText2);
			
			var test_txt3:TextField = new TextField();
			test_txt3.text = "RandomText speed:2"
			test_txt3.height = 21;
			test_txt3.width = 450;
			test_txt3.defaultTextFormat = new TextFormat("_typewriter");
			var randomText3:RandomText = new RandomText( { textField:test_txt3, speed:2} );
			randomText3.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText3.start() } );
			randomText3.x = 10;
			randomText3.y = 70;
			randomText3.start();
			addChild(randomText3);
			
			//置き換えが始まるまでの時間（frame）30fpsに設定しているなら、30だと、1秒になる。
			var test_txt4:TextField = new TextField();
			test_txt4.text = "RandomText delay:30"
			test_txt4.height = 21;
			test_txt4.width = 450;
			test_txt4.defaultTextFormat = new TextFormat("_typewriter");
			var randomText4:RandomText = new RandomText( { textField:test_txt4, delay:30} );
			randomText4.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText4.start() } );
			randomText4.x = 10;
			randomText4.y = 100;
			randomText4.start();
			addChild(randomText4);
			
			//delayとspeedを組み合わせると、ちょっと待ってから、すばやくそろう。speedを文字の長さと同じなら、delay直後になる。
			var test_txt5:TextField = new TextField();
			test_txt5.text = "RandomText delay:30, speed:10"
			test_txt5.height = 21;
			test_txt5.width = 450;
			test_txt5.defaultTextFormat = new TextFormat("_typewriter");
			var randomText5:RandomText = new RandomText( { textField:test_txt5, delay:30, speed:10 } );
			randomText5.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText5.start() } );
			randomText5.x = 10;
			randomText5.y = 130;
			randomText5.start();
			addChild(randomText5);
			
			//randomNumで、randomのテキストの量を設定できる。
			var test_txt6:TextField = new TextField();
			test_txt6.text = "RandomText randomNum:0"
			test_txt6.height = 21;
			test_txt6.width = 450;
			test_txt6.defaultTextFormat = new TextFormat("_typewriter");
			var randomText6:RandomText = new RandomText( { textField:test_txt6, randomNum:0 } );
			randomText6.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText6.start() } );
			randomText6.x = 10;
			randomText6.y = 160;
			randomText6.start();
			addChild(randomText6);
			
			var test_txt7:TextField = new TextField();
			test_txt7.text = "RandomText randomNum:1"
			test_txt7.height = 21;
			test_txt7.width = 450;
			test_txt7.defaultTextFormat = new TextFormat("_typewriter");
			var randomText7:RandomText = new RandomText( { textField:test_txt7, randomNum:1 } );
			randomText7.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText7.start() } );
			randomText7.x = 10;
			randomText7.y = 190;
			randomText7.start();
			addChild(randomText7);
			
			var test_txt8:TextField = new TextField();
			test_txt8.text = "RandomText randomNum:5"
			test_txt8.height = 21;
			test_txt8.width = 450;
			test_txt8.defaultTextFormat = new TextFormat("_typewriter");
			var randomText8:RandomText = new RandomText( { textField:test_txt8, randomNum:5 } );
			randomText8.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText8.start() } );
			randomText8.x = 10;
			randomText8.y = 220;
			randomText8.start();
			addChild(randomText8);
			
			//デフォルトのテキストを設定できる。
			var test_txt9:TextField = new TextField();
			test_txt9.text = "RandomText randomNum:1, defoltText:'ABCD...'"
			test_txt9.height = 21;
			test_txt9.width = 450;
			test_txt9.defaultTextFormat = new TextFormat("_typewriter");
			var randomText9:RandomText = new RandomText( { textField:test_txt9, randomNum:1, defoltText:"ABCDEFGHIJKLMNOPQRSTUVWXYZ" } );
			randomText9.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText9.start() } );
			randomText9.x = 10;
			randomText9.y = 250;
			randomText9.start();
			addChild(randomText9);
			
			//cursorの形を設定できる。
			var test_txt10:TextField = new TextField();
			test_txt10.text = "RandomText randomNum:0, cursor:'_'"
			test_txt10.height = 21;
			test_txt10.width = 450;
			test_txt10.defaultTextFormat = new TextFormat("_typewriter");
			var randomText10:RandomText = new RandomText( { textField:test_txt10, randomNum:0, cursor:"_" } );
			randomText10.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText10.start() } );
			randomText10.x = 10;
			randomText10.y = 280;
			randomText10.start();
			addChild(randomText10);
			
			var test_txt11:TextField = new TextField();
			test_txt11.text = "RandomText randomNum:0, cursor:'(^^;)'"
			test_txt11.height = 21;
			test_txt11.width = 450;
			test_txt11.defaultTextFormat = new TextFormat("_typewriter");
			var randomText11:RandomText = new RandomText( { textField:test_txt11, randomNum:0, cursor:"(^^;)" } );
			randomText11.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText11.start() } );
			randomText11.x = 10;
			randomText11.y = 310;
			randomText11.start();
			addChild(randomText11);
			
			//ターゲットののテキストを設定できる。textの中身は無視
			var test_txt12:TextField = new TextField();
			test_txt12.text = "ここのテキストは無視されます。"
			test_txt12.height = 21;
			test_txt12.width = 450;
			test_txt12.defaultTextFormat = new TextFormat("_typewriter");
			var randomText12:RandomText = new RandomText( { textField:test_txt12, targetText:"RandomText targetText'RandomText...'" } );
			randomText12.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText12.start() } );
			randomText12.x = 10;
			randomText12.y = 340;
			randomText12.start();
			addChild(randomText12);
			
			//組み合わせ例
			var test_txt13:TextField = new TextField();
			test_txt13.text = "RandomText delay:30, speed:0.5 , randomNum: -1, cursor:'>>'";
			test_txt13.height = 21;
			test_txt13.width = 450;
			test_txt13.defaultTextFormat = new TextFormat("_typewriter");
			var randomText13:RandomText = new RandomText( { textField:test_txt13, delay:30, speed:0.5 , randomNum: -1, cursor:">>" } );
			randomText13.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText13.start() } );
			randomText13.x = 10;
			randomText13.y = 370;
			randomText13.start();
			addChild(randomText13);
			
			//日本語例
			var test_txt14:TextField = new TextField();
			test_txt14.text = "RandomText randomNum: -1, 日本語ダミーテキスト日本語ダミーテキスト";
			test_txt14.height = 21;
			test_txt14.width = 450;
			test_txt14.defaultTextFormat = new TextFormat("_typewriter");
			var randomText14:RandomText = new RandomText( { textField:test_txt14, randomNum: -1 } );
			randomText14.addEventListener(MouseEvent.ROLL_OVER, function():void { randomText14.start() } );
			randomText14.x = 10;
			randomText14.y = 400;
			randomText14.start();
			addChild(randomText14);
			
		}
	}
}


import flash.display.DisplayObjectContainer;
import flash.display.Sprite;
import flash.text.TextField;
import flash.events.Event;
class RandomText extends Sprite
{
	public var replaceText:String = "_/-=+%&$#!?ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
	private var _sliceCnt:int;
	private var _textField:TextField;
	private var obj:Object = { cursor:"" , random:true, randomNum: -1, defoltText:"" , targetText:"", delay:0, speed:1 };
	public function RandomText(arg:Object) {
		for (var _str:String in arg) {
			obj[_str] = arg[_str];
		} 
		if (!obj.targetText) {
			obj.targetText = obj.textField.text;
		}
		if (obj.randomNum == -1) {
			obj.randomNum = obj.targetText.length;
		}
		this._textField = obj.textField;
		addChild(obj.textField);
	}
	private function replaceTxt(num:int = 1):String {
		var result:String = "";
		for (var i:int = 0; i < num; ++i) {
			result += replaceText.charAt(Math.floor(Math.random() * replaceText.length));
		}
		return result;
	}
	public function start():void {
		_textField.text = obj.defoltText;
		_sliceCnt = -obj.delay;
		removeEventListener(Event.ENTER_FRAME, onEnterFrame);
		addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
	private function onEnterFrame(e:Event):void {
		var count:int = Math.min(_sliceCnt * obj.speed,obj.targetText.length);
		var cursor:String = obj.cursor;
		if (_sliceCnt<0) {
			count = 0;
			cursor = "";
		}
		var randomTxt:String = obj.targetText.substr(0, count);
		if (obj.random) {
			cursor += replaceTxt(obj.randomNum);
		}
		var maxLength:int;
		if(count < obj.targetText.length){
			randomTxt += cursor;
			randomTxt += obj.defoltText.substr(count);
			maxLength = Math.max(obj.defoltText.length, obj.targetText.length);
		}else {
			maxLength = obj.targetText.length
			removeEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		_textField.text = randomTxt.substr(0,maxLength);
		_sliceCnt++;
	}
}