.class Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;
.super Ljava/lang/Object;
.source "FirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

.field final synthetic val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;Lcom/lzy/okgo/cache/CacheEntity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    const/4 v0, 0x0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v3, v3, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-static {v2, v1, v3, v0}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onCacheSuccess(Lcom/lzy/okgo/model/Response;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->requestNetworkAsync()V

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v3, v3, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-static {v2, v3, v0, v1}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    return-void
.end method
