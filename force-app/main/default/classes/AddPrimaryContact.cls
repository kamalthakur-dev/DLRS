public class AddPrimaryContact implements Queueable{
    private contact con;
    private string abrStr;
    public AddPrimaryContact(Contact c, String abr){
        this.con = c;
        this.abrStr = abr;
    }
	public void execute(QueueableContext context) {
        List<Contact> conToInsert = new List<Contact>();
        for(Account acc : [SELECT id, BillingState from Account where BillingState =:abrStr LIMIT 200]){
            Contact c1 = con.clone(false, false, false, false);
            c1.AccountId = acc.Id;
            conToInsert.add(c1);
        }
        
        insert conToInsert;
    }
}