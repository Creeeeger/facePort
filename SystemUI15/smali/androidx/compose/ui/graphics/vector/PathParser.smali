.class public final Landroidx/compose/ui/graphics/vector/PathParser;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public nodeData:[F

.field public nodes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    return-void
.end method


# virtual methods
.method public final parsePathString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/graphics/vector/PathParser;->pathStringToNodes(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final pathStringToNodes(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0xa

    const/16 v4, 0x7a

    const/16 v5, 0x61

    const/16 v6, 0x20

    const/16 v7, 0x30

    const/4 v8, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_0

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_0

    add-int/2addr v14, v11

    goto :goto_0

    :cond_0
    :goto_1
    if-le v12, v14, :cond_1

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_1

    add-int/2addr v12, v8

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_2
    if-ge v14, v12, :cond_5b

    :goto_3
    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    or-int/lit8 v8, v14, 0x20

    add-int/lit8 v17, v8, -0x61

    add-int/lit8 v18, v8, -0x7a

    mul-int v18, v18, v17

    const/16 v5, 0x65

    if-gtz v18, :cond_2

    if-eq v8, v5, :cond_2

    goto :goto_4

    :cond_2
    if-lt v13, v12, :cond_5a

    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_59

    or-int/lit8 v8, v14, 0x20

    if-eq v8, v4, :cond_39

    const/4 v8, 0x0

    :goto_5
    if-ge v13, v12, :cond_3

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_3

    add-int/2addr v13, v11

    goto :goto_5

    :cond_3
    const-wide v19, 0xffffffffL

    const/high16 v15, 0x7fc00000    # Float.NaN

    if-ne v13, v12, :cond_4

    int-to-long v4, v13

    shl-long/2addr v4, v6

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v9, v13

    :goto_6
    and-long v9, v9, v19

    or-long/2addr v4, v9

    move-wide v2, v4

    move v4, v6

    move/from16 v32, v8

    :goto_7
    move v7, v12

    move/from16 v24, v14

    goto/16 :goto_28

    :cond_4
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    move v9, v11

    goto :goto_8

    :cond_5
    const/4 v9, 0x0

    :goto_8
    const/16 v10, 0x2e

    if-eqz v9, :cond_8

    add-int/lit8 v4, v13, 0x1

    if-ne v4, v12, :cond_6

    int-to-long v4, v4

    shl-long/2addr v4, v6

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    :goto_9
    int-to-long v9, v9

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v11, v5, -0x30

    int-to-char v11, v11

    if-ge v11, v3, :cond_7

    goto :goto_a

    :cond_7
    if-eq v5, v10, :cond_9

    int-to-long v4, v4

    shl-long/2addr v4, v6

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    goto :goto_9

    :cond_8
    move v5, v4

    move v4, v13

    :cond_9
    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const-wide/16 v22, 0x0

    move v15, v4

    move-wide/from16 v25, v22

    :goto_b
    const-wide/16 v27, 0xa

    if-eq v15, v12, :cond_b

    add-int/lit8 v6, v5, -0x30

    int-to-char v7, v6

    if-ge v7, v3, :cond_b

    mul-long v25, v25, v27

    int-to-long v5, v6

    add-long v25, v25, v5

    const/4 v5, 0x1

    add-int/2addr v15, v5

    if-ge v15, v11, :cond_a

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_c

    :cond_a
    const/4 v5, 0x0

    :goto_c
    const/16 v6, 0x20

    const/16 v7, 0x30

    goto :goto_b

    :cond_b
    sub-int v6, v15, v4

    if-eq v15, v12, :cond_11

    if-ne v5, v10, :cond_11

    const/16 v21, 0x1

    add-int/lit8 v5, v15, 0x1

    move v10, v5

    :goto_d
    sub-int v3, v12, v10

    const/4 v7, 0x4

    if-lt v3, v7, :cond_d

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v2, v3

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v32, v8

    int-to-long v7, v7

    const/16 v31, 0x10

    shl-long v7, v7, v31

    or-long/2addr v2, v7

    const/4 v7, 0x2

    add-int/lit8 v8, v10, 0x2

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-long v7, v7

    const/16 v29, 0x20

    shl-long v7, v7, v29

    or-long/2addr v2, v7

    add-int/lit8 v7, v10, 0x3

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-long v7, v7

    const/16 v30, 0x30

    shl-long v7, v7, v30

    or-long/2addr v2, v7

    const-wide v7, 0x30003000300030L

    sub-long v7, v2, v7

    const-wide v33, 0x46004600460046L    # 2.447700077935472E-307

    add-long v2, v2, v33

    or-long/2addr v2, v7

    const-wide v33, -0x7f007f007f0080L

    and-long v2, v2, v33

    cmp-long v2, v2, v22

    if-eqz v2, :cond_c

    const/4 v2, -0x1

    goto :goto_e

    :cond_c
    const-wide v2, 0x3e80064000a0001L

    mul-long/2addr v7, v2

    const/16 v2, 0x30

    ushr-long/2addr v7, v2

    long-to-int v2, v7

    :goto_e
    if-ltz v2, :cond_e

    const-wide/16 v7, 0x2710

    mul-long v25, v25, v7

    int-to-long v2, v2

    add-long v25, v25, v2

    const/4 v2, 0x4

    add-int/2addr v10, v2

    move-object/from16 v2, p2

    move/from16 v8, v32

    const/16 v21, 0x1

    goto :goto_d

    :cond_d
    move/from16 v32, v8

    :cond_e
    if-ge v10, v11, :cond_f

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    if-eq v10, v12, :cond_10

    const/16 v3, 0x30

    add-int/lit8 v7, v2, -0x30

    int-to-char v3, v7

    const/16 v8, 0xa

    if-ge v3, v8, :cond_10

    mul-long v25, v25, v27

    int-to-long v2, v7

    add-long v25, v25, v2

    const/4 v2, 0x1

    add-int/2addr v10, v2

    if-ge v10, v11, :cond_f

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_f

    :cond_10
    sub-int v3, v5, v10

    sub-int/2addr v6, v3

    move/from16 v39, v5

    move v5, v2

    move/from16 v2, v39

    goto :goto_10

    :cond_11
    move/from16 v32, v8

    move v2, v15

    move v10, v2

    const/4 v3, 0x0

    :goto_10
    if-nez v6, :cond_12

    int-to-long v2, v10

    const/16 v7, 0x20

    shl-long/2addr v2, v7

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v19

    or-long/2addr v4, v2

    move-wide v2, v4

    move v4, v7

    goto/16 :goto_7

    :cond_12
    const/16 v7, 0x20

    or-int/2addr v5, v7

    const/16 v8, 0x65

    if-ne v5, v8, :cond_1c

    const/4 v5, 0x1

    add-int/lit8 v8, v10, 0x1

    if-ge v8, v11, :cond_13

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_11
    const/16 v7, 0x2d

    goto :goto_12

    :cond_13
    const/4 v5, 0x0

    goto :goto_11

    :goto_12
    if-ne v5, v7, :cond_14

    const/4 v7, 0x1

    goto :goto_13

    :cond_14
    const/4 v7, 0x0

    :goto_13
    if-nez v7, :cond_15

    move/from16 v24, v8

    const/16 v8, 0x2b

    if-ne v5, v8, :cond_16

    :cond_15
    const/4 v5, 0x2

    goto :goto_14

    :cond_16
    move/from16 v8, v24

    goto :goto_15

    :goto_14
    add-int/lit8 v8, v10, 0x2

    :goto_15
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v24, v14

    const/4 v14, 0x0

    :goto_16
    if-eq v8, v12, :cond_19

    const/16 v30, 0x30

    add-int/lit8 v5, v5, -0x30

    int-to-char v0, v5

    move/from16 v33, v13

    const/16 v13, 0xa

    if-ge v0, v13, :cond_1a

    const/16 v0, 0x400

    if-ge v14, v0, :cond_17

    mul-int/2addr v14, v13

    add-int/2addr v14, v5

    :cond_17
    const/4 v0, 0x1

    add-int/2addr v8, v0

    if-ge v8, v11, :cond_18

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v5, v0

    goto :goto_17

    :cond_18
    const/4 v5, 0x0

    :goto_17
    move-object/from16 v0, p0

    move/from16 v13, v33

    goto :goto_16

    :cond_19
    move/from16 v33, v13

    const/16 v13, 0xa

    :cond_1a
    if-eqz v7, :cond_1b

    neg-int v0, v14

    move v14, v0

    :cond_1b
    add-int/2addr v3, v14

    goto :goto_18

    :cond_1c
    move/from16 v33, v13

    move/from16 v24, v14

    const/16 v13, 0xa

    move v8, v10

    const/4 v14, 0x0

    :goto_18
    const/16 v0, 0x13

    if-le v6, v0, :cond_27

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v7, v4

    :goto_19
    if-eq v8, v12, :cond_21

    const/16 v13, 0x30

    const/16 v0, 0x2e

    if-eq v5, v13, :cond_1e

    if-ne v5, v0, :cond_1d

    goto :goto_1a

    :cond_1d
    const/16 v0, 0x13

    goto :goto_1c

    :cond_1e
    :goto_1a
    if-ne v5, v13, :cond_1f

    const/4 v5, -0x1

    add-int/2addr v6, v5

    :cond_1f
    const/4 v5, 0x1

    add-int/2addr v7, v5

    if-ge v7, v11, :cond_20

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_1b

    :cond_20
    const/4 v5, 0x0

    :goto_1b
    const/16 v0, 0x13

    const/16 v13, 0xa

    goto :goto_19

    :cond_21
    :goto_1c
    if-le v6, v0, :cond_27

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v7, v12

    move-wide/from16 v5, v22

    :goto_1d
    const-wide v12, 0xde0b6b3a7640000L

    if-eq v4, v15, :cond_23

    sget v3, Lkotlin/ULong;->$r8$clinit:I

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v3

    if-gez v3, :cond_23

    mul-long v5, v5, v27

    const/16 v3, 0x30

    sub-int/2addr v0, v3

    int-to-long v12, v0

    add-long/2addr v5, v12

    const/4 v0, 0x1

    add-int/2addr v4, v0

    if-ge v4, v11, :cond_22

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1d

    :cond_22
    const/4 v0, 0x0

    goto :goto_1d

    :cond_23
    sget v0, Lkotlin/ULong;->$r8$clinit:I

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-ltz v0, :cond_24

    sub-int/2addr v15, v4

    add-int v3, v15, v14

    const/4 v0, 0x1

    const/16 v4, 0x30

    goto :goto_20

    :cond_24
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v2

    :goto_1e
    if-eq v3, v10, :cond_26

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v4

    if-gez v4, :cond_26

    mul-long v5, v5, v27

    const/16 v4, 0x30

    sub-int/2addr v0, v4

    int-to-long v12, v0

    add-long/2addr v5, v12

    const/4 v0, 0x1

    add-int/2addr v3, v0

    if-ge v3, v11, :cond_25

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1f

    :cond_25
    const/4 v0, 0x0

    :goto_1f
    const-wide v12, 0xde0b6b3a7640000L

    goto :goto_1e

    :cond_26
    const/16 v4, 0x30

    sub-int/2addr v2, v3

    add-int v3, v2, v14

    const/4 v0, 0x1

    goto :goto_20

    :cond_27
    move v7, v12

    const/16 v4, 0x30

    move-wide/from16 v5, v25

    const/4 v0, 0x0

    :goto_20
    const/16 v2, -0xa

    if-gt v2, v3, :cond_2a

    const/16 v2, 0xb

    if-ge v3, v2, :cond_2a

    if-nez v0, :cond_2a

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    const-wide/32 v10, 0x1000000

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_2a

    long-to-float v0, v5

    sget-object v2, Landroidx/compose/ui/graphics/vector/FastFloatParserKt;->PowersOfTen:[F

    if-gez v3, :cond_28

    neg-int v3, v3

    aget v2, v2, v3

    div-float/2addr v0, v2

    goto :goto_21

    :cond_28
    aget v2, v2, v3

    mul-float/2addr v0, v2

    :goto_21
    if-eqz v9, :cond_29

    neg-float v0, v0

    :cond_29
    int-to-long v2, v8

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    :goto_22
    int-to-long v5, v0

    and-long v5, v5, v19

    or-long/2addr v2, v5

    const/16 v4, 0x20

    goto/16 :goto_28

    :cond_2a
    cmp-long v0, v5, v22

    if-nez v0, :cond_2c

    if-eqz v9, :cond_2b

    const/high16 v0, -0x80000000

    goto :goto_23

    :cond_2b
    const/4 v0, 0x0

    :goto_23
    int-to-long v2, v8

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    goto :goto_22

    :cond_2c
    const/16 v0, -0x7e

    if-gt v0, v3, :cond_33

    const/16 v0, 0x80

    if-ge v3, v0, :cond_33

    sget-object v0, Landroidx/compose/ui/graphics/vector/FastFloatParserKt;->Mantissa64:[J

    add-int/lit16 v2, v3, 0x145

    aget-wide v10, v0, v2

    sget v0, Lkotlin/ULong;->$r8$clinit:I

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    shl-long/2addr v5, v0

    and-long v12, v5, v19

    const/16 v2, 0x20

    ushr-long/2addr v5, v2

    and-long v14, v10, v19

    ushr-long/2addr v10, v2

    mul-long v25, v5, v10

    mul-long/2addr v10, v12

    mul-long/2addr v5, v14

    mul-long/2addr v12, v14

    ushr-long/2addr v12, v2

    add-long/2addr v5, v12

    and-long v12, v10, v19

    add-long/2addr v5, v12

    ushr-long/2addr v5, v2

    add-long v25, v25, v5

    ushr-long v5, v10, v2

    add-long v25, v25, v5

    const/16 v2, 0x3f

    ushr-long v5, v25, v2

    long-to-int v5, v5

    add-int/lit8 v6, v5, 0x9

    ushr-long v10, v25, v6

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    add-int/2addr v0, v5

    const-wide/16 v5, 0x1ff

    and-long v12, v25, v5

    cmp-long v5, v12, v5

    if-eqz v5, :cond_2d

    cmp-long v5, v12, v22

    const-wide/16 v12, 0x1

    if-nez v5, :cond_2e

    const-wide/16 v5, 0x3

    and-long/2addr v5, v10

    cmp-long v5, v5, v12

    if-nez v5, :cond_2e

    :cond_2d
    move/from16 v13, v33

    const/16 v4, 0x20

    goto :goto_27

    :cond_2e
    add-long/2addr v10, v12

    const/4 v5, 0x1

    ushr-long/2addr v10, v5

    const-wide/high16 v5, 0x20000000000000L

    cmp-long v5, v10, v5

    if-ltz v5, :cond_2f

    const/4 v5, -0x1

    add-int/2addr v0, v5

    const-wide/high16 v10, 0x10000000000000L

    goto :goto_24

    :cond_2f
    const/4 v5, -0x1

    :goto_24
    const-wide v14, -0x10000000000001L

    and-long/2addr v10, v14

    const-wide/32 v14, 0x3526a

    int-to-long v4, v3

    mul-long/2addr v4, v14

    const/16 v3, 0x10

    shr-long v3, v4, v3

    const/16 v5, 0x400

    int-to-long v5, v5

    add-long/2addr v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    int-to-long v5, v0

    sub-long/2addr v3, v5

    cmp-long v0, v3, v12

    if-ltz v0, :cond_32

    const-wide/16 v5, 0x7fe

    cmp-long v0, v3, v5

    if-lez v0, :cond_30

    move/from16 v13, v33

    const/16 v4, 0x20

    goto :goto_26

    :cond_30
    const/16 v0, 0x34

    shl-long v2, v3, v0

    or-long/2addr v2, v10

    if-eqz v9, :cond_31

    const-wide/high16 v22, -0x8000000000000000L

    :cond_31
    or-long v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    double-to-float v0, v2

    int-to-long v2, v8

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    :goto_25
    int-to-long v5, v0

    and-long v5, v5, v19

    or-long/2addr v2, v5

    goto :goto_28

    :cond_32
    const/16 v4, 0x20

    move/from16 v13, v33

    :goto_26
    invoke-virtual {v1, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-long v2, v8

    shl-long/2addr v2, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    goto :goto_25

    :goto_27
    invoke-virtual {v1, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-long v2, v8

    shl-long/2addr v2, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    goto :goto_25

    :cond_33
    move/from16 v13, v33

    const/16 v4, 0x20

    invoke-virtual {v1, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-long v2, v8

    shl-long/2addr v2, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    goto :goto_25

    :goto_28
    ushr-long v5, v2, v4

    long-to-int v0, v5

    and-long v2, v2, v19

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_35

    move-object/from16 v3, p0

    iget-object v5, v3, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    const/4 v6, 0x1

    add-int/lit8 v8, v32, 0x1

    aput v2, v5, v32

    array-length v6, v5

    if-lt v8, v6, :cond_34

    const/4 v6, 0x2

    mul-int/lit8 v10, v8, 0x2

    new-array v6, v10, [F

    iput-object v6, v3, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    array-length v9, v5

    const/4 v10, 0x0

    invoke-static {v5, v10, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_34
    move v13, v0

    goto :goto_29

    :cond_35
    move-object/from16 v3, p0

    move v13, v0

    move/from16 v8, v32

    :goto_29
    if-ge v13, v7, :cond_36

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_36

    const/4 v0, 0x1

    add-int/2addr v13, v0

    goto :goto_29

    :cond_36
    if-ge v13, v7, :cond_38

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_2a

    :cond_37
    move-object/from16 v2, p2

    move-object v0, v3

    move v6, v4

    move v12, v7

    move/from16 v14, v24

    const/16 v3, 0xa

    const/16 v4, 0x7a

    const/16 v7, 0x30

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_38
    :goto_2a
    move v15, v8

    :goto_2b
    move v14, v13

    goto :goto_2c

    :cond_39
    move-object v3, v0

    move v4, v6

    move v7, v12

    move/from16 v24, v14

    goto :goto_2b

    :goto_2c
    iget-object v0, v3, Landroidx/compose/ui/graphics/vector/PathParser;->nodeData:[F

    move/from16 v2, v24

    const/16 v5, 0x7a

    if-ne v2, v5, :cond_3a

    goto :goto_2d

    :cond_3a
    const/16 v6, 0x5a

    if-ne v2, v6, :cond_3b

    :goto_2d
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    move-object/from16 v6, p2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_2e
    const/4 v11, 0x2

    :goto_2f
    const/4 v12, 0x4

    goto/16 :goto_4a

    :cond_3b
    move-object/from16 v6, p2

    const/16 v8, 0x6d

    if-ne v2, v8, :cond_3d

    const/4 v8, 0x2

    add-int/lit8 v2, v15, -0x2

    if-ltz v2, :cond_3c

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    const/4 v9, 0x0

    aget v10, v0, v9

    const/4 v9, 0x1

    aget v11, v0, v9

    invoke-direct {v8, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    :goto_30
    if-gt v8, v2, :cond_3c

    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v11, v0, v8

    add-int/lit8 v12, v8, 0x1

    aget v9, v0, v12

    invoke-direct {v10, v11, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    add-int/2addr v8, v9

    const/4 v9, 0x1

    goto :goto_30

    :cond_3c
    const/4 v9, 0x2

    move v11, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_2f

    :cond_3d
    const/4 v9, 0x2

    const/16 v8, 0x4d

    if-ne v2, v8, :cond_41

    add-int/lit8 v2, v15, -0x2

    if-ltz v2, :cond_3f

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    const/4 v9, 0x0

    aget v10, v0, v9

    const/4 v11, 0x1

    aget v12, v0, v11

    invoke-direct {v8, v10, v12}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    :goto_31
    if-gt v8, v2, :cond_3e

    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v12, v0, v8

    add-int/lit8 v13, v8, 0x1

    aget v11, v0, v13

    invoke-direct {v10, v12, v11}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    add-int/2addr v8, v10

    const/4 v11, 0x1

    goto :goto_31

    :cond_3e
    :goto_32
    const/4 v10, 0x2

    goto :goto_33

    :cond_3f
    const/4 v9, 0x0

    goto :goto_32

    :cond_40
    :goto_33
    move v11, v10

    :goto_34
    const/4 v8, 0x1

    goto :goto_2f

    :cond_41
    move v10, v9

    const/4 v9, 0x0

    const/16 v8, 0x6c

    if-ne v2, v8, :cond_42

    add-int/lit8 v2, v15, -0x2

    move v8, v9

    :goto_35
    if-gt v8, v2, :cond_40

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v12, v0, v8

    const/4 v13, 0x1

    add-int/lit8 v16, v8, 0x1

    aget v13, v0, v16

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v10

    goto :goto_35

    :cond_42
    const/16 v8, 0x4c

    if-ne v2, v8, :cond_43

    add-int/lit8 v2, v15, -0x2

    move v8, v9

    :goto_36
    if-gt v8, v2, :cond_40

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v12, v0, v8

    const/4 v13, 0x1

    add-int/lit8 v16, v8, 0x1

    aget v4, v0, v16

    invoke-direct {v11, v12, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v10

    const/16 v4, 0x20

    goto :goto_36

    :cond_43
    const/4 v13, 0x1

    const/16 v4, 0x68

    if-ne v2, v4, :cond_45

    add-int/lit8 v2, v15, -0x1

    move v10, v9

    :goto_37
    if-gt v10, v2, :cond_44

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    aget v8, v0, v10

    invoke-direct {v4, v8}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v13

    goto :goto_37

    :cond_44
    move v8, v13

    goto/16 :goto_2e

    :cond_45
    const/16 v4, 0x48

    if-ne v2, v4, :cond_46

    add-int/lit8 v2, v15, -0x1

    move v10, v9

    :goto_38
    if-gt v10, v2, :cond_44

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    aget v8, v0, v10

    invoke-direct {v4, v8}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v13

    goto :goto_38

    :cond_46
    const/16 v4, 0x76

    if-ne v2, v4, :cond_47

    add-int/lit8 v2, v15, -0x1

    move v10, v9

    :goto_39
    if-gt v10, v2, :cond_44

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    aget v8, v0, v10

    invoke-direct {v4, v8}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v13

    goto :goto_39

    :cond_47
    const/16 v4, 0x56

    if-ne v2, v4, :cond_48

    add-int/lit8 v2, v15, -0x1

    move v10, v9

    :goto_3a
    if-gt v10, v2, :cond_44

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    aget v8, v0, v10

    invoke-direct {v4, v8}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v13

    goto :goto_3a

    :cond_48
    const/16 v4, 0x63

    if-ne v2, v4, :cond_49

    add-int/lit8 v2, v15, -0x6

    move v10, v9

    :goto_3b
    if-gt v10, v2, :cond_44

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    aget v23, v0, v10

    add-int/lit8 v11, v10, 0x1

    aget v24, v0, v11

    const/4 v8, 0x2

    add-int/lit8 v11, v10, 0x2

    aget v25, v0, v11

    add-int/lit8 v8, v10, 0x3

    aget v26, v0, v8

    const/4 v8, 0x4

    add-int/lit8 v11, v10, 0x4

    aget v27, v0, v11

    add-int/lit8 v8, v10, 0x5

    aget v28, v0, v8

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v28}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x6

    const/4 v13, 0x1

    goto :goto_3b

    :cond_49
    const/16 v4, 0x43

    if-ne v2, v4, :cond_4b

    add-int/lit8 v2, v15, -0x6

    move v10, v9

    :goto_3c
    if-gt v10, v2, :cond_4a

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    aget v23, v0, v10

    const/4 v8, 0x1

    add-int/lit8 v11, v10, 0x1

    aget v24, v0, v11

    const/4 v8, 0x2

    add-int/lit8 v11, v10, 0x2

    aget v25, v0, v11

    add-int/lit8 v8, v10, 0x3

    aget v26, v0, v8

    const/4 v8, 0x4

    add-int/lit8 v11, v10, 0x4

    aget v27, v0, v11

    add-int/lit8 v8, v10, 0x5

    aget v28, v0, v8

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v28}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x6

    goto :goto_3c

    :cond_4a
    const/4 v8, 0x1

    goto/16 :goto_2e

    :cond_4b
    const/16 v4, 0x73

    if-ne v2, v4, :cond_4c

    const/4 v4, 0x4

    add-int/lit8 v2, v15, -0x4

    move v10, v9

    :goto_3d
    if-gt v10, v2, :cond_4a

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    aget v8, v0, v10

    const/4 v11, 0x1

    add-int/lit8 v12, v10, 0x1

    aget v11, v0, v12

    const/4 v12, 0x2

    add-int/lit8 v13, v10, 0x2

    aget v12, v0, v13

    add-int/lit8 v13, v10, 0x3

    aget v13, v0, v13

    invoke-direct {v4, v8, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    add-int/2addr v10, v4

    goto :goto_3d

    :cond_4c
    const/4 v4, 0x4

    const/16 v8, 0x53

    if-ne v2, v8, :cond_4d

    add-int/lit8 v2, v15, -0x4

    move v10, v9

    :goto_3e
    if-gt v10, v2, :cond_4a

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    aget v8, v0, v10

    const/4 v11, 0x1

    add-int/lit8 v12, v10, 0x1

    aget v11, v0, v12

    const/4 v12, 0x2

    add-int/lit8 v13, v10, 0x2

    aget v12, v0, v13

    add-int/lit8 v13, v10, 0x3

    aget v13, v0, v13

    invoke-direct {v4, v8, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    add-int/2addr v10, v4

    goto :goto_3e

    :cond_4d
    const/16 v8, 0x71

    if-ne v2, v8, :cond_4e

    add-int/lit8 v2, v15, -0x4

    move v10, v9

    :goto_3f
    if-gt v10, v2, :cond_4a

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    aget v8, v0, v10

    const/4 v11, 0x1

    add-int/lit8 v12, v10, 0x1

    aget v11, v0, v12

    const/4 v12, 0x2

    add-int/lit8 v13, v10, 0x2

    aget v12, v0, v13

    add-int/lit8 v13, v10, 0x3

    aget v13, v0, v13

    invoke-direct {v4, v8, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    add-int/2addr v10, v4

    goto :goto_3f

    :cond_4e
    const/16 v8, 0x51

    if-ne v2, v8, :cond_4f

    add-int/lit8 v2, v15, -0x4

    move v10, v9

    :goto_40
    if-gt v10, v2, :cond_4a

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    aget v8, v0, v10

    const/4 v11, 0x1

    add-int/lit8 v12, v10, 0x1

    aget v11, v0, v12

    const/4 v12, 0x2

    add-int/lit8 v13, v10, 0x2

    aget v13, v0, v13

    add-int/lit8 v16, v10, 0x3

    aget v5, v0, v16

    invoke-direct {v4, v8, v11, v13, v5}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    add-int/2addr v10, v4

    const/16 v5, 0x7a

    goto :goto_40

    :cond_4f
    const/4 v12, 0x2

    const/16 v4, 0x74

    if-ne v2, v4, :cond_51

    add-int/lit8 v2, v15, -0x2

    move v10, v9

    :goto_41
    if-gt v10, v2, :cond_50

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    aget v5, v0, v10

    const/4 v8, 0x1

    add-int/lit8 v11, v10, 0x1

    aget v8, v0, v11

    invoke-direct {v4, v5, v8}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v12

    goto :goto_41

    :cond_50
    move v11, v12

    goto/16 :goto_34

    :cond_51
    const/16 v4, 0x54

    if-ne v2, v4, :cond_52

    add-int/lit8 v2, v15, -0x2

    move v10, v9

    :goto_42
    if-gt v10, v2, :cond_50

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    aget v5, v0, v10

    const/4 v8, 0x1

    add-int/lit8 v11, v10, 0x1

    aget v8, v0, v11

    invoke-direct {v4, v5, v8}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v12

    goto :goto_42

    :cond_52
    const/16 v4, 0x61

    if-ne v2, v4, :cond_55

    add-int/lit8 v2, v15, -0x7

    move v10, v9

    :goto_43
    if-gt v10, v2, :cond_50

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    aget v32, v0, v10

    const/4 v8, 0x1

    add-int/lit8 v11, v10, 0x1

    aget v33, v0, v11

    add-int/lit8 v8, v10, 0x2

    aget v34, v0, v8

    add-int/lit8 v8, v10, 0x3

    aget v8, v0, v8

    const/4 v11, 0x0

    invoke-static {v8, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_53

    const/4 v8, 0x4

    const/16 v35, 0x1

    goto :goto_44

    :cond_53
    move/from16 v35, v9

    const/4 v8, 0x4

    :goto_44
    add-int/lit8 v12, v10, 0x4

    aget v8, v0, v12

    invoke-static {v8, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_54

    const/16 v36, 0x1

    goto :goto_45

    :cond_54
    move/from16 v36, v9

    :goto_45
    add-int/lit8 v8, v10, 0x5

    aget v37, v0, v8

    add-int/lit8 v8, v10, 0x6

    aget v38, v0, v8

    move-object/from16 v31, v5

    invoke-direct/range {v31 .. v38}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x7

    const/4 v12, 0x2

    goto :goto_43

    :cond_55
    const/16 v5, 0x41

    if-ne v2, v5, :cond_58

    add-int/lit8 v2, v15, -0x7

    move v10, v9

    :goto_46
    if-gt v10, v2, :cond_4a

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    aget v32, v0, v10

    const/4 v8, 0x1

    add-int/lit8 v11, v10, 0x1

    aget v33, v0, v11

    const/4 v11, 0x2

    add-int/lit8 v12, v10, 0x2

    aget v34, v0, v12

    add-int/lit8 v12, v10, 0x3

    aget v12, v0, v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_56

    move/from16 v35, v8

    :goto_47
    const/4 v12, 0x4

    goto :goto_48

    :cond_56
    move/from16 v35, v9

    goto :goto_47

    :goto_48
    add-int/lit8 v16, v10, 0x4

    aget v4, v0, v16

    invoke-static {v4, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_57

    move/from16 v36, v8

    goto :goto_49

    :cond_57
    move/from16 v36, v9

    :goto_49
    add-int/lit8 v4, v10, 0x5

    aget v37, v0, v4

    add-int/lit8 v4, v10, 0x6

    aget v38, v0, v4

    move-object/from16 v31, v5

    invoke-direct/range {v31 .. v38}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x7

    const/16 v4, 0x61

    goto :goto_46

    :goto_4a
    move-object v0, v3

    move-object v2, v6

    move v12, v7

    move v11, v8

    const/16 v3, 0xa

    const/16 v4, 0x7a

    const/16 v5, 0x61

    const/16 v6, 0x20

    const/16 v7, 0x30

    :goto_4b
    const/4 v8, -0x1

    goto/16 :goto_2

    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown command for: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    move v8, v11

    move v14, v13

    const/16 v5, 0x61

    goto :goto_4b

    :cond_5a
    move v8, v11

    move v14, v13

    const/16 v5, 0x61

    const/4 v8, -0x1

    goto/16 :goto_3

    :cond_5b
    return-void
.end method
