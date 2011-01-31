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
	 * Creates a new text file containing the provided content string.
	 * @param content A String value to be written to the file
	 * @param filePath The full (absolute) path to the desired file location on disc including file name and extension
	 * @param overwrite Should the file be overwritten if it already exists
	 * @return a File reference to the new text file or <code>null</code> if the file exists and <code>overwrite</code> is set to <code>false</code>
	 **/
    public function writeStringToFile(content:String, filePath:String, overwrite:Boolean=true):File {
		var file:File = createFile(filePath, overwrite);
		
		if(!file)
			return null;
		
		var fs:FileStream = new FileStream();
		fs.open(file, FileMode.WRITE);
		fs.writeUTFBytes(content);
		fs.close();
		fs = null;
		
		return file;
    }

}
