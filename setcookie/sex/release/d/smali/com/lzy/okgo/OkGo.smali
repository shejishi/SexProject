.class public Lcom/lzy/okgo/OkGo;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/OkGo$OkGoHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MILLISECONDS:J = 0xea60L

.field public static REFRESH_TIME:J = 0x12cL


# instance fields
.field private context:Landroid/app/Application;

.field private mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

.field private mCacheTime:J

.field private mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

.field private mCommonParams:Lcom/lzy/okgo/model/HttpParams;

.field private mDelivery:Landroid/os/Handler;

.field private mRetryCount:I

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mDelivery:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 70
    iput v0, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

    const-wide/16 v0, -0x1

    .line 71
    iput-wide v0, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    .line 72
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 74
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 75
    new-instance v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v2, "OkGo"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 77
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 80
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 81
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 82
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 84
    invoke-static {}, Lcom/lzy/okgo/https/HttpsUtils;->getSslSocketFactory()Lcom/lzy/okgo/https/HttpsUtils$SSLParams;

    move-result-object v1

    .line 85
    iget-object v2, v1, Lcom/lzy/okgo/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lcom/lzy/okgo/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 86
    sget-object v1, Lcom/lzy/okgo/https/HttpsUtils;->UnSafeHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 87
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okgo/OkGo$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/lzy/okgo/OkGo;-><init>()V

    return-void
.end method

.method public static cancelAll(Lokhttp3/OkHttpClient;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 274
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 277
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static cancelTag(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 248
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 249
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 254
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public static delete(Ljava/lang/String;)Lcom/lzy/okgo/request/DeleteRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/DeleteRequest<",
            "TT;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/lzy/okgo/request/DeleteRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/DeleteRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/GetRequest<",
            "TT;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/lzy/okgo/request/GetRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 91
    invoke-static {}, Lcom/lzy/okgo/OkGo$OkGoHolder;->access$000()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lcom/lzy/okgo/request/HeadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/HeadRequest<",
            "TT;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/lzy/okgo/request/HeadRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/HeadRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/lang/String;)Lcom/lzy/okgo/request/OptionsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/OptionsRequest<",
            "TT;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/lzy/okgo/request/OptionsRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/OptionsRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lcom/lzy/okgo/request/PatchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PatchRequest<",
            "TT;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/lzy/okgo/request/PatchRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PatchRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/lzy/okgo/request/PostRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lcom/lzy/okgo/request/PutRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PutRequest<",
            "TT;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/lzy/okgo/request/PutRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PutRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/lang/String;)Lcom/lzy/okgo/request/TraceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/TraceRequest<",
            "TT;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/lzy/okgo/request/TraceRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/TraceRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addCommonHeaders(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    return-object p0
.end method

.method public addCommonParams(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    return-object p0
.end method

.method public cancelAll()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 263
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 266
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 234
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 239
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getCacheMode()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    return-wide v0
.end method

.method public getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public getCommonParams()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    const-string v1, "please call OkGo.getInstance().init() first in application!"

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    return-object v0
.end method

.method public getCookieJar()Lcom/lzy/okgo/cookie/CookieJarImpl;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/cookie/CookieJarImpl;

    return-object v0
.end method

.method public getDelivery()Landroid/os/Handler;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mDelivery:Landroid/os/Handler;

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    const-string v1, "please call OkGo.getInstance().setOkHttpClient() first in application!"

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

    return v0
.end method

.method public init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    return-object p0
.end method

.method public setCacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/OkGo;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public setCacheTime(J)Lcom/lzy/okgo/OkGo;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 197
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    return-object p0
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;
    .locals 1

    const-string v0, "okHttpClient == null"

    .line 161
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public setRetryCount(I)Lcom/lzy/okgo/OkGo;
    .locals 1

    if-ltz p1, :cond_0

    .line 174
    iput p1, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

    return-object p0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "retryCount must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
