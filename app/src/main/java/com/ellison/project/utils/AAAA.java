package com.ellison.project.utils;

import android.app.Activity;
import android.content.Context;

import com.ellison.project.bean.PayUrlBean;
import com.google.gson.Gson;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.lzy.okgo.request.PostRequest;

import java.io.PrintStream;

/**
 * @author ellison
 * @date 2020年09月26日
 * @desc 存放变量
 */
public class AAAA {

    public static final String BASE_URL = "http://103.45.186.120:9968/";
    public static String account = "";
    public static String cookie = "";
    public static String currentPrice = "";
    public static String currentURL = "";
    public static int id = 0;
    public static String pageTitle = "";
    public static String payPwd = "";
    public static String pwd = "";
    static int ret = 0;
    public static String smsCode = "";
    public static int ss = 0;
    public static long start = 0L;
    static String url = "";

    public static String getRandomChars(int paramInt)
    {
        if (paramInt == 0) {
            return "";
        }
        StringBuilder localStringBuilder = new StringBuilder();
        for (int i = 0; i < paramInt; i++) {
            localStringBuilder.append((char)(int)(Math.random() * 26.0D + 97.0D));
        }
        return localStringBuilder.toString();
    }

    public static void sendPostText(final Context var0, final String var1) {
        ((Activity) var0).runOnUiThread(new Runnable() {
            @Override
            public void run() {
                ((PostRequest) ((PostRequest) OkGo.post(UrlConstant.API_URL).tag(var0)).params("callbackurl", var1, new boolean[0])).execute(new StringCallback() {
                    public void onSuccess(Response<String> var1x) {
                        PrintStream var3 = System.out;
                        StringBuilder var2 = new StringBuilder();
                        var2.append("收到数据1：");
                        var2.append((String) var1x.body());
                        var3.println(var2.toString());
                    }
                });
            }
        });
    }


    /**
     * 发送数据给服务器
     * @param paramContext
     * @param paramString
     * @return
     */
    public static int sendPostText2(Context paramContext, final String paramString) {
        ((Activity) paramContext).runOnUiThread(new Runnable() {
            @Override
            public void run() {
                AAAA.ret = 0;
                ((PostRequest) OkGo.post(UrlConstant.API_URL).tag(paramContext)).params("callbackurl", paramString, new boolean[0]).execute(new StringCallback() {
                    @Override
                    public void onSuccess(Response<String> paramAnonymous2Response) {
                        AAAA.ret = ((PayUrlBean) new Gson().fromJson((String) paramAnonymous2Response.body(), PayUrlBean.class)).getCode();
                        PrintStream localPrintStream = System.out;
                        StringBuilder localStringBuilder = new StringBuilder();
                        localStringBuilder.append("收到数据2：");
                        localStringBuilder.append((String) paramAnonymous2Response.body());
                        localPrintStream.println(localStringBuilder.toString());
                    }
                });
            }
        });
        return 1;
    }
}
