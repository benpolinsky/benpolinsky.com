import {DynamicColor} from './dynamicColor/dynamicColor.js';
import {dcTheme} from './dynamicColor/dcTheme.js';
let currentTheme = "";

const ready = function () {
  if (currentTheme != undefined && currentTheme.length > 0) {

      const scheme = dcTheme.getScheme(currentTheme);
      DynamicColor.changeScheme(scheme);

  } else {
    new DynamicColor();
    currentTheme = DynamicColor.getHour();
    // const scheme = dcTheme.getScheme(currentTheme);
    // DynamicColor.changeScheme(scheme);
    
  }
  
  if ($('select.change-scheme').val() != currentTheme) {
    $('select.change-scheme').val(currentTheme); 
  }
  
  $('select.change-scheme').change(function(event) {
    const scheme = dcTheme.getScheme($(this).val());
    DynamicColor.changeScheme(scheme);
    currentTheme = $(this).val();
  });
}

$(document).on('turbolinks:load', function() {
  ready();
});
