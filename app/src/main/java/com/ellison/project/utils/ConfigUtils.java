package com.ellison.project.utils;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * @author ellison
 * @date 2020年09月29日
 * @desc 用一句话描述这个类的作用
 */
public class ConfigUtils {
    public static int getExpire(Context paramContext) {
        paramContext.getSharedPreferences("vip", 0).getInt("expire", 0);
        return 0;
    }

    public static String getToken(Context paramContext) {
        return paramContext.getSharedPreferences("playGame", 0).getString("token", "");
    }

    public static void setExpire(Context context, long paramLong) {
        SharedPreferences.Editor vip = context.getSharedPreferences("vip", 0).edit();
        vip.putLong("expire", paramLong);
        vip.commit();
    }

    public static void setToken(Context paramContext, String paramString) {
        SharedPreferences.Editor playGame = paramContext.getSharedPreferences("playGame", 0).edit();
        playGame.putString("token", paramString);
        playGame.commit();
    }

    public static String getPayStatus(Context paramContext) {
        return paramContext.getSharedPreferences("playGame", 0).getString("payStatus", "");
    }


    public static void setPayStatus(Context paramContext, String paramString) {
        SharedPreferences.Editor playGame = paramContext.getSharedPreferences("playGame", 0).edit();
        playGame.putString("payStatus", paramString);
        playGame.apply();
    }


}
