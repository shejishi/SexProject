.class Lcom/ellison/project/utils/BBBBBBB$5;
.super Ljava/lang/Object;
.source "BBBBBBB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/utils/BBBBBBB;->toAccountLogin(Ljava/lang/String;)V
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

    .line 153
    iput-object p1, p0, Lcom/ellison/project/utils/BBBBBBB$5;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    iput-object p2, p0, Lcom/ellison/project/utils/BBBBBBB$5;->val$paramString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB$5;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-static {v0}, Lcom/ellison/project/utils/BBBBBBB;->access$000(Lcom/ellison/project/utils/BBBBBBB;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ellison/project/utils/BBBBBBB$5;->val$paramString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
