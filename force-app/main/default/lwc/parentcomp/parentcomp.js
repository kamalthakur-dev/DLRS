import { LightningElement } from 'lwc';

export default class Parentcomp extends LightningElement {

    infoString = 'Default Info Message';
    updateText(){
        this.infoString = 'updatedValue';
    }

    updateCustom(event){
        this.infoString = '';
        const factor = event.detail;
        console.log('parent --------'+factor);
        this.infoString = factor;
    }
    
}