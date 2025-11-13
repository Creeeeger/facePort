.class public abstract Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final QUOTED_STRING_DELIMITERS:Lokio/ByteString;

.field public static final TOKEN_DELIMITERS:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    return-void
.end method

.method public static final promisesBody(Lokhttp3/Response;)Z
    .locals 8

    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    iget-object v0, v0, Lokhttp3/Request;->method:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-static {p0}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v3
.end method

.method public static final readChallengeHeader(Lokio/Buffer;Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_0

    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v3

    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lokhttp3/Challenge;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/16 v5, 0x3d

    int-to-byte v5, v5

    invoke-static {v0, v5}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    move-result v6

    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v7

    if-nez v3, :cond_4

    if-nez v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Lokhttp3/Challenge;

    invoke-static {v4}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-static {v6, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, v5}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    move-result v7

    add-int/2addr v7, v6

    :goto_2
    if-nez v4, :cond_6

    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0, v5}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    move-result v6

    move v7, v6

    :cond_6
    if-nez v7, :cond_7

    :goto_3
    new-instance v5, Lokhttp3/Challenge;

    invoke-direct {v5, v2, v3}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x1

    if-le v7, v6, :cond_8

    return-void

    :cond_8
    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_9

    return-void

    :cond_9
    const/16 v6, 0x22

    int-to-byte v6, v6

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-nez v8, :cond_e

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v10

    if-ne v10, v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    move-result v10

    if-ne v10, v6, :cond_d

    new-instance v10, Lokio/Buffer;

    invoke-direct {v10}, Lokio/Buffer;-><init>()V

    :goto_4
    sget-object v11, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    invoke-virtual {v0, v11, v8, v9}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v13, v11, v13

    if-nez v13, :cond_a

    move-object v6, v1

    :goto_5
    move-object v15, v2

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v11, v12}, Lokio/Buffer;->getByte(J)B

    move-result v13

    if-ne v13, v6, :cond_b

    invoke-virtual {v10, v0, v11, v12}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v10}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_b
    iget-wide v13, v0, Lokio/Buffer;->size:J

    move-object v15, v2

    const-wide/16 v1, 0x1

    add-long v16, v11, v1

    cmp-long v13, v13, v16

    if-nez v13, :cond_c

    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    invoke-virtual {v10, v0, v11, v12}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v10, v0, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    move-object v2, v15

    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v15, v2

    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    if-eqz v6, :cond_11

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    return-void

    :cond_f
    invoke-static/range {p0 .. p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    move-object v2, v15

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_11
    return-void
.end method

.method public static final readToken(Lokio/Buffer;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget-wide v3, p0, Lokio/Buffer;->size:J

    :cond_0
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3, v4, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 33

    const/4 v1, 0x1

    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar$Companion$NoCookies;

    move-object/from16 v2, p0

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Set-Cookie"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_20

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v0, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v11, 0x3b

    invoke-static {v8, v11, v4, v0}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v0

    const/16 v12, 0x3d

    invoke-static {v8, v12, v4, v0}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v13

    if-ne v13, v0, :cond_1

    :goto_1
    move-object/from16 v8, p1

    move v11, v4

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_1
    invoke-static {v4, v13, v8}, Lokhttp3/internal/Util;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    move-result v14

    invoke-static {v14, v13, v8}, Lokhttp3/internal/Util;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    goto :goto_3

    :cond_2
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    :goto_3
    goto :goto_1

    :cond_3
    add-int/2addr v13, v1

    invoke-static {v13, v0, v8}, Lokhttp3/internal/Util;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    move-result v13

    invoke-static {v13, v0, v8}, Lokhttp3/internal/Util;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v15, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr v0, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const-wide v19, 0xe677d21fdbffL

    move/from16 v26, v1

    move/from16 v23, v4

    move/from16 v24, v23

    move/from16 v25, v24

    move-wide/from16 v27, v19

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v21, -0x1

    :goto_4
    const-wide v29, 0x7fffffffffffffffL

    const-wide/high16 v31, -0x8000000000000000L

    if-ge v0, v13, :cond_11

    invoke-static {v8, v11, v0, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v14

    invoke-static {v8, v12, v0, v14}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v15

    invoke-static {v0, v15, v8}, Lokhttp3/internal/Util;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v15, v8}, Lokhttp3/internal/Util;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-ge v15, v14, :cond_5

    add-int/2addr v15, v1

    invoke-static {v15, v14, v8}, Lokhttp3/internal/Util;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    move-result v11

    invoke-static {v11, v14, v8}, Lokhttp3/internal/Util;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_5
    const-string v11, ""

    :goto_5
    const-string v15, "expires"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v11}, Lokhttp3/Cookie$Companion;->parseExpires(ILjava/lang/String;)J

    move-result-wide v27
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_6
    move/from16 v25, v1

    goto/16 :goto_8

    :cond_6
    const-string v15, "max-age"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v29, 0x0

    cmp-long v0, v21, v29

    if-gtz v0, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v31, v21

    :goto_7
    move-wide/from16 v21, v31

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v15, v0

    :try_start_2
    new-instance v0, Lkotlin/text/Regex;

    const-string v12, "-?\\d+"

    invoke-direct {v0, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "-"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-wide/from16 v29, v31

    :cond_8
    move-wide/from16 v21, v29

    goto :goto_6

    :cond_9
    throw v15
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    const-string v12, "domain"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    :try_start_3
    const-string v0, "."

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    xor-int/2addr v12, v1

    if-eqz v12, :cond_c

    invoke-static {v0, v11}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object v5, v0

    const/16 v26, 0x0

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v11, "Failed requirement."

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_d
    const-string v12, "path"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    move-object v4, v11

    goto :goto_8

    :cond_e
    const-string v11, "secure"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    move/from16 v23, v1

    goto :goto_8

    :cond_f
    const-string v11, "httponly"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move/from16 v24, v1

    :catch_1
    :cond_10
    :goto_8
    add-int/lit8 v0, v14, 0x1

    const/16 v11, 0x3b

    const/16 v12, 0x3d

    goto/16 :goto_4

    :cond_11
    cmp-long v0, v21, v31

    if-nez v0, :cond_12

    move-object/from16 v8, p1

    move-wide/from16 v19, v31

    goto :goto_a

    :cond_12
    const-wide/16 v11, -0x1

    cmp-long v0, v21, v11

    if-eqz v0, :cond_16

    const-wide v11, 0x20c49ba5e353f7L

    cmp-long v0, v21, v11

    if-gtz v0, :cond_13

    const/16 v0, 0x3e8

    int-to-long v11, v0

    mul-long v29, v21, v11

    :cond_13
    add-long v29, v9, v29

    cmp-long v0, v29, v9

    if-ltz v0, :cond_15

    cmp-long v0, v29, v19

    if-lez v0, :cond_14

    goto :goto_9

    :cond_14
    move-object/from16 v8, p1

    move-wide/from16 v19, v29

    goto :goto_a

    :cond_15
    :goto_9
    move-object/from16 v8, p1

    goto :goto_a

    :cond_16
    move-object/from16 v8, p1

    move-wide/from16 v19, v27

    :goto_a
    iget-object v0, v8, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    if-nez v5, :cond_17

    move-object v5, v0

    goto :goto_b

    :cond_17
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_b

    :cond_18
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_1d

    sget-object v9, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    invoke-virtual {v9, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1d

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v0, v9, :cond_19

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v0, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    const/4 v11, 0x0

    goto :goto_e

    :cond_19
    const-string v0, "/"

    if-eqz v4, :cond_1b

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto :goto_c

    :cond_1a
    move-object/from16 v22, v4

    const/4 v11, 0x0

    goto :goto_d

    :cond_1b
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x2f

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static {v4, v9, v11, v10}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    move-object/from16 v22, v0

    :goto_d
    new-instance v0, Lokhttp3/Cookie;

    const/16 v27, 0x0

    move-object/from16 v16, v0

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v27}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_2

    :goto_e
    if-eqz v0, :cond_1f

    if-nez v7, :cond_1e

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/2addr v6, v1

    move v4, v11

    goto/16 :goto_0

    :cond_20
    if-eqz v7, :cond_21

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_21
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    return-void
.end method

.method public static final skipCommasAndWhitespace(Lokio/Buffer;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
