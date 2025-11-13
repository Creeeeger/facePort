.class public final Landroidx/compose/ui/graphics/vector/PathParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public nodeData:[F


# direct methods
.method public static pathStringToNodes$default(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x20

    if-ge v5, v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v3, v5, :cond_1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v5, v3, :cond_56

    :goto_3
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/lit8 v9, v5, 0x20

    add-int/lit8 v10, v9, -0x61

    add-int/lit8 v11, v9, -0x7a

    mul-int/2addr v11, v10

    const/16 v10, 0x65

    if-gtz v11, :cond_2

    if-eq v9, v10, :cond_2

    goto :goto_4

    :cond_2
    if-lt v8, v3, :cond_55

    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_54

    or-int/lit8 v9, v5, 0x20

    const/16 v11, 0x7a

    if-eq v9, v11, :cond_39

    const/4 v7, 0x0

    :goto_5
    if-ge v8, v3, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    const-wide v14, 0xffffffffL

    const/high16 v9, 0x7fc00000    # Float.NaN

    if-ne v8, v3, :cond_4

    move/from16 v17, v5

    int-to-long v4, v8

    shl-long/2addr v4, v6

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    :goto_6
    int-to-long v8, v8

    and-long/2addr v8, v14

    or-long/2addr v4, v8

    move-object/from16 v33, v2

    move v9, v3

    move v2, v6

    move/from16 v32, v7

    move-wide v7, v14

    goto/16 :goto_24

    :cond_4
    move/from16 v17, v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    const/16 v18, 0x1

    goto :goto_7

    :cond_5
    const/16 v18, 0x0

    :goto_7
    const/16 v13, 0xa

    const/16 v11, 0x2e

    if-eqz v18, :cond_8

    add-int/lit8 v4, v8, 0x1

    if-ne v4, v3, :cond_6

    int-to-long v4, v4

    shl-long/2addr v4, v6

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v5, v12, -0x30

    int-to-char v5, v5

    if-ge v5, v13, :cond_7

    goto :goto_8

    :cond_7
    if-eq v12, v11, :cond_9

    int-to-long v4, v4

    shl-long/2addr v4, v6

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    goto :goto_6

    :cond_8
    move v12, v4

    move v4, v8

    :cond_9
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const-wide/16 v22, 0x0

    move v10, v4

    move-wide/from16 v25, v22

    :goto_9
    const-wide/16 v27, 0xa

    if-eq v10, v3, :cond_b

    add-int/lit8 v14, v12, -0x30

    int-to-char v15, v14

    if-ge v15, v13, :cond_b

    mul-long v25, v25, v27

    int-to-long v14, v14

    add-long v25, v25, v14

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v5, :cond_a

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    :goto_a
    const-wide v14, 0xffffffffL

    goto :goto_9

    :cond_b
    sub-int v14, v10, v4

    const/16 v15, 0x30

    const/16 v29, 0x10

    if-eq v10, v3, :cond_11

    if-ne v12, v11, :cond_11

    add-int/lit8 v12, v10, 0x1

    move v11, v12

    :goto_b
    sub-int v9, v3, v11

    const/4 v13, 0x4

    if-lt v9, v13, :cond_d

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v32, v7

    int-to-long v6, v9

    add-int/lit8 v9, v11, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v33, v14

    int-to-long v13, v9

    shl-long v13, v13, v29

    or-long/2addr v6, v13

    add-int/lit8 v9, v11, 0x2

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-long v13, v9

    const/16 v9, 0x20

    shl-long v34, v13, v9

    or-long v6, v6, v34

    add-int/lit8 v9, v11, 0x3

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-long v13, v9

    shl-long/2addr v13, v15

    or-long/2addr v6, v13

    const-wide v13, 0x30003000300030L

    sub-long v13, v6, v13

    const-wide v35, 0x46004600460046L    # 2.447700077935472E-307

    add-long v6, v6, v35

    or-long/2addr v6, v13

    const-wide v35, -0x7f007f007f0080L

    and-long v6, v6, v35

    cmp-long v6, v6, v22

    if-eqz v6, :cond_c

    const/4 v6, -0x1

    goto :goto_c

    :cond_c
    const-wide v6, 0x3e80064000a0001L

    mul-long/2addr v13, v6

    ushr-long v6, v13, v15

    long-to-int v6, v6

    :goto_c
    if-ltz v6, :cond_e

    const-wide/16 v13, 0x2710

    mul-long v25, v25, v13

    int-to-long v6, v6

    add-long v25, v25, v6

    add-int/lit8 v11, v11, 0x4

    move/from16 v7, v32

    move/from16 v14, v33

    const/16 v6, 0x20

    const/16 v13, 0xa

    goto :goto_b

    :cond_d
    move/from16 v32, v7

    move/from16 v33, v14

    :cond_e
    if-ge v11, v5, :cond_f

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_d

    :cond_f
    const/4 v6, 0x0

    :goto_d
    if-eq v11, v3, :cond_10

    add-int/lit8 v7, v6, -0x30

    int-to-char v9, v7

    const/16 v13, 0xa

    if-ge v9, v13, :cond_10

    mul-long v25, v25, v27

    int-to-long v6, v7

    add-long v25, v25, v6

    add-int/lit8 v11, v11, 0x1

    if-ge v11, v5, :cond_f

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_d

    :cond_10
    sub-int v7, v12, v11

    sub-int v14, v33, v7

    move/from16 v37, v12

    move v12, v6

    move/from16 v6, v37

    goto :goto_e

    :cond_11
    move/from16 v32, v7

    move/from16 v33, v14

    move v6, v10

    move v11, v6

    move/from16 v14, v33

    const/4 v7, 0x0

    :goto_e
    if-nez v14, :cond_12

    int-to-long v4, v11

    const/16 v9, 0x20

    shl-long/2addr v4, v9

    const/high16 v6, 0x7fc00000    # Float.NaN

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    move-object/from16 v33, v2

    move v2, v9

    const-wide v7, 0xffffffffL

    move v9, v3

    goto/16 :goto_24

    :cond_12
    const/16 v9, 0x20

    or-int/2addr v12, v9

    const/16 v13, 0x65

    if-ne v12, v13, :cond_1c

    add-int/lit8 v12, v11, 0x1

    if-ge v12, v5, :cond_13

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v13, v24

    const/16 v9, 0x2d

    goto :goto_f

    :cond_13
    const/16 v9, 0x2d

    const/4 v13, 0x0

    :goto_f
    if-ne v13, v9, :cond_14

    const/4 v9, 0x1

    goto :goto_10

    :cond_14
    const/4 v9, 0x0

    :goto_10
    if-nez v9, :cond_15

    const/16 v15, 0x2b

    if-ne v13, v15, :cond_16

    :cond_15
    add-int/lit8 v12, v11, 0x2

    :cond_16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v15, 0x0

    :goto_11
    if-eq v12, v3, :cond_19

    const/16 v31, 0x30

    add-int/lit8 v13, v13, -0x30

    move-object/from16 v33, v2

    int-to-char v2, v13

    const/16 v0, 0xa

    if-ge v2, v0, :cond_1a

    const/16 v2, 0x400

    if-ge v15, v2, :cond_17

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v13

    :cond_17
    add-int/lit8 v12, v12, 0x1

    if-ge v12, v5, :cond_18

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v13, v2

    goto :goto_12

    :cond_18
    const/4 v13, 0x0

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v2, v33

    goto :goto_11

    :cond_19
    move-object/from16 v33, v2

    :cond_1a
    if-eqz v9, :cond_1b

    neg-int v0, v15

    move v15, v0

    :cond_1b
    add-int/2addr v7, v15

    goto :goto_13

    :cond_1c
    move-object/from16 v33, v2

    move v12, v11

    const/4 v15, 0x0

    :goto_13
    const/16 v0, 0x13

    if-le v14, v0, :cond_27

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v9, v4

    :goto_14
    if-eq v12, v3, :cond_21

    const/16 v13, 0x30

    const/16 v0, 0x2e

    if-eq v2, v13, :cond_1e

    if-ne v2, v0, :cond_1d

    goto :goto_15

    :cond_1d
    const/16 v0, 0x13

    goto :goto_17

    :cond_1e
    :goto_15
    if-ne v2, v13, :cond_1f

    add-int/lit8 v14, v14, -0x1

    :cond_1f
    const/4 v2, 0x1

    add-int/2addr v9, v2

    if-ge v9, v5, :cond_20

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_16

    :cond_20
    const/4 v2, 0x0

    :goto_16
    const/16 v0, 0x13

    goto :goto_14

    :cond_21
    :goto_17
    if-le v14, v0, :cond_27

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v9, v3

    move-wide/from16 v13, v22

    :goto_18
    const-wide v2, 0xde0b6b3a7640000L

    if-eq v4, v10, :cond_23

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v7

    if-gez v7, :cond_23

    mul-long v13, v13, v27

    const/16 v2, 0x30

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v13, v2

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_22

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_18

    :cond_22
    const/4 v0, 0x0

    goto :goto_18

    :cond_23
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-ltz v0, :cond_24

    sub-int/2addr v10, v4

    add-int v7, v10, v15

    :goto_19
    const/4 v0, 0x1

    goto :goto_1c

    :cond_24
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v4, v6

    :goto_1a
    if-eq v4, v11, :cond_26

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v7

    if-gez v7, :cond_26

    mul-long v13, v13, v27

    const/16 v7, 0x30

    sub-int/2addr v0, v7

    int-to-long v2, v0

    add-long/2addr v13, v2

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_25

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1b

    :cond_25
    const/4 v0, 0x0

    :goto_1b
    const-wide v2, 0xde0b6b3a7640000L

    goto :goto_1a

    :cond_26
    sub-int/2addr v6, v4

    add-int v7, v6, v15

    goto :goto_19

    :cond_27
    move v9, v3

    move-wide/from16 v13, v25

    const/4 v0, 0x0

    :goto_1c
    const/16 v2, -0xa

    if-gt v2, v7, :cond_2a

    const/16 v2, 0xb

    if-ge v7, v2, :cond_2a

    if-nez v0, :cond_2a

    const-wide/32 v2, 0x1000000

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_2a

    long-to-float v0, v13

    sget-object v2, Landroidx/compose/ui/graphics/vector/FastFloatParserKt;->PowersOfTen:[F

    if-gez v7, :cond_28

    neg-int v3, v7

    aget v2, v2, v3

    div-float/2addr v0, v2

    goto :goto_1d

    :cond_28
    aget v2, v2, v7

    mul-float/2addr v0, v2

    :goto_1d
    if-eqz v18, :cond_29

    neg-float v0, v0

    :cond_29
    int-to-long v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    :goto_1e
    int-to-long v5, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v2, v5

    move-wide v4, v2

    :goto_1f
    const/16 v2, 0x20

    const-wide v7, 0xffffffffL

    goto/16 :goto_24

    :cond_2a
    cmp-long v0, v13, v22

    if-nez v0, :cond_2c

    if-eqz v18, :cond_2b

    const/high16 v0, -0x80000000

    goto :goto_20

    :cond_2b
    const/4 v0, 0x0

    :goto_20
    int-to-long v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    goto :goto_1e

    :cond_2c
    const/16 v0, -0x7e

    const-string/jumbo v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-gt v0, v7, :cond_33

    const/16 v0, 0x80

    if-ge v7, v0, :cond_33

    sget-object v0, Landroidx/compose/ui/graphics/vector/FastFloatParserKt;->Mantissa64:[J

    add-int/lit16 v3, v7, 0x145

    aget-wide v5, v0, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    shl-long v10, v13, v0

    const-wide v13, 0xffffffffL

    and-long v25, v10, v13

    const/16 v3, 0x20

    ushr-long/2addr v10, v3

    and-long v27, v5, v13

    ushr-long v4, v5, v3

    mul-long v30, v10, v4

    mul-long v4, v4, v25

    mul-long v10, v10, v27

    mul-long v25, v25, v27

    ushr-long v25, v25, v3

    add-long v10, v10, v25

    and-long v25, v4, v13

    add-long v10, v10, v25

    ushr-long/2addr v10, v3

    add-long v30, v30, v10

    ushr-long/2addr v4, v3

    add-long v30, v30, v4

    const/16 v4, 0x3f

    ushr-long v5, v30, v4

    long-to-int v5, v5

    add-int/lit8 v6, v5, 0x9

    ushr-long v10, v30, v6

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    add-int/2addr v0, v5

    const-wide/16 v5, 0x1ff

    and-long v13, v30, v5

    cmp-long v5, v13, v5

    if-eqz v5, :cond_2d

    cmp-long v5, v13, v22

    const-wide/16 v13, 0x1

    if-nez v5, :cond_2e

    const-wide/16 v5, 0x3

    and-long/2addr v5, v10

    cmp-long v5, v5, v13

    if-nez v5, :cond_2e

    :cond_2d
    const/16 v3, 0x20

    const-wide v10, 0xffffffffL

    goto :goto_23

    :cond_2e
    add-long/2addr v10, v13

    const/4 v5, 0x1

    ushr-long/2addr v10, v5

    const-wide/high16 v5, 0x20000000000000L

    cmp-long v5, v10, v5

    if-ltz v5, :cond_2f

    add-int/lit8 v0, v0, -0x1

    const-wide/high16 v10, 0x10000000000000L

    :cond_2f
    const-wide v5, -0x10000000000001L

    and-long/2addr v5, v10

    const-wide/32 v10, 0x3526a

    int-to-long v13, v7

    mul-long/2addr v13, v10

    shr-long v10, v13, v29

    const/16 v7, 0x400

    int-to-long v13, v7

    add-long/2addr v10, v13

    int-to-long v13, v4

    add-long/2addr v10, v13

    int-to-long v13, v0

    sub-long/2addr v10, v13

    const-wide/16 v13, 0x1

    cmp-long v0, v10, v13

    if-ltz v0, :cond_30

    const-wide/16 v13, 0x7fe

    cmp-long v0, v10, v13

    if-lez v0, :cond_31

    :cond_30
    const/16 v3, 0x20

    const-wide v10, 0xffffffffL

    goto :goto_22

    :cond_31
    const/16 v0, 0x34

    shl-long v7, v10, v0

    or-long v4, v5, v7

    if-eqz v18, :cond_32

    const-wide/high16 v22, -0x8000000000000000L

    :cond_32
    or-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    double-to-float v0, v4

    int-to-long v4, v12

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    const-wide v10, 0xffffffffL

    :goto_21
    and-long/2addr v6, v10

    or-long/2addr v4, v6

    move v2, v3

    move-wide v7, v10

    goto :goto_24

    :goto_22
    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-long v4, v12

    shl-long/2addr v4, v3

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    goto :goto_21

    :goto_23
    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-long v4, v12

    shl-long/2addr v4, v3

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    goto/16 :goto_1f

    :cond_33
    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-long v4, v12

    const/16 v2, 0x20

    shl-long v3, v4, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long v4, v3, v5

    :goto_24
    ushr-long v10, v4, v2

    long-to-int v0, v10

    and-long v3, v4, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_35

    move-object/from16 v4, p0

    iget-object v5, v4, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    add-int/lit8 v7, v32, 0x1

    aput v3, v5, v32

    array-length v6, v5

    if-lt v7, v6, :cond_34

    mul-int/lit8 v6, v7, 0x2

    new-array v6, v6, [F

    iput-object v6, v4, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    array-length v8, v5

    const/4 v10, 0x0

    invoke-static {v5, v10, v6, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_34
    move v8, v0

    goto :goto_25

    :cond_35
    move-object/from16 v4, p0

    move v8, v0

    move/from16 v7, v32

    :goto_25
    if-ge v8, v9, :cond_36

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_36

    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_36
    if-ge v8, v9, :cond_38

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_26

    :cond_37
    move v6, v2

    move-object v0, v4

    move v3, v9

    move/from16 v5, v17

    move-object/from16 v2, v33

    const/16 v10, 0x65

    const/16 v11, 0x7a

    goto/16 :goto_5

    :cond_38
    :goto_26
    move v5, v8

    goto :goto_27

    :cond_39
    move-object v4, v0

    move-object/from16 v33, v2

    move v9, v3

    move/from16 v17, v5

    move v2, v6

    goto :goto_26

    :goto_27
    iget-object v0, v4, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    move/from16 v3, v17

    const/16 v6, 0x7a

    if-ne v3, v6, :cond_3a

    goto :goto_28

    :cond_3a
    const/16 v6, 0x5a

    if-ne v3, v6, :cond_3c

    :goto_28
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    move-object/from16 v6, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    const/4 v11, 0x0

    goto/16 :goto_3f

    :cond_3c
    move-object/from16 v6, v33

    const/16 v8, 0x6d

    const/4 v10, 0x2

    if-ne v3, v8, :cond_3d

    add-int/lit8 v3, v7, -0x2

    if-ltz v3, :cond_3b

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    const/4 v11, 0x0

    aget v12, v0, v11

    const/4 v11, 0x1

    aget v11, v0, v11

    invoke-direct {v8, v12, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    if-gt v10, v3, :cond_3b

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v11, v0, v10

    add-int/lit8 v12, v10, 0x1

    aget v12, v0, v12

    invoke-direct {v8, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_29

    :cond_3d
    const/16 v8, 0x4d

    if-ne v3, v8, :cond_3e

    add-int/lit8 v3, v7, -0x2

    if-ltz v3, :cond_3b

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    const/4 v11, 0x0

    aget v12, v0, v11

    const/4 v13, 0x1

    aget v13, v0, v13

    invoke-direct {v8, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    invoke-direct {v8, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_2a

    :cond_3e
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/16 v8, 0x6c

    if-ne v3, v8, :cond_3f

    add-int/lit8 v3, v7, -0x2

    move v10, v11

    :goto_2b
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    invoke-direct {v8, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_2b

    :cond_3f
    const/16 v8, 0x4c

    if-ne v3, v8, :cond_40

    add-int/lit8 v3, v7, -0x2

    move v10, v11

    :goto_2c
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    invoke-direct {v8, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_2c

    :cond_40
    const/16 v8, 0x68

    if-ne v3, v8, :cond_41

    add-int/lit8 v3, v7, -0x1

    move v10, v11

    :goto_2d
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    aget v12, v0, v10

    invoke-direct {v8, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_41
    const/16 v8, 0x48

    if-ne v3, v8, :cond_42

    add-int/lit8 v3, v7, -0x1

    move v10, v11

    :goto_2e
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    aget v12, v0, v10

    invoke-direct {v8, v12}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_42
    const/16 v8, 0x76

    if-ne v3, v8, :cond_43

    add-int/lit8 v3, v7, -0x1

    move v10, v11

    :goto_2f
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    aget v12, v0, v10

    invoke-direct {v8, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_43
    const/16 v8, 0x56

    if-ne v3, v8, :cond_44

    add-int/lit8 v3, v7, -0x1

    move v10, v11

    :goto_30
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    aget v12, v0, v10

    invoke-direct {v8, v12}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_44
    const/16 v8, 0x63

    if-ne v3, v8, :cond_45

    add-int/lit8 v3, v7, -0x6

    move v10, v11

    :goto_31
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    aget v13, v0, v10

    add-int/lit8 v12, v10, 0x1

    aget v14, v0, v12

    add-int/lit8 v12, v10, 0x2

    aget v15, v0, v12

    add-int/lit8 v12, v10, 0x3

    aget v16, v0, v12

    add-int/lit8 v12, v10, 0x4

    aget v17, v0, v12

    add-int/lit8 v12, v10, 0x5

    aget v18, v0, v12

    move-object v12, v8

    invoke-direct/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x6

    goto :goto_31

    :cond_45
    const/16 v8, 0x43

    if-ne v3, v8, :cond_46

    add-int/lit8 v3, v7, -0x6

    move v10, v11

    :goto_32
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    aget v13, v0, v10

    add-int/lit8 v12, v10, 0x1

    aget v14, v0, v12

    add-int/lit8 v12, v10, 0x2

    aget v15, v0, v12

    add-int/lit8 v12, v10, 0x3

    aget v16, v0, v12

    add-int/lit8 v12, v10, 0x4

    aget v17, v0, v12

    add-int/lit8 v12, v10, 0x5

    aget v18, v0, v12

    move-object v12, v8

    invoke-direct/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x6

    goto :goto_32

    :cond_46
    const/16 v8, 0x73

    if-ne v3, v8, :cond_47

    add-int/lit8 v3, v7, -0x4

    move v10, v11

    :goto_33
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    add-int/lit8 v14, v10, 0x2

    aget v14, v0, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v0, v15

    invoke-direct {v8, v12, v13, v14, v15}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x4

    goto :goto_33

    :cond_47
    const/16 v8, 0x53

    if-ne v3, v8, :cond_48

    add-int/lit8 v3, v7, -0x4

    move v10, v11

    :goto_34
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    add-int/lit8 v14, v10, 0x2

    aget v14, v0, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v0, v15

    invoke-direct {v8, v12, v13, v14, v15}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x4

    goto :goto_34

    :cond_48
    const/16 v8, 0x71

    if-ne v3, v8, :cond_49

    add-int/lit8 v3, v7, -0x4

    move v10, v11

    :goto_35
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    add-int/lit8 v14, v10, 0x2

    aget v14, v0, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v0, v15

    invoke-direct {v8, v12, v13, v14, v15}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x4

    goto :goto_35

    :cond_49
    const/16 v8, 0x51

    if-ne v3, v8, :cond_4a

    add-int/lit8 v3, v7, -0x4

    move v10, v11

    :goto_36
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    add-int/lit8 v14, v10, 0x2

    aget v14, v0, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v0, v15

    invoke-direct {v8, v12, v13, v14, v15}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x4

    goto :goto_36

    :cond_4a
    const/16 v8, 0x74

    if-ne v3, v8, :cond_4b

    add-int/lit8 v3, v7, -0x2

    move v10, v11

    :goto_37
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    invoke-direct {v8, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_37

    :cond_4b
    const/16 v8, 0x54

    if-ne v3, v8, :cond_4c

    add-int/lit8 v3, v7, -0x2

    move v10, v11

    :goto_38
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    aget v12, v0, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v0, v13

    invoke-direct {v8, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_38

    :cond_4c
    const/16 v8, 0x61

    if-ne v3, v8, :cond_4f

    add-int/lit8 v3, v7, -0x7

    move v10, v11

    :goto_39
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    aget v20, v0, v10

    add-int/lit8 v12, v10, 0x1

    aget v21, v0, v12

    add-int/lit8 v12, v10, 0x2

    aget v22, v0, v12

    add-int/lit8 v12, v10, 0x3

    aget v12, v0, v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_4d

    move/from16 v23, v13

    goto :goto_3a

    :cond_4d
    move/from16 v23, v11

    :goto_3a
    add-int/lit8 v12, v10, 0x4

    aget v12, v0, v12

    invoke-static {v12, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_4e

    move/from16 v24, v13

    goto :goto_3b

    :cond_4e
    move/from16 v24, v11

    :goto_3b
    add-int/lit8 v12, v10, 0x5

    aget v25, v0, v12

    add-int/lit8 v12, v10, 0x6

    aget v26, v0, v12

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v26}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x7

    goto :goto_39

    :cond_4f
    const/16 v8, 0x41

    if-ne v3, v8, :cond_53

    add-int/lit8 v3, v7, -0x7

    move v10, v11

    :goto_3c
    if-gt v10, v3, :cond_52

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    aget v20, v0, v10

    add-int/lit8 v12, v10, 0x1

    aget v21, v0, v12

    add-int/lit8 v12, v10, 0x2

    aget v22, v0, v12

    add-int/lit8 v12, v10, 0x3

    aget v12, v0, v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_50

    move/from16 v23, v13

    goto :goto_3d

    :cond_50
    move/from16 v23, v11

    :goto_3d
    add-int/lit8 v12, v10, 0x4

    aget v12, v0, v12

    invoke-static {v12, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_51

    move/from16 v24, v13

    goto :goto_3e

    :cond_51
    move/from16 v24, v11

    :goto_3e
    add-int/lit8 v12, v10, 0x5

    aget v25, v0, v12

    add-int/lit8 v12, v10, 0x6

    aget v26, v0, v12

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v26}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x7

    goto :goto_3c

    :cond_52
    :goto_3f
    move-object v0, v4

    move v3, v9

    :goto_40
    move-object/from16 v37, v6

    move v6, v2

    move-object/from16 v2, v37

    goto/16 :goto_2

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown command for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    const/4 v11, 0x0

    move/from16 v37, v6

    move-object v6, v2

    move/from16 v2, v37

    move v5, v8

    goto :goto_40

    :cond_55
    const/4 v11, 0x0

    move/from16 v37, v6

    move-object v6, v2

    move/from16 v2, v37

    move v5, v8

    move-object/from16 v37, v6

    move v6, v2

    move-object/from16 v2, v37

    goto/16 :goto_3

    :cond_56
    move-object v6, v2

    return-object v6
.end method
