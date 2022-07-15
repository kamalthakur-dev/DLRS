@isTest
public class AccountProcessorTest {
	@isTest
    public static void testcountContacts(){
        List<Id> accIdList = new List<Id>();
        Account a1 = new Account(Name = 'TESTAc');
        insert a1;
        
        accIdList.add(a1.Id);
        
        Contact c1 = new Contact(LastName = 'test', AccountId = a1.Id);
        insert c1;
        
        
        Test.startTest();
        AccountProcessor.countContacts(accIdList);
        Test.stopTest();
    }
        
}