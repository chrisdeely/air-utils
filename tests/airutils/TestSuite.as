/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 12/1/10
 * Time: 4:37 PM
 */
package airutils{
import airutils.app.getAppFileNameTest;
import airutils.app.getAppIDTest;
import airutils.app.getAppInitialWindowContentTest;
import airutils.app.getAppInitialWindowHeightTest;
import airutils.app.getAppInitialWindowVisibleTest;
import airutils.app.getAppInitialWindowWidthTest;
import airutils.app.getAppNameTest;
import airutils.app.getAppVersionTest;

[Suite]
    [RunWith("org.flexunit.runners.Suite")]
    public class TestSuite
    {
        public var _getAppIDTest:getAppIDTest;
        public var _getAppVersionTest:getAppVersionTest;
        public var _getAppNameTest:getAppNameTest;
        public var _getAppFileNameTest:getAppFileNameTest;
        public var _getAppInitialWindowContentTest:getAppInitialWindowContentTest;
        public var _getAppInitialWindowHeightTest:getAppInitialWindowHeightTest;
        public var _getAppInitialWindowWidthTest:getAppInitialWindowWidthTest;
        public var _getAppInitialWindowVisibleTest:getAppInitialWindowVisibleTest;

    }
}