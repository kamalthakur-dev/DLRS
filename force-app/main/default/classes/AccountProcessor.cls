public class AccountProcessor {
	@future(callout=true)
    public static void countContacts(List<Id> accIDs){
        List<Account> accToUpdate = new List<Account>();
        for(Account acRec : [select id,(Select id from Contacts) from Account where id IN:accIDs]){
            if(acRec.contacts.size() > 0){
                accToUpdate.add(new Account(id = acRec.Id, Number_Of_Contacts__c = acRec.contacts.size()));
            }
        }
        
        if(accToUpdate != null){
            update accToUpdate;
        }
    }
}