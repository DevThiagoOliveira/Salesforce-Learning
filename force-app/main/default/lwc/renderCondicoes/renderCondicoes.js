import { LightningElement } from 'lwc';

export default class RenderCondicoes extends LightningElement {

    detalhesVisiveis = false;

    handleChange(event) {
        this.detalhesVisiveis = event.target.checked;
    }
}