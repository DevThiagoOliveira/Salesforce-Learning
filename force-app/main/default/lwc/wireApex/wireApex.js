import { LightningElement, api, wire } from 'lwc';
import getContatos from '@salesforce/apex/ChamandoLightningNoApex.getContatos';

export default class WireApex extends LightningElement {

    @api recordId;
    
    @wire(getContatos, {idConta: '$recordId'})
    contatos;
}