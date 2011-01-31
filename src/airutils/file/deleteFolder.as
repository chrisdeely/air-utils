/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 10/15/10
 * Time: 1:48 PM
 */
package airutils.file {
	import flash.filesystem.File;

	/**
	 * Deletes the folder identified by the given path
	 * @param folderPath The full (absolute) path to the desired folder location on disc including file name and extension
	 * @param recursive Set to <code>false</code> if you wish to cancel the deletion in the event that the folder contains subfolders
	 * @return <code>true</code> if the deletion succeeded, <code>false</code> otherwise.  The deletion will fail if the folder contains subfolders
	 * but the <code>recursive</code> parameter is set to <code>false</code>
	 **/
    public function deleteFolder(folderPath:String, recursive:Boolean = true):Boolean {

		var folder:File = new File(folderPath);
		
		// in effect, if the folder wasn't there in the first place, our task is complete
		if(!folder.exists)
			return true;
		
		if(!folder.isDirectory)
			return false;
		
		try{
			folder.deleteDirectory(recursive);
		}catch(e:Error)
		{
			return false;
		}
		
		return true;
    }

}
