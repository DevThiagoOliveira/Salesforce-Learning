import { LightningElement } from 'lwc'; // aqui você está importanto a funcionalidade básica do lwc

export default class HelloWorld extends LightningElement {
    firstName = 'Weslay é gay ?'; // você não precisa tipar um tipo pois como é JS ele já tipa para você o tipo pelo tipo de dado inserido, mas diferente do js aqui você não precisa dar um var ou let para criar uma variavel
    
    clickedButtonLabel;

    handleClick(event) {
        this.clickedButtonLabel = event.target.label;
    }
}