var sj = null;
var code = "";
sj = setInterval(function () {
    if (code != "") {
        clearInterval(sj);
        var JS_CODE = "document.getElementById('smsCode').value = '" + code + "';setTimeout(function(){document.getElementsByClassName('am-button am-button-blue')[0].click();document.getElementsByClassName('am-button am-button-blue')[1].click();},200);"
    }
}, 1000);