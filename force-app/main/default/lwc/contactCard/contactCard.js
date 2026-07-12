import { LightningElement,api } from 'lwc';

export default class ContactCard extends LightningElement {
    @api name = 'Girish';
    @api email = 'test@test.com';
    @api phone = '90303030385858';
    showNumber = true;
    toggleButton() { 
        this.showNumber = !this.showNumber;
    }

    get buttonMessage(){
        return this.showNumber?'Hide Number':'Show Number';
    }

}