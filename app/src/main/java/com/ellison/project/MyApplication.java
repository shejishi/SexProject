package com.ellison.project;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

import com.lzy.okgo.OkGo;

import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/**
 * @author ellison
 * @date 2020年09月27日
 * @desc 用一句话描述这个类的作用
 */
public class MyApplication extends Application implements Application.ActivityLifecycleCallbacks {
    private static List<Activity> mActivitys = Collections.synchronizedList(new LinkedList());
    private static MyApplication mInstance;
    private WeakReference<Activity> mCurrentActivity;

    public static void finishAllActivity() {
        Object localObject = mActivitys;
        if ((localObject != null) && (!((List) localObject).isEmpty())) {
            localObject = mActivitys.iterator();
            while (((Iterator) localObject).hasNext()) {
                ((Activity) ((Iterator) localObject).next()).finish();
            }
        }
    }

    public static Context getContext() {
        return mInstance;
    }

    public static MyApplication getInstance() {
        return mInstance;
    }

    public Activity getCurrentActivity() {
        return (Activity) this.mCurrentActivity.get();
    }

    @Override
    public void onCreate() {
        super.onCreate();
        mInstance = this;
        registerActivityLifecycleCallbacks(this);
        OkGo.getInstance().init(this);
    }

    @Override
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {
        if (MyApplication.mActivitys != null) {
            MyApplication.mActivitys.add(paramActivity);
            mCurrentActivity = new WeakReference<>(paramActivity);
        }
    }

    @Override
    public void onActivityDestroyed(Activity paramActivity) {
        if (((paramActivity != null) || (!MyApplication.mActivitys.isEmpty())) && (MyApplication.mActivitys.contains(paramActivity))) {
            MyApplication.mActivitys.remove(paramActivity);
        }
    }

    @Override
    public void onActivityPaused(Activity paramActivity) {
    }

    @Override
    public void onActivityResumed(Activity paramActivity) {
    }

    @Override
    public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {
    }

    @Override
    public void onActivityStarted(Activity paramActivity) {
    }

    @Override
    public void onActivityStopped(Activity paramActivity) {
    }
}