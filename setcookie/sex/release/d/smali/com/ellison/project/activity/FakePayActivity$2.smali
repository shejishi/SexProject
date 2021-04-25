.class Lcom/ellison/project/activity/FakePayActivity$2;
.super Ljava/lang/Object;
.source "FakePayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/activity/FakePayActivity;->sendData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ellison/project/activity/FakePayActivity;


# direct methods
.method constructor <init>(Lcom/ellison/project/activity/FakePayActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/FakePayActivity;->access$100(Lcom/ellison/project/activity/FakePayActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/FakePayActivity;->access$108(Lcom/ellison/project/activity/FakePayActivity;)I

    .line 182
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/FakePayActivity;->access$200(Lcom/ellison/project/activity/FakePayActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/FakePayActivity;->access$300(Lcom/ellison/project/activity/FakePayActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    const-string v2, "\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/FakePayActivity;->access$408(Lcom/ellison/project/activity/FakePayActivity;)I

    .line 187
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/FakePayActivity;->access$400(Lcom/ellison/project/activity/FakePayActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/FakePayActivity;->access$500(Lcom/ellison/project/activity/FakePayActivity;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-static {v0}, Lcom/ellison/project/activity/PayResultActivity;->enterResult(Landroid/app/Activity;)V

    .line 191
    iget-object v0, p0, Lcom/ellison/project/activity/FakePayActivity$2;->this$0:Lcom/ellison/project/activity/FakePayActivity;

    invoke-virtual {v0}, Lcom/ellison/project/activity/FakePayActivity;->finish()V

    :goto_0
    return-void
.end method
