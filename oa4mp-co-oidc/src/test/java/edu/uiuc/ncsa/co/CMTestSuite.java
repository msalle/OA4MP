package edu.uiuc.ncsa.co;

import edu.uiuc.ncsa.co.loader.COBootstrapper;
import edu.uiuc.ncsa.oauth2.test.TestSuiteInitializer;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

/**
 * <p>Created by Jeff Gaynor<br>
 * on 11/17/16 at  3:31 PM
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({
        ClientManagerTest.class
})

public class CMTestSuite  {
    @BeforeClass
    public static void initialize() {
        TestSuiteInitializer testSuiteInitializer = new CMTestSuiteInitializer(new COBootstrapper());
        testSuiteInitializer.init();
    }

}
