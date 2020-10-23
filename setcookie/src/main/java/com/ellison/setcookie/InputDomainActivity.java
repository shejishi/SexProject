package com.ellison.setcookie;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import com.ellison.setcookie.utils.HttpUtil;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author ellison
 * @date 2020年10月21日
 * @desc 用一句话描述这个类的作用
 */
public class InputDomainActivity extends AppCompatActivity {
    private EditText editText;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_index);

        editText = findViewById(R.id.edit);
        findViewById(R.id.login).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String domain = editText.getText().toString();
                if (TextUtils.isEmpty(domain)) {
                    Toast.makeText(InputDomainActivity.this, "域名不能为空", Toast.LENGTH_SHORT).show();
                } else {
                    AlertDialog.Builder builder = new AlertDialog.Builder(InputDomainActivity.this);
                    builder.setTitle("");
                    builder.setMessage("加载中...");
                    AlertDialog alertDialog = builder.create();
                    alertDialog.setCanceledOnTouchOutside(false);
                    alertDialog.show();

                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            StringBuilder stringBuilder = new StringBuilder("http://" + domain + "/login/check.html");

                            String result = HttpUtil.post(stringBuilder.toString(), "");
//
                            try {
                                JSONObject jsonObject = new JSONObject(result);

                                int code = jsonObject.getInt("code");
                                if(code == 0) {
                                    String path = getFilesDir().getPath();
                                    StringBuilder configPath = new StringBuilder(path + "/config");
                                    File file = new File(configPath.toString());

                                    if(!file.exists() && !file.createNewFile()) {
                                        Toast.makeText(InputDomainActivity.this, "文件创建失败", Toast.LENGTH_SHORT).show();
                                    }

                                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                                    fileOutputStream.write(domain.getBytes());


                                    Intent intent = new Intent(InputDomainActivity.this, MainActivity.class);
                                    intent.putExtra("yu", domain);
                                    startActivity(intent);
                                } else {
                                    HttpUtil.toast(InputDomainActivity.this, "服务器错误");
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                HttpUtil.toast(InputDomainActivity.this, "该域名未搭建Y币平台");
                            }

                            runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    alertDialog.dismiss();
                                }
                            });
                        }
                    }).start();
                }
            }
        });

        setDomain();
    }

    private void setDomain() {
        try {
            String filePath = getFilesDir().getPath();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append((String) filePath);
            stringBuilder.append("/config");
            File file = new File(stringBuilder.toString());
            if (((File) file).exists()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                this.editText.setText(((BufferedReader) bufferedReader).readLine());
                ((BufferedReader) bufferedReader).close();
                ((FileInputStream) fileInputStream).close();
            }
        } catch (IOException localIOException) {
            System.out.println(localIOException.getMessage());
        }
    }
}
