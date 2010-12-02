/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 12/1/10
 * Time: 4:23 PM
 */
package airutils.app{

import org.flexunit.assertThat;
import org.flexunit.asserts.assertTrue;

public class getAppIDTest {

    [Test]
    public function getAppIDReturnsProperValue() : void {

        assertTrue(getAppID() == "airutilsid");

    }

}
}
