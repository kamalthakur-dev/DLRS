public class LeadProcessor implements Database.Batchable<sObject> {
	public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT ID, LeadSource FROM Lead');
    }
    
    public void execute(Database.BatchableContext bc, List<Lead> scope){
        List<Lead> leadsToUpdate = new List<Lead>();
        for(Lead lRec : scope){
            leadsToUpdate.add(new Lead(id = lRec.Id, LeadSource = 'Dreamforce'));
        }
        
        if(leadsToUpdate != NULL){
            update leadsToUpdate;
        }
    }
    
    public void finish(Database.BatchableContext bc){}
}