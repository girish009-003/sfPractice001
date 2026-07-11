import { LightningElement } from 'lwc';

export default class WelcomeCard extends LightningElement {

    greeting = 'Welcome Girish! Today is a great day to learn LWC';

    handleClick(){

        const newMessage = `Let's build amazing Lightning Web Components!`;
        this.greeting = newMessage;
        

    }
}