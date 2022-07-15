import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {
    handleUpdate(){
        this.dispatchEvent(new CustomEvent('sendyes'));
    }

    handleCustom(event){
        
        //alert('INSIDE');
        console.log('---------',event.target);
        
        var msg = this.template.querySelector('[data-id="abc"]');
        console.log('---------',msg.value);
        this.dispatchEvent(new CustomEvent('sendcustom',{detail:msg.value}));
    }
}