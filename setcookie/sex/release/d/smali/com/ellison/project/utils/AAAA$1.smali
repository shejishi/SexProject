.class final Lcom/ellison/project/utils/AAAA$1;
.super Ljava/lang/Object;
.source "AAAA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/utils/AAAA;->sendPostText(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$var0:Landroid/content/Context;

.field final synthetic val$var1:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ellison/project/utils/AAAA$1;->val$var0:Landroid/content/Context;

    iput-object p2, p0, Lcom/ellison/project/utils/AAAA$1;->val$var1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "http://165.3.95.36:9968/"

    .line 53
    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/ellison/project/utils/AAAA$1;->val$var0:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/PostRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    iget-object v1, p0, Lcom/ellison/project/utils/AAAA$1;->val$var1:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Z

    const-string v3, "callbackurl"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    new-instance v1, Lcom/ellison/project/utils/AAAA$1$1;

    invoke-direct {v1, p0}, Lcom/ellison/project/utils/AAAA$1$1;-><init>(Lcom/ellison/project/utils/AAAA$1;)V

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
