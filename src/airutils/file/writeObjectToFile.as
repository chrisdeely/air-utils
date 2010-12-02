/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 10/15/10
 * Time: 1:23 PM
 */
package airutils.file {

    public function writeObjectToFile(object:Object, file:File) : void {


			var stream:FileStream = new FileStream();

			var byteArray:ByteArray = new ByteArray();
			byteArray.writeObject( data );

            stream.open( file, FileMode.WRITE );
            stream.writeBytes(byteArray, 0, byteArray.bytesAvailable);
            stream.close();

		}

    }

}
