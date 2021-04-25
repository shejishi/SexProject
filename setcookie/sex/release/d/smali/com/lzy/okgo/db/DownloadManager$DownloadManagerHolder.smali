.class Lcom/lzy/okgo/db/DownloadManager$DownloadManagerHolder;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/db/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/lzy/okgo/db/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/lzy/okgo/db/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzy/okgo/db/DownloadManager;-><init>(Lcom/lzy/okgo/db/DownloadManager$1;)V

    sput-object v0, Lcom/lzy/okgo/db/DownloadManager$DownloadManagerHolder;->instance:Lcom/lzy/okgo/db/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/lzy/okgo/db/DownloadManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/lzy/okgo/db/DownloadManager$DownloadManagerHolder;->instance:Lcom/lzy/okgo/db/DownloadManager;

    return-object v0
.end method
