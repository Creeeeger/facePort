.class public final Lcom/google/zxing/pdf417/PDF417Reader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field public static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/Result;

    sput-object v0, Lcom/google/zxing/pdf417/PDF417Reader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    return-void
.end method

.method public static getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/zxing/ResultPoint;->x:F

    iget p1, p1, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/zxing/ResultPoint;->x:F

    iget p1, p1, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 39

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->ROTATIONS:[I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v11, 0x5

    if-ge v7, v8, :cond_c

    aget v12, v5, v7

    rem-int/lit16 v13, v12, 0x168

    if-nez v13, :cond_0

    move-object v0, v4

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/google/zxing/common/BitMatrix;

    iget v15, v4, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v0, v4, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v1, v4, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v10, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v10}, [I->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput v15, v14, Lcom/google/zxing/common/BitMatrix;->width:I

    iput v0, v14, Lcom/google/zxing/common/BitMatrix;->height:I

    iput v1, v14, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iput-object v10, v14, Lcom/google/zxing/common/BitMatrix;->bits:[I

    if-eqz v13, :cond_4

    const/16 v0, 0x5a

    if-eq v13, v0, :cond_3

    const/16 v0, 0xb4

    if-eq v13, v0, :cond_2

    const/16 v0, 0x10e

    if-ne v13, v0, :cond_1

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->rotate90()V

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "degrees must be a multiple of 0, 90, 180, or 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    goto :goto_1

    :cond_3
    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->rotate90()V

    :cond_4
    :goto_1
    move-object v0, v14

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v10, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-lez v10, :cond_a

    iget v15, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    new-array v14, v9, [Lcom/google/zxing/ResultPoint;

    sget-object v19, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xa

    move-object v13, v0

    move-object v9, v14

    move v14, v10

    move/from16 v24, v15

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    invoke-static/range {v13 .. v19}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v13

    sget-object v14, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    move v15, v6

    :goto_3
    if-ge v15, v8, :cond_5

    aget v16, v14, v15

    aget-object v17, v13, v15

    aput-object v17, v9, v16

    add-int/2addr v15, v2

    goto :goto_3

    :cond_5
    aget-object v13, v9, v8

    if-eqz v13, :cond_7

    iget v14, v13, Lcom/google/zxing/ResultPoint;->x:F

    float-to-int v14, v14

    iget v13, v13, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v13, v13

    aget-object v15, v9, v11

    if-eqz v15, :cond_6

    iget v15, v15, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v15, v15

    sub-int/2addr v15, v13

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    float-to-int v11, v11

    move/from16 v18, v11

    move/from16 v16, v13

    move/from16 v17, v14

    goto :goto_5

    :cond_6
    move/from16 v16, v13

    move/from16 v17, v14

    :goto_4
    move/from16 v18, v22

    goto :goto_5

    :cond_7
    move/from16 v16, v20

    move/from16 v17, v21

    goto :goto_4

    :goto_5
    sget-object v19, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v13, v0

    move v14, v10

    move/from16 v15, v24

    invoke-static/range {v13 .. v19}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    sget-object v11, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    move v13, v6

    :goto_6
    if-ge v13, v8, :cond_8

    aget v14, v11, v13

    aget-object v15, v10, v13

    aput-object v15, v9, v14

    add-int/2addr v13, v2

    goto :goto_6

    :cond_8
    aget-object v10, v9, v6

    if-nez v10, :cond_9

    const/4 v10, 0x3

    aget-object v11, v9, v10

    if-nez v11, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    new-instance v4, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v4, v0, v1, v12}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;I)V

    goto :goto_8

    :cond_b
    add-int/2addr v7, v2

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v4, v1, v6}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;I)V

    move-object v4, v0

    :goto_8
    iget-object v0, v4, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/zxing/ResultPoint;

    aget-object v5, v1, v8

    const/4 v7, 0x5

    aget-object v12, v1, v7

    const/4 v7, 0x6

    aget-object v19, v1, v7

    const/16 v20, 0x7

    aget-object v14, v1, v20

    aget-object v9, v1, v6

    invoke-static {v9, v5}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v9

    aget-object v10, v1, v7

    const/4 v11, 0x2

    aget-object v13, v1, v11

    invoke-static {v10, v13}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x11

    div-int/lit8 v10, v10, 0x12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aget-object v10, v1, v2

    const/4 v11, 0x5

    aget-object v13, v1, v11

    invoke-static {v10, v13}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v10

    aget-object v11, v1, v20

    const/4 v13, 0x3

    aget-object v15, v1, v13

    invoke-static {v11, v15}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    div-int/lit8 v11, v11, 0x12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v21

    aget-object v9, v1, v6

    aget-object v10, v1, v8

    invoke-static {v9, v10}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v9

    aget-object v10, v1, v7

    const/4 v11, 0x2

    aget-object v13, v1, v11

    invoke-static {v10, v13}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x11

    div-int/lit8 v10, v10, 0x12

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aget-object v10, v1, v2

    const/4 v11, 0x5

    aget-object v13, v1, v11

    invoke-static {v10, v13}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v10

    aget-object v11, v1, v20

    const/4 v13, 0x3

    aget-object v15, v1, v13

    invoke-static {v11, v15}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    div-int/lit8 v11, v11, 0x12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v22

    sget-object v9, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    new-instance v15, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v13, v4, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    move-object v9, v15

    move-object v10, v13

    move-object v11, v5

    move-object/from16 v24, v13

    move-object/from16 v13, v19

    invoke-direct/range {v9 .. v14}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    const/4 v14, 0x0

    move/from16 v26, v2

    move-object v9, v14

    move-object/from16 v16, v9

    :goto_a
    if-eqz v5, :cond_d

    const/4 v12, 0x1

    move-object/from16 v9, v24

    move-object v10, v15

    move-object v11, v5

    move/from16 v13, v21

    move-object v7, v14

    move/from16 v14, v22

    invoke-static/range {v9 .. v14}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v9

    goto :goto_b

    :cond_d
    move-object v7, v14

    :goto_b
    if-eqz v19, :cond_e

    const/16 v16, 0x0

    move-object/from16 v13, v24

    move-object v14, v15

    move-object v10, v15

    move-object/from16 v15, v19

    move/from16 v17, v21

    move/from16 v18, v22

    invoke-static/range {v13 .. v18}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v11

    move-object/from16 v16, v11

    goto :goto_c

    :cond_e
    move-object v10, v15

    :goto_c
    if-nez v9, :cond_f

    if-nez v16, :cond_f

    :goto_d
    move-object v14, v7

    goto/16 :goto_12

    :cond_f
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v14

    if-nez v14, :cond_10

    goto :goto_f

    :cond_10
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v11

    if-nez v11, :cond_11

    goto :goto_10

    :cond_11
    iget v12, v14, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->columnCount:I

    iget v13, v11, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->columnCount:I

    if-eq v12, v13, :cond_14

    iget v12, v14, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->errorCorrectionLevel:I

    iget v13, v11, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->errorCorrectionLevel:I

    if-eq v12, v13, :cond_14

    iget v12, v14, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->rowCount:I

    iget v11, v11, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->rowCount:I

    if-eq v12, v11, :cond_14

    :goto_e
    move-object v14, v7

    goto :goto_10

    :cond_12
    :goto_f
    if-nez v16, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v14

    :cond_14
    :goto_10
    if-nez v14, :cond_15

    goto :goto_d

    :cond_15
    invoke-static {v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v12

    if-nez v11, :cond_16

    move-object v11, v12

    goto :goto_11

    :cond_16
    if-nez v12, :cond_17

    goto :goto_11

    :cond_17
    new-instance v13, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v15, v11, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iget-object v8, v11, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iget-object v11, v11, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v7, v12, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iget-object v12, v12, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    move-object/from16 v27, v13

    move-object/from16 v28, v11

    move-object/from16 v29, v15

    move-object/from16 v30, v8

    move-object/from16 v31, v7

    move-object/from16 v32, v12

    invoke-direct/range {v27 .. v32}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    move-object v11, v13

    :goto_11
    new-instance v7, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v7, v14, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_d

    :goto_12
    if-eqz v14, :cond_6d

    iget-object v15, v14, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget v7, v10, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    iget v8, v10, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    if-eqz v26, :cond_19

    if-eqz v15, :cond_19

    iget v11, v15, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    if-lt v11, v8, :cond_18

    iget v11, v15, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    if-le v11, v7, :cond_19

    :cond_18
    move/from16 v26, v6

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_19
    iput-object v10, v14, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget v5, v14, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v11, v5, 0x1

    iget-object v12, v14, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object v9, v12, v6

    aput-object v16, v12, v11

    if-eqz v9, :cond_1a

    move v9, v2

    goto :goto_13

    :cond_1a
    move v9, v6

    :goto_13
    move v13, v2

    :goto_14
    if-gt v13, v11, :cond_34

    if-eqz v9, :cond_1b

    move v15, v13

    goto :goto_15

    :cond_1b
    sub-int v15, v11, v13

    :goto_15
    aget-object v16, v12, v15

    if-eqz v16, :cond_1c

    move-object/from16 v34, v0

    move-object/from16 v37, v3

    move/from16 v35, v7

    move/from16 v36, v8

    move v3, v2

    goto/16 :goto_26

    :cond_1c
    if-eqz v15, :cond_1e

    if-ne v15, v11, :cond_1d

    goto :goto_16

    :cond_1d
    new-instance v6, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v6, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_18

    :cond_1e
    :goto_16
    new-instance v6, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v15, :cond_1f

    goto :goto_17

    :cond_1f
    const/4 v2, 0x0

    :goto_17
    invoke-direct {v6, v10, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    :goto_18
    aput-object v6, v12, v15

    move-object/from16 v34, v0

    move v0, v8

    const/4 v2, -0x1

    :goto_19
    if-gt v0, v7, :cond_33

    move/from16 v35, v7

    if-eqz v9, :cond_20

    const/16 v26, 0x1

    goto :goto_1a

    :cond_20
    const/16 v26, -0x1

    :goto_1a
    sub-int v7, v15, v26

    if-ltz v7, :cond_22

    move/from16 v36, v8

    const/16 v19, 0x1

    add-int/lit8 v8, v5, 0x1

    if-gt v7, v8, :cond_21

    aget-object v8, v12, v7

    move-object/from16 v37, v3

    iget-object v3, v8, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-virtual {v8, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v8

    aget-object v3, v3, v8

    goto :goto_1c

    :cond_21
    move-object/from16 v37, v3

    goto :goto_1b

    :cond_22
    move-object/from16 v37, v3

    move/from16 v36, v8

    :goto_1b
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_24

    if-eqz v9, :cond_23

    iget v3, v3, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    goto :goto_1d

    :cond_23
    iget v3, v3, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    :goto_1d
    move/from16 v38, v15

    goto/16 :goto_22

    :cond_24
    aget-object v3, v12, v15

    invoke-virtual {v3, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    if-eqz v3, :cond_26

    if-eqz v9, :cond_25

    iget v3, v3, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    goto :goto_1d

    :cond_25
    iget v3, v3, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    goto :goto_1d

    :cond_26
    move-object/from16 v27, v3

    if-ltz v7, :cond_27

    const/4 v8, 0x1

    add-int/lit8 v3, v5, 0x1

    if-gt v7, v3, :cond_27

    aget-object v3, v12, v7

    invoke-virtual {v3, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    goto :goto_1e

    :cond_27
    move-object/from16 v3, v27

    :goto_1e
    if-eqz v3, :cond_29

    if-eqz v9, :cond_28

    iget v3, v3, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    goto :goto_1d

    :cond_28
    iget v3, v3, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    goto :goto_1d

    :cond_29
    move v7, v15

    const/4 v3, 0x0

    :goto_1f
    sub-int v7, v7, v26

    move/from16 v38, v15

    if-ltz v7, :cond_2d

    const/4 v8, 0x1

    add-int/lit8 v15, v5, 0x1

    if-gt v7, v15, :cond_2d

    aget-object v8, v12, v7

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v15, v8

    move/from16 v27, v7

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v15, :cond_2c

    move/from16 v28, v15

    aget-object v15, v8, v7

    if-eqz v15, :cond_2b

    iget v7, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    iget v8, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    if-eqz v9, :cond_2a

    move v15, v8

    goto :goto_21

    :cond_2a
    move v15, v7

    :goto_21
    mul-int v26, v26, v3

    sub-int/2addr v8, v7

    mul-int v8, v8, v26

    add-int v3, v8, v15

    goto :goto_22

    :cond_2b
    const/4 v15, 0x1

    add-int/2addr v7, v15

    move/from16 v15, v28

    goto :goto_20

    :cond_2c
    const/4 v15, 0x1

    add-int/2addr v3, v15

    move/from16 v7, v27

    move/from16 v15, v38

    goto :goto_1f

    :cond_2d
    if-eqz v9, :cond_2e

    iget-object v3, v14, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget v3, v3, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    goto :goto_22

    :cond_2e
    iget-object v3, v14, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget v3, v3, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    :goto_22
    if-ltz v3, :cond_2f

    iget v7, v10, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    if-le v3, v7, :cond_32

    :cond_2f
    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    :cond_30
    move/from16 v15, v21

    move/from16 v7, v22

    goto :goto_24

    :cond_31
    move v3, v2

    :cond_32
    iget v7, v10, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    iget v8, v10, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    move-object/from16 v26, v24

    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v3

    move/from16 v31, v0

    move/from16 v32, v21

    move/from16 v33, v22

    invoke-static/range {v26 .. v33}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    if-eqz v7, :cond_30

    iget-object v2, v6, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-virtual {v6, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v8

    aput-object v7, v2, v8

    iget v2, v7, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    iget v7, v7, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    sub-int v8, v2, v7

    move/from16 v15, v21

    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v2, v7

    move/from16 v7, v22

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v22, v2

    move v2, v3

    move/from16 v21, v8

    :goto_23
    const/4 v3, 0x1

    goto :goto_25

    :goto_24
    move/from16 v22, v7

    move/from16 v21, v15

    goto :goto_23

    :goto_25
    add-int/2addr v0, v3

    move/from16 v7, v35

    move/from16 v8, v36

    move-object/from16 v3, v37

    move/from16 v15, v38

    goto/16 :goto_19

    :cond_33
    move-object/from16 v37, v3

    move/from16 v35, v7

    move/from16 v36, v8

    move/from16 v15, v21

    move/from16 v7, v22

    const/4 v3, 0x1

    :goto_26
    add-int/2addr v13, v3

    move v2, v3

    move-object/from16 v0, v34

    move/from16 v7, v35

    move/from16 v8, v36

    move-object/from16 v3, v37

    const/4 v6, 0x0

    goto/16 :goto_14

    :cond_34
    move-object/from16 v34, v0

    move-object/from16 v37, v3

    move v3, v2

    iget-object v0, v14, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    iget v2, v0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->rowCount:I

    const/4 v6, 0x2

    add-int/lit8 v7, v5, 0x2

    new-array v8, v6, [I

    aput v7, v8, v3

    const/4 v3, 0x0

    aput v2, v8, v3

    const-class v2, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    const/4 v3, 0x0

    :goto_27
    array-length v6, v2

    if-ge v3, v6, :cond_36

    const/4 v6, 0x0

    :goto_28
    aget-object v7, v2, v3

    array-length v8, v7

    if-ge v6, v8, :cond_35

    new-instance v8, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v8, v7, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_28

    :cond_35
    const/4 v7, 0x1

    add-int/2addr v3, v7

    goto :goto_27

    :cond_36
    const/4 v3, 0x0

    aget-object v6, v12, v3

    invoke-virtual {v14, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    aget-object v6, v12, v11

    invoke-virtual {v14, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    const/16 v7, 0x3a0

    :goto_29
    aget-object v8, v12, v3

    if-eqz v8, :cond_3b

    aget-object v3, v12, v11

    if-nez v3, :cond_37

    goto :goto_2e

    :cond_37
    const/4 v9, 0x0

    :goto_2a
    iget-object v10, v8, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v13, v10

    if-ge v9, v13, :cond_3b

    aget-object v13, v10, v9

    if-eqz v13, :cond_3a

    iget-object v14, v3, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v14, v14, v9

    if-eqz v14, :cond_3a

    iget v13, v13, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    iget v14, v14, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    if-ne v13, v14, :cond_3a

    const/4 v13, 0x1

    :goto_2b
    if-gt v13, v5, :cond_3a

    aget-object v14, v12, v13

    iget-object v14, v14, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v14, v14, v9

    if-nez v14, :cond_39

    :cond_38
    :goto_2c
    const/4 v14, 0x1

    goto :goto_2d

    :cond_39
    aget-object v15, v10, v9

    iget v15, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    iput v15, v14, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-virtual {v14, v15}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v14

    if-nez v14, :cond_38

    aget-object v14, v12, v13

    iget-object v14, v14, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    const/4 v15, 0x0

    aput-object v15, v14, v9

    goto :goto_2c

    :goto_2d
    add-int/2addr v13, v14

    goto :goto_2b

    :cond_3a
    const/4 v14, 0x1

    add-int/2addr v9, v14

    goto :goto_2a

    :cond_3b
    :goto_2e
    const/4 v3, 0x0

    aget-object v8, v12, v3

    if-nez v8, :cond_3c

    const/4 v9, 0x0

    goto :goto_34

    :cond_3c
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_2f
    iget-object v10, v8, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v13, v10

    if-ge v3, v13, :cond_42

    aget-object v10, v10, v3

    if-nez v10, :cond_3e

    :cond_3d
    const/4 v6, 0x1

    goto :goto_33

    :cond_3e
    iget v10, v10, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_30
    if-ge v14, v11, :cond_3d

    const/4 v15, 0x2

    if-ge v13, v15, :cond_3d

    aget-object v15, v12, v14

    iget-object v15, v15, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v15, v15, v3

    if-eqz v15, :cond_41

    iget v6, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-virtual {v15, v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v6

    if-nez v6, :cond_40

    invoke-virtual {v15, v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    iput v10, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    const/4 v13, 0x0

    goto :goto_31

    :cond_3f
    const/4 v6, 0x1

    add-int/2addr v13, v6

    :cond_40
    :goto_31
    iget v6, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-virtual {v15, v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v6

    if-nez v6, :cond_41

    const/4 v6, 0x1

    add-int/2addr v9, v6

    goto :goto_32

    :cond_41
    const/4 v6, 0x1

    :goto_32
    add-int/2addr v14, v6

    goto :goto_30

    :goto_33
    add-int/2addr v3, v6

    goto :goto_2f

    :cond_42
    :goto_34
    aget-object v3, v12, v11

    if-nez v3, :cond_43

    const/4 v8, 0x0

    goto :goto_3b

    :cond_43
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_35
    iget-object v10, v3, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v13, v10

    if-ge v6, v13, :cond_49

    aget-object v10, v10, v6

    if-nez v10, :cond_45

    :cond_44
    move-object/from16 v22, v3

    const/4 v3, 0x1

    goto :goto_3a

    :cond_45
    iget v10, v10, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    move v14, v11

    const/4 v13, 0x0

    :goto_36
    if-lez v14, :cond_44

    const/4 v15, 0x2

    if-ge v13, v15, :cond_44

    aget-object v15, v12, v14

    iget-object v15, v15, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v15, v15, v6

    move-object/from16 v22, v3

    if-eqz v15, :cond_48

    iget v3, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-virtual {v15, v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v15, v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v3

    if-eqz v3, :cond_46

    iput v10, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    const/4 v13, 0x0

    goto :goto_37

    :cond_46
    const/4 v3, 0x1

    add-int/2addr v13, v3

    :cond_47
    :goto_37
    iget v3, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-virtual {v15, v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v3

    if-nez v3, :cond_48

    const/4 v3, 0x1

    add-int/2addr v8, v3

    :goto_38
    const/4 v15, -0x1

    goto :goto_39

    :cond_48
    const/4 v3, 0x1

    goto :goto_38

    :goto_39
    add-int/2addr v14, v15

    move-object/from16 v3, v22

    goto :goto_36

    :goto_3a
    add-int/2addr v6, v3

    move-object/from16 v3, v22

    goto :goto_35

    :cond_49
    :goto_3b
    add-int v3, v9, v8

    if-nez v3, :cond_4a

    const/4 v3, 0x0

    :goto_3c
    const/16 v17, 0x4

    const/16 v23, 0x8

    const/16 v24, 0x5

    const/16 v26, 0x3

    const/16 v27, 0x6

    goto/16 :goto_46

    :cond_4a
    const/4 v6, 0x1

    :goto_3d
    if-ge v6, v11, :cond_57

    aget-object v8, v12, v6

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    const/4 v9, 0x0

    :goto_3e
    array-length v10, v8

    if-ge v9, v10, :cond_56

    aget-object v10, v8, v9

    if-nez v10, :cond_4c

    :cond_4b
    move/from16 v22, v3

    const/4 v3, 0x1

    const/16 v17, 0x4

    const/16 v23, 0x8

    const/16 v24, 0x5

    const/16 v26, 0x3

    const/16 v27, 0x6

    goto/16 :goto_45

    :cond_4c
    iget v13, v10, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-virtual {v10, v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v10

    if-nez v10, :cond_4b

    aget-object v10, v8, v9

    const/4 v13, 0x1

    add-int/lit8 v14, v6, -0x1

    aget-object v14, v12, v14

    iget-object v14, v14, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    add-int/lit8 v15, v6, 0x1

    aget-object v13, v12, v15

    if-eqz v13, :cond_4d

    iget-object v13, v13, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    goto :goto_3f

    :cond_4d
    move-object v13, v14

    :goto_3f
    const/16 v15, 0xe

    move/from16 v22, v3

    new-array v3, v15, [Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v24, v14, v9

    const/16 v26, 0x2

    aput-object v24, v3, v26

    aget-object v24, v13, v9

    const/16 v26, 0x3

    aput-object v24, v3, v26

    const/4 v15, 0x1

    if-lez v9, :cond_4e

    add-int/lit8 v19, v9, -0x1

    aget-object v24, v8, v19

    const/16 v16, 0x0

    aput-object v24, v3, v16

    aget-object v24, v14, v19

    const/16 v17, 0x4

    aput-object v24, v3, v17

    aget-object v19, v13, v19

    const/16 v24, 0x5

    aput-object v19, v3, v24

    goto :goto_40

    :cond_4e
    const/16 v17, 0x4

    const/16 v24, 0x5

    :goto_40
    if-le v9, v15, :cond_4f

    const/4 v15, 0x2

    add-int/lit8 v25, v9, -0x2

    aget-object v15, v8, v25

    const/16 v23, 0x8

    aput-object v15, v3, v23

    const/16 v15, 0xa

    aget-object v27, v14, v25

    aput-object v27, v3, v15

    const/16 v15, 0xb

    aget-object v25, v13, v25

    aput-object v25, v3, v15

    goto :goto_41

    :cond_4f
    const/16 v23, 0x8

    :goto_41
    array-length v15, v8

    const/16 v19, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v9, v15, :cond_50

    add-int/lit8 v15, v9, 0x1

    aget-object v25, v8, v15

    aput-object v25, v3, v19

    aget-object v25, v14, v15

    const/16 v27, 0x6

    aput-object v25, v3, v27

    aget-object v15, v13, v15

    aput-object v15, v3, v20

    goto :goto_42

    :cond_50
    const/16 v27, 0x6

    :goto_42
    array-length v15, v8

    const/16 v25, 0x2

    add-int/lit8 v15, v15, -0x2

    if-ge v9, v15, :cond_51

    add-int/lit8 v15, v9, 0x2

    aget-object v25, v8, v15

    const/16 v28, 0x9

    aput-object v25, v3, v28

    const/16 v25, 0xc

    aget-object v14, v14, v15

    aput-object v14, v3, v25

    const/16 v14, 0xd

    aget-object v13, v13, v15

    aput-object v13, v3, v14

    :cond_51
    const/4 v13, 0x0

    :goto_43
    const/16 v14, 0xe

    if-ge v13, v14, :cond_55

    aget-object v15, v3, v13

    if-nez v15, :cond_54

    :cond_52
    move-object/from16 v25, v3

    :cond_53
    const/4 v3, 0x1

    goto :goto_44

    :cond_54
    iget v14, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    invoke-virtual {v15, v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v14

    if-eqz v14, :cond_52

    iget v14, v10, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    move-object/from16 v25, v3

    iget v3, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    if-ne v3, v14, :cond_53

    iget v3, v15, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    iput v3, v10, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    :cond_55
    const/4 v3, 0x1

    goto :goto_45

    :goto_44
    add-int/2addr v13, v3

    move-object/from16 v3, v25

    goto :goto_43

    :goto_45
    add-int/2addr v9, v3

    move/from16 v3, v22

    goto/16 :goto_3e

    :cond_56
    move/from16 v22, v3

    const/4 v3, 0x1

    const/16 v17, 0x4

    const/16 v23, 0x8

    const/16 v24, 0x5

    const/16 v26, 0x3

    const/16 v27, 0x6

    add-int/2addr v6, v3

    move/from16 v3, v22

    goto/16 :goto_3d

    :cond_57
    move/from16 v22, v3

    goto/16 :goto_3c

    :goto_46
    if-lez v3, :cond_59

    if-lt v3, v7, :cond_58

    goto :goto_47

    :cond_58
    move v7, v3

    const/4 v3, 0x0

    goto/16 :goto_29

    :cond_59
    :goto_47
    array-length v3, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_48
    if-ge v6, v3, :cond_5d

    aget-object v8, v12, v6

    if-eqz v8, :cond_5c

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_49
    if-ge v10, v9, :cond_5c

    aget-object v11, v8, v10

    if-eqz v11, :cond_5a

    iget v13, v11, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    if-ltz v13, :cond_5a

    array-length v14, v2

    if-lt v13, v14, :cond_5b

    :cond_5a
    :goto_4a
    const/4 v11, 0x1

    goto :goto_4b

    :cond_5b
    aget-object v13, v2, v13

    aget-object v13, v13, v7

    iget v11, v11, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    invoke-virtual {v13, v11}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_4a

    :goto_4b
    add-int/2addr v10, v11

    goto :goto_49

    :cond_5c
    const/4 v11, 0x1

    add-int/2addr v7, v11

    add-int/2addr v6, v11

    goto :goto_48

    :cond_5d
    const/4 v6, 0x0

    const/4 v11, 0x1

    aget-object v3, v2, v6

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v6

    iget v7, v0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->rowCount:I

    mul-int v8, v5, v7

    iget v0, v0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->errorCorrectionLevel:I

    const/4 v9, 0x2

    shl-int v10, v9, v0

    sub-int v10, v8, v10

    array-length v11, v6

    if-nez v11, :cond_5f

    const/4 v11, 0x1

    if-lt v10, v11, :cond_5e

    const/16 v12, 0x3a0

    if-gt v10, v12, :cond_5e

    invoke-virtual {v3, v10}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_4c

    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5f
    const/4 v11, 0x1

    const/16 v12, 0x3a0

    const/4 v13, 0x0

    aget v6, v6, v13

    if-eq v6, v10, :cond_60

    if-lt v10, v11, :cond_60

    if-gt v10, v12, :cond_60

    invoke-virtual {v3, v10}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_60
    :goto_4c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v6, v8, [I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_4d
    if-ge v11, v7, :cond_64

    const/4 v12, 0x0

    :goto_4e
    if-ge v12, v5, :cond_63

    aget-object v13, v2, v11

    const/4 v14, 0x1

    add-int/lit8 v15, v12, 0x1

    aget-object v13, v13, v15

    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    mul-int v14, v11, v5

    add-int/2addr v14, v12

    array-length v12, v13

    if-nez v12, :cond_61

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    goto :goto_4f

    :cond_61
    array-length v12, v13

    const/4 v9, 0x1

    if-ne v12, v9, :cond_62

    const/4 v12, 0x0

    aget v13, v13, v12

    aput v13, v6, v14

    goto :goto_4f

    :cond_62
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4f
    move v12, v15

    const/4 v9, 0x2

    goto :goto_4e

    :cond_63
    const/4 v9, 0x1

    add-int/2addr v11, v9

    const/4 v9, 0x2

    goto :goto_4d

    :cond_64
    const/4 v9, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [[I

    const/4 v7, 0x0

    :goto_50
    if-ge v7, v2, :cond_65

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aput-object v11, v5, v7

    add-int/2addr v7, v9

    goto :goto_50

    :cond_65
    invoke-static {v3}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-static {v10}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    array-length v7, v3

    new-array v8, v7, [I

    const/16 v9, 0x64

    const/4 v10, -0x1

    :goto_51
    add-int/lit8 v11, v9, -0x1

    if-lez v9, :cond_6c

    const/4 v9, 0x0

    :goto_52
    if-ge v9, v7, :cond_66

    aget v12, v3, v9

    aget-object v13, v5, v9

    aget v14, v8, v9

    aget v13, v13, v14

    aput v13, v6, v12

    const/4 v12, 0x1

    add-int/2addr v9, v12

    goto :goto_52

    :cond_66
    :try_start_0
    invoke-static {v6, v0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/google/zxing/Result;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    iget-object v5, v0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9, v1, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    iget-object v3, v0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    iget-object v3, v0, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERASURES_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    iget-object v3, v0, Lcom/google/zxing/common/DecoderResult;->erasures:Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    if-eqz v0, :cond_67

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_67
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    iget v1, v4, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->rotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v1, "]L0"

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    move-object/from16 v12, v37

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v12

    move/from16 v8, v17

    move-object/from16 v0, v34

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_9

    :catch_0
    move-object/from16 v12, v37

    const/4 v9, 0x0

    if-eqz v7, :cond_6b

    const/4 v13, 0x0

    :goto_53
    if-ge v13, v7, :cond_6a

    aget v14, v8, v13

    aget-object v15, v5, v13

    array-length v15, v15

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_68

    add-int/lit8 v14, v14, 0x1

    aput v14, v8, v13

    goto :goto_54

    :cond_68
    const/4 v14, 0x0

    aput v14, v8, v13

    add-int/lit8 v14, v7, -0x1

    if-eq v13, v14, :cond_69

    add-int/lit8 v13, v13, 0x1

    goto :goto_53

    :cond_69
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_6a
    const/16 v18, 0x1

    :goto_54
    move v9, v11

    move-object/from16 v37, v12

    goto/16 :goto_51

    :cond_6b
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_6c
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_6d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6e
    move-object v12, v3

    sget-object v0, Lcom/google/zxing/pdf417/PDF417Reader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/Result;

    array-length v1, v0

    if-eqz v1, :cond_6f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_6f

    return-object v0

    :cond_6f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final reset()V
    .locals 0

    return-void
.end method
