.class public Lcom/lzy/okgo/exception/OkGoException;
.super Ljava/lang/Exception;
.source "OkGoException.java"


# static fields
.field private static final serialVersionUID:J = -0x77ebb3f11aa331baL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static BREAKPOINT_EXPIRED()Lcom/lzy/okgo/exception/OkGoException;
    .locals 2

    .line 43
    new-instance v0, Lcom/lzy/okgo/exception/OkGoException;

    const-string v1, "breakpoint file has expired!"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/exception/OkGoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static BREAKPOINT_NOT_EXIST()Lcom/lzy/okgo/exception/OkGoException;
    .locals 2

    .line 39
    new-instance v0, Lcom/lzy/okgo/exception/OkGoException;

    const-string v1, "breakpoint file does not exist!"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/exception/OkGoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static UNKNOWN()Lcom/lzy/okgo/exception/OkGoException;
    .locals 2

    .line 35
    new-instance v0, Lcom/lzy/okgo/exception/OkGoException;

    const-string v1, "unknown exception!"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/exception/OkGoException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
