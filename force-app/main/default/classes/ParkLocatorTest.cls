@isTest
public class ParkLocatorTest {
    @isTest
    public static void testCallout(){
        test.setMock(WebServiceMock.class, new ParkServiceMock());
        ParkLocator.country('India');
    }
}