/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: Oct 3, 2010
 * Time: 2:53:15 PM
 */
package airutils.app {
import flash.desktop.NativeApplication;

public function getAppVersion() : String{

        var appXml:XML = NativeApplication.nativeApplication.applicationDescriptor
        var ns:Namespace = appXml.namespace();
        var appVersion:String = appXml.ns::version[0];

        return appVersion;

    }

}