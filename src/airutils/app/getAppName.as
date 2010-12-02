/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: Oct 3, 2010
 * Time: 2:52:44 PM
 */
package airutils.app {
import flash.desktop.NativeApplication;

public function getAppName() : String{

        var appXml:XML = NativeApplication.nativeApplication.applicationDescriptor
        var ns:Namespace = appXml.namespace();
        var appName:String = appXml.ns::name[0];

        return appName;

    }

}