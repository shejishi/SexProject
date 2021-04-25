.class public abstract Lcom/lzy/okgo/request/base/BodyRequest;
.super Lcom/lzy/okgo/request/base/Request;
.source "BodyRequest.java"

# interfaces
.implements Lcom/lzy/okgo/request/base/HasBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/BodyRequest;",
        ">",
        "Lcom/lzy/okgo/request/base/Request<",
        "TT;TR;>;",
        "Lcom/lzy/okgo/request/base/HasBody<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x59a399aa9376760dL


# instance fields
.field protected bs:[B

.field protected content:Ljava/lang/String;

.field protected transient file:Ljava/io/File;

.field protected isMultipart:Z

.field protected isSpliceUrl:Z

.field protected transient mediaType:Lokhttp3/MediaType;

.field protected requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/Request;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    .line 55
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 230
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 225
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)TR;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putFileParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic addFileParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/model/HttpParams$FileWrapper;",
            ">;)TR;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 204
    iget-boolean v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v1, v1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->url:Ljava/lang/String;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_1

    return-object v0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v1, :cond_4

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-boolean v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->generateMultipartRequestBody(Lcom/lzy/okgo/model/HttpParams;Z)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 3

    :try_start_0
    const-string v0, "Content-Length"

    .line 215
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    invoke-static {p1}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 219
    :goto_0
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->appendHeaders(Lokhttp3/Request$Builder;Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public isMultipart(Z)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 65
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    return-object p0
.end method

.method public bridge synthetic isMultipart(Z)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart(Z)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public isSpliceUrl(Z)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 72
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    return-object p0
.end method

.method public bridge synthetic isSpliceUrl(Z)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl(Z)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    return-object p0
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upBytes([B)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TR;"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    .line 171
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upBytes([BLokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    .line 180
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upBytes([B)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upBytes([B)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upBytes([BLokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upBytes([BLokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upFile(Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okgo/utils/HttpUtils;->guessMimeType(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upFile(Ljava/io/File;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    .line 198
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upFile(Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upFile(Ljava/io/File;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upFile(Ljava/io/File;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 144
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upJson(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")TR;"
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 162
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upJson(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 153
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upRequestBody(Lokhttp3/RequestBody;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")TR;"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->requestBody:Lokhttp3/RequestBody;

    return-object p0
.end method

.method public bridge synthetic upRequestBody(Lokhttp3/RequestBody;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upRequestBody(Lokhttp3/RequestBody;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upString(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 123
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upString(Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upString(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upString(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upString(Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method
