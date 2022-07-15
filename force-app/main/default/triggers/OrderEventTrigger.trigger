trigger OrderEventTrigger on Order_Event__e (after insert) {
    List<Task> tasks = new List<Task>();
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Case to dispatch new team.
            Task ts = new Task();
            ts.Priority = 'Medium';
            ts.Subject = 'Follow up on shipped order 105';
            ts.OwnerId = event.CreatedById;
            tasks.add(ts);
        }
   }
    // Insert all cases corresponding to events received.
    insert tasks;
}