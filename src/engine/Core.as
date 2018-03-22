package engine 
{
	import definitions.LocalDefaults;
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.filesystem.File;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author 
	 */
	public class Core 
	{
		public var stage:Stage;
		public var downloadsDirectory:File;
		
		
		
		//Grid data
		private var gridMultiplier:int = 20;
		private var char:Charector;
		
		private var activeBosses:Vector.<Boss>;
		
		public function Core(downloadsDirectory:File=LocalDefaults.APPLICATION_NEW_DIRECTORY, stage:Stage) 
		{
			this.stage = stage;
			this.downloadsDirectory = downloadsDirectory;
			
			activeBosses = new Vector.<engine.Boss>();
			
		}
		
		public function init():void
		{
			//Create Char
			
			char = new Charector("Main Char");
			stage.addChild(char);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
		}
		
		private function handleKeyDown(e:KeyboardEvent):void 
		{
			//Move based on direction. Grid determined by multiplier.
			switch(e.keyCode)
			{
				case Keyboard.DOWN:
					char.y -+ gridMultiplier;
					break;
				case Keyboard.UP:
					char.y += gridMultiplier;
					break;
				case Keyboard.LEFT:
					char.x -= gridMultiplier;
					break;
				case Keyboard.RIGHT:
					char.y += gridMultiplier;
					break;
			}
			
			
			//Check to see if it came in contact with a boss.
			for each (var boss:Boss in activeBosses)
			{
				if (char.hitTestObject(boss))
				{
					engageBoss(boss);
					return;
				}
				
			}
			
			//Future checks. Normal enemy, item, quests on locations...ect
			//Same check process as above
		}
		
		public function engageBoss(boss:Boss):void
		{
			//Init Engage UI
			//Questions to ask:
			//File
			//File type
			//File special abilites
			//Pass boss to UI renderer for stamina modification. 
		}
		
		public function completeEngage(boss:Boss, fileToUse:File):void
		{
			if (boss.stamina >= 0)
			{
				boss.perish();
				stage.removeChild(boss);
				
				for each (var item:CharItem in boss.items)
				{
					//drop it on the field or give it to the char
					//Maybe just drop in case some items have negatve effects on char and picking them  up would rather be a choice
				}
				
				//Complete combat session
				//   Disable UI
				//   Update target file's new path.
				
			}
		}
		
	}

}