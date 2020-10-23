package com.ellison.project.utils;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;

import androidx.annotation.RequiresApi;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author ellison
 * @date 2020年09月27日
 * 短信监听服务
 */
public class SSSS extends NotificationListenerService {
    private static final String mTAG = "SSSS";
    Handler mHandler = new Handler(Looper.getMainLooper()) {
        @Override
        public void handleMessage(Message paramAnonymousMessage) {
            String str = (String) paramAnonymousMessage.obj;
            String codeFromSms = getCodeFromSms(str);
            Object localObject = new StringBuilder();
            ((StringBuilder) localObject).append("code: ");
            ((StringBuilder) localObject).append(codeFromSms);
            Log.e("SSSS", ((StringBuilder) localObject).toString());
            localObject = new Intent();
            ((Intent) localObject).setAction(Constant.SRAction);
            ((Intent) localObject).putExtra("order", "data");
            ((Intent) localObject).putExtra("code", codeFromSms);
            ((Intent) localObject).putExtra("notice", str);
            SSSS.this.sendBroadcast((Intent) localObject);
        }
    };

    private void cancelNotification(StatusBarNotification paramStatusBarNotification) {
        if (Build.VERSION.SDK_INT >= 21) {
            cancelNotification(paramStatusBarNotification.getKey());
        } else {
            cancelNotification(paramStatusBarNotification.getPackageName(), paramStatusBarNotification.getTag(), paramStatusBarNotification.getId());
        }
    }

    private static String getCodeFromSms(String paramString) {
        if (TextUtils.isEmpty(paramString)) {
            return "";
        }
        String str1;
        if (LLLL.sSmsCodeOnlyNumber) {
            str1 = "";
        } else {
            str1 = "a-zA-Z";
        }
        String localObject = "";
        if (LLLL.sSmsCodeOnlyNumber) {
            localObject = "";
        } else {
            localObject = "^a-z^A-Z";
        }
        StringBuilder localStringBuilder = new StringBuilder();
        String sss = "";
        if (TextUtils.isEmpty(LLLL.sSmsCodeSign)) {
            sss = ".*?";
        } else {
            sss = LLLL.sSmsCodeSign;
        }
        localStringBuilder.append(sss);
        localStringBuilder.append("[^0-9");
        localStringBuilder.append((String) localObject);
        localStringBuilder.append("]*?([0-9");
        localStringBuilder.append(str1);
        localStringBuilder.append("]{");
        localStringBuilder.append(LLLL.sMinSmsCodeLen);
        localStringBuilder.append(",");
        localStringBuilder.append(LLLL.sMaxSmsCodeLen);
        localStringBuilder.append("})");
        String str2 = localStringBuilder.toString();
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("[^0-9");
        localStringBuilder.append((String) localObject);
        localStringBuilder.append("]([0-9");
        localStringBuilder.append(str1);
        localStringBuilder.append("]{");
        localStringBuilder.append(LLLL.sMinSmsCodeLen);
        localStringBuilder.append(",");
        localStringBuilder.append(LLLL.sMaxSmsCodeLen);
        localStringBuilder.append("})[^0-9");
        localStringBuilder.append((String) localObject);
        localStringBuilder.append("].*?");
        if (TextUtils.isEmpty(LLLL.sSmsCodeSign)) {
            localObject = ".*";
        } else {
            localObject = LLLL.sSmsCodeSign;
        }
        localStringBuilder.append((String) localObject);
        localStringBuilder.toString();
        if (LLLL.sCusTomRegex == null) {
            localObject = str2;
        } else {
            localObject = LLLL.sCusTomRegex;
        }
        Matcher localObject5 = Pattern.compile((String) localObject, 8).matcher(paramString);
        if ((localObject != null) && (localObject5.find())) {
            int k = localObject5.groupCount();
            if (k < 0) {
                return "";
            }
            StringBuilder ppppp = new StringBuilder();
            ppppp.append("^[0-9");
            ppppp.append(str1);
            ppppp.append("]{");
            ppppp.append(LLLL.sMinSmsCodeLen);
            ppppp.append(",");
            ppppp.append(LLLL.sMaxSmsCodeLen);
            ppppp.append("}$");
            str2 = ppppp.toString();
            paramString = "";
            int i = 0;
            while (i < k) {
                int j = i + 1;
                str1 = localObject5.group(j);
                i = j;
                if (!TextUtils.isEmpty(str1)) {
                    i = j;
                    if (Pattern.compile(str2).matcher(str1).matches()) {
                        paramString = str1;
                        i = j;
                    }
                }
            }
            return paramString;
        }
        return "";
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.e("SSSS", "onCreate: ");
        Intent localIntent = new Intent();
        localIntent.setAction("SSSS_filter_s_a");
        localIntent.putExtra("order", "serviceCreate");
        sendBroadcast(localIntent);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.e("SSSS", "onDestroy: ");
        Intent localIntent = new Intent();
        localIntent.setAction("SSSS_filter_s_a");
        localIntent.putExtra("order", "serviceDestroy");
        sendBroadcast(localIntent);
    }

    @TargetApi(26)
    @RequiresApi(api = 20)
    @Override
    public void onNotificationPosted(StatusBarNotification paramStatusBarNotification) {
        super.onNotificationPosted(paramStatusBarNotification);
        if (LLLL.sListenState)
        {
            Object localObject1 = "";
            try {
                if (paramStatusBarNotification.getNotification().tickerText != null) {
                    localObject1 = paramStatusBarNotification.getNotification().tickerText.toString();
                }
                Object localObject2 = localObject1;
                if (TextUtils.isEmpty((CharSequence) localObject1)) {
                    localObject2 = localObject1;
                    if (paramStatusBarNotification.getNotification().extras != null) {
                        localObject2 = paramStatusBarNotification.getNotification().extras.getCharSequence("android.text", "").toString();
                    }
                }
                if (!TextUtils.isEmpty((CharSequence) localObject2)) {
                    localObject1 = new StringBuilder();
                    ((StringBuilder) localObject1).append("Get Message-----");
                    ((StringBuilder) localObject1).append((String) localObject2);
                    Log.e("SSSS", ((StringBuilder) localObject1).toString());
                    localObject1 = Message.obtain();
                    ((Message) localObject1).obj = localObject2;
                    this.mHandler.sendMessage((Message) localObject1);
                }
            } catch (Exception localException) {
                Log.e("SSSS", "onNotificationPosted: 不可解析");
            }
            cancelNotification(paramStatusBarNotification);
        }
    }

    @Override
    public void onNotificationRemoved(StatusBarNotification paramStatusBarNotification) {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("被移除:");
        localStringBuilder.append(paramStatusBarNotification.getId());
        Log.e("SSSS", localStringBuilder.toString());
    }
}
