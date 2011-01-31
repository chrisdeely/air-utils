/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 10/15/10
 * Time: 1:40 PM
 */
package airutils.file {

    public function readXMLFromFile(filePath:String):XML {
		return new XML(readStringFromFile(filePath));
    }

}
