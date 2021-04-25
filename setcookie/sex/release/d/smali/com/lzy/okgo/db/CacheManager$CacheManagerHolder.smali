.class Lcom/lzy/okgo/db/CacheManager$CacheManagerHolder;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/db/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/lzy/okgo/db/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/lzy/okgo/db/CacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzy/okgo/db/CacheManager;-><init>(Lcom/lzy/okgo/db/CacheManager$1;)V

    sput-object v0, Lcom/lzy/okgo/db/CacheManager$CacheManagerHolder;->instance:Lcom/lzy/okgo/db/CacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/lzy/okgo/db/CacheManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/lzy/okgo/db/CacheManager$CacheManagerHolder;->instance:Lcom/lzy/okgo/db/CacheManager;

    return-object v0
.end method
