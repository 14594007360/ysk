$(document).ready(function() {

	var item1 = false;// 判读账号
	var item2 = false;// 判读验证码
	var item3 = false;// 判读密码

	$(function() {
		$('#password').tipso({
			content : "密码中不能包含纯数字 _ ! $ % ^ & 等特殊字符",
			background : '#000000'
		});
	});

	function isEmail(email) {
		return /^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/.test(email);
	}

	function isPassword(pwd) {
		return /^(?=.{6,16}$)(?![0-9]+$)(?!.*(.).*\1)[0-9a-zA-Z]+$/.test(pwd);
	}

	$('#email').click(function() {
		$('#alter-email-ok').addClass('hide');
		$('#alter-email').addClass('hide');
	});

	$('#email').blur(function() {
		var photo = $('#email').val();
		var email = isEmail($('#email').val());
		if (email == true) {
			$('#alter-email-ok').removeClass('hide');
		} else if (photo.length != 11) {
			$('#alter-email').removeClass('hide');
		} else {
			$('#alter-email-ok').removeClass('hide');
		}
		itme1 = true;
	});

	$('#code').blur(function() {
		if ($('#code').val().length == 4) {
			itme2 = true;
		}
	});

	$('#password').click(function() {
		$('#alter-password-ok').addClass('hide');
		$('#alter-password').addClass('hide');
	});

	$('#password').blur(function() {
		var password = isPassword($('#password').val());
		if (password == true) {
			$('#alter-password-ok').removeClass('hide');
		} else {
			$('#alter-password').removeClass('hide');
		}
		itme3 = true;
	});

	$('#btnsubmit').click(function() {
		var photo = $('#email').val();
		var email = isEmail($('#email').val());
		if (email == true) {
			$('#alter-email-ok').removeClass('hide');
		} else if (photo.length != 11) {
			$('#alter-email').removeClass('hide');
		} else {
			$('#alter-email-ok').removeClass('hide');
		}
		itme1 = true;
		
		if ($('#code').val().length == 4) {
			itme2 = true;
		}
		
		var password = isPassword($('#password').val());
		if (password == true) {
			$('#alter-password-ok').removeClass('hide');
		} else {
			$('#alter-password').removeClass('hide');
		}
		itme3 = true;

		if (item1 && item2 && item2) {
			alert(item1 + item2 + item3);
		}
	});

});