(function($) {

	"use strict";


	$(".js-select2").select2({
			closeOnSelect : false,
			placeholder : "필터를 적용해 더 빨리 찾으세요",
			allowHtml: true,
			allowClear: true,
			tags: true
		});

	$('.icons_select2').select2({
		width: "100%",
		templateSelection: iformat,
		templateResult: iformat,
		allowHtml: true,
		placeholder: "필터를 적용해 더 빨리 찾으세요",
		
		dropdownParent: $( '.select-icon' ),
		allowClear: true,
		multiple: false
	});


	function iformat(icon, badge) {
		var originalOption = icon.element;
		var originalOptionBadge = $(originalOption).data('badge');
	 
		return $('<span><i class="fa ' + $(originalOption).data('icon') + '"></i> ' + icon.text + '<span class="badge">' + originalOptionBadge + '</span></span>');
	}

})(jQuery);
