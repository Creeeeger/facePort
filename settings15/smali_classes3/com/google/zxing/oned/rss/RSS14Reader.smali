.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FINDER_PATTERNS:[[I

.field public static final INSIDE_GSUM:[I

.field public static final INSIDE_ODD_TOTAL_SUBSET:[I

.field public static final INSIDE_ODD_WIDEST:[I

.field public static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field public static final OUTSIDE_GSUM:[I

.field public static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field public final possibleLeftPairs:Ljava/util/List;

.field public final possibleRightPairs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x46

    const/16 v1, 0x7e

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0x22

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    const/16 v0, 0x30

    const/16 v1, 0x51

    const/4 v3, 0x4

    const/16 v4, 0x14

    filled-new-array {v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    const/16 v0, 0x7df

    const/16 v1, 0xa9b

    const/4 v4, 0x0

    const/16 v5, 0xa1

    const/16 v6, 0x3c1

    filled-new-array {v4, v5, v6, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    const/16 v0, 0x40c

    const/16 v1, 0x5ec

    const/16 v5, 0x150

    filled-new-array {v4, v5, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v4, 0x3

    filled-new-array {v0, v1, v3, v4, v2}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    const/4 v5, 0x2

    filled-new-array {v5, v3, v1, v0}, [I

    move-result-object v6

    sput-object v6, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    filled-new-array {v4, v0, v5, v2}, [I

    move-result-object v7

    const/4 v6, 0x5

    filled-new-array {v4, v6, v6, v2}, [I

    move-result-object v8

    const/4 v9, 0x7

    filled-new-array {v4, v4, v9, v2}, [I

    move-result-object v10

    const/16 v11, 0x9

    filled-new-array {v4, v2, v11, v2}, [I

    move-result-object v12

    filled-new-array {v5, v9, v3, v2}, [I

    move-result-object v3

    filled-new-array {v5, v6, v1, v2}, [I

    move-result-object v1

    filled-new-array {v5, v4, v0, v2}, [I

    move-result-object v13

    filled-new-array {v2, v6, v9, v2}, [I

    move-result-object v14

    filled-new-array {v2, v4, v11, v2}, [I

    move-result-object v15

    move-object v9, v10

    move-object v10, v12

    move-object v11, v3

    move-object v12, v1

    filled-new-array/range {v7 .. v15}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    return-void
.end method

.method public static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    iget v2, v1, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    iget v3, p1, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    if-ne v2, v3, :cond_1

    iget p0, v1, Lcom/google/zxing/oned/rss/Pair;->count:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/google/zxing/oned/rss/Pair;->count:I

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    const/4 v5, 0x1

    move-object/from16 v6, p2

    iget-object v6, v6, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I

    if-eqz v2, :cond_0

    aget v6, v6, v4

    invoke-static {v6, v1, v3}, Lcom/google/zxing/oned/OneDReader;->recordPatternInReverse(ILcom/google/zxing/common/BitArray;[I)V

    goto :goto_1

    :cond_0
    aget v6, v6, v5

    invoke-static {v6, v1, v3}, Lcom/google/zxing/oned/OneDReader;->recordPattern(ILcom/google/zxing/common/BitArray;[I)V

    array-length v1, v3

    sub-int/2addr v1, v5

    move v6, v4

    :goto_0
    if-ge v6, v1, :cond_1

    aget v7, v3, v6

    aget v8, v3, v1

    aput v8, v3, v6

    aput v7, v3, v1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    const/16 v1, 0x10

    goto :goto_2

    :cond_2
    const/16 v1, 0xf

    :goto_2
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    move v7, v4

    :goto_3
    array-length v8, v3

    iget-object v9, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    iget-object v10, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    iget-object v11, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    iget-object v12, v0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    if-ge v7, v8, :cond_6

    aget v8, v3, v7

    int-to-float v8, v8

    div-float/2addr v8, v6

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v8

    float-to-int v13, v13

    if-ge v13, v5, :cond_3

    move v13, v5

    goto :goto_4

    :cond_3
    const/16 v14, 0x8

    if-le v13, v14, :cond_4

    move v13, v14

    :cond_4
    :goto_4
    div-int/lit8 v14, v7, 0x2

    and-int/lit8 v15, v7, 0x1

    if-nez v15, :cond_5

    aput v13, v12, v14

    int-to-float v9, v13

    sub-float/2addr v8, v9

    aput v8, v10, v14

    goto :goto_5

    :cond_5
    aput v13, v11, v14

    int-to-float v10, v13

    sub-float/2addr v8, v10

    aput v8, v9, v14

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    const/16 v6, 0xa

    const/16 v7, 0xc

    const/4 v8, 0x4

    if-eqz v2, :cond_b

    if-le v0, v7, :cond_7

    move v13, v4

    move v14, v5

    goto :goto_6

    :cond_7
    if-ge v0, v8, :cond_8

    move v14, v4

    move v13, v5

    goto :goto_6

    :cond_8
    move v13, v4

    move v14, v13

    :goto_6
    if-le v3, v7, :cond_9

    :goto_7
    move v15, v4

    move/from16 v16, v5

    goto :goto_a

    :cond_9
    if-ge v3, v8, :cond_a

    :goto_8
    move/from16 v16, v4

    move v15, v5

    goto :goto_a

    :cond_a
    move v15, v4

    move/from16 v16, v15

    goto :goto_a

    :cond_b
    const/16 v13, 0xb

    if-le v0, v13, :cond_c

    move v13, v4

    move v14, v5

    goto :goto_9

    :cond_c
    const/4 v13, 0x5

    if-ge v0, v13, :cond_d

    move v14, v4

    move v13, v5

    goto :goto_9

    :cond_d
    move v13, v4

    move v14, v13

    :goto_9
    if-le v3, v6, :cond_e

    goto :goto_7

    :cond_e
    if-ge v3, v8, :cond_a

    goto :goto_8

    :goto_a
    add-int v17, v0, v3

    sub-int v1, v17, v1

    and-int/lit8 v6, v0, 0x1

    if-ne v6, v2, :cond_f

    move v6, v5

    goto :goto_b

    :cond_f
    move v6, v4

    :goto_b
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v5, :cond_10

    move v4, v5

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1a

    if-eqz v1, :cond_15

    if-ne v1, v5, :cond_14

    if-eqz v6, :cond_12

    if-nez v4, :cond_11

    move v14, v5

    goto :goto_d

    :cond_11
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_12
    if-eqz v4, :cond_13

    move/from16 v16, v5

    goto :goto_d

    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_15
    if-eqz v6, :cond_18

    if-eqz v4, :cond_17

    if-ge v0, v3, :cond_16

    move v13, v5

    move/from16 v16, v13

    goto :goto_d

    :cond_16
    move v14, v5

    move v15, v14

    goto :goto_d

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    if-nez v4, :cond_19

    goto :goto_d

    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1a
    if-eqz v6, :cond_1c

    if-nez v4, :cond_1b

    move v13, v5

    goto :goto_d

    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1c
    if-eqz v4, :cond_28

    move v15, v5

    :goto_d
    if-eqz v13, :cond_1e

    if-nez v14, :cond_1d

    invoke-static {v10, v12}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([F[I)V

    goto :goto_e

    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1e
    :goto_e
    if-eqz v14, :cond_1f

    invoke-static {v10, v12}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([F[I)V

    :cond_1f
    if-eqz v15, :cond_21

    if-nez v16, :cond_20

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([F[I)V

    goto :goto_f

    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_21
    :goto_f
    if-eqz v16, :cond_22

    invoke-static {v9, v11}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([F[I)V

    :cond_22
    array-length v0, v12

    sub-int/2addr v0, v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ltz v0, :cond_23

    mul-int/lit8 v1, v1, 0x9

    aget v4, v12, v0

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_23
    array-length v0, v11

    sub-int/2addr v0, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ltz v0, :cond_24

    mul-int/lit8 v4, v4, 0x9

    aget v8, v11, v0

    add-int/2addr v4, v8

    add-int/2addr v6, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_24
    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v1

    if-eqz v2, :cond_26

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_25

    if-gt v3, v7, :cond_25

    const/4 v0, 0x4

    if-lt v3, v0, :cond_25

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v0, v0, v7

    rsub-int/lit8 v1, v0, 0x9

    const/4 v2, 0x0

    invoke-static {v12, v0, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    invoke-static {v11, v1, v5}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    sget-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v2, v2, v7

    sget-object v3, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v3, v3, v7

    new-instance v5, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-direct {v5, v0, v4}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v5

    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_26
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_27

    const/16 v0, 0xa

    if-gt v6, v0, :cond_27

    const/4 v1, 0x4

    if-lt v6, v1, :cond_27

    rsub-int/lit8 v6, v6, 0xa

    div-int/lit8 v6, v6, 0x2

    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v0, v0, v6

    rsub-int/lit8 v1, v0, 0x9

    invoke-static {v12, v0, v5}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v11, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    sget-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v2, v2, v6

    sget-object v3, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v3, v3, v6

    new-instance v5, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    invoke-direct {v5, v1, v4}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v5

    :cond_27
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I

    move-result-object v0

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object p2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object p0

    new-instance p1, Lcom/google/zxing/oned/rss/Pair;

    iget p4, p3, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    mul-int/lit16 p4, p4, 0x63d

    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    add-int/2addr p4, v0

    iget p3, p3, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    iget p0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr p0, p3

    invoke-direct {p1, p4, p0, p2}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object p1

    iget-object p3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {p3, p1}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    iget-object p1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/zxing/oned/rss/Pair;

    iget p3, p2, Lcom/google/zxing/oned/rss/Pair;->count:I

    if-le p3, v1, :cond_0

    iget-object p3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/Pair;

    iget v3, v2, Lcom/google/zxing/oned/rss/Pair;->count:I

    if-le v3, v1, :cond_1

    iget v3, v2, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    mul-int/lit8 v3, v3, 0x10

    iget v4, p2, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x4f

    iget-object v4, p2, Lcom/google/zxing/oned/rss/Pair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    iget v5, v4, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    mul-int/lit8 v5, v5, 0x9

    iget-object v6, v2, Lcom/google/zxing/oned/rss/Pair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    iget v7, v6, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    add-int/2addr v5, v7

    const/16 v7, 0x48

    if-le v5, v7, :cond_2

    add-int/lit8 v5, v5, -0x1

    :cond_2
    const/16 v7, 0x8

    if-le v5, v7, :cond_3

    add-int/lit8 v5, v5, -0x1

    :cond_3
    if-ne v3, v5, :cond_1

    iget p0, p2, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    int-to-long p0, p0

    const-wide/32 p2, 0x453af5

    mul-long/2addr p0, p2

    iget p2, v2, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    int-to-long p2, p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0xd

    rsub-int/lit8 p2, p2, 0xd

    :goto_0
    const/16 v2, 0x30

    if-lez p2, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, v0

    move p2, p0

    :goto_1
    if-ge p0, p3, :cond_6

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v2

    and-int/lit8 v5, p0, 0x1

    if-nez v5, :cond_5

    mul-int/lit8 v3, v3, 0x3

    :cond_5
    add-int/2addr p2, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    const/16 p0, 0xa

    rem-int/2addr p2, p0

    rsub-int/lit8 p2, p2, 0xa

    if-ne p2, p0, :cond_7

    move p2, v0

    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v4, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    aget-object p3, p2, v0

    aget-object p2, p2, v1

    iget-object v2, v6, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    aget-object v0, v2, v0

    aget-object v1, v2, v1

    filled-new-array {p3, p2, v0, v1}, [Lcom/google/zxing/ResultPoint;

    move-result-object p2

    sget-object p3, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    sget-object p1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string p2, "]e0"

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object p0

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public final findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I
    .locals 10

    iget-object p0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v2, 0x2

    aput v0, p0, v2

    const/4 v3, 0x3

    aput v0, p0, v3

    iget v4, p1, Lcom/google/zxing/common/BitArray;->size:I

    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v1

    if-ne p2, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v7, v0

    move p2, v5

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eq v8, v6, :cond_2

    aget v8, p0, v7

    add-int/2addr v8, v1

    aput v8, p0, v7

    goto :goto_4

    :cond_2
    if-ne v7, v3, :cond_4

    invoke-static {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    move-result v8

    if-eqz v8, :cond_3

    filled-new-array {p2, v5}, [I

    move-result-object p0

    return-object p0

    :cond_3
    aget v8, p0, v0

    aget v9, p0, v1

    add-int/2addr v8, v9

    add-int/2addr p2, v8

    aget v8, p0, v2

    aput v8, p0, v0

    aget v8, p0, v3

    aput v8, p0, v1

    aput v0, p0, v2

    aput v0, p0, v3

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    :goto_3
    aput v1, p0, v7

    xor-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public final parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 10

    const/4 v0, 0x0

    aget v1, p4, v0

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    aget v2, p4, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr v2, v3

    aget v1, p4, v0

    sub-int/2addr v1, v2

    iget-object p0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    array-length v4, p0

    sub-int/2addr v4, v3

    invoke-static {p0, v0, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v1, p0, v0

    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    move v5, v0

    :goto_1
    const/16 v0, 0x9

    if-ge v5, v0, :cond_3

    aget-object v0, v1, v5

    const v4, 0x3ee66666    # 0.45f

    invoke-static {p0, v0, v4}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v0

    const v4, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    aget p0, p4, v3

    if-eqz p3, :cond_1

    iget p1, p1, Lcom/google/zxing/common/BitArray;->size:I

    sub-int/2addr p1, v3

    sub-int p3, p1, v2

    sub-int/2addr p1, p0

    move v7, p1

    move v6, p3

    goto :goto_2

    :cond_1
    move v7, p0

    move v6, v2

    :goto_2
    new-instance p1, Lcom/google/zxing/oned/rss/FinderPattern;

    filled-new-array {v2, p0}, [I

    move-result-object v9

    move-object v4, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(IIII[I)V

    return-object p1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
