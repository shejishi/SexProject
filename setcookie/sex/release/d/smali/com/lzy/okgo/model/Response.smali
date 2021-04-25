.class public final Lcom/lzy/okgo/model/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isFromCache:Z

.field private rawCall:Lokhttp3/Call;

.field private rawResponse:Lokhttp3/Response;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/lzy/okgo/model/Response;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Response;-><init>()V

    .line 49
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/Response;->setFromCache(Z)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/Response;->setRawCall(Lokhttp3/Call;)V

    .line 51
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/model/Response;->setRawResponse(Lokhttp3/Response;)V

    .line 52
    invoke-virtual {v0, p3}, Lcom/lzy/okgo/model/Response;->setException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/lzy/okgo/model/Response;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Response;-><init>()V

    .line 40
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/Response;->setFromCache(Z)V

    .line 41
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/Response;->setBody(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/model/Response;->setRawCall(Lokhttp3/Call;)V

    .line 43
    invoke-virtual {v0, p3}, Lcom/lzy/okgo/model/Response;->setRawResponse(Lokhttp3/Response;)V

    return-object v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public code()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getRawCall()Lokhttp3/Call;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawCall:Lokhttp3/Call;

    return-object v0
.end method

.method public getRawResponse()Lokhttp3/Response;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/lzy/okgo/model/Response;->isFromCache:Z

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/lzy/okgo/model/Response;->body:Ljava/lang/Object;

    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/lzy/okgo/model/Response;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public setFromCache(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/lzy/okgo/model/Response;->isFromCache:Z

    return-void
.end method

.method public setRawCall(Lokhttp3/Call;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/lzy/okgo/model/Response;->rawCall:Lokhttp3/Call;

    return-void
.end method

.method public setRawResponse(Lokhttp3/Response;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    return-void
.end method
