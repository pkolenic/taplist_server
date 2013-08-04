//Released under MIT license: http://www.opensource.org/licenses/mit-license.php
(function ($) {
    'use strict';
    $(function () {
        $('[placeholder]')
          .focus(function () {
              var input = $(this);
              if (input.val() === input.attr('placeholder')) {
                  input.val('').removeClass('placeholder');
              }
          })
          .blur(function () {
              var input = $(this);
              if (input.val() === '' || input.val() === input.attr('placeholder')) {
                  input.addClass('placeholder').val(input.attr('placeholder'));
              }
          })
          .blur()
          .parents('form').submit(function () {
              $(this).find('[placeholder]').each(function () {
                  var input = $(this);
                  if (input.val() === input.attr('placeholder')) {
                      input.val('');
                  }
              });
          });
    });
})(jQuery);

function onCompanyChanged(sel) {
	value = sel.value;
	if (value != -1) {
		$('#company_fields').addClass('hidden');
		
		// Now clear the fields
		$('#company_name').val('');
		$('#company_address').val('');
		$('#company_city').val('');
		$('#company_state').val('');
		$('#company_zip').val('');
		$('#company_email').val('');
		
	} else {
		$('#company_fields').removeClass('hidden');
	}
}
