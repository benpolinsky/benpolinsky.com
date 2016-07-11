ready = function () {
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

$(document).on('turbolinks:load', function() {
  $('.contact-form form').parsley().reset();
  ready();
});

