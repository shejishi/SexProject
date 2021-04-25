.class public abstract Lcom/lzy/okgo/request/base/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/Request;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x638f96e7c9b0eb5cL


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected cacheKey:Ljava/lang/String;

.field protected cacheMode:Lcom/lzy/okgo/cache/CacheMode;

.field protected transient cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected cacheTime:J

.field protected transient call:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient callback:Lcom/lzy/okgo/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient client:Lokhttp3/OkHttpClient;

.field protected transient converter:Lcom/lzy/okgo/convert/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected headers:Lcom/lzy/okgo/model/HttpHeaders;

.field protected transient mRequest:Lokhttp3/Request;

.field protected params:Lcom/lzy/okgo/model/HttpParams;

.field protected retryCount:I

.field protected transient tag:Ljava/lang/Object;

.field protected transient uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 65
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 75
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object p1

    .line 79
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 82
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCommonParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCommonParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    .line 88
    :cond_3
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getRetryCount()I

    move-result v0

    iput v0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    .line 89
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 90
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCacheTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    return-void
.end method


# virtual methods
.method public adapt()Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    :cond_0
    return-object v0
.end method

.method public adapt(Lcom/lzy/okgo/adapter/AdapterParam;Lcom/lzy/okgo/adapter/CallAdapter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/adapter/AdapterParam;",
            "Lcom/lzy/okgo/adapter/CallAdapter<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 378
    :cond_0
    invoke-interface {p2, v0, p1}, Lcom/lzy/okgo/adapter/CallAdapter;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lcom/lzy/okgo/adapter/CallAdapter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/adapter/CallAdapter<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    :cond_0
    const/4 v1, 0x0

    .line 369
    invoke-interface {p1, v0, v1}, Lcom/lzy/okgo/adapter/CallAdapter;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "cacheKey == null"

    .line 146
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public cachePolicy(Lcom/lzy/okgo/cache/policy/CachePolicy;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;)TR;"
        }
    .end annotation

    const-string v0, "cachePolicy == null"

    .line 138
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    return-object p0
.end method

.method public cacheTime(J)Lcom/lzy/okgo/request/base/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 156
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    return-object p0
.end method

.method public call(Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;)TR;"
        }
    .end annotation

    const-string v0, "call == null"

    .line 116
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TR;"
        }
    .end annotation

    const-string v0, "OkHttpClient == null"

    .line 108
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public converter(Lcom/lzy/okgo/convert/Converter;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;)TR;"
        }
    .end annotation

    const-string v0, "converter == null"

    .line 124
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    return-object p0
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/lzy/okgo/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 388
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 391
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->adapt()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    .line 392
    invoke-interface {v0, p1}, Lcom/lzy/okgo/adapter/Call;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public abstract generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract generateRequestBody()Lokhttp3/RequestBody;
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    return-wide v0
.end method

.method public getConverter()Lcom/lzy/okgo/convert/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    const-string v1, "converter == null, do you forget to call Request#converter(Converter<T>) ?"

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    return-object v0
.end method

.method public getFileParam(Ljava/lang/String;)Lcom/lzy/okgo/model/HttpParams$FileWrapper;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/model/HttpParams$FileWrapper;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public abstract getMethod()Lcom/lzy/okgo/model/HttpMethod;
.end method

.method public getParams()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public getRawCall()Lokhttp3/Call;
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->generateRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v1, Lcom/lzy/okgo/request/base/ProgressRequestBody;

    iget-object v2, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    invoke-direct {v1, v0, v2}, Lcom/lzy/okgo/request/base/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/lzy/okgo/callback/Callback;)V

    .line 345
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->setInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/lzy/okgo/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 265
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;C[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[Z)TR;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;C[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;D[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D[Z)TR;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;D[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;F[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;J[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[Z)TR;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;J[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Z[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/util/Map;[Z)V

    return-object p0
.end method

.method public removeAllHeaders()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpHeaders;->clear()V

    return-object p0
.end method

.method public removeAllParams()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpParams;->clear()V

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->remove(Ljava/lang/String;)V

    return-object p0
.end method

.method public retryCount(I)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 102
    iput p1, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    return-object p0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "retryCount must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCallback(Lcom/lzy/okgo/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    return-void
.end method

.method public tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public uploadInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;",
            ")TR;"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    return-object p0
.end method
