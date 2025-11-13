.class public abstract Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    return-void
.end method

.method public static contentLength(Lokhttp3/Response;)J
    .locals 2

    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .locals 8

    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v0, v0, Lokhttp3/Request;->method:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public static parseSeconds(ILjava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p0, p0

    :catch_0
    return p0
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar$1;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 32

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const/4 v2, 0x1

    sget-object v3, Lokhttp3/CookieJar$1;->NO_COOKIES:Lokhttp3/CookieJar$1;

    move-object/from16 v4, p0

    if-ne v4, v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v3, "Set-Cookie"

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Headers;->size()I

    move-result v5

    const/4 v6, 0x0

    move v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v5, :cond_3

    invoke-virtual {v0, v8}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {v0, v8}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v8, v2

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v8, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v5, :cond_41

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x3b

    invoke-static {v10, v6, v13, v14}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v0

    const/16 v15, 0x3d

    invoke-static {v10, v6, v0, v15}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v7

    if-ne v7, v0, :cond_5

    move-object/from16 v27, v3

    move/from16 v28, v5

    move v5, v6

    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_2d

    :cond_5
    invoke-static {v6, v7, v10}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(IILjava/lang/String;)I

    move-result v15

    invoke-static {v15, v7, v10}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(IILjava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v15, :cond_8

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v27, v3

    const/16 v3, 0x1f

    if-le v2, v3, :cond_6

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_7

    :cond_6
    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x1

    add-int/2addr v14, v2

    move-object/from16 v3, v27

    goto :goto_5

    :goto_6
    const/4 v3, -0x1

    goto :goto_7

    :cond_8
    move-object/from16 v27, v3

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v14, -0x1

    :goto_7
    if-eq v14, v3, :cond_9

    :goto_8
    goto/16 :goto_2c

    :cond_9
    add-int/2addr v7, v2

    invoke-static {v7, v0, v10}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(IILjava/lang/String;)I

    move-result v2

    invoke-static {v2, v0, v10}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(IILjava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v3, :cond_c

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x1f

    if-le v14, v15, :cond_a

    const/16 v15, 0x7f

    if-lt v14, v15, :cond_b

    :cond_a
    const/4 v14, 0x1

    goto :goto_a

    :cond_b
    const/4 v14, 0x1

    add-int/2addr v7, v14

    goto :goto_9

    :goto_a
    move v3, v7

    :goto_b
    const/4 v7, -0x1

    goto :goto_c

    :cond_c
    const/4 v14, 0x1

    const/4 v3, -0x1

    goto :goto_b

    :goto_c
    if-eq v3, v7, :cond_d

    move/from16 v28, v5

    :goto_d
    const/4 v0, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2d

    :cond_d
    add-int/2addr v0, v14

    const-wide v17, 0xe677d21fdbffL

    move-wide/from16 v21, v17

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-wide/16 v19, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    :goto_e
    const-wide v28, 0x7fffffffffffffffL

    const-wide/high16 v30, -0x8000000000000000L

    if-ge v0, v13, :cond_1b

    const/16 v14, 0x3b

    invoke-static {v10, v0, v13, v14}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v15

    const/16 v14, 0x3d

    invoke-static {v10, v0, v15, v14}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    invoke-static {v0, v4, v10}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(IILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v4, v10}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(IILjava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-ge v4, v15, :cond_e

    const/4 v14, 0x1

    add-int/2addr v4, v14

    invoke-static {v4, v15, v10}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(IILjava/lang/String;)I

    move-result v4

    invoke-static {v4, v15, v10}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(IILjava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_e
    const-string v4, ""

    :goto_f
    const-string v14, "expires"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v4}, Lokhttp3/Cookie;->parseExpires(ILjava/lang/String;)J

    move-result-wide v21
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_10
    const/4 v4, 0x1

    const/16 v26, 0x1

    goto/16 :goto_12

    :cond_f
    const-string v14, "max-age"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v28, 0x0

    cmp-long v0, v19, v28

    if-gtz v0, :cond_10

    goto :goto_11

    :cond_10
    move-wide/from16 v30, v19

    :goto_11
    move-wide/from16 v19, v30

    goto :goto_10

    :catch_0
    move-exception v0

    move-object v14, v0

    :try_start_2
    const-string v0, "-?\\d+"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-wide/from16 v28, v30

    :cond_11
    move-wide/from16 v19, v28

    goto :goto_10

    :cond_12
    throw v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_13
    const-string v14, "domain"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    :try_start_3
    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_14
    invoke-static {v4}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    move-object v3, v0

    const/4 v4, 0x1

    const/16 v25, 0x0

    goto :goto_12

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_17
    const-string v14, "path"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object v7, v4

    :catch_1
    :cond_18
    const/4 v4, 0x1

    goto :goto_12

    :cond_19
    const-string/jumbo v4, "secure"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    const/16 v23, 0x1

    goto :goto_12

    :cond_1a
    const-string v4, "httponly"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v4, 0x1

    const/16 v24, 0x1

    :goto_12
    add-int/lit8 v0, v15, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_e

    :cond_1b
    cmp-long v0, v19, v30

    if-nez v0, :cond_1c

    move-wide/from16 v19, v30

    goto :goto_14

    :cond_1c
    const-wide/16 v13, -0x1

    cmp-long v0, v19, v13

    if-eqz v0, :cond_20

    const-wide v13, 0x20c49ba5e353f7L

    cmp-long v0, v19, v13

    if-gtz v0, :cond_1d

    const-wide/16 v13, 0x3e8

    mul-long v28, v19, v13

    :cond_1d
    add-long v28, v11, v28

    cmp-long v0, v28, v11

    if-ltz v0, :cond_1f

    cmp-long v0, v28, v17

    if-lez v0, :cond_1e

    goto :goto_13

    :cond_1e
    move-wide/from16 v19, v28

    goto :goto_14

    :cond_1f
    :goto_13
    move-wide/from16 v19, v17

    goto :goto_14

    :cond_20
    move-wide/from16 v19, v21

    :goto_14
    iget-object v0, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    const/16 v4, 0x2e

    if-nez v3, :cond_21

    move-object v3, v0

    goto :goto_15

    :cond_21
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    goto :goto_15

    :cond_22
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v4, :cond_3d

    sget-object v10, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_3d

    :goto_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v0, v10, :cond_38

    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "\\."

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iget-object v0, v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v12, 0x0

    :goto_16
    :try_start_4
    invoke-virtual {v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_25

    :goto_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_19

    :catchall_0
    move-exception v0

    goto :goto_18

    :catch_2
    move-exception v0

    move-object v13, v0

    :try_start_5
    sget-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    const-string v14, "Failed to read public suffix list"

    const/4 v15, 0x5

    invoke-virtual {v0, v15, v14, v13}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v12, :cond_25

    goto :goto_17

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v12, 0x1

    goto :goto_16

    :goto_18
    if-eqz v12, :cond_23

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_23
    throw v0

    :cond_24
    :try_start_6
    iget-object v0, v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_19

    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_25
    :goto_19
    monitor-enter v10

    :try_start_7
    iget-object v0, v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_37

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    array-length v0, v11

    new-array v12, v0, [[B

    const/4 v13, 0x0

    :goto_1a
    array-length v14, v11

    if-ge v13, v14, :cond_26

    aget-object v14, v11, v13

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_1a

    :cond_26
    const/4 v14, 0x1

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v0, :cond_28

    iget-object v15, v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v15, v12, v13}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_27

    goto :goto_1c

    :cond_27
    add-int/2addr v13, v14

    goto :goto_1b

    :cond_28
    const/4 v15, 0x0

    :goto_1c
    if-le v0, v14, :cond_2a

    invoke-virtual {v12}, [[B->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[B

    move/from16 v28, v5

    const/4 v4, 0x0

    :goto_1d
    array-length v5, v13

    sub-int/2addr v5, v14

    if-ge v4, v5, :cond_2b

    sget-object v5, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v5, v13, v4

    iget-object v5, v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v5, v13, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_29

    goto :goto_1e

    :cond_29
    add-int/2addr v4, v14

    goto :goto_1d

    :cond_2a
    move/from16 v28, v5

    :cond_2b
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_2d

    const/4 v4, 0x0

    :goto_1f
    add-int/lit8 v13, v0, -0x1

    if-ge v4, v13, :cond_2d

    iget-object v13, v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v13, v12, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2c

    goto :goto_20

    :cond_2c
    add-int/2addr v4, v14

    goto :goto_1f

    :cond_2d
    const/4 v13, 0x0

    :goto_20
    if-eqz v13, :cond_2e

    const-string v0, "!"

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_2e
    if-nez v15, :cond_2f

    if-nez v5, :cond_2f

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    goto :goto_23

    :cond_2f
    if-eqz v15, :cond_30

    const-string v0, "\\."

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_30
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_21
    if-eqz v5, :cond_31

    const-string v4, "\\."

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    :cond_31
    sget-object v4, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_22
    array-length v5, v0

    array-length v10, v4

    if-le v5, v10, :cond_32

    goto :goto_23

    :cond_32
    move-object v0, v4

    :goto_23
    array-length v4, v11

    array-length v5, v0

    const/16 v10, 0x21

    if-ne v4, v5, :cond_33

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_34

    const/4 v0, 0x0

    goto :goto_27

    :cond_33
    const/4 v4, 0x0

    :cond_34
    aget-object v5, v0, v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_35

    array-length v4, v11

    array-length v0, v0

    :goto_24
    sub-int/2addr v4, v0

    goto :goto_25

    :cond_35
    array-length v4, v11

    array-length v0, v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    goto :goto_24

    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_26
    array-length v10, v5

    if-ge v4, v10, :cond_36

    aget-object v10, v5, v4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2e

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    add-int/2addr v4, v11

    goto :goto_26

    :cond_36
    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    if-nez v0, :cond_39

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    goto :goto_28

    :cond_37
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_28
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :cond_38
    move/from16 v28, v5

    :cond_39
    if-eqz v7, :cond_3b

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_29

    :cond_3a
    move-object/from16 v22, v7

    const/4 v5, 0x0

    goto :goto_2b

    :cond_3b
    :goto_29
    iget-object v0, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v4, v1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const-string v10, "?#"

    invoke-static {v0, v7, v4, v10}, Lokhttp3/internal/Util;->delimiterOffset(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3c

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_3c
    const-string v0, "/"

    :goto_2a
    move-object/from16 v22, v0

    :goto_2b
    new-instance v0, Lokhttp3/Cookie;

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v26}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_2d

    :cond_3d
    :goto_2c
    move/from16 v28, v5

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_3e
    move-object/from16 v27, v3

    goto/16 :goto_8

    :goto_2d
    if-nez v0, :cond_3f

    :goto_2e
    const/4 v2, 0x1

    goto :goto_2f

    :cond_3f
    if-nez v9, :cond_40

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_40
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :goto_2f
    add-int/2addr v8, v2

    move-object/from16 v4, p0

    move v6, v5

    move-object/from16 v3, v27

    move/from16 v5, v28

    goto/16 :goto_3

    :cond_41
    if-eqz v9, :cond_42

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_30

    :cond_42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    return-void

    :cond_43
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static skipUntil(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method
