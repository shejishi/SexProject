.class Lcom/ellison/project/utils/AndroidInterface$1;
.super Ljava/lang/Object;
.source "AndroidInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/utils/AndroidInterface;->goToPay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ellison/project/utils/AndroidInterface;


# direct methods
.method constructor <init>(Lcom/ellison/project/utils/AndroidInterface;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ellison/project/utils/AndroidInterface$1;->this$0:Lcom/ellison/project/utils/AndroidInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ellison/project/utils/AndroidInterface$1;->this$0:Lcom/ellison/project/utils/AndroidInterface;

    invoke-static {v0}, Lcom/ellison/project/utils/AndroidInterface;->access$000(Lcom/ellison/project/utils/AndroidInterface;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ellison/project/activity/FakePayActivity;->enterPay(Landroid/app/Activity;)V

    return-void
.end method
