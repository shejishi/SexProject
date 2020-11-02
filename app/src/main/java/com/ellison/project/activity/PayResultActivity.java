package com.ellison.project.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.ellison.project.R;
import com.ellison.project.utils.ConfigUtils;
import com.ellison.project.utils.UrlConstant;
import com.just.agentweb.AbsAgentWebSettings;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.AgentWebSettingsImpl;
import com.just.agentweb.DefaultWebClient;

import static com.ellison.project.BuildConfig.DEBUG;

/**
 * @author ellison
 * @date 2020年10月10日
 * @desc 用一句话描述这个类的作用
 */
public class PayResultActivity extends AppCompatActivity {


    protected AgentWeb mAgentWeb;

    public static void enterResult(Activity activity) {
        Intent i = new Intent(activity, PayResultActivity.class);
        activity.startActivity(i);

        ConfigUtils.setPayStatus(activity, "Y");
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pay_result);

        AbsAgentWebSettings iAgentWebSettings = AgentWebSettingsImpl.getInstance();
        mAgentWeb = AgentWeb.with(this)
                .setAgentWebParent((ViewGroup) findViewById(R.id.pay_content), new LinearLayout.LayoutParams(-1, -1))
                .useDefaultIndicator(Color.parseColor("#FFFFFF"))
                //设置 IAgentWebSettings。
                .setAgentWebWebSettings(iAgentWebSettings)
                .setMainFrameErrorView(R.layout.agentweb_error_page, -1)
                .setSecurityType(AgentWeb.SecurityType.STRICT_CHECK)
                //打开其他应用时，弹窗咨询用户是否前往其他应用
                .setOpenOtherPageWays(DefaultWebClient.OpenOtherPageWays.ASK)
                .createAgentWeb()//
                .ready()
                .go(UrlConstant.WEB_URL + "vip.html");
        // 在调试模式下打开页面调试，可以在chrome下进行真机调试
        if (DEBUG) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {

        if (mAgentWeb.handleKeyEvent(keyCode, event)) {
            return true;
        }

        return false;
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
    protected void onDestroy() {
        mAgentWeb.getWebLifeCycle().onDestroy();
        mAgentWeb = null;
        super.onDestroy();
    }

}
