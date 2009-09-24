SpamCheck = $.klass({
  initialize: function() {
    this.spam_check_field = this.element.find('input')
    this.spam_check_field.val("rabbit")
    this.element.hide();
  }
});

jQuery(function ($) {
  $(".spamcheck_fields").attach(SpamCheck);
});