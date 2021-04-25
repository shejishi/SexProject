.class public Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;
.super Lcom/lzy/okgo/cache/policy/BaseCachePolicy;
.source "DefaultCachePolicy.java"


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

    .line 38
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-void
.end method


# virtual methods
.method public onAnalysisResponse(Lokhttp3/Call;Lokhttp3/Response;)Z
    .locals 2

    .line 65
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/exception/CacheException;->NON_AND_304(Ljava/lang/String;)Lcom/lzy/okgo/exception/CacheException;

    move-result-object v0

    invoke-static {v1, p1, p2, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object p1

    .line 69
    new-instance p2, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$3;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1, p2}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object p1

    .line 78
    new-instance p2, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v1
.end method

.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$2;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 43
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$1;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 110
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 111
    new-instance p1, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;)V

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestSync(Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/model/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->requestNetworkSync()Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->code()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->rawCall:Lokhttp3/Call;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getRawResponse()Lokhttp3/Response;

    move-result-object v0

    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v2}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzy/okgo/exception/CacheException;->NON_AND_304(Ljava/lang/String;)Lcom/lzy/okgo/exception/CacheException;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->rawCall:Lokhttp3/Call;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getRawResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-static {v1, p1, v2, v0}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->rawCall:Lokhttp3/Call;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object p1

    return-object p1
.end method
