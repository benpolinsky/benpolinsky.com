ready = function () {
  $('#demo01').animatedModal({
    color: '#154D65',
    animationDuration: '.2s',
    animatedIn: "fadeIn",
    animatedOut: "fadeOut"
  });
}

$(document).on('ready', function() {
  ready()
});

$(document).on('page:load', function() {
  $('.contact-form form').parsley().reset();
  ready()
});

