/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 10/15/10
 * Time: 1:32 PM
 */
package airutils.file {
	import flash.filesystem.File;

	/**
	 * Creates a new text file containing the provided XML content.
	 * @param content An XML object be written to the file
	 * @param filePath The full (absolute) path to the desired file location on disc including file name and extension
	 * @param overwrite Should the file be overwritten if it already exists
	 * @return a File reference to the new text file or <code>null</code> if the file exists and <code>overwrite</code> is set to <code>false</code>
	 **/
    public function writeXMLToFile(xml:XML, filePath:String, overwrite:Boolean=true):File {

		return writeStringToFile(xml.toXMLString(),filePath,overwrite);
    }

}
