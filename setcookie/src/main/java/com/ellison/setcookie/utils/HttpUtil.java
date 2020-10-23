package com.ellison.setcookie.utils;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * @author ellison
 * @date 2020年10月21日
 * @desc 用一句话描述这个类的作用
 */
public class HttpUtil {

    public static String post(String spec, String data) {
        try {
            URL url = new URL(spec);
            HttpURLConnection httpURLConnection = (HttpURLConnection) ((URL) url).openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("User-Agent", "Mozilla/5.0");
            httpURLConnection.addRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(data.getBytes());
            InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

            StringBuilder stringBuilder = new StringBuilder();
            for (; ; ) {
                String str = bufferedReader.readLine();
                if (str == null) {
                    break;
                }
                stringBuilder.append(str);
            }
            outputStream.close();
            bufferedReader.close();
            httpURLConnection.disconnect();
            return stringBuilder.toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return spec;
    }

    public static void toast(Context paramContext, final String paramString) {
        ((Activity) paramContext).runOnUiThread(() -> Toast.makeText(paramContext, paramString, Toast.LENGTH_SHORT).show());
    }
}
