package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.events.FocusEvent;
	import flash.events.KeyboardEvent;
	import flash.system.System;
	import flash.events.TimerEvent;
	import flash.utils.Timer;

	/**
	 * ...
	 * @author Ralph Otte
	 */
	
	public class Main extends Sprite 
	{
		private var _menu:Menu;										//Menu Class wordt aangeroepen
		private var _GM:GameManager;
<<<<<<< HEAD
		private var _ShipSelect:ShipSelect;							//DIT IS VOOR TESTING ONLY
		private var _WButtonIsDown:Boolean = false;					//Boolean die kijkt of de "W" knop ingedrukt is
		private var _AButtonIsDown:Boolean = false;					//Boolean die kijkt of de "A" knop ingedrukt is
		private var _SButtonIsDown:Boolean = false;					//Boolean die kijkt of de "S" knop ingedrukt is	
		private var _DButtonIsDown:Boolean = false;					//Boolean die kijkt of de "D" knop ingedrukt is
		
=======
		private var _1ButtonIsDown:Boolean = false;					//Boolean die kijkt of de "1" knop ingedrukt is
		private var _2ButtonIsDown:Boolean = false;					//Boolean die kijkt of de "2" knop ingedrukt is
		private var _3ButtonIsDown:Boolean = false;					//Boolean die kijkt of de "3" knop ingedrukt is	
		private var _4ButtonIsDown:Boolean = false;					//Boolean die kijkt of de "4" knop ingedrukt is
		private var _removeMenuTimer:Timer = new Timer (100, 1);	// 0.1 seconde timer, 100 milliseconde
		private var _BGI:Background;
>>>>>>> origin/master
		
		public function Main():void 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			startMenu();
			//_ShipSelect.OnePlayerShipSelect(); //DEZE FUNCTIE IS VOOR TESTING ONLY
		}
		
		private function startMenu():void
		{			

			_menu = new Menu();
			addChild(_menu);
			_menu.addEventListener("DeleteMenu" , removeMenu);
		}
		function removeMenu(e:Event):void
		{
			removeChild(_menu);
			trace("Menu got removed (MAIN)");
		}
<<<<<<< HEAD
=======
		//VOLGENDE FUNCTIE
		
		//-------------------BACKGROUND ADDED TO STAGE--------------//
		private function AddBg():void
		{
			_BGI = new Background;
			addChild(_BGI);
		}
		
>>>>>>> origin/master
	}
}
