import { LightningElement } from 'lwc';

export default class CounterApp extends LightningElement {
    counter = 0;
    handleMinus(){
        if(this.counter>0){
            this.counter --;
        }
    }

        handlePlus(){
            this.counter ++;
        
    }

    handleReset(){
        this.counter = 0;
    }
}