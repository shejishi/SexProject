.class public Lcom/lzy/okgo/request/OptionsRequest;
.super Lcom/lzy/okgo/request/base/BodyRequest;
.source "OptionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/request/base/BodyRequest<",
        "TT;",
        "Lcom/lzy/okgo/request/OptionsRequest<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/OptionsRequest;->generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "OPTIONS"

    .line 47
    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/okgo/request/OptionsRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/lzy/okgo/request/OptionsRequest;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public getMethod()Lcom/lzy/okgo/model/HttpMethod;
    .locals 1

    .line 41
    sget-object v0, Lcom/lzy/okgo/model/HttpMethod;->OPTIONS:Lcom/lzy/okgo/model/HttpMethod;

    return-object v0
.end method