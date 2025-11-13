.class public abstract Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final POSITION_ADJUSTMENT_PATTERN:[[I

.field public static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field public static final POSITION_DETECTION_PATTERN:[[I

.field public static final TYPE_INFO_COORDINATES:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 50

    const/4 v0, 0x1

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v9, 0x0

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    new-array v5, v1, [I

    fill-array-data v5, :array_3

    new-array v6, v1, [I

    fill-array-data v6, :array_4

    new-array v7, v1, [I

    fill-array-data v7, :array_5

    new-array v8, v1, [I

    fill-array-data v8, :array_6

    filled-new-array/range {v2 .. v8}, [[I

    move-result-object v2

    sput-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v2

    filled-new-array {v0, v9, v9, v9, v0}, [I

    move-result-object v3

    filled-new-array {v0, v9, v0, v9, v0}, [I

    move-result-object v4

    filled-new-array {v0, v9, v9, v9, v0}, [I

    move-result-object v5

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [[I

    move-result-object v2

    sput-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    new-array v2, v1, [I

    move-object v10, v2

    fill-array-data v2, :array_7

    new-array v2, v1, [I

    move-object v11, v2

    fill-array-data v2, :array_8

    new-array v2, v1, [I

    move-object v12, v2

    fill-array-data v2, :array_9

    new-array v2, v1, [I

    move-object v13, v2

    fill-array-data v2, :array_a

    new-array v2, v1, [I

    move-object v14, v2

    fill-array-data v2, :array_b

    new-array v2, v1, [I

    move-object v15, v2

    fill-array-data v2, :array_c

    new-array v2, v1, [I

    move-object/from16 v16, v2

    fill-array-data v2, :array_d

    new-array v2, v1, [I

    move-object/from16 v17, v2

    fill-array-data v2, :array_e

    new-array v2, v1, [I

    move-object/from16 v18, v2

    fill-array-data v2, :array_f

    new-array v2, v1, [I

    move-object/from16 v19, v2

    fill-array-data v2, :array_10

    new-array v2, v1, [I

    move-object/from16 v20, v2

    fill-array-data v2, :array_11

    new-array v2, v1, [I

    move-object/from16 v21, v2

    fill-array-data v2, :array_12

    new-array v2, v1, [I

    move-object/from16 v22, v2

    fill-array-data v2, :array_13

    new-array v2, v1, [I

    move-object/from16 v23, v2

    fill-array-data v2, :array_14

    new-array v2, v1, [I

    move-object/from16 v24, v2

    fill-array-data v2, :array_15

    new-array v2, v1, [I

    move-object/from16 v25, v2

    fill-array-data v2, :array_16

    new-array v2, v1, [I

    move-object/from16 v26, v2

    fill-array-data v2, :array_17

    new-array v2, v1, [I

    move-object/from16 v27, v2

    fill-array-data v2, :array_18

    new-array v2, v1, [I

    move-object/from16 v28, v2

    fill-array-data v2, :array_19

    new-array v2, v1, [I

    move-object/from16 v29, v2

    fill-array-data v2, :array_1a

    new-array v2, v1, [I

    move-object/from16 v30, v2

    fill-array-data v2, :array_1b

    new-array v2, v1, [I

    move-object/from16 v31, v2

    fill-array-data v2, :array_1c

    new-array v2, v1, [I

    move-object/from16 v32, v2

    fill-array-data v2, :array_1d

    new-array v2, v1, [I

    move-object/from16 v33, v2

    fill-array-data v2, :array_1e

    new-array v2, v1, [I

    move-object/from16 v34, v2

    fill-array-data v2, :array_1f

    new-array v2, v1, [I

    move-object/from16 v35, v2

    fill-array-data v2, :array_20

    new-array v2, v1, [I

    move-object/from16 v36, v2

    fill-array-data v2, :array_21

    new-array v2, v1, [I

    move-object/from16 v37, v2

    fill-array-data v2, :array_22

    new-array v2, v1, [I

    move-object/from16 v38, v2

    fill-array-data v2, :array_23

    new-array v2, v1, [I

    move-object/from16 v39, v2

    fill-array-data v2, :array_24

    new-array v2, v1, [I

    move-object/from16 v40, v2

    fill-array-data v2, :array_25

    new-array v2, v1, [I

    move-object/from16 v41, v2

    fill-array-data v2, :array_26

    new-array v2, v1, [I

    move-object/from16 v42, v2

    fill-array-data v2, :array_27

    new-array v2, v1, [I

    move-object/from16 v43, v2

    fill-array-data v2, :array_28

    new-array v2, v1, [I

    move-object/from16 v44, v2

    fill-array-data v2, :array_29

    new-array v2, v1, [I

    move-object/from16 v45, v2

    fill-array-data v2, :array_2a

    new-array v2, v1, [I

    move-object/from16 v46, v2

    fill-array-data v2, :array_2b

    new-array v2, v1, [I

    move-object/from16 v47, v2

    fill-array-data v2, :array_2c

    new-array v2, v1, [I

    move-object/from16 v48, v2

    fill-array-data v2, :array_2d

    new-array v2, v1, [I

    move-object/from16 v49, v2

    fill-array-data v2, :array_2e

    filled-new-array/range {v10 .. v49}, [[I

    move-result-object v2

    sput-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    const/16 v2, 0x8

    filled-new-array {v2, v9}, [I

    move-result-object v10

    filled-new-array {v2, v0}, [I

    move-result-object v11

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v12

    const/4 v4, 0x3

    filled-new-array {v2, v4}, [I

    move-result-object v13

    const/4 v5, 0x4

    filled-new-array {v2, v5}, [I

    move-result-object v14

    const/4 v6, 0x5

    filled-new-array {v2, v6}, [I

    move-result-object v15

    filled-new-array {v2, v1}, [I

    move-result-object v16

    filled-new-array {v2, v2}, [I

    move-result-object v17

    filled-new-array {v1, v2}, [I

    move-result-object v18

    filled-new-array {v6, v2}, [I

    move-result-object v19

    filled-new-array {v5, v2}, [I

    move-result-object v20

    filled-new-array {v4, v2}, [I

    move-result-object v21

    filled-new-array {v3, v2}, [I

    move-result-object v22

    filled-new-array {v0, v2}, [I

    move-result-object v23

    filled-new-array {v9, v2}, [I

    move-result-object v24

    filled-new-array/range {v10 .. v24}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method public static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, -0x1

    if-ge v6, v4, :cond_0

    aget-object v8, v3, v6

    invoke-static {v8, v7}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v3, v3, v5

    array-length v3, v3

    invoke-static {v5, v5, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    iget v4, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    sub-int v3, v4, v3

    invoke-static {v3, v5, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v5, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v3, 0x7

    invoke-static {v5, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    add-int/lit8 v6, v4, -0x8

    invoke-static {v6, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v5, v6, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v3, v5, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    iget v8, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    add-int/lit8 v9, v8, -0x8

    invoke-static {v9, v5, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    add-int/lit8 v10, v8, -0x7

    invoke-static {v3, v10, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/16 v11, 0x8

    invoke-virtual {v2, v11, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v12

    if-eqz v12, :cond_1e

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v9, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    const/4 v9, 0x2

    move-object/from16 v13, p2

    iget v13, v13, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/4 v14, 0x5

    if-ge v13, v9, :cond_1

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v15, v13, -0x1

    sget-object v16, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v15, v16, v15

    array-length v7, v15

    move v9, v5

    :goto_1
    if-ge v9, v7, :cond_6

    aget v3, v15, v9

    if-ltz v3, :cond_5

    array-length v12, v15

    :goto_2
    if-ge v5, v12, :cond_5

    aget v11, v15, v5

    if-ltz v11, :cond_4

    invoke-virtual {v2, v11, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v20

    if-eqz v20, :cond_4

    add-int/lit8 v11, v11, -0x2

    add-int/lit8 v20, v3, -0x2

    move/from16 p2, v3

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v14, :cond_3

    sget-object v21, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v21, v21, v3

    move/from16 v22, v7

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v14, :cond_2

    add-int v14, v11, v7

    move/from16 v23, v11

    add-int v11, v20, v3

    move/from16 v24, v12

    aget v12, v21, v7

    invoke-virtual {v2, v14, v11, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v23

    move/from16 v12, v24

    const/4 v14, 0x5

    goto :goto_4

    :cond_2
    move/from16 v23, v11

    move/from16 v24, v12

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v22

    const/4 v14, 0x5

    goto :goto_3

    :cond_3
    :goto_5
    move/from16 v22, v7

    move/from16 v24, v12

    goto :goto_6

    :cond_4
    move/from16 p2, v3

    goto :goto_5

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p2

    move/from16 v7, v22

    move/from16 v12, v24

    const/16 v11, 0x8

    const/4 v14, 0x5

    goto :goto_2

    :cond_5
    move/from16 v22, v7

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v22

    const/4 v3, 0x7

    const/4 v5, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v14, 0x5

    goto :goto_1

    :cond_6
    :goto_7
    const/16 v3, 0x8

    :goto_8
    const/4 v5, 0x6

    if-ge v3, v6, :cond_9

    add-int/lit8 v7, v3, 0x1

    rem-int/lit8 v9, v7, 0x2

    invoke-virtual {v2, v3, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v11

    invoke-static {v11}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v2, v3, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_7
    invoke-virtual {v2, v5, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v11

    invoke-static {v11}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v2, v5, v3, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_8
    move v3, v7

    goto :goto_8

    :cond_9
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-ltz v1, :cond_1d

    const/16 v6, 0x8

    if-ge v1, v6, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v6

    const/4 v7, 0x3

    shl-int/2addr v6, v7

    or-int/2addr v6, v1

    const/4 v9, 0x5

    invoke-virtual {v3, v6, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v9, 0x537

    invoke-static {v6, v9}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v6

    const/16 v9, 0xa

    invoke-virtual {v3, v6, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v6, Lcom/google/zxing/common/BitArray;

    invoke-direct {v6}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v9, 0x5412

    const/16 v11, 0xf

    invoke-virtual {v6, v9, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v9, v3, Lcom/google/zxing/common/BitArray;->size:I

    iget v12, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v9, v12, :cond_1c

    const/4 v9, 0x0

    :goto_9
    iget-object v12, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v14, v12

    if-ge v9, v14, :cond_a

    aget v14, v12, v9

    iget-object v15, v6, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v15, v15, v9

    xor-int/2addr v14, v15

    aput v14, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_a
    iget v6, v3, Lcom/google/zxing/common/BitArray;->size:I

    const-string/jumbo v9, "should not happen but we got: "

    if-ne v6, v11, :cond_1b

    const/4 v6, 0x0

    :goto_a
    iget v11, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v6, v11, :cond_c

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v6

    invoke-virtual {v3, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    sget-object v12, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v12, v12, v6

    const/4 v14, 0x0

    aget v15, v12, v14

    const/16 v19, 0x1

    aget v12, v12, v19

    invoke-virtual {v2, v15, v12, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    const/16 v12, 0x8

    if-ge v6, v12, :cond_b

    sub-int v15, v4, v6

    add-int/lit8 v15, v15, -0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v15, v6, -0x8

    add-int/2addr v15, v10

    move/from16 v25, v15

    move v15, v12

    move/from16 v12, v25

    :goto_b
    invoke-virtual {v2, v15, v12, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_c
    const/4 v6, 0x7

    const/4 v14, 0x0

    if-ge v13, v6, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_e

    :cond_e
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v3, v13, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v6, 0x1f25

    invoke-static {v13, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v6

    const/16 v10, 0xc

    invoke-virtual {v3, v6, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v6, v3, Lcom/google/zxing/common/BitArray;->size:I

    const/16 v10, 0x12

    if-ne v6, v10, :cond_1a

    const/16 v6, 0x11

    move v9, v14

    :goto_c
    if-ge v9, v5, :cond_d

    move v10, v14

    :goto_d
    if-ge v10, v7, :cond_f

    invoke-virtual {v3, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v12, v8, -0xb

    add-int/2addr v12, v10

    invoke-virtual {v2, v9, v12, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    invoke-virtual {v2, v12, v9, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :goto_e
    sub-int/2addr v4, v3

    add-int/lit8 v3, v8, -0x1

    move v6, v14

    const/4 v9, -0x1

    :goto_f
    if-lez v4, :cond_18

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v4, -0x1

    :cond_10
    :goto_10
    if-ltz v3, :cond_17

    if-ge v3, v8, :cond_17

    move v11, v14

    const/4 v10, 0x2

    :goto_11
    if-ge v11, v10, :cond_16

    sub-int v12, v4, v11

    invoke-virtual {v2, v12, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v13

    invoke-static {v13}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v13

    if-nez v13, :cond_11

    const/4 v15, -0x1

    const/16 v19, 0x1

    goto/16 :goto_19

    :cond_11
    iget v13, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v6, v13, :cond_12

    invoke-virtual {v0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v13

    add-int/lit8 v6, v6, 0x1

    :goto_12
    const/4 v15, -0x1

    goto :goto_13

    :cond_12
    move v13, v14

    goto :goto_12

    :goto_13
    if-eq v1, v15, :cond_14

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid mask pattern: "

    invoke-static {v1, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    mul-int v16, v3, v12

    rem-int/lit8 v16, v16, 0x3

    add-int v17, v3, v12

    const/16 v18, 0x1

    and-int/lit8 v17, v17, 0x1

    :goto_14
    add-int v16, v16, v17

    and-int/lit8 v16, v16, 0x1

    move/from16 v19, v18

    goto :goto_16

    :pswitch_1
    const/16 v18, 0x1

    mul-int v16, v3, v12

    and-int/lit8 v17, v16, 0x1

    rem-int/lit8 v16, v16, 0x3

    goto :goto_14

    :pswitch_2
    mul-int v16, v3, v12

    and-int/lit8 v17, v16, 0x1

    rem-int/lit8 v16, v16, 0x3

    add-int v16, v16, v17

    :goto_15
    const/16 v19, 0x1

    goto :goto_16

    :pswitch_3
    div-int/lit8 v16, v3, 0x2

    div-int/lit8 v17, v12, 0x3

    add-int v17, v17, v16

    const/16 v16, 0x1

    and-int/lit8 v17, v17, 0x1

    move/from16 v19, v16

    move/from16 v16, v17

    goto :goto_16

    :pswitch_4
    add-int v16, v3, v12

    rem-int/lit8 v16, v16, 0x3

    goto :goto_15

    :pswitch_5
    rem-int/lit8 v16, v12, 0x3

    goto :goto_15

    :pswitch_6
    and-int/lit8 v16, v3, 0x1

    goto :goto_15

    :pswitch_7
    add-int v16, v3, v12

    const/16 v19, 0x1

    and-int/lit8 v16, v16, 0x1

    :goto_16
    if-nez v16, :cond_13

    move/from16 v16, v19

    goto :goto_17

    :cond_13
    move/from16 v16, v14

    :goto_17
    if-eqz v16, :cond_15

    xor-int/lit8 v13, v13, 0x1

    goto :goto_18

    :cond_14
    const/16 v19, 0x1

    :cond_15
    :goto_18
    invoke-virtual {v2, v12, v3, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_19
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    :cond_16
    const/4 v15, -0x1

    const/16 v19, 0x1

    add-int/2addr v3, v9

    goto/16 :goto_10

    :cond_17
    const/4 v10, 0x2

    const/4 v15, -0x1

    const/16 v19, 0x1

    neg-int v9, v9

    add-int/2addr v3, v9

    add-int/lit8 v4, v4, -0x2

    goto/16 :goto_f

    :cond_18
    iget v1, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v6, v1, :cond_19

    return-void

    :cond_19
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not all bits consumed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static calculateBCHCode(II)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x20

    rsub-int/lit8 v0, v0, 0x1f

    shl-int/2addr p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    sub-int/2addr v0, v1

    shl-int v0, p1, v0

    xor-int/2addr p0, v0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "0 polynomial"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    add-int v2, p0, v1

    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2, p1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v3, v3, v1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    add-int v5, p0, v4

    add-int v6, p1, v1

    aget v7, v3, v4

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static isEmpty(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
