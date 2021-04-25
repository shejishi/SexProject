.class Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;
.super Ljava/lang/Object;
.source "NoneCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

.field final synthetic val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;Lcom/lzy/okgo/cache/CacheEntity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    const/4 v0, 0x0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v3, v3, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-static {v2, v1, v3, v0}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onCacheSuccess(Lcom/lzy/okgo/model/Response;)V

    .line 95
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v0}, Lcom/lzy/okgo/callback/Callback;->onFinish()V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->requestNetworkAsync()V

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 88
    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v3, v3, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-static {v2, v3, v0, v1}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    return-void
.end method
