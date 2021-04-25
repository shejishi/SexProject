.class public final enum Lcom/lzy/okgo/model/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/okgo/model/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum DELETE:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum GET:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum HEAD:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum OPTIONS:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum PATCH:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum POST:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum PUT:Lcom/lzy/okgo/model/HttpMethod;

.field public static final enum TRACE:Lcom/lzy/okgo/model/HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->GET:Lcom/lzy/okgo/model/HttpMethod;

    .line 30
    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->POST:Lcom/lzy/okgo/model/HttpMethod;

    .line 32
    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "PUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->PUT:Lcom/lzy/okgo/model/HttpMethod;

    .line 34
    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->DELETE:Lcom/lzy/okgo/model/HttpMethod;

    .line 36
    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "HEAD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->HEAD:Lcom/lzy/okgo/model/HttpMethod;

    .line 38
    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "PATCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->PATCH:Lcom/lzy/okgo/model/HttpMethod;

    .line 40
    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "OPTIONS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->OPTIONS:Lcom/lzy/okgo/model/HttpMethod;

    .line 42
    new-instance v0, Lcom/lzy/okgo/model/HttpMethod;

    const-string v1, "TRACE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v1}, Lcom/lzy/okgo/model/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lzy/okgo/model/HttpMethod;->TRACE:Lcom/lzy/okgo/model/HttpMethod;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/lzy/okgo/model/HttpMethod;

    .line 27
    sget-object v10, Lcom/lzy/okgo/model/HttpMethod;->GET:Lcom/lzy/okgo/model/HttpMethod;

    aput-object v10, v1, v2

    sget-object v2, Lcom/lzy/okgo/model/HttpMethod;->POST:Lcom/lzy/okgo/model/HttpMethod;

    aput-object v2, v1, v3

    sget-object v2, Lcom/lzy/okgo/model/HttpMethod;->PUT:Lcom/lzy/okgo/model/HttpMethod;

    aput-object v2, v1, v4

    sget-object v2, Lcom/lzy/okgo/model/HttpMethod;->DELETE:Lcom/lzy/okgo/model/HttpMethod;

    aput-object v2, v1, v5

    sget-object v2, Lcom/lzy/okgo/model/HttpMethod;->HEAD:Lcom/lzy/okgo/model/HttpMethod;

    aput-object v2, v1, v6

    sget-object v2, Lcom/lzy/okgo/model/HttpMethod;->PATCH:Lcom/lzy/okgo/model/HttpMethod;

    aput-object v2, v1, v7

    sget-object v2, Lcom/lzy/okgo/model/HttpMethod;->OPTIONS:Lcom/lzy/okgo/model/HttpMethod;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/lzy/okgo/model/HttpMethod;->$VALUES:[Lcom/lzy/okgo/model/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/lzy/okgo/model/HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okgo/model/HttpMethod;
    .locals 1

    .line 27
    const-class v0, Lcom/lzy/okgo/model/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/model/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/lzy/okgo/model/HttpMethod;
    .locals 1

    .line 27
    sget-object v0, Lcom/lzy/okgo/model/HttpMethod;->$VALUES:[Lcom/lzy/okgo/model/HttpMethod;

    invoke-virtual {v0}, [Lcom/lzy/okgo/model/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okgo/model/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public hasBody()Z
    .locals 3

    .line 56
    sget-object v0, Lcom/lzy/okgo/model/HttpMethod$1;->$SwitchMap$com$lzy$okgo$model$HttpMethod:[I

    invoke-virtual {p0}, Lcom/lzy/okgo/model/HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/lzy/okgo/model/HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method
