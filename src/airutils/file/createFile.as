package airutils.file {
	import flash.filesystem.File;

	/**
	 * Creates a new empty file at the given location.
	 * @param path The full path to the desired file, including name and extension
	 * @param overwrite Set to true if you wish to overwrite the destination file, should it already exist
	 * @returns a new empty file or <code>null</code> if the file exists and <code>overwrite</code> is set to <code>false</code>
	 **/
    public function createFile(path:String, overwrite:Boolean=true):File {

		  var dest:File = new File().resolvePath(path);
		  
		  if(dest.exists && !overwrite)
			return null;

		  var file:File = File.createTempFile();
		  file.moveTo(dest, overwrite);
		  return file;
	}
}
