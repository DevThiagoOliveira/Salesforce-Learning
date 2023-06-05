import { LightningElement, api } from 'lwc';

export default class PrivtPublc extends LightningElement {

    mesagem = 'propriedade publica';
    @api recordId;
    @api Name;
}