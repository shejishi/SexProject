.class Lcom/ellison/project/activity/PayActivity$2;
.super Landroid/webkit/WebViewClient;
.source "PayActivity.java"


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


# direct methods
.method constructor <init>(Lcom/ellison/project/activity/PayActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/ellison/project/activity/PayActivity$2;->this$0:Lcom/ellison/project/activity/PayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 113
    iget-object p1, p0, Lcom/ellison/project/activity/PayActivity$2;->this$0:Lcom/ellison/project/activity/PayActivity;

    invoke-static {p1}, Lcom/ellison/project/activity/PayActivity;->access$200(Lcom/ellison/project/activity/PayActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/ellison/project/activity/PayActivity$2;->this$0:Lcom/ellison/project/activity/PayActivity;

    invoke-static {p1}, Lcom/ellison/project/activity/PayActivity;->access$300(Lcom/ellison/project/activity/PayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
