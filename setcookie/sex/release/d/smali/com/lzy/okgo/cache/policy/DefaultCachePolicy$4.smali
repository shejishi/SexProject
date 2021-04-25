.class Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;
.super Ljava/lang/Object;
.source "DefaultCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->onAnalysisResponse(Lokhttp3/Call;Lokhttp3/Response;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

.field final synthetic val$success:Lcom/lzy/okgo/model/Response;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;->val$success:Lcom/lzy/okgo/model/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;->val$success:Lcom/lzy/okgo/model/Response;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onCacheSuccess(Lcom/lzy/okgo/model/Response;)V

    .line 82
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v0}, Lcom/lzy/okgo/callback/Callback;->onFinish()V

    return-void
.end method
