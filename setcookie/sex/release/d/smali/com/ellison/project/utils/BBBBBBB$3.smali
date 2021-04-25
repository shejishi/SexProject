.class Lcom/ellison/project/utils/BBBBBBB$3;
.super Ljava/lang/Object;
.source "BBBBBBB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ellison/project/utils/BBBBBBB;->hideUI()V
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

    .line 89
    iput-object p1, p0, Lcom/ellison/project/utils/BBBBBBB$3;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB$3;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-static {v0}, Lcom/ellison/project/utils/BBBBBBB;->access$100(Lcom/ellison/project/utils/BBBBBBB;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/ellison/project/utils/BBBBBBB$3;->this$0:Lcom/ellison/project/utils/BBBBBBB;

    invoke-static {v0}, Lcom/ellison/project/utils/BBBBBBB;->access$200(Lcom/ellison/project/utils/BBBBBBB;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
