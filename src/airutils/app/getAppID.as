/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: Oct 3, 2010
 * Time: 2:52:37 PM
 */
package airutils.app {
import flash.desktop.NativeApplication;

public function getAppID() : String{

        var appXml:XML = NativeApplication.nativeApplication.applicationDescriptor
        var ns:Namespace = appXml.namespace();
        var appId:String = appXml.ns::id[0];

        return appId;
    }

}