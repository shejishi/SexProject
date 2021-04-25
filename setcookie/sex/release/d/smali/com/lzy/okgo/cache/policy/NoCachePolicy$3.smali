.class Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;
.super Ljava/lang/Object;
.source "NoCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/NoCachePolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->requestNetworkAsync()V

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v2, v2, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->rawCall:Lokhttp3/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    return-void
.end method
