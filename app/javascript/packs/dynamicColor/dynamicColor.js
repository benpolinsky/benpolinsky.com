import {dcTheme} from './dcTheme.js';
  
export class DynamicColor {

  constructor(){
    this.check_interval = 60 * 600000;
    this.schemes = {};
    this.scheme = "default";
    this.formattedScheme = "";
  
    setTimeout(this.findSchemeAndChange(), this.check_interval);
  }
  
  findSchemeAndChange(){
    let currentHour = DynamicColor.getHour();
    this.schemes = dcTheme.getScheme(currentHour);
    DynamicColor.changeScheme(this.schemes);
  }
  
  static getHour(){
    let hourOfDay = new Date().getHours();
    let scheme = 'default';
    
    if (hourOfDay > 20) {
      scheme = 'night';
    } else if (hourOfDay > 16) {
      scheme = 'evening';    
    } else if (hourOfDay > 12) {
      scheme = 'afternoon';    
    } else if (hourOfDay > 5) {
      scheme = 'morning';    
    } else {
      scheme = 'nightOwl';
    }
    return scheme;
  }
  
  static changeScheme(schemes){
    console.log('shoudl be changing');
    let dcPrimarySection = $('[data-dynamic-color="primary"]');
    let dcSecondarySection = $('[data-dynamic-color="secondary"]');
    let dcTertiarySection = $('[data-dynamic-color="tertiary"]');

    for (let scheme in schemes) {
      schemes[scheme]['background'] = ("rgba(" + schemes[scheme]['background'].join(", ") + ")");
    }
    console.log(schemes);
    dcPrimarySection.css('backgroundColor', schemes['primary']['background']);
    dcSecondarySection.css('backgroundColor', schemes['secondary']['background']);
    dcTertiarySection.css('backgroundColor', schemes['tertiary']['background']);
  }
}

function hexToRGBA(hexString) {
  
  return []
}