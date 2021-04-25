.class Lcom/ellison/project/activity/PayActivity$1;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/activity/PayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ellison/project/activity/PayActivity;


# direct methods
.method constructor <init>(Lcom/ellison/project/activity/PayActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ellison/project/activity/PayActivity$1;->this$0:Lcom/ellison/project/activity/PayActivity;

    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSuccess$0$PayActivity$1()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ellison/project/activity/PayActivity$1;->this$0:Lcom/ellison/project/activity/PayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/PayActivity;->access$100(Lcom/ellison/project/activity/PayActivity;)V

    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/ellison/project/bean/PayUrlBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ellison/project/bean/PayUrlBean;

    .line 73
    iget-object v0, p0, Lcom/ellison/project/activity/PayActivity$1;->this$0:Lcom/ellison/project/activity/PayActivity;

    invoke-virtual {p1}, Lcom/ellison/project/bean/PayUrlBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ellison/project/activity/PayActivity;->access$002(Lcom/ellison/project/activity/PayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/ellison/project/bean/PayUrlBean;->getID()I

    move-result p1

    sput p1, Lcom/ellison/project/utils/AAAA;->id:I

    .line 75
    iget-object p1, p0, Lcom/ellison/project/activity/PayActivity$1;->this$0:Lcom/ellison/project/activity/PayActivity;

    new-instance v0, Lcom/ellison/project/activity/-$$Lambda$PayActivity$1$ByPjl1Izjr0ErGJ9ZyQvwCtMIok;

    invoke-direct {v0, p0}, Lcom/ellison/project/activity/-$$Lambda$PayActivity$1$ByPjl1Izjr0ErGJ9ZyQvwCtMIok;-><init>(Lcom/ellison/project/activity/PayActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/ellison/project/activity/PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
