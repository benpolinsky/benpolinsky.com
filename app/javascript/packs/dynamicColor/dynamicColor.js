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
  
  // Fair amount of repetition
  // I'll find the abstraction a bit later
  // but it most likely has to do with primary/secondary/tertiary
  
  static changeScheme(schemes){
    const HEADING_SELECTORS = 'h1, h1 > a, h2, h2 > a';
    const COPY_SELECTORS = 'p, div.description';
    const BLACKLIST_LINK_SELECTORS = '.bdp-btn, h1.site-title > a';
    
    let dcPrimarySection = $('[data-dynamic-color="primary"]');
    let dcSecondarySection = $('[data-dynamic-color="secondary"]');
    let dcTertiarySection = $('[data-dynamic-color="tertiary"]');
    
    let dcPrimaryHeading = dcPrimarySection.find(HEADING_SELECTORS);
    let dcSecondaryHeading = dcSecondarySection.find(HEADING_SELECTORS);
    let dcTertiaryHeading = dcTertiarySection.find(HEADING_SELECTORS);
    
    let dcPrimaryCopy = dcPrimarySection.find(COPY_SELECTORS);
    let dcSecondaryCopy = dcSecondarySection.find(COPY_SELECTORS);
    let dcTertiaryCopy = dcTertiarySection.find(COPY_SELECTORS);
    
    let dcPrimaryLinks = dcPrimarySection.find('a').not(BLACKLIST_LINK_SELECTORS);
    let dcSecondaryLinks = dcSecondarySection.find('a').not(BLACKLIST_LINK_SELECTORS);
    let dcTertiaryLinks = dcTertiarySection.find('a').not(BLACKLIST_LINK_SELECTORS);
    
    dcPrimarySection.css('backgroundColor', schemes['primary']['background']);
    dcPrimaryHeading.css('color', schemes['primary']['heading']);
    dcPrimaryCopy.css('color', schemes['primary']['copy']);
    dcPrimaryLinks.css('color', schemes['primary']['link']);
    
    dcSecondarySection.css('backgroundColor', schemes['secondary']['background']);
    dcSecondaryHeading.css('color', schemes['secondary']['heading']);
    dcSecondaryCopy.css('color', schemes['secondary']['copy']);
    dcSecondaryLinks.css('color', schemes['secondary']['link']);
           
    dcTertiarySection.css('backgroundColor', schemes['tertiary']['background']);
    dcTertiaryHeading.css('color', schemes['tertiary']['heading']);
    dcTertiaryCopy.css('color', schemes['tertiary']['copy']);
    dcTertiaryLinks.css('color', schemes['tertiary']['link']);
  }
}