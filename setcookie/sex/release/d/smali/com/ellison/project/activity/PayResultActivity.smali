.class public Lcom/ellison/project/activity/PayResultActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PayResultActivity.java"


# instance fields
.field protected mAgentWeb:Lcom/just/agentweb/AgentWeb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static enterResult(Landroid/app/Activity;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ellison/project/activity/PayResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "Y"

    .line 39
    invoke-static {p0, v0}, Lcom/ellison/project/utils/ConfigUtils;->setPayStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ellison/project/activity/PayResultActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getIEventHandler()Lcom/just/agentweb/IEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/IEventHandler;->back()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001f

    .line 45
    invoke-virtual {p0, p1}, Lcom/ellison/project/activity/PayResultActivity;->setContentView(I)V

    .line 47
    invoke-static {}, Lcom/just/agentweb/AgentWebSettingsImpl;->getInstance()Lcom/just/agentweb/AbsAgentWebSettings;

    move-result-object p1

    .line 48
    invoke-static {p0}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object v0

    const v1, 0x7f0700af

    .line 49
    invoke-virtual {p0, v1}, Lcom/ellison/project/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object v0

    const-string v1, "#FFFFFF"

    .line 50
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;->useDefaultIndicator(I)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setAgentWebWebSettings(Lcom/just/agentweb/IAgentWebSettings;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    const v0, 0x7f0a0020

    .line 53
    invoke-virtual {p1, v0, v3}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setMainFrameErrorView(II)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    sget-object v0, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 54
    invoke-virtual {p1, v0}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setSecurityType(Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    sget-object v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->ASK:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    .line 56
    invoke-virtual {p1, v0}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setOpenOtherPageWays(Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->createAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p1

    const-string v0, "http://td.jtengfi.cn/vip.html"

    .line 59
    invoke-virtual {p1, v0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p1

    iput-object p1, p0, Lcom/ellison/project/activity/PayResultActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ellison/project/activity/PayResultActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onDestroy()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/ellison/project/activity/PayResultActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ellison/project/activity/PayResultActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0, p1, p2}, Lcom/just/agentweb/AgentWeb;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ellison/project/activity/PayResultActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onPause()V

    .line 80
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ellison/project/activity/PayResultActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onResume()V

    .line 95
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
