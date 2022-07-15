@isTest
public class AnimalLocatorTest {
    @isTest
    static void testPostCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
    	AnimalLocator.getAnimalNameById(1);
    }
}