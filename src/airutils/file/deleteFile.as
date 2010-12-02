/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 10/15/10
 * Time: 1:43 PM
 */
package airutils.file {
import flash.filesystem.File;

    public function deleteFile(file:File) {

        if(!file.isDirectory) file.deleteFile();
        else throw new Error("deleteFile cannot delete directory")

    }

}
