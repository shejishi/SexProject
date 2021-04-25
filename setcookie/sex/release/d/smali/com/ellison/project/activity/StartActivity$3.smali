.class Lcom/ellison/project/activity/StartActivity$3;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/activity/StartActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 129
    iput-object p1, p0, Lcom/ellison/project/activity/StartActivity$3;->this$0:Lcom/ellison/project/activity/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/ellison/project/activity/StartActivity$3;->this$0:Lcom/ellison/project/activity/StartActivity;

    invoke-static {p1}, Lcom/ellison/project/activity/StartActivity;->access$000(Lcom/ellison/project/activity/StartActivity;)Z

    .line 133
    iget-object p1, p0, Lcom/ellison/project/activity/StartActivity$3;->this$0:Lcom/ellison/project/activity/StartActivity;

    invoke-virtual {p1}, Lcom/ellison/project/activity/StartActivity;->finish()V

    return-void
.end method
