import { LightningElement } from 'lwc';

export default class CharacterCounter extends LightningElement {
    value = '';
    characterCount = 0;

    handleChange(event){
        this.value = event.target.value;
        this.characterCount = event.target.value?.length;

    }

    handleClear(){
        this.value = '';
        this.characterCount = 0;        
    }
}