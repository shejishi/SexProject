.class public Lcom/lzy/okgo/cache/policy/NoCachePolicy;
.super Lcom/lzy/okgo/cache/policy/BaseCachePolicy;
.source "NoCachePolicy.java"


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

    .line 35
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

    .line 51
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy$2;-><init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 40
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;-><init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 72
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 73
    new-instance p1, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;)V

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->requestNetworkSync()Lcom/lzy/okgo/model/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->rawCall:Lokhttp3/Call;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object p1

    return-object p1
.end method
