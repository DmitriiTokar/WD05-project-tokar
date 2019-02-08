$ (document).ready (function () {

	setTimeout(function () {
		$('[data-notify-hide]').slideUp(400);
	}, 2000);

	CKEDITOR.replace( 'ckEditor' );

});