.class public Lcom/lzy/okgo/db/CacheManager;
.super Lcom/lzy/okgo/db/BaseDao;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/db/CacheManager$CacheManagerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/db/BaseDao<",
        "Lcom/lzy/okgo/cache/CacheEntity<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/lzy/okgo/db/DBHelper;

    invoke-direct {v0}, Lcom/lzy/okgo/db/DBHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okgo/db/BaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okgo/db/CacheManager$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/lzy/okgo/db/CacheManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lzy/okgo/db/CacheManager;
    .locals 1

    .line 37
    invoke-static {}, Lcom/lzy/okgo/db/CacheManager$CacheManagerHolder;->access$000()Lcom/lzy/okgo/db/CacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/lzy/okgo/db/CacheManager;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "key=?"

    .line 70
    invoke-virtual {p0, p1, v1}, Lcom/lzy/okgo/db/CacheManager;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/lzy/okgo/cache/CacheEntity;

    :cond_1
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;>;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/lzy/okgo/db/CacheManager;->queryAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 34
    check-cast p1, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/CacheManager;->getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "cache"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/CacheManager;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "key=?"

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/lzy/okgo/db/CacheManager;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/String;Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 99
    invoke-virtual {p2, p1}, Lcom/lzy/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/lzy/okgo/db/CacheManager;->replace(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
