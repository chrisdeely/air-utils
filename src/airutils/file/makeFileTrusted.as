package airutils.file
{
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.system.Capabilities;

	/**
	 * Adds the path of the provided SWF file (or directory) to a Flash Player Trust file.  This allows the local file to gain 
	 * access to network resources.
	 * @param fileToTrust The full (absolute) path to the desired file location on disc including file name and extension
	 * @param trustFileName You can provide your own file name for the trust file. The Flash Player reviews all files in the trust directory.
	 **/
	public function makeFileTrusted(fileToTrust:File, trustFileName:String="customTrustFile.cfg"):void
	{
		var trustDir:File;
		var trustPath:String = "/Macromedia/Flash Player/#Security/FlashPlayerTrust";
		var trustFile:File;
		
		if(Capabilities.os.indexOf("Windows") > -1)
		{
			trustDir = File.userDirectory.resolvePath("Application Data" + trustPath);
		}else{
			trustDir = File.userDirectory.resolvePath("Library/Preferences" + trustPath);
		}
		
		if( trustDir.exists && trustDir.isDirectory )
		{
			trustFile = trustDir.resolvePath(trustFileName);
			
			// Create a file stream to write stuff to the file.
			var stream:FileStream = new FileStream();
			// Open the file stream.
			stream.open( trustFile, FileMode.WRITE );

			// Trust file expects a directory path
			if(!fileToTrust.isDirectory)
				fileToTrust = fileToTrust.parent;
			
			// Write the trusted directory path to the file
			stream.writeUTFBytes( fileToTrust.nativePath + "\n");
			stream.writeUTFBytes( fileToTrust.url + "\n");
			
			// Close the file stream.
			stream.close();
			stream = null;
		}
		
	}
}