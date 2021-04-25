.class public abstract Lcom/lzy/okgo/request/base/NoBodyRequest;
.super Lcom/lzy/okgo/request/base/Request;
.source "NoBodyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/NoBodyRequest;",
        ">",
        "Lcom/lzy/okgo/request/base/Request<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10a9768823f2c83cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/Request;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateRequestBody()Lokhttp3/RequestBody;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/lzy/okgo/request/base/NoBodyRequest;->baseUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/lzy/okgo/request/base/NoBodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/NoBodyRequest;->url:Ljava/lang/String;

    .line 30
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/lzy/okgo/request/base/NoBodyRequest;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->appendHeaders(Lokhttp3/Request$Builder;Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method
