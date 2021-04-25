.class Lcom/lzy/okgo/OkGo$OkGoHolder;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/OkGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OkGoHolder"
.end annotation


# static fields
.field private static holder:Lcom/lzy/okgo/OkGo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Lcom/lzy/okgo/OkGo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzy/okgo/OkGo;-><init>(Lcom/lzy/okgo/OkGo$1;)V

    sput-object v0, Lcom/lzy/okgo/OkGo$OkGoHolder;->holder:Lcom/lzy/okgo/OkGo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 94
    sget-object v0, Lcom/lzy/okgo/OkGo$OkGoHolder;->holder:Lcom/lzy/okgo/OkGo;

    return-object v0
.end method
