public class DailyLeadProcessor implements Schedulable{
	public void execute(SchedulableContext ctx) {
        List<Lead> leadsToUpdate = new List<Lead>();
        for(Lead lRec : [SELECT id from Lead LIMIT 200]){
            leadsToUpdate.add(new Lead(id = lRec.Id, LeadSource = 'Dreamforce'));
        }
        
        if(leadsToUpdate != NULL){
            update leadsToUpdate;
        }
    }
}