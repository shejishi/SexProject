.class Lcom/ellison/project/utils/BBBBBBB$6;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "BBBBBBB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/utils/BBBBBBB;->updatePayLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ellison/project/utils/BBBBBBB;


# direct methods
.method constructor <init>(Lcom/ellison/project/utils/BBBBBBB;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/ellison/project/utils/BBBBBBB$6;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 178
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/ellison/project/bean/PayUrlBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ellison/project/bean/PayUrlBean;

    .line 179
    invoke-virtual {p1}, Lcom/ellison/project/bean/PayUrlBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/ellison/project/bean/PayUrlBean;->getID()I

    move-result p1

    sput p1, Lcom/ellison/project/utils/AAAA;->id:I

    .line 181
    iget-object p1, p0, Lcom/ellison/project/utils/BBBBBBB$6;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-static {p1}, Lcom/ellison/project/utils/BBBBBBB;->access$000(Lcom/ellison/project/utils/BBBBBBB;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
