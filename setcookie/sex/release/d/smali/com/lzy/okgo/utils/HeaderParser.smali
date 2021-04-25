.class public Lcom/lzy/okgo/utils/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCacheHeaders(Lcom/lzy/okgo/request/base/Request;Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/cache/CacheMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/request/base/Request;",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;",
            "Lcom/lzy/okgo/cache/CacheMode;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 139
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    if-ne p2, v0, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "ETag"

    .line 142
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "If-None-Match"

    .line 143
    invoke-virtual {p0, v0, p2}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_0
    const-string p2, "Last-Modified"

    .line 144
    invoke-virtual {p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okgo/model/HttpHeaders;->getLastModified(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 145
    invoke-static {p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "If-Modified-Since"

    invoke-virtual {p0, p2, p1}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_1
    return-void
.end method

.method public static createCacheEntity(Lokhttp3/Headers;Ljava/lang/Object;Lcom/lzy/okgo/cache/CacheMode;Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Headers;",
            "TT;",
            "Lcom/lzy/okgo/cache/CacheMode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    if-ne p2, v0, :cond_9

    const-string p2, "Date"

    .line 64
    invoke-virtual {p0, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/lzy/okgo/model/HttpHeaders;->getDate(Ljava/lang/String;)J

    move-result-wide v0

    const-string p2, "Expires"

    .line 65
    invoke-virtual {p0, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/lzy/okgo/model/HttpHeaders;->getExpiration(Ljava/lang/String;)J

    move-result-wide v2

    const-string p2, "Cache-Control"

    .line 66
    invoke-virtual {p0, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "Pragma"

    invoke-virtual {p0, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/lzy/okgo/model/HttpHeaders;->getCacheControl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_0

    cmp-long v4, v2, v6

    if-gtz v4, :cond_0

    return-object v5

    .line 72
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 73
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v4, p2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v6

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 75
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v10, "no-cache"

    .line 76
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "no-store"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    const-string v10, "max-age="

    .line 79
    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x8

    .line 82
    :try_start_0
    invoke-virtual {p2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p2, v8, v6

    if-gtz p2, :cond_1

    return-object v5

    :catch_0
    move-exception p2

    .line 86
    invoke-static {p2}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v5

    :cond_4
    move-wide v8, v6

    .line 93
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p2, v0, v6

    if-lez p2, :cond_6

    goto :goto_2

    :cond_6
    move-wide v0, v4

    :goto_2
    cmp-long p2, v8, v6

    if-lez p2, :cond_7

    const-wide/16 v2, 0x3e8

    mul-long v8, v8, v2

    add-long v2, v0, v8

    goto :goto_3

    :cond_7
    cmp-long p2, v2, v6

    if-ltz p2, :cond_8

    goto :goto_3

    :cond_8
    move-wide v2, v6

    goto :goto_3

    .line 104
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 108
    :goto_3
    new-instance p2, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {p2}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    .line 109
    invoke-virtual {p0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 114
    :cond_a
    new-instance p0, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-direct {p0}, Lcom/lzy/okgo/cache/CacheEntity;-><init>()V

    .line 115
    invoke-virtual {p0, p3}, Lcom/lzy/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/CacheEntity;->setData(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/lzy/okgo/cache/CacheEntity;->setLocalExpire(J)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/lzy/okgo/cache/CacheEntity;->setResponseHeaders(Lcom/lzy/okgo/model/HttpHeaders;)V

    return-object p0
.end method
