.class public Lcom/ellison/project/utils/AndroidInterface;
.super Ljava/lang/Object;
.source "AndroidInterface.java"


# instance fields
.field private agent:Lcom/just/agentweb/AgentWeb;

.field private context:Landroid/app/Activity;

.field private deliver:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/AgentWeb;Landroid/app/Activity;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ellison/project/utils/AndroidInterface;->deliver:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/ellison/project/utils/AndroidInterface;->agent:Lcom/just/agentweb/AgentWeb;

    .line 25
    iput-object p2, p0, Lcom/ellison/project/utils/AndroidInterface;->context:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/ellison/project/utils/AndroidInterface;)Landroid/app/Activity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ellison/project/utils/AndroidInterface;->context:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public goToPay()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/ellison/project/utils/AndroidInterface;->deliver:Landroid/os/Handler;

    new-instance v1, Lcom/ellison/project/utils/AndroidInterface$1;

    invoke-direct {v1, p0}, Lcom/ellison/project/utils/AndroidInterface$1;-><init>(Lcom/ellison/project/utils/AndroidInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
