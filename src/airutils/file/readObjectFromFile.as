/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 10/15/10
 * Time: 1:38 PM
 */
package airutils.file {

    public function readObjectFromFile(file:File) : Object {

        var byteArray:ByteArray = new ByteArray();
        var stream:FileStream = new FileStream();

        stream.open( file, FileMode.READ );
        stream.readBytes(byteArray,0,stream.bytesAvailable);

        return byteArray.readObject();

    }

}
