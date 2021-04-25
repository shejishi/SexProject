.class Lcom/ellison/project/activity/StartActivity$5;
.super Lcom/just/agentweb/WebChromeClient;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ellison/project/activity/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ellison/project/activity/StartActivity;


# direct methods
.method constructor <init>(Lcom/ellison/project/activity/StartActivity;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/ellison/project/activity/StartActivity$5;->this$0:Lcom/ellison/project/activity/StartActivity;

    invoke-direct {p0}, Lcom/just/agentweb/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 312
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
