package engine 
{
	import assets.Assets;
	import definitions.LocalDefaults;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	/**
	 * ...
	 * @author 
	 */
	public class Charector extends Sprite
	{
		
		protected var charDefault:Bitmap = new Assets.CharDefaultImage() as Bitmap;
		
		private var attack:int = 0;
		private var defense:int = 0;
		public var stamina:int = 10;
		private var name:String;
		
		public var items:Vector.<engine.CharItem> = new Vector.<engine.CharItem>();
		private var combatLog:Vector.<String> = new Vector.<String>(); //Can be flushed to file.
		
		public function Charector(name:String) 
		{
			this.name = name;
			addChild(charDefault);
			
			
		}
		
		//No default event listener. Making a function. Engine may need to call periodically or from a UI action to stay in sync.
		public function updateFromFile():void
		{
			//Update
			var charBack:Array = definitions.LocalDefaults.APPLICATION_BASE_DIRECTORY.resolvePath(name).getDirectoryListing();
			
			//Set
				//For each file in arr
				//Check each file's first bytes for validity
				//Read stat information
				//Update items vector
				//Update base stats for char from items and curren char state.
		}
		
	}

}