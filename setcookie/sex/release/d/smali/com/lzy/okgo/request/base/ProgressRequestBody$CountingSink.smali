.class final Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/request/base/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CountingSink"
.end annotation


# instance fields
.field private progress:Lcom/lzy/okgo/model/Progress;

.field final synthetic this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lokio/Sink;)V
    .locals 2

    .line 84
    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 85
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 86
    new-instance p2, Lcom/lzy/okgo/model/Progress;

    invoke-direct {p2}, Lcom/lzy/okgo/model/Progress;-><init>()V

    iput-object p2, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->progress:Lcom/lzy/okgo/model/Progress;

    .line 87
    invoke-virtual {p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 94
    iget-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->progress:Lcom/lzy/okgo/model/Progress;

    new-instance v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;-><init>(Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;)V

    invoke-static {p1, p2, p3, v0}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$Action;)Lcom/lzy/okgo/model/Progress;

    return-void
.end method
