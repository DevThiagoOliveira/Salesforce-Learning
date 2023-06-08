import { LightningElement, api, wire } from 'lwc';
import getContatos from '@salesforce/apex/ChamandoLightningNoApex.getContatos';

export default class WireApex extends LightningElement {

    @api recordId;
    
    @wire(getContatos, {idConta: '$recordId'}) // @wire(pego o método getContatos, { aqui eu passo a informação que irá receber por parametro que no caso o idConta e quem recebe ela é o $recordId | $ <-(informar que é uma variavel)})
    contatos;
}