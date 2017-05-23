import importedSchemes from './defaultSchemes.js'

export class dcTheme {
  constructor(schemes={}, name="default"){
    this.name = name;
    this.primary = [];
    this.secondary = [];
    this.tertiary = [];
  }
  
  // to be functional, I should pass in the schemes from which to find, I suppose
  static getScheme(schemeType) {
    if (schemeType == undefined) {
      schemeType = 'default';
    }

    let schemes = importedSchemes;  
    return schemes[schemeType];
  }
}