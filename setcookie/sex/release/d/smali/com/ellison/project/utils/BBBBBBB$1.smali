.class Lcom/ellison/project/utils/BBBBBBB$1;
.super Ljava/lang/Object;
.source "BBBBBBB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/utils/BBBBBBB;->executeJS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ellison/project/utils/BBBBBBB;

.field final synthetic val$paramString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ellison/project/utils/BBBBBBB;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ellison/project/utils/BBBBBBB$1;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    iput-object p2, p0, Lcom/ellison/project/utils/BBBBBBB$1;->val$paramString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB$1;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-static {v0}, Lcom/ellison/project/utils/BBBBBBB;->access$000(Lcom/ellison/project/utils/BBBBBBB;)Landroid/webkit/WebView;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:function exeJA(){"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v2, p0, Lcom/ellison/project/utils/BBBBBBB$1;->val$paramString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "};exeJA();"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
