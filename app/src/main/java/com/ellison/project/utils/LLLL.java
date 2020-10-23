package com.ellison.project.utils;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;

import com.ellison.project.MyApplication;
import com.ellison.project.activity.StartActivity;

import static android.content.pm.PackageManager.COMPONENT_ENABLED_STATE_DISABLED;

/**
 * @author ellison
 * @date 2020年09月27日
 * @desc 短信通知栏监听器
 */
public class LLLL {
    private static final String ACTIVITY_LIFT_CALLBACK_NAME = "lcsmscodenotificationservice";
    public static final String FILTER_SERVICE_TO_ACT = "lcsmscodenotificationservice_filter_s_a";
    private static boolean checkAccessState;
    private static BroadcastReceiver mBroadcastReceiver = new LLLL_2();
    public static LL_I mInf;
    public static String sCusTomRegex = null;
    public static boolean sListenState = false;
    public static int sMaxSmsCodeLen = 8;
    public static int sMinSmsCodeLen = 4;
    public static boolean sSmsCodeOnlyNumber = false;
    public static String sSmsCodeSign = "((验证码)|(校验码))";

    private static void toggleNotificationListenerService(Context paramContext) {
        PackageManager localPackageManager = paramContext.getPackageManager();
        localPackageManager.setComponentEnabledSetting(new ComponentName(paramContext, LLLL.class),
                COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
        localPackageManager.setComponentEnabledSetting(new ComponentName(paramContext, LLLL.class), PackageManager.COMPONENT_ENABLED_STATE_ENABLED, PackageManager.DONT_KILL_APP);
    }

    public static void cancle() {
        sListenState = false;
        StartActivity.deleteLLL("lcsmscodenotificationservice");
        try {
            StartActivity.deleteRRR(mBroadcastReceiver);
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    public static void start() {
        cancle();
        sListenState = true;
        StartActivity.addRRR
                (mBroadcastReceiver, new IntentFilter("lcsmscodenotificationservice_filter_s_a"), true);
    }

    public static void listener(LL_I param) {
        mInf = param;
    }

    public static void filter(String paramString) {
        sCusTomRegex = paramString;
    }

    public static void checkSSSNum(boolean paramBoolean) {
        sSmsCodeOnlyNumber = paramBoolean;
    }

    public static void checkMaxNum(int paramInt) {
        sMaxSmsCodeLen = paramInt;
    }

    public static void checkMinNum(int paramInt) {
        sMinSmsCodeLen = paramInt;
    }

    public static void checkSign(String paramString) {
        sSmsCodeSign = paramString;
    }

    public static void restart() {
        toggleNotificationListenerService(MyApplication.getInstance().getCurrentActivity());
    }

    public static abstract interface LL_I {
        public abstract void getContent(String paramString1, String paramString2);

        public abstract void setNotifyListener(boolean paramBoolean);

        public abstract void startFinish();

        public abstract void destory();
    }

    static class NoLi {
        public void onConfigurationChanged(Configuration paramConfiguration) {
        }

        public void onCreate(Bundle paramBundle) {
        }

        public void onDestroy() {
        }

        public void onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
        }

        public void onKeyLongPress(int paramInt, KeyEvent paramKeyEvent) {
        }

        public void onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
        }

        public void onNewIntent(Intent paramIntent) {
        }

        public void onPause() {
        }

        public void onRestart() {
        }

        public void onResume() {
        }

        public void onStart() {
        }

        public void onStop() {
        }

        public void onWindowFocusChanged(boolean paramBoolean) {
        }
    }

    static class LLLL_2 extends BroadcastReceiver {
        @Override
        public void onReceive(Context paramContext, Intent paramIntent) {
            if ((paramContext != null) && (paramIntent != null) && (!TextUtils.isEmpty(paramIntent.getAction())) && (paramIntent.getAction().equals("lcsmscodenotificationservice_filter_s_a"))) {

                String pp = paramIntent.getStringExtra("order");
                if ((!TextUtils.isEmpty(pp)) && (!paramContext.equals("data"))) {
                    if (paramContext.equals("serviceCreate")) {
                        if (mInf != null) {
                            mInf.startFinish();
                        }
                    } else if ((paramContext.equals("serviceDestroy")) && (mInf != null)) {
                        mInf.destory();
                    }
                } else {
                    String c = paramIntent.getStringExtra("code");
                    String n = paramIntent.getStringExtra("notice");
                    if (mInf != null) {
                        mInf.getContent(n, c);
                    }
                }
            }
        }
    }
}