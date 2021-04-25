.class Lcom/ellison/project/utils/LLLL$LLLL_2;
.super Landroid/content/BroadcastReceiver;
.source "LLLL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ellison/project/utils/LLLL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LLLL_2"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lcsmscodenotificationservice_filter_s_a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "order"

    .line 145
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "serviceCreate"

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 148
    sget-object p1, Lcom/ellison/project/utils/LLLL;->mInf:Lcom/ellison/project/utils/LLLL$LL_I;

    if-eqz p1, :cond_2

    .line 149
    sget-object p1, Lcom/ellison/project/utils/LLLL;->mInf:Lcom/ellison/project/utils/LLLL$LL_I;

    invoke-interface {p1}, Lcom/ellison/project/utils/LLLL$LL_I;->startFinish()V

    goto :goto_0

    :cond_0
    const-string p2, "serviceDestroy"

    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/ellison/project/utils/LLLL;->mInf:Lcom/ellison/project/utils/LLLL$LL_I;

    if-eqz p1, :cond_2

    .line 152
    sget-object p1, Lcom/ellison/project/utils/LLLL;->mInf:Lcom/ellison/project/utils/LLLL$LL_I;

    invoke-interface {p1}, Lcom/ellison/project/utils/LLLL$LL_I;->destory()V

    goto :goto_0

    :cond_1
    const-string p1, "code"

    .line 155
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "notice"

    .line 156
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 157
    sget-object v0, Lcom/ellison/project/utils/LLLL;->mInf:Lcom/ellison/project/utils/LLLL$LL_I;

    if-eqz v0, :cond_2

    .line 158
    sget-object v0, Lcom/ellison/project/utils/LLLL;->mInf:Lcom/ellison/project/utils/LLLL$LL_I;

    invoke-interface {v0, p2, p1}, Lcom/ellison/project/utils/LLLL$LL_I;->getContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
