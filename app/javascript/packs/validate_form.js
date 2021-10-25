$(document).ready(function () {
    $('#firstName').focusout(function () {
        if ($(this).val().length <= 0 ) {
            $(this).focus();
            $('#fn-span').css('display', 'block');
        } else {
            $('#fn-span').css('display', 'none');
        }
    })

    $('#lastName').focusout(function () {
        if ($(this).val().length <= 0 ) {
            $(this).focus();
            $('#ln-span').css('display', 'block');
        } else {
            $('#ln-span').css('display', 'none');
        }
    })

    $('#email').focusout(function () {
        if ($(this).val().length <= 0 ) {
            $(this).focus();
            $('#e-span').css('display', 'block');
        } else {
            $('#e-span').css('display', 'none');
        }
    })
})