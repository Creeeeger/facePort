.class public final Lokhttp3/HttpUrl$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/HttpUrl$Companion;-><init>()V

    return-void
.end method

.method public static canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    and-int/lit8 v2, p9, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    and-int/lit8 v4, p9, 0x2

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move/from16 v5, p5

    :goto_2
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move/from16 v6, p6

    :goto_3
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move/from16 v8, p8

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v9, v2

    :goto_6
    if-ge v9, v4, :cond_15

    invoke-virtual {v0, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    const/16 v11, 0x20

    const/16 v12, 0x80

    const/16 v13, 0x2b

    const/16 v14, 0x25

    const/16 v15, 0x7f

    if-lt v10, v11, :cond_9

    if-eq v10, v15, :cond_9

    if-lt v10, v12, :cond_6

    if-eqz v8, :cond_9

    :cond_6
    int-to-char v12, v10

    invoke-static {v1, v12}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v12

    if-nez v12, :cond_9

    if-ne v10, v14, :cond_7

    if-eqz v5, :cond_9

    if-eqz v6, :cond_7

    invoke-static {v9, v4, v0}, Lokhttp3/HttpUrl$Companion;->isPercentEncoded(IILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_7
    if-ne v10, v13, :cond_8

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_6

    :cond_9
    :goto_7
    new-instance v10, Lokio/Buffer;

    invoke-direct {v10}, Lokio/Buffer;-><init>()V

    invoke-virtual {v10, v2, v9, v0}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_8
    if-ge v9, v4, :cond_14

    invoke-virtual {v0, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    if-eqz v5, :cond_b

    const/16 v14, 0x9

    if-eq v12, v14, :cond_a

    const/16 v14, 0xa

    if-eq v12, v14, :cond_a

    const/16 v14, 0xc

    if-eq v12, v14, :cond_a

    const/16 v14, 0xd

    if-eq v12, v14, :cond_a

    goto :goto_a

    :cond_a
    :goto_9
    const/16 v13, 0x80

    goto :goto_c

    :cond_b
    :goto_a
    if-ne v12, v13, :cond_d

    if-eqz v7, :cond_d

    if-eqz v5, :cond_c

    const-string v14, "+"

    goto :goto_b

    :cond_c
    const-string v14, "%2B"

    :goto_b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v3, v13, v14}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    goto :goto_9

    :cond_d
    if-lt v12, v11, :cond_11

    if-eq v12, v15, :cond_11

    const/16 v13, 0x80

    if-lt v12, v13, :cond_e

    if-eqz v8, :cond_12

    :cond_e
    int-to-char v14, v12

    invoke-static {v1, v14}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v14

    if-nez v14, :cond_12

    const/16 v14, 0x25

    if-ne v12, v14, :cond_f

    if-eqz v5, :cond_12

    if-eqz v6, :cond_f

    invoke-static {v9, v4, v0}, Lokhttp3/HttpUrl$Companion;->isPercentEncoded(IILjava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_d

    :cond_f
    invoke-virtual {v10, v12}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    :cond_10
    :goto_c
    const/16 v11, 0x25

    goto :goto_f

    :cond_11
    const/16 v13, 0x80

    :cond_12
    :goto_d
    if-nez v2, :cond_13

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    :cond_13
    invoke-virtual {v2, v12}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    :goto_e
    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    move-result v14

    and-int/lit16 v3, v14, 0xff

    const/16 v11, 0x25

    invoke-virtual {v10, v11}, Lokio/Buffer;->writeByte(I)V

    sget-object v16, Lokhttp3/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v16, v3

    invoke-virtual {v10, v3}, Lokio/Buffer;->writeByte(I)V

    and-int/lit8 v3, v14, 0xf

    aget-char v3, v16, v3

    invoke-virtual {v10, v3}, Lokio/Buffer;->writeByte(I)V

    const/4 v3, 0x0

    const/16 v11, 0x20

    goto :goto_e

    :goto_f
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v9, v3

    move v14, v11

    const/4 v3, 0x0

    const/16 v11, 0x20

    const/16 v13, 0x2b

    goto/16 :goto_8

    :cond_14
    invoke-virtual {v10}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_15
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x310888    # 4.503E-39f

    if-eq v0, v1, :cond_1

    const v1, 0x5f008eb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1bb

    goto :goto_1

    :cond_1
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x50

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static isPercentEncoded(IILjava/lang/String;)Z
    .locals 2

    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static percentDecode$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IIZI)Ljava/lang/String;
    .locals 6

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move p4, v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p0, p2

    :goto_0
    if-ge p0, p3, :cond_8

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v0, 0x2b

    const/16 v1, 0x25

    if-eq p5, v1, :cond_4

    if-ne p5, v0, :cond_3

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    new-instance p5, Lokio/Buffer;

    invoke-direct {p5}, Lokio/Buffer;-><init>()V

    invoke-virtual {p5, p2, p0, p1}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    :goto_2
    if-ge p0, p3, :cond_7

    invoke-virtual {p1, p0}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    if-ne p2, v1, :cond_5

    add-int/lit8 v2, p0, 0x2

    if-ge v2, p3, :cond_5

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    if-eq v4, v5, :cond_6

    shl-int/lit8 p0, v3, 0x4

    add-int/2addr p0, v4

    invoke-virtual {p5, p0}, Lokio/Buffer;->writeByte(I)V

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr p0, v2

    goto :goto_2

    :cond_5
    if-ne p2, v0, :cond_6

    if-eqz p4, :cond_6

    const/16 p2, 0x20

    invoke-virtual {p5, p2}, Lokio/Buffer;->writeByte(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p5, p2}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p0, p2

    goto :goto_2

    :cond_7
    invoke-virtual {p5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static toQueryNamesAndValues$okhttp(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    const/16 v3, 0x26

    const/4 v4, 0x4

    invoke-static {p0, v3, v2, v1, v4}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    const/16 v6, 0x3d

    invoke-static {p0, v6, v2, v1, v4}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    if-eq v4, v5, :cond_2

    if-le v4, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static toQueryString$okhttp(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    iget v1, v0, Lkotlin/ranges/IntProgression;->first:I

    iget v2, v0, Lkotlin/ranges/IntProgression;->last:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->step:I

    if-ltz v0, :cond_0

    if-gt v1, v2, :cond_3

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_3

    :goto_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-lez v1, :cond_1

    const/16 v5, 0x26

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eq v1, v2, :cond_3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method
