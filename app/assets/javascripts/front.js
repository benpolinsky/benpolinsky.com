ready = function () {
  if ($('.contact-form form').length > 0) {
    $('.contact-form form').parsley().reset()    
  }
  
  if ($('[data-remodal-id=modal]').length > 0) {
    var contactModal = $('[data-remodal-id=modal]').remodal({
      hashTracking: false,
      closeOnOutsideClick: true
    })
  
    $('a.modal-click').on('click', function(event) {
      contactModal.open();
      return false
    });
  
    $('.modal div.close').on('click', function(event) {
      event.preventDefault();
      contactModal.close();
    
    });    
  }

  
}

$(document).on('turbolinks:load', function() {
  ready();
});

