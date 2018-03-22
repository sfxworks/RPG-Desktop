package definitions 
{
	import flash.filesystem.File;
	/**
	 * ...
	 * @author 
	 */
	public class LocalDefaults 
	{

		public static const APPLICATION_BASE_DIRECTORY:File = File.desktopDirectory.resolvePath();
		public static const APPLICATION_NEW_DIRECTORY:File = File.userDirectory.resolvePath("Downloads");
		public function LocalDefaults() 
		{
			
		}
		
	}

}