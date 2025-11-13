.class public final Lokio/internal/BufferKt;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,1489:1\n105#1,20:1514\n429#1,2:1535\n105#1,20:1548\n105#1:1568\n107#1,8:1570\n117#1,8:1579\n105#1,20:1588\n66#2:1490\n66#2:1491\n66#2:1492\n66#2:1493\n66#2:1494\n66#2:1495\n66#2:1496\n66#2:1497\n66#2:1498\n66#2:1499\n66#2:1500\n66#2:1501\n66#2:1502\n66#2:1503\n72#2:1504\n72#2:1505\n69#2:1506\n69#2:1507\n69#2:1508\n69#2:1509\n69#2:1510\n69#2:1511\n69#2:1512\n69#2:1513\n75#2:1534\n78#2:1537\n66#2:1538\n66#2:1539\n66#2:1540\n66#2:1541\n66#2:1542\n66#2:1543\n66#2:1544\n66#2:1545\n66#2:1546\n66#2:1547\n78#2:1569\n78#2:1578\n78#2:1587\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n*L\n400#1,20:1514\n1235#1,20:1548\n1266#1:1568\n1266#1,8:1570\n1266#1,8:1579\n1300#1,20:1588\n171#1:1490\n195#1:1491\n314#1:1492\n314#1:1493\n319#1:1494\n319#1:1495\n341#1:1496\n342#1:1497\n343#1:1498\n344#1:1499\n348#1:1500\n349#1:1501\n350#1:1502\n351#1:1503\n373#1:1504\n374#1:1505\n378#1:1506\n379#1:1507\n380#1:1508\n381#1:1509\n382#1:1510\n383#1:1511\n384#1:1512\n385#1:1513\n412#1:1534\n836#1:1537\n850#1:1538\n852#1:1539\n856#1:1540\n858#1:1541\n862#1:1542\n864#1:1543\n868#1:1544\n870#1:1545\n890#1:1546\n893#1:1547\n1266#1:1569\n1266#1:1578\n1266#1:1587\n*E\n"
.end annotation


# static fields
.field private static final HEX_DIGIT_BYTES:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 38
    invoke-static {v0}, Lokio/-Platform;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    sget-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-object v0
.end method

.method public static final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 5
    .param p0    # Lokio/Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lokio/Segment;->limit:I

    .line 58
    iget-object v1, p0, Lokio/Segment;->data:[B

    :goto_0
    if-ge p3, p4, :cond_3

    if-ne p1, v0, :cond_1

    .line 63
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 64
    :cond_0
    iget-object p1, p0, Lokio/Segment;->data:[B

    .line 65
    iget v0, p0, Lokio/Segment;->pos:I

    .line 66
    iget v1, p0, Lokio/Segment;->limit:I

    move v4, v1

    move-object v1, p1

    move p1, v0

    move v0, v4

    .line 69
    :cond_1
    aget-byte v2, v1, p1

    aget-byte v3, p2, p3

    if-eq v2, v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .locals 6
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$readUtf8Line"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    .line 82
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v0, v5, :cond_0

    .line 84
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 85
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    :goto_0
    return-object p1
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 17
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "$this$selectPrefix"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, -0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_11

    .line 144
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 145
    iget v5, v0, Lokio/Segment;->pos:I

    .line 146
    iget v6, v0, Lokio/Segment;->limit:I

    .line 148
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$okio()[I

    move-result-object v2

    const/4 v7, 0x0

    move-object v9, v0

    move v10, v3

    move v8, v7

    :goto_0
    add-int/lit8 v11, v8, 0x1

    .line 155
    aget v8, v2, v8

    add-int/lit8 v12, v11, 0x1

    .line 157
    aget v11, v2, v11

    if-eq v11, v3, :cond_0

    move v10, v11

    :cond_0
    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    if-gez v8, :cond_b

    mul-int/lit8 v8, v8, -0x1

    add-int v13, v12, v8

    :goto_1
    add-int/lit8 v8, v5, 0x1

    .line 171
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v14, v12, 0x1

    .line 172
    aget v12, v2, v12

    if-eq v5, v12, :cond_2

    return v10

    :cond_2
    if-ne v14, v13, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    if-ne v8, v6, :cond_9

    if-nez v9, :cond_4

    .line 177
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v4, v9, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 178
    :cond_5
    iget v6, v4, Lokio/Segment;->pos:I

    .line 179
    iget-object v8, v4, Lokio/Segment;->data:[B

    .line 180
    iget v9, v4, Lokio/Segment;->limit:I

    if-ne v4, v0, :cond_8

    if-nez v5, :cond_7

    :goto_3
    if-eqz p2, :cond_6

    return v1

    :cond_6
    return v10

    :cond_7
    move-object v4, v8

    move-object v8, v11

    goto :goto_4

    :cond_8
    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v4, v16

    goto :goto_4

    :cond_9
    move-object/from16 v16, v9

    move v9, v6

    move v6, v8

    move-object/from16 v8, v16

    :goto_4
    if-eqz v5, :cond_a

    .line 188
    aget v5, v2, v14

    move v13, v6

    move v6, v9

    move-object v9, v8

    goto :goto_6

    :cond_a
    move v5, v6

    move v6, v9

    move v12, v14

    move-object v9, v8

    goto :goto_1

    :cond_b
    add-int/lit8 v13, v5, 0x1

    .line 195
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int v14, v12, v8

    :goto_5
    if-ne v12, v14, :cond_c

    return v10

    .line 200
    :cond_c
    aget v15, v2, v12

    if-ne v5, v15, :cond_10

    add-int/2addr v12, v8

    .line 201
    aget v5, v2, v12

    if-ne v13, v6, :cond_e

    .line 210
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    if-nez v9, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 211
    :cond_d
    iget v4, v9, Lokio/Segment;->pos:I

    .line 212
    iget-object v6, v9, Lokio/Segment;->data:[B

    .line 213
    iget v8, v9, Lokio/Segment;->limit:I

    move v13, v4

    move-object v4, v6

    move v6, v8

    if-ne v9, v0, :cond_e

    move-object v9, v11

    :cond_e
    :goto_6
    if-ltz v5, :cond_f

    return v5

    :cond_f
    neg-int v8, v5

    move v5, v13

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_11
    if-eqz p2, :cond_12

    goto :goto_7

    :cond_12
    move v1, v3

    :goto_7
    return v1
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 140
    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method
