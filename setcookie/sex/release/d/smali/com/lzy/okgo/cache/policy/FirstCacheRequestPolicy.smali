.class public Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;
.super Lcom/lzy/okgo/cache/policy/BaseCachePolicy;
.source "FirstCacheRequestPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/cache/policy/BaseCachePolicy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$2;-><init>(Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$1;-><init>(Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 81
    new-instance p2, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;Lcom/lzy/okgo/cache/CacheEntity;)V

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestSync(Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/model/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->requestNetworkSync()Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getRawResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-static {v1, p1, v2, v0}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-static {v1, v2, v0, p1}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object p1

    return-object p1
.end method
