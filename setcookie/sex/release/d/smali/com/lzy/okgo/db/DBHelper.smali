.class Lcom/lzy/okgo/db/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DB_CACHE_NAME:Ljava/lang/String; = "okgo.db"

.field private static final DB_CACHE_VERSION:I = 0x1

.field static final TABLE_CACHE:Ljava/lang/String; = "cache"

.field static final TABLE_COOKIE:Ljava/lang/String; = "cookie"

.field static final TABLE_DOWNLOAD:Ljava/lang/String; = "download"

.field static final TABLE_UPLOAD:Ljava/lang/String; = "upload"

.field static final lock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

.field private uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/lzy/okgo/db/DBHelper;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzy/okgo/db/DBHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "okgo.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p1

    .line 60
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    new-instance v1, Lcom/lzy/okgo/db/TableEntity;

    const-string v2, "cache"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 51
    new-instance v1, Lcom/lzy/okgo/db/TableEntity;

    const-string v2, "cookie"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 52
    new-instance v1, Lcom/lzy/okgo/db/TableEntity;

    const-string v4, "download"

    invoke-direct {v1, v4}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 53
    new-instance v1, Lcom/lzy/okgo/db/TableEntity;

    const-string v4, "upload"

    invoke-direct {v1, v4}, Lcom/lzy/okgo/db/TableEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    .line 62
    iget-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v5, "key"

    const-string v6, "VARCHAR"

    invoke-direct {v4, v5, v6, v3, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v5, "localExpire"

    const-string v7, "INTEGER"

    invoke-direct {v4, v5, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v5, "head"

    const-string v8, "BLOB"

    invoke-direct {v4, v5, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v5, "data"

    invoke-direct {v4, v5, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 67
    iget-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v5, "host"

    invoke-direct {v4, v5, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v9, "name"

    invoke-direct {v4, v9, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v10, "domain"

    invoke-direct {v4, v10, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v4, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v4, v2, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    filled-new-array {v5, v9, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/lzy/okgo/db/ColumnEntity;-><init>([Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 73
    iget-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v4, "tag"

    invoke-direct {v2, v4, v6, v3, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v5, "url"

    invoke-direct {v2, v5, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v9, "folder"

    invoke-direct {v2, v9, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v10, "filePath"

    invoke-direct {v2, v10, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v11, "fileName"

    invoke-direct {v2, v11, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v12, "fraction"

    invoke-direct {v2, v12, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v13, "totalSize"

    invoke-direct {v2, v13, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v14, "currentSize"

    invoke-direct {v2, v14, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v15, "status"

    invoke-direct {v2, v15, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "priority"

    invoke-direct {v2, v3, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 p1, v3

    const-string v3, "date"

    invoke-direct {v2, v3, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v16, v3

    const-string v3, "request"

    invoke-direct {v2, v3, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v17, v3

    const-string v3, "extra1"

    invoke-direct {v2, v3, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v18, v3

    const-string v3, "extra2"

    invoke-direct {v2, v3, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v19, v3

    const-string v3, "extra3"

    invoke-direct {v2, v3, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    .line 89
    iget-object v1, v0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v6, v3, v3}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v2, v5, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v2, v9, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v2, v10, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v2, v11, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v2, v12, v6}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v2, v13, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v2, v14, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    invoke-direct {v2, v15, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v3, v16

    invoke-direct {v2, v3, v7}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v3, v17

    invoke-direct {v2, v3, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v3, v18

    invoke-direct {v2, v3, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    move-object/from16 v3, v19

    invoke-direct {v2, v3, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    move-result-object v1

    new-instance v2, Lcom/lzy/okgo/db/ColumnEntity;

    const-string v3, "extra3"

    invoke-direct {v2, v3, v8}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/db/TableEntity;->addColumn(Lcom/lzy/okgo/db/ColumnEntity;)Lcom/lzy/okgo/db/TableEntity;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/db/TableEntity;->buildTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okgo/db/DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 116
    iget-object p2, p0, Lcom/lzy/okgo/db/DBHelper;->cacheTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-static {p1, p2}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object p2, p0, Lcom/lzy/okgo/db/DBHelper;->cookieTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-static {p1, p2}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "DROP TABLE IF EXISTS cookie"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    :cond_1
    iget-object p2, p0, Lcom/lzy/okgo/db/DBHelper;->downloadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-static {p1, p2}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :cond_2
    iget-object p2, p0, Lcom/lzy/okgo/db/DBHelper;->uploadTableEntity:Lcom/lzy/okgo/db/TableEntity;

    invoke-static {p1, p2}, Lcom/lzy/okgo/db/DBUtils;->isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "DROP TABLE IF EXISTS upload"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
