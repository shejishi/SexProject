.class public Lcom/lzy/okgo/adapter/CacheCall;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lcom/lzy/okgo/adapter/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/adapter/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private policy:Lcom/lzy/okgo/cache/policy/CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private request:Lcom/lzy/okgo/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 45
    iput-object p1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 46
    invoke-direct {p0}, Lcom/lzy/okgo/adapter/CacheCall;->preparePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    return-void
.end method

.method private preparePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/lzy/okgo/adapter/CacheCall$1;->$SwitchMap$com$lzy$okgo$cache$CacheMode:[I

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    goto :goto_0

    .line 69
    :cond_3
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    goto :goto_0

    .line 66
    :cond_4
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    const-string v1, "policy == null"

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->cancel()V

    return-void
.end method

.method public clone()Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/lzy/okgo/adapter/CacheCall;->clone()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/lzy/okgo/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->prepareCache()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->requestSync(Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/lzy/okgo/callback/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 57
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->prepareCache()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v1, v0, p1}, Lcom/lzy/okgo/cache/policy/CachePolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public getRequest()Lcom/lzy/okgo/request/base/Request;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->isExecuted()Z

    move-result v0

    return v0
.end method
