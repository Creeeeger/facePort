.class public final Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field public static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field public final decoder:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 40

    move-object/from16 v0, p2

    const/4 v1, 0x4

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v0, :cond_11

    sget-object v9, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object v10, v0

    check-cast v10, Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v10

    if-eqz v9, :cond_10

    if-eqz v10, :cond_10

    iget v11, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v12, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    aget v13, v9, v6

    aget v14, v9, v8

    move/from16 v16, v6

    move v15, v8

    :goto_0
    if-ge v13, v12, :cond_2

    if-ge v14, v11, :cond_2

    invoke-virtual {v1, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eq v15, v2, :cond_1

    add-int/lit8 v2, v16, 0x1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    xor-int/2addr v15, v8

    move/from16 v16, v2

    :cond_1
    add-int/2addr v13, v8

    add-int/2addr v14, v8

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v13, v12, :cond_f

    if-eq v14, v11, :cond_f

    aget v2, v9, v6

    sub-int/2addr v13, v2

    int-to-float v5, v13

    const/high16 v11, 0x40e00000    # 7.0f

    div-float/2addr v5, v11

    aget v9, v9, v8

    aget v11, v10, v8

    aget v10, v10, v6

    if-ge v2, v10, :cond_e

    if-ge v9, v11, :cond_e

    sub-int v12, v11, v9

    sub-int v13, v10, v2

    if-eq v12, v13, :cond_4

    add-int v10, v2, v12

    iget v13, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v10, v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    sub-int v13, v10, v2

    add-int/2addr v13, v8

    int-to-float v13, v13

    div-float/2addr v13, v5

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    add-int/2addr v12, v8

    int-to-float v12, v12

    div-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    if-lez v13, :cond_d

    if-lez v12, :cond_d

    if-ne v12, v13, :cond_c

    div-float v4, v5, v4

    float-to-int v4, v4

    add-int/2addr v9, v4

    add-int/2addr v2, v4

    add-int/lit8 v14, v13, -0x1

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    add-int/2addr v14, v2

    sub-int/2addr v14, v10

    if-lez v14, :cond_6

    if-gt v14, v4, :cond_5

    sub-int/2addr v2, v14

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_3
    add-int/lit8 v10, v12, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v10, v9

    sub-int/2addr v10, v11

    if-lez v10, :cond_8

    if-gt v10, v4, :cond_7

    sub-int/2addr v9, v10

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_4
    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v13, v12}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v10, v6

    :goto_5
    if-ge v10, v12, :cond_b

    int-to-float v11, v10

    mul-float/2addr v11, v5

    float-to-int v11, v11

    add-int/2addr v11, v9

    move v14, v6

    :goto_6
    if-ge v14, v13, :cond_a

    int-to-float v15, v14

    mul-float/2addr v15, v5

    float-to-int v15, v15

    add-int/2addr v15, v2

    invoke-virtual {v1, v15, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v4, v14, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_9
    add-int/2addr v14, v8

    goto :goto_6

    :cond_a
    add-int/2addr v10, v8

    goto :goto_5

    :cond_b
    invoke-virtual {v3, v4, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    goto/16 :goto_20

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    new-instance v2, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    sget-object v10, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object v11, v0

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :goto_7
    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    invoke-direct {v10, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    if-eqz v0, :cond_13

    sget-object v11, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object v12, v0

    check-cast v12, Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    move v11, v8

    goto :goto_8

    :cond_13
    move v11, v6

    :goto_8
    iget v12, v9, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v13, v9, Lcom/google/zxing/common/BitMatrix;->width:I

    mul-int/lit8 v14, v12, 0x3

    div-int/lit16 v14, v14, 0x184

    if-lt v14, v7, :cond_14

    if-eqz v11, :cond_15

    :cond_14
    move v14, v7

    :cond_15
    new-array v5, v5, [I

    add-int/lit8 v11, v14, -0x1

    move v15, v6

    :goto_9
    const/16 v16, 0x0

    if-ge v11, v12, :cond_25

    if-nez v15, :cond_25

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    move v4, v6

    move v7, v4

    :goto_a
    if-ge v4, v13, :cond_22

    invoke-virtual {v9, v4, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v19

    if-eqz v19, :cond_17

    and-int/lit8 v6, v7, 0x1

    if-ne v6, v8, :cond_16

    add-int/2addr v7, v8

    :cond_16
    aget v6, v5, v7

    add-int/2addr v6, v8

    aput v6, v5, v7

    move v1, v8

    goto/16 :goto_10

    :cond_17
    and-int/lit8 v6, v7, 0x1

    if-nez v6, :cond_21

    if-ne v7, v1, :cond_20

    invoke-static {v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual {v10, v11, v4, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter(II[I)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-boolean v6, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v6, :cond_18

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v15

    move v1, v8

    const/4 v6, 0x0

    const/16 v17, 0x2

    goto :goto_f

    :cond_18
    iget-object v6, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v8, :cond_19

    const/4 v1, 0x0

    const/16 v17, 0x2

    goto :goto_d

    :cond_19
    iget-object v6, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v7, v16

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget v1, v14, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    const/4 v8, 0x2

    if-lt v1, v8, :cond_1b

    if-nez v7, :cond_1a

    move-object v7, v14

    const/16 v17, 0x2

    goto :goto_c

    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    iget v1, v7, Lcom/google/zxing/ResultPoint;->x:F

    iget v6, v14, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v6, v7, Lcom/google/zxing/ResultPoint;->y:F

    iget v7, v14, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v1, v6

    float-to-int v1, v1

    const/16 v17, 0x2

    div-int/lit8 v1, v1, 0x2

    goto :goto_d

    :cond_1b
    move/from16 v17, v8

    :goto_c
    const/4 v1, 0x4

    const/4 v8, 0x1

    goto :goto_b

    :cond_1c
    const/16 v17, 0x2

    const/4 v1, 0x0

    :goto_d
    aget v6, v5, v17

    if-le v1, v6, :cond_1d

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v11, v1

    const/4 v1, 0x1

    add-int/lit8 v4, v13, -0x1

    goto :goto_e

    :cond_1d
    const/4 v1, 0x1

    :goto_e
    const/4 v6, 0x0

    :goto_f
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    move v7, v6

    move/from16 v14, v17

    goto :goto_10

    :cond_1e
    move v1, v8

    const/4 v6, 0x0

    const/16 v17, 0x2

    aget v7, v5, v17

    aput v7, v5, v6

    const/16 v18, 0x3

    aget v7, v5, v18

    aput v7, v5, v1

    const/4 v7, 0x4

    aget v8, v5, v7

    aput v8, v5, v17

    aput v1, v5, v18

    aput v6, v5, v7

    move/from16 v7, v18

    goto :goto_10

    :cond_1f
    move v7, v1

    move v1, v8

    const/4 v6, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x3

    aget v8, v5, v17

    aput v8, v5, v6

    aget v8, v5, v18

    aput v8, v5, v1

    aget v8, v5, v7

    aput v8, v5, v17

    aput v1, v5, v18

    aput v6, v5, v7

    const/4 v7, 0x3

    goto :goto_10

    :cond_20
    move v1, v8

    add-int/lit8 v6, v7, 0x1

    aget v7, v5, v6

    add-int/2addr v7, v1

    aput v7, v5, v6

    move v7, v6

    goto :goto_10

    :cond_21
    move v1, v8

    aget v6, v5, v7

    add-int/2addr v6, v1

    aput v6, v5, v7

    :goto_10
    add-int/2addr v4, v1

    move v8, v1

    const/4 v1, 0x4

    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_22
    invoke-static {v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v10, v11, v13, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter(II[I)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    aget v4, v5, v1

    iget-boolean v1, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v1, :cond_23

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v1

    move v15, v1

    :cond_23
    move v14, v4

    :cond_24
    add-int/2addr v11, v14

    const/4 v1, 0x4

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_9

    :cond_25
    iget-object v1, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_44

    iget-object v1, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget v4, v4, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_27
    iget-object v1, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    sget-object v4, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->moduleComparator:Lcom/google/zxing/qrcode/detector/FinderPatternFinder$EstimatedModuleComparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x3

    new-array v4, v1, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v1, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_28
    iget-object v11, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    if-ge v1, v11, :cond_31

    iget-object v11, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget v12, v11, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    const/4 v13, 0x1

    add-int/2addr v1, v13

    move v14, v1

    :goto_12
    iget-object v15, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v13

    if-ge v14, v15, :cond_28

    iget-object v15, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-static {v11, v15}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v20

    add-int/2addr v14, v13

    move v13, v14

    :goto_13
    iget-object v5, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_30

    iget-object v5, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget v6, v5, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    const v24, 0x3fb33333    # 1.4f

    mul-float v24, v24, v12

    cmpl-float v6, v6, v24

    if-lez v6, :cond_2a

    :cond_29
    const/4 v6, 0x1

    goto/16 :goto_17

    :cond_2a
    invoke-static {v15, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v24

    invoke-static {v11, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->squaredDistance(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)D

    move-result-wide v26

    cmpg-double v6, v20, v24

    if-gez v6, :cond_2d

    cmpl-double v6, v24, v26

    if-lez v6, :cond_2c

    cmpg-double v6, v20, v26

    if-gez v6, :cond_2b

    move-wide/from16 v28, v20

    goto :goto_16

    :cond_2b
    move-wide/from16 v28, v26

    :goto_14
    move-wide/from16 v26, v20

    goto :goto_16

    :cond_2c
    move-wide/from16 v28, v20

    move-wide/from16 v38, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v38

    goto :goto_16

    :cond_2d
    cmpg-double v6, v24, v26

    if-gez v6, :cond_2f

    cmpg-double v6, v20, v26

    if-gez v6, :cond_2e

    move-wide/from16 v28, v24

    move-wide/from16 v24, v26

    goto :goto_14

    :cond_2e
    move-wide/from16 v28, v24

    :goto_15
    move-wide/from16 v24, v20

    goto :goto_16

    :cond_2f
    move-wide/from16 v28, v26

    move-wide/from16 v26, v24

    goto :goto_15

    :goto_16
    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v30

    sub-double v26, v24, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    mul-double v28, v28, v30

    sub-double v24, v24, v28

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    add-double v24, v24, v26

    cmpg-double v6, v24, v7

    if-gez v6, :cond_29

    const/4 v6, 0x0

    aput-object v11, v4, v6

    const/4 v6, 0x1

    aput-object v15, v4, v6

    const/4 v7, 0x2

    aput-object v5, v4, v7

    move-wide/from16 v7, v24

    :goto_17
    add-int/2addr v13, v6

    goto/16 :goto_13

    :cond_30
    const/4 v13, 0x1

    goto/16 :goto_12

    :cond_31
    const/4 v6, 0x1

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v7, v11

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    aget-object v5, v4, v1

    aget-object v7, v4, v6

    invoke-static {v5, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    aget-object v7, v4, v6

    const/4 v8, 0x2

    aget-object v10, v4, v8

    invoke-static {v7, v10}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    aget-object v10, v4, v1

    aget-object v11, v4, v8

    invoke-static {v10, v11}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v10

    cmpl-float v11, v7, v5

    if-ltz v11, :cond_32

    cmpl-float v11, v7, v10

    if-ltz v11, :cond_32

    aget-object v5, v4, v1

    aget-object v7, v4, v6

    aget-object v10, v4, v8

    goto :goto_18

    :cond_32
    cmpl-float v7, v10, v7

    if-ltz v7, :cond_33

    cmpl-float v5, v10, v5

    if-ltz v5, :cond_33

    aget-object v5, v4, v6

    aget-object v7, v4, v1

    aget-object v10, v4, v8

    goto :goto_18

    :cond_33
    aget-object v5, v4, v8

    aget-object v7, v4, v1

    aget-object v10, v4, v6

    :goto_18
    iget v1, v5, Lcom/google/zxing/ResultPoint;->x:F

    iget v6, v10, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr v6, v1

    iget v8, v7, Lcom/google/zxing/ResultPoint;->y:F

    iget v11, v5, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr v8, v11

    mul-float/2addr v8, v6

    iget v6, v10, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr v6, v11

    iget v12, v7, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr v12, v1

    mul-float/2addr v12, v6

    sub-float/2addr v8, v12

    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gez v1, :cond_34

    const/4 v1, 0x0

    move-object/from16 v38, v10

    move-object v10, v7

    move-object/from16 v7, v38

    goto :goto_19

    :cond_34
    const/4 v1, 0x0

    :goto_19
    aput-object v7, v4, v1

    const/4 v1, 0x1

    aput-object v5, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    invoke-virtual {v2, v5, v10}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    invoke-virtual {v2, v5, v7}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    add-float/2addr v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v1

    if-ltz v6, :cond_42

    invoke-static {v5, v10}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v6

    div-float/2addr v6, v4

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v6

    invoke-static {v5, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v8

    div-float/2addr v8, v4

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    add-int/2addr v8, v6

    const/4 v6, 0x2

    div-int/2addr v8, v6

    add-int/lit8 v12, v8, 0x7

    const/4 v13, 0x3

    and-int/lit8 v14, v12, 0x3

    if-eqz v14, :cond_37

    if-eq v14, v6, :cond_36

    if-eq v14, v13, :cond_35

    goto :goto_1a

    :cond_35
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_36
    add-int/lit8 v12, v8, 0x6

    goto :goto_1a

    :cond_37
    add-int/lit8 v12, v8, 0x8

    :goto_1a
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    const/4 v6, 0x4

    rem-int/lit8 v8, v12, 0x4

    const/4 v13, 0x1

    if-ne v8, v13, :cond_41

    add-int/lit8 v8, v12, -0x11

    :try_start_0
    div-int/2addr v8, v6

    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    iget v13, v8, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/2addr v13, v6

    add-int/lit8 v13, v13, 0xa

    iget-object v6, v8, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    array-length v6, v6

    iget v14, v5, Lcom/google/zxing/ResultPoint;->x:F

    iget v15, v10, Lcom/google/zxing/ResultPoint;->y:F

    iget v1, v10, Lcom/google/zxing/ResultPoint;->x:F

    iget v8, v7, Lcom/google/zxing/ResultPoint;->y:F

    iget v0, v7, Lcom/google/zxing/ResultPoint;->x:F

    if-lez v6, :cond_39

    sub-float v6, v1, v14

    add-float/2addr v6, v0

    sub-float v20, v15, v11

    move-object/from16 v21, v3

    add-float v3, v20, v8

    int-to-float v13, v13

    const/high16 v20, 0x40400000    # 3.0f

    div-float v13, v20, v13

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v13, v20, v13

    invoke-static {v6, v14, v13, v14}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v11, v13, v11}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 p0, v9

    const/4 v13, 0x4

    :goto_1b
    const/16 v9, 0x10

    if-gt v13, v9, :cond_38

    int-to-float v9, v13

    :try_start_1
    invoke-virtual {v2, v6, v4, v9, v3}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(IFFI)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v16
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_38
    :goto_1c
    move-object/from16 v2, v16

    goto :goto_1d

    :catch_0
    const/4 v9, 0x1

    shl-int/2addr v13, v9

    goto :goto_1b

    :cond_39
    move-object/from16 v21, v3

    move-object/from16 p0, v9

    goto :goto_1c

    :goto_1d
    int-to-float v3, v12

    const/high16 v4, 0x40600000    # 3.5f

    sub-float v29, v3, v4

    if-eqz v2, :cond_3a

    const/high16 v3, 0x40400000    # 3.0f

    sub-float v0, v29, v3

    iget v1, v2, Lcom/google/zxing/ResultPoint;->x:F

    iget v3, v2, Lcom/google/zxing/ResultPoint;->y:F

    move/from16 v27, v0

    move/from16 v34, v1

    move/from16 v35, v3

    goto :goto_1e

    :cond_3a
    sub-float/2addr v1, v14

    add-float/2addr v1, v0

    sub-float/2addr v15, v11

    add-float/2addr v15, v8

    move/from16 v34, v1

    move/from16 v35, v15

    move/from16 v27, v29

    :goto_1e
    iget v0, v10, Lcom/google/zxing/ResultPoint;->x:F

    iget v1, v7, Lcom/google/zxing/ResultPoint;->x:F

    const/high16 v22, 0x40600000    # 3.5f

    const/high16 v23, 0x40600000    # 3.5f

    const/high16 v25, 0x40600000    # 3.5f

    const/high16 v28, 0x40600000    # 3.5f

    iget v3, v5, Lcom/google/zxing/ResultPoint;->x:F

    iget v4, v5, Lcom/google/zxing/ResultPoint;->y:F

    iget v6, v10, Lcom/google/zxing/ResultPoint;->y:F

    iget v8, v7, Lcom/google/zxing/ResultPoint;->y:F

    move/from16 v24, v29

    move/from16 v26, v27

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v0

    move/from16 v33, v6

    move/from16 v36, v1

    move/from16 v37, v8

    invoke-static/range {v22 .. v37}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v1, v12, v12, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    if-nez v2, :cond_3b

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v4, 0x1

    aput-object v5, v2, v4

    const/4 v6, 0x2

    aput-object v10, v2, v6

    move-object v1, v2

    move-object/from16 v3, v21

    move-object/from16 v2, p2

    goto :goto_1f

    :cond_3b
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    aput-object v7, v8, v3

    aput-object v5, v8, v4

    aput-object v10, v8, v6

    aput-object v2, v8, v1

    move-object/from16 v2, p2

    move-object v1, v8

    move-object/from16 v3, v21

    :goto_1f
    invoke-virtual {v3, v0, v2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    :goto_20
    iget-object v2, v0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;

    instance-of v3, v2, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v3, :cond_3d

    check-cast v2, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3c

    goto :goto_21

    :cond_3c
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x2

    aget-object v5, v1, v4

    aput-object v5, v1, v2

    aput-object v3, v1, v4

    :cond_3d
    :goto_21
    new-instance v2, Lcom/google/zxing/Result;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iget-object v4, v0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    invoke-direct {v2, v4, v5, v1, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    iget-object v1, v0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    if-eqz v1, :cond_3e

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v3, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_3e
    iget-object v1, v0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    if-eqz v1, :cond_3f

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v3, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_3f
    iget v1, v0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I

    if-ltz v1, :cond_40

    iget v3, v0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I

    if-ltz v3, :cond_40

    sget-object v4, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_40
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    iget-object v3, v0, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "]Q"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/zxing/common/DecoderResult;->symbologyModifier:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object v2

    :catch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_41
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_42
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_43
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_44
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final reset()V
    .locals 0

    return-void
.end method
