@isTest
public class DailyLeadProcessorTest {
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
        DailyLeadProcessor m = new DailyLeadProcessor();
        String sch = '20 30 8 10 2 ?';
        String jobID = system.schedule('Merge Job', sch, m);
        Test.stopTest();
    }
}