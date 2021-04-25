.class public Lcom/lzy/okgo/request/base/ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;,
        Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lokhttp3/RequestBody;"
    }
.end annotation


# instance fields
.field private callback:Lcom/lzy/okgo/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private interceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

.field private requestBody:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lokhttp3/RequestBody;Lcom/lzy/okgo/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    .line 50
    iput-object p2, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->callback:Lcom/lzy/okgo/callback/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->interceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->onProgress(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/callback/Callback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->callback:Lcom/lzy/okgo/callback/Callback;

    return-object p0
.end method

.method private onProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;-><init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lcom/lzy/okgo/utils/HttpUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public setInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->interceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;-><init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lokio/Sink;)V

    .line 74
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 76
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
