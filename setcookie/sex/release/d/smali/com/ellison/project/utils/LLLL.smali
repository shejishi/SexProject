.class public Lcom/ellison/project/utils/LLLL;
.super Ljava/lang/Object;
.source "LLLL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ellison/project/utils/LLLL$LLLL_2;,
        Lcom/ellison/project/utils/LLLL$NoLi;,
        Lcom/ellison/project/utils/LLLL$LL_I;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LIFT_CALLBACK_NAME:Ljava/lang/String; = "lcsmscodenotificationservice"

.field public static final FILTER_SERVICE_TO_ACT:Ljava/lang/String; = "lcsmscodenotificationservice_filter_s_a"

.field private static checkAccessState:Z

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public static mInf:Lcom/ellison/project/utils/LLLL$LL_I;

.field public static sCusTomRegex:Ljava/lang/String;

.field public static sListenState:Z

.field public static sMaxSmsCodeLen:I

.field public static sMinSmsCodeLen:I

.field public static sSmsCodeOnlyNumber:Z

.field public static sSmsCodeSign:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/ellison/project/utils/LLLL$LLLL_2;

    invoke-direct {v0}, Lcom/ellison/project/utils/LLLL$LLLL_2;-><init>()V

    sput-object v0, Lcom/ellison/project/utils/LLLL;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/ellison/project/utils/LLLL;->sCusTomRegex:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/ellison/project/utils/LLLL;->sListenState:Z

    const/16 v1, 0x8

    .line 32
    sput v1, Lcom/ellison/project/utils/LLLL;->sMaxSmsCodeLen:I

    const/4 v1, 0x4

    .line 33
    sput v1, Lcom/ellison/project/utils/LLLL;->sMinSmsCodeLen:I

    .line 34
    sput-boolean v0, Lcom/ellison/project/utils/LLLL;->sSmsCodeOnlyNumber:Z

    const-string v0, "((\u9a8c\u8bc1\u7801)|(\u6821\u9a8c\u7801))"

    .line 35
    sput-object v0, Lcom/ellison/project/utils/LLLL;->sSmsCodeSign:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancle()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/ellison/project/utils/LLLL;->sListenState:Z

    const-string v0, "lcsmscodenotificationservice"

    .line 46
    invoke-static {v0}, Lcom/ellison/project/activity/StartActivity;->deleteLLL(Ljava/lang/String;)Z

    .line 48
    :try_start_0
    sget-object v0, Lcom/ellison/project/utils/LLLL;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ellison/project/activity/StartActivity;->deleteRRR(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static checkMaxNum(I)V
    .locals 0

    .line 74
    sput p0, Lcom/ellison/project/utils/LLLL;->sMaxSmsCodeLen:I

    return-void
.end method

.method public static checkMinNum(I)V
    .locals 0

    .line 78
    sput p0, Lcom/ellison/project/utils/LLLL;->sMinSmsCodeLen:I

    return-void
.end method

.method public static checkSSSNum(Z)V
    .locals 0

    .line 70
    sput-boolean p0, Lcom/ellison/project/utils/LLLL;->sSmsCodeOnlyNumber:Z

    return-void
.end method

.method public static checkSign(Ljava/lang/String;)V
    .locals 0

    .line 82
    sput-object p0, Lcom/ellison/project/utils/LLLL;->sSmsCodeSign:Ljava/lang/String;

    return-void
.end method

.method public static filter(Ljava/lang/String;)V
    .locals 0

    .line 66
    sput-object p0, Lcom/ellison/project/utils/LLLL;->sCusTomRegex:Ljava/lang/String;

    return-void
.end method

.method public static listener(Lcom/ellison/project/utils/LLLL$LL_I;)V
    .locals 0

    .line 62
    sput-object p0, Lcom/ellison/project/utils/LLLL;->mInf:Lcom/ellison/project/utils/LLLL$LL_I;

    return-void
.end method

.method public static restart()V
    .locals 1

    .line 86
    invoke-static {}, Lcom/ellison/project/MyApplication;->getInstance()Lcom/ellison/project/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ellison/project/MyApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ellison/project/utils/LLLL;->toggleNotificationListenerService(Landroid/content/Context;)V

    return-void
.end method

.method public static start()V
    .locals 4

    .line 55
    invoke-static {}, Lcom/ellison/project/utils/LLLL;->cancle()V

    const/4 v0, 0x1

    .line 56
    sput-boolean v0, Lcom/ellison/project/utils/LLLL;->sListenState:Z

    .line 57
    sget-object v1, Lcom/ellison/project/utils/LLLL;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "lcsmscodenotificationservice_filter_s_a"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {v1, v2, v0}, Lcom/ellison/project/activity/StartActivity;->addRRR(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    return-void
.end method

.method private static toggleNotificationListenerService(Landroid/content/Context;)V
    .locals 5

    .line 38
    const-class v0, Lcom/ellison/project/utils/LLLL;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 39
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 41
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method
