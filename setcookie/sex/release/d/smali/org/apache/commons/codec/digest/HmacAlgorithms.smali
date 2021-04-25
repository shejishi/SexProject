.class public final enum Lorg/apache/commons/codec/digest/HmacAlgorithms;
.super Ljava/lang/Enum;
.source "HmacAlgorithms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/codec/digest/HmacAlgorithms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;


# instance fields
.field private final algorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 41
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_MD5"

    const/4 v2, 0x0

    const-string v3, "HmacMD5"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 49
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_SHA_1"

    const/4 v3, 0x1

    const-string v4, "HmacSHA1"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 57
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_SHA_256"

    const/4 v4, 0x2

    const-string v5, "HmacSHA256"

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 65
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_SHA_384"

    const/4 v5, 0x3

    const-string v6, "HmacSHA384"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 73
    new-instance v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_SHA_512"

    const/4 v6, 0x4

    const-string v7, "HmacSHA512"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 33
    sget-object v7, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

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

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1

    .line 33
    const-class v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-virtual {v0}, [Lorg/apache/commons/codec/digest/HmacAlgorithms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/codec/digest/HmacAlgorithms;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->algorithm:Ljava/lang/String;

    return-object v0
.end method
