package engine 
{
	/**
	 * ...
	 * @author 
	 */
	public class CharItem 
	{
		
		private var description:String = "Undefined Description";
		private var name:String = "Undefined Name";
		private var attackAdjustment:int = 0;
		private var defenseAdjustment:int = 0;
		private var staminaAdjustment:int = 0;
		
		//Used for engine checks. Ex: an item with no buffs/debuffs but a key that is used to unlock a passage or complete a quest.
		private var specialConditionalValues:Object = {};
		
		public function CharItem() 
		{
			
		}
		
	}

}