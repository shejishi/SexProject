package com.ellison.setcookie;

import android.content.DialogInterface;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import com.ellison.setcookie.utils.HttpUtil;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * @author ellison
 * @date 2020年10月21日
 * @desc 用一句话描述这个类的作用
 */
public class MainActivity extends AppCompatActivity {

    private AlertDialog alertDialog;
    JSONArray array = null;
    private boolean isSave = false;
    String list = null;
    String postData = "&code=yy&remark=1&status=1&online=1&max_amount=0&cookies=";
    private WebView webView;
    private String yu;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_web_view);


        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            toast("程序异常");
            finish();
        } else {
            yu = extras.getString("yu");
        }

        webView = findViewById(R.id.web);
        WebSettings settings = webView.getSettings();
        settings.setUserAgentString("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36");
        settings.setJavaScriptEnabled(true);
        settings.setSaveFormData(true);
        settings.setAppCacheEnabled(true);
        settings.setDomStorageEnabled(true);
        this.webView.setWebViewClient(new WebViewClient() {
            @Override
            public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString) {
                if (MainActivity.this.webView.getUrl().contains("/i/goLogin")) {
                    MainActivity.this.webView.loadUrl("javascript:var is=false;window.setInterval(function(){$('.login-box').css('left','0');$('.login-box').css('top','0');$('.login-box').css('margin','0');if($('.login-footer-ctrl .active')[0]!=null&&!is){is=true;$('.login-footer-ctrl .active')[0].click();}$('.E_acct').val(13046091317);$('.E_passwd').val('a12345678');$('.E_login').click();if($('.drawer-userInfo-nick').text()!=''){window.location.href='https://www.yy.com/i/index/anchor';}},100)");
                    Log.e("JS", "javascript:var is=false;window.setInterval(function(){$('.login-box').css('left','0');$('.login-box').css('top','0');$('.login-box').css('margin','0');if($('.login-footer-ctrl .active')[0]!=null&&!is){is=true;$('.login-footer-ctrl .active')[0].click();}$('.E_acct').val(13046091317);$('.E_passwd').val('a12345678');$('.E_login').click();if($('.drawer-userInfo-nick').text()!=''){window.location.href='https://www.yy.com/i/index/anchor';}},100)");
                }
                Log.e("加载完成", MainActivity.this.webView.getUrl());
                super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, WebResourceRequest paramAnonymousWebResourceRequest) {
                return super.shouldOverrideUrlLoading(paramAnonymousWebView, paramAnonymousWebResourceRequest);
            }
        });

        webView.setWebChromeClient(new WebChromeClient() {
            @Override
            public void onProgressChanged(WebView view, int newProgress) {
                try {
                    if (webView.getUrl().contains("/i/goLogin")) {

                        MainActivity.this.webView.loadUrl("javascript:$('.login-box').css('left','0');$('.login-box').css('top','0');$('.login-box').css('margin','0');");
                        StringBuilder localObject = new StringBuilder(newProgress + "");
                        Log.e("进度", ((StringBuilder) localObject).toString());
                    }

                    if (MainActivity.this.webView.getUrl().contains("/i/index/anchor")) {
                        String cookie = CookieManager.getInstance().getCookie(MainActivity.this.webView.getUrl());
                        if (!MainActivity.this.isSave) {
                            isSave = true;
                            toast("捕获到cookie，正在上传...");
                            new Thread((Runnable) () -> {
                                StringBuilder stringBuilder = new StringBuilder("http://" + yu + "/login/getYy.html");
                                list = HttpUtil.post(stringBuilder.toString(), "");
                                try {
                                    JSONArray localObject1 = new JSONArray(list);
                                    array = ((JSONArray) localObject1);
                                } catch (JSONException localJSONException1) {
                                    localJSONException1.printStackTrace();
                                }
                                if (MainActivity.this.array == null) {
                                    MainActivity.this.runOnUiThread(() -> {
                                        AlertDialog.Builder localBuilder = new AlertDialog.Builder(MainActivity.this);
                                        localBuilder.setTitle("异常");
                                        localBuilder.setMessage("服务器错误，请检查系统是否正常安装完成（主要检查数据库配置）");
                                        localBuilder.setPositiveButton("确定", (paramAnonymous4DialogInterface, paramAnonymous4Int) -> {
                                            paramAnonymous4DialogInterface.cancel();
                                            paramAnonymous4DialogInterface.dismiss();
                                            MainActivity.this.finish();
                                        });
                                        localBuilder.create().show();
                                    });
                                } else if (MainActivity.this.array.length() > 1) {
                                    MainActivity.this.runOnUiThread(new Runnable() {
                                        @Override
                                        public void run() {
                                            toast("请选择需要更新的配置");
                                            AlertDialog.Builder localBuilder = new AlertDialog.Builder(MainActivity.this);
                                            localBuilder.setTitle("选择更新账户");
                                            LinearLayout localLinearLayout = new LinearLayout(MainActivity.this);
                                            localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                                            localLinearLayout.setOrientation(LinearLayout.VERTICAL);
                                            for (int i = 0; i < MainActivity.this.array.length(); i++) {
                                                TextView localTextView = new TextView(MainActivity.this);
                                                localTextView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                                                localTextView.setHeight(150);
                                                localTextView.setTextColor(-16777216);
                                                localTextView.setGravity(16);
                                                localTextView.setTypeface(Typeface.DEFAULT);
                                                localTextView.setTextSize(15.0F);
                                                localTextView.setPadding(30, 0, 0, 0);
                                                try {
                                                    StringBuilder localStringBuilder = new StringBuilder("" + array.getJSONObject(i).get("id"));
                                                    localTextView.setText(localStringBuilder.toString());
                                                } catch (JSONException localJSONException) {
                                                    localJSONException.printStackTrace();
                                                }
                                                int finalI = i;
                                                localTextView.setOnClickListener((View.OnClickListener) view1 -> {
                                                    try {
                                                        JSONObject localJSONObject = array.getJSONObject(finalI);
                                                        StringBuilder localObject = new StringBuilder("id=" + localJSONObject.get("id") + postData + cookie);
                                                        postData = ((StringBuilder) localObject).toString();
                                                        toast(postData);
                                                    } catch (JSONException paramAnonymous4View) {
                                                        paramAnonymous4View.printStackTrace();
                                                    }
                                                    MainActivity.this.alertDialog.dismiss();
                                                });
                                                localLinearLayout.addView(localTextView);
                                            }
                                            localBuilder.setView(localLinearLayout);
                                            alertDialog = localBuilder.create();
                                            alertDialog.setCanceledOnTouchOutside(false);
                                            alertDialog.show();
                                        }
                                    });
                                } else if (MainActivity.this.array.length() == 1) {
                                    try {
                                        JSONObject localJSONObject = MainActivity.this.array.getJSONObject(0);
                                        StringBuilder localStringBuilder = new StringBuilder("id=" + localJSONObject.get("id") + postData + cookie);
                                        postData = localStringBuilder.toString();
                                        MainActivity.this.saveCookie();
                                    } catch (JSONException localJSONException2) {
                                        localJSONException2.printStackTrace();
                                    }
                                } else if (MainActivity.this.array.length() == 0) {
                                    MainActivity.this.runOnUiThread(new Runnable() {
                                        @Override
                                        public void run() {
                                            AlertDialog.Builder localBuilder = new AlertDialog.Builder(MainActivity.this);
                                            localBuilder.setTitle("警告");
                                            localBuilder.setMessage("未查询到后台y币账户，请先添加！");
                                            localBuilder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                                                @Override
                                                public void onClick(DialogInterface paramAnonymous4DialogInterface, int paramAnonymous4Int) {
                                                    paramAnonymous4DialogInterface.cancel();
                                                    paramAnonymous4DialogInterface.dismiss();
                                                    MainActivity.this.finish();
                                                }
                                            });
                                            localBuilder.create().show();
                                        }
                                    });
                                }
                            }).start();
                        }
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
                super.onProgressChanged(view, newProgress);
            }
        });

        this.webView.loadUrl("https://www.yy.com/i/goLogin");
    }

    private void saveCookie() {
        Log.e("Data", this.postData);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("http://");
        stringBuilder.append(this.yu);
        stringBuilder.append("/login/setCookie.html");
        String responseData = HttpUtil.post(((StringBuilder) stringBuilder).toString(), this.postData);
        try {
            if (responseData.contains("timeout")) {
                runOnUiThread(() -> toast(responseData));
            } else {
                JSONObject jsonObject = new JSONObject(responseData);
                if (jsonObject.getInt("code") == 0) {
                    runOnUiThread(() -> toast(responseData));
                } else {
                    runOnUiThread(() -> toast(responseData));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
            runOnUiThread(() -> Toast.makeText(MainActivity.this, "服务器出错", 0).show());
        }
    }


    private void toast(final String paramString) {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                Toast.makeText(MainActivity.this, paramString, Toast.LENGTH_SHORT).show();
            }
        });
    }

    @Override
    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
        if ((paramInt == 4) && (this.webView.canGoBack())) {
            this.webView.goBack();
            return false;
        }
        return super.onKeyDown(paramInt, paramKeyEvent);
    }
}
