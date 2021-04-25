.class Lcom/ellison/project/utils/BBBBBBB$2;
.super Ljava/lang/Object;
.source "BBBBBBB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/utils/BBBBBBB;->hidePayWay()V
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

    .line 66
    iput-object p1, p0, Lcom/ellison/project/utils/BBBBBBB$2;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "var  aa = document.getElementsByClassName(\'list-discount-title\')["

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "];if(aa.innerText.indexOf(\'\u4e0d\u8db3\')>-1){aa. innerText=\'\u8be5\u4ed8\u6b3e\u65b9\u5f0f\u4e0d\u652f\u6301\u5f53\u524d\u4ea4\u6613\'};"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/ellison/project/utils/BBBBBBB$2;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-static {v2}, Lcom/ellison/project/utils/BBBBBBB;->access$000(Lcom/ellison/project/utils/BBBBBBB;)Landroid/webkit/WebView;

    move-result-object v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:function BBBBBBB(){"

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "};BBBBBBB();"

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
