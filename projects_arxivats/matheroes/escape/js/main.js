//vars
//
var step = 1
var minutes = 60
var time = ''
var entering_content_time = 3000
var leaving_content_time = 500

//init
//
$(function() {
    //load start
    $.get('api/?start', function (res) {
        loadHTML(res, 0, 0)
    }, 'html');

})

//functions
//
function start(e) {
    //TODO: evento Analytics
    $.get('api/?page1', function (res) {
        loadHTML(res)
        counter(true)
        preventReload(true)
    }, 'html')
}

function verify(num) {
    var code = $('#inputVerify').val();
    if (!code) return false;
    var data = {
        code: code,
        num: num,
    };
    $.post('api/?verify', data, function (res) {
        if (res.success) {
            step = res.num
            showMsg('success', 'Código correcto')
            loadHTML(res.html)
            if (res.finish) {
                counter(false)
                preventReload(false)
            }
        } else {
            showMsg('error', 'Código incorrecto')
        }
    }, 'json');
}

function counter(status) {
    if (status) {
        var date = new Date(new Date().getTime() + minutes * 60000);
        $('#counter').countdown({
            date: date,
            onEnd: function (e) {
                $.get('api/?fail', function (res) {
                    loadHTML(res)
                    preventReload(false)
                }, 'html');
            },
            render: function (time) {
                window.time = this.leadingZeros(time.min, 2) + ':' + this.leadingZeros(time.sec, 2)
                var html = '<span class="minutes">' + this.leadingZeros(time.min, 2) + '</span>'
                    + '<span class="colon">:</span>'
                    + '<span class="seconds">' + this.leadingZeros(time.sec, 2) + '</span>'
                $(this.el).html(html)
            },
        });
    } else {
        $('#counter').data('countdown').stop()
    }
}

/***************************************************** */
//utils
//
function loadHTML(html, entering_time, leaving_time) {
    if (entering_time == null) {
        entering_time = entering_content_time
    }
    if (leaving_time == null) {
        leaving_time = leaving_content_time
    }

    $('body').addClass('leaving')
    setTimeout(function() {
        $('body').removeClass('leaving')
        $('body').addClass('entering')
        $('#content').html(html)
        $('#btnStart').click(start);
        $('#btnVerify').click(function (e) {
            verify(step)
        });
        $('#btnBack').click(function (e) {
            location.reload()
        });
        $('#time_finish').text(time)

        $('form').submit(function (e) {
            return false;
        })
        setTimeout(function () {
            $('body').removeClass('entering')
        }, entering_time)

        $('html, body').animate({scrollTop: 0}, 0);

    }, leaving_time)
}

function showMsg (tipo, mensaje) {
    //remove old msgs if message is the same
    $('#avisos .aviso').each(function () {
        if ($(this).text() == mensaje) {
            $(this).remove();
        }
    });

    var html = '<div class="aviso ' + tipo + '"><span></span><div>' + mensaje + '</div></div>';
    $(html)
        .hide()
        .prependTo($('#avisos'))
        .fadeIn(300, function () {
            var $this = $(this);
            setTimeout(function () {
                $this.fadeOut(300, function () {
                    $(this).remove();
                });
            }, 1200);
        });
}

function preventReload(status) {
    if (status) {
        window.onbeforeunload = function () {
            return false;
        };
    } else {
        window.onbeforeunload = null;
    }
}
