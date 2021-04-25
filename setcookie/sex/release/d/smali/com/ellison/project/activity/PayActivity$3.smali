.class Lcom/ellison/project/activity/PayActivity$3;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/activity/PayActivity;->initUiAndListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ellison/project/activity/PayActivity;

.field final synthetic val$actionStr:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/ellison/project/activity/PayActivity;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/ellison/project/activity/PayActivity$3;->this$0:Lcom/ellison/project/activity/PayActivity;

    iput-object p2, p0, Lcom/ellison/project/activity/PayActivity$3;->val$actionStr:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/ellison/project/activity/PayActivity$3;->this$0:Lcom/ellison/project/activity/PayActivity;

    invoke-static {p1}, Lcom/ellison/project/activity/PayActivity;->access$400(Lcom/ellison/project/activity/PayActivity;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object p2, p0, Lcom/ellison/project/activity/PayActivity$3;->val$actionStr:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 122
    sget-object p1, Lcom/ellison/project/activity/PayActivity;->TAG:Ljava/lang/String;

    const-string p2, "setWebViewClient \u8c03\u7528js"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
