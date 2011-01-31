/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 10/15/10
 * Time: 1:33 PM
 */
package airutils.file {
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	/**
	 * Opens a text file and returns the contents as a Sring
	 * @param filePath The full (absolute) path to the desired file location on disc including file name and extension
	 * @return The String contents of the file or <code>null</code> if the file does not exist
	 **/
    public function readStringFromFile(filePath:String):String {
		var file:File = new File(filePath);
		
		if(!file || !file.exists)
			return null;
		var contents:String;
		var fs:FileStream = new FileStream();
		
		fs.open(file, FileMode.READ);
		contents = fs.readUTFBytes( fs.bytesAvailable );
		fs.close();
		fs = null;
		
		return contents;
    }

}
