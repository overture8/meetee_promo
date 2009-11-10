// Observe contact form items and perform required action when events occur...
var ObserveUserForm = Class.create({
  initialize: function() {
    $('product_details').hide();
    $('meetee_details').observe('click', this.meetee_details_clicked.bindAsEventListener(this));
    $('user_email').observe('click', this.textbox_clicked.bindAsEventListener(this));
    this.textbox_watermark();
  },

  meetee_details_clicked: function() {
    new Effect.toggle($('product_details'), 'appear');
  },

  textbox_watermark: function() {
    if($F('user_email') == "" || $F('user_email') == "Your email address") {
      $('user_email').value = "Your email address";
      $('user_email').setStyle({
        color: '#aaa'
      });
    }
  },

  textbox_clicked: function() {
    if($F('user_email') == "Your email address") {
      $('user_email').value = "";
      $('user_email').setStyle({
        fontStyle: 'normal',
        color: '#885959'
      });
    }
  }
});

