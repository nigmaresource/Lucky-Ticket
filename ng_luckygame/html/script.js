$(function() {

    function display(bool) {
        if (bool) {
            $("html").show();
        } else {
            $("html").hide();
        }
    }

    function displaylevel(bool) {
        if (bool) {
            $("#level").show();
        } else {
            $("#level").hide();
        }
    }

    display(false)
    displaylevel(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "show") {
            if (item.status == true) {
                $("html").fadeIn();
                display(true)

            } else {
                display(false)
            }
        }
        if (item.type === "showlevel") {
            if (item.status == true) {
                displaylevel(true)
            } else {
                displaylevel(false)
            }
        }
    })
    window.addEventListener('message', function(event) {
        if (event.data.action == 'update') {
            let data = event.data.data;
            switch (event.data.type) {
                case 'num1':
                    {
                        $('#number1text').html(`<span>` + data.value + `</span>`);
                        $('#myrandomnumber').hide()
                        break;
                    }
                case 'num2':
                    {
                        $('#number2text').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'num3':
                    {
                        $('#number3text').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'lnum':
                    {
                        $('#lnumbertext').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'luckynum1':
                    {
                        $('#luckynumber1text').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'luckynum2':
                    {
                        $('#luckynumber2text').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'luckynum3':
                    {
                        $('#luckynumber3text').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'luckynum':
                    {
                        $('#luckynumbertext').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'randomnum1':
                    {
                        $('#randomnumber1text').html(`<span>` + data.value + `</span>`);
                        $('#mynumber').hide()
                        break;
                    }
                case 'randomnum2':
                    {
                        $('#randomnumber2text').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'randomnum3':
                    {
                        $('#randomnumber3text').html(`<span>` + data.value + `</span>`);
                        break;
                    }
                case 'randomlnum':
                    {
                        $('#randomlnumbertext').html(`<span>` + data.value + `</span>`);
                        break;
                    }
            }
        }
    });

    document.onkeyup = function(data) {
        if (data.which == 27) {
            $("#mynumber").show();
            $("#myrandomnumber").show();
            $("html").fadeOut("slow");
            $.post('https://ng_luckygame/close', JSON.stringify({}));
            return
        }
    };
})