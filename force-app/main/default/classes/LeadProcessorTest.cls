@isTest
public class LeadProcessorTest {
	@testSetup
    static void setup() {
        List<Lead> Leads = new List<Lead>();
        for (Integer i=0;i<200;i++) {
            Leads.add(new Lead(LastName='Lead '+i, Company = 'Company '+i));
        }
        insert Leads;
    }
    @isTest static void test() {
        Test.startTest();
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
    }
}