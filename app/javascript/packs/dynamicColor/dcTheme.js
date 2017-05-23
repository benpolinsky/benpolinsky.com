export class dcTheme {
  constructor(schemes={}, name="default"){
    this.name = name;
    this.primary = [];
    this.secondary = [];
    this.tertiary = [];
  }
  
  static defaultSchemes(){
    return {
        default: {
          primary: {
            background: [255, 65, 59, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          secondary: {
            background: [255, 255, 255, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          tertiary: {
            background: [118, 169, 200, 0.31],
            heading: [],
            copy: [],
            link: []
          }
        },
    
        nightOwl: {
          primary: {
            background: [59, 28, 48, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          secondary: {
            background: [34, 47, 54, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          tertiary: {
            background: [67, 74, 73, 1],
            heading: [],
            copy: [],
            link: []
          }
        },
    
        night: {
          primary: {
            background: [40, 52, 89, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          secondary: {
            background: [86, 98, 166, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          tertiary: {
            background: [0, 0, 0, 0.5],
            heading: [],
            copy: [],
            link: []
          }
        },
    
        evening: {
          primary: {
            background: [38, 9, 39, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          secondary: {
            background: [72, 24, 62, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          tertiary: {
            background: [123, 160, 168, 1],
            heading: [],
            copy: [],
            link: []
          },
        },
    
        afternoon: {
          primary: {
            background: [255, 65, 59, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          secondary: {
            background: [255, 255, 255, 1],
            heading: [],
            copy: [],
            link: []
          },
          
          tertiary: {
            background: [118, 169, 200, 0.31],
            heading: [],
            copy: [],
            link: []
          },
        },
    
        morning: {
          primary: {
            background: [252, 138, 14, 1],
            heading: [],
            copy: [],
            link: []
          },
          secondary: {
            background: [254, 254, 180, 1],
            heading: [],
            copy: [],
            link: []
          },
          tertiary: {
            background: [239, 169, 58, 0.8],
            heading: [],
            copy: [],
            link: []
          }
        }
      }
  }
  
  static getScheme(schemeType) {
    if (schemeType == undefined) {
      schemeType = 'default';
    }

    let schemes = dcTheme.defaultSchemes();  
    return schemes[schemeType];
  }
}