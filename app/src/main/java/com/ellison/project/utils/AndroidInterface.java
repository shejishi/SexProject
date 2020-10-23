package com.ellison.project.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;

import com.ellison.project.activity.FakePayActivity;
import com.ellison.project.activity.PayActivity;
import com.just.agentweb.AgentWeb;

/**
 * @author zcb
 * @date 2018/5/22
 * @Email: zcb_android@163.com
 */
public class AndroidInterface {
    private Handler deliver = new Handler(Looper.getMainLooper());
    private AgentWeb agent;
    private Activity context;

    public AndroidInterface(AgentWeb agent, Activity context) {
        this.agent = agent;
        this.context = context;
    }

    @JavascriptInterface
    public void goToPay() {
        deliver.post(new Runnable() {
            @Override
            public void run() {
                FakePayActivity.enterPay(context);
            }
        });
    }


}
