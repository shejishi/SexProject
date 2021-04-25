.class final Lcom/ellison/project/utils/AAAA$2;
.super Ljava/lang/Object;
.source "AAAA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/utils/AAAA;->sendPostText2(Landroid/content/Context;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$paramContext:Landroid/content/Context;

.field final synthetic val$paramString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ellison/project/utils/AAAA$2;->val$paramContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/ellison/project/utils/AAAA$2;->val$paramString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 77
    sput v0, Lcom/ellison/project/utils/AAAA;->ret:I

    const-string v1, "http://165.3.95.36:9968/"

    .line 78
    invoke-static {v1}, Lcom/lzy/okgo/OkGo;->post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/ellison/project/utils/AAAA$2;->val$paramContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/request/PostRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    iget-object v2, p0, Lcom/ellison/project/utils/AAAA$2;->val$paramString:Ljava/lang/String;

    new-array v0, v0, [Z

    const-string v3, "callbackurl"

    invoke-virtual {v1, v3, v2, v0}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    new-instance v1, Lcom/ellison/project/utils/AAAA$2$1;

    invoke-direct {v1, p0}, Lcom/ellison/project/utils/AAAA$2$1;-><init>(Lcom/ellison/project/utils/AAAA$2;)V

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
