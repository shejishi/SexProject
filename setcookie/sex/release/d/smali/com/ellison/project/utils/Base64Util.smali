.class public Lcom/ellison/project/utils/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Encrypt([B)Ljava/lang/String;
    .locals 1

    .line 22
    new-instance v0, Lcom/ellison/project/utils/base64/BASE64Encoder;

    invoke-direct {v0}, Lcom/ellison/project/utils/base64/BASE64Encoder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ellison/project/utils/base64/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
