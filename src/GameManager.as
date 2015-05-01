package  
{
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author Ralph Otte
	 */
	public class GameManager extends Sprite
	{
		private var _menu:Menu;
		private var _shipSelect:ShipSelect;
		
		public function GameManager() 
		{
			// Functie voor Score/Recordtijd
			// Functie voor de finish + new record ja/nee						
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			_shipSelect = new ShipSelect;
		}
		
		private function init(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);					
		}
		
		public function OnePlayerChosen():void
		{
			_shipSelect.OnePlayerShipSelect();
			// Levelselect(in ship select aanroepen)
		}
		
		public function TwoPlayerChosen():void
		{
			_shipSelect.TwoPlayerShipSelect();
			//Levelselect(in ship select aanroepen)
		}
		public function Options():void
		{
			
		}
		public function Credits():void
		{
			
		}
	}
}