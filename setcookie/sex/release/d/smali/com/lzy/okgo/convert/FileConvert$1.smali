.class Lcom/lzy/okgo/convert/FileConvert$1;
.super Ljava/lang/Object;
.source "FileConvert.java"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/convert/FileConvert;->convertResponse(Lokhttp3/Response;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/convert/FileConvert;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/convert/FileConvert;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/lzy/okgo/convert/FileConvert$1;->this$0:Lcom/lzy/okgo/convert/FileConvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/lzy/okgo/convert/FileConvert$1;->this$0:Lcom/lzy/okgo/convert/FileConvert;

    invoke-static {v0, p1}, Lcom/lzy/okgo/convert/FileConvert;->access$000(Lcom/lzy/okgo/convert/FileConvert;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
