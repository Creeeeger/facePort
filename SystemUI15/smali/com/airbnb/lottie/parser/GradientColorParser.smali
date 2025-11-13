.class public final Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# instance fields
.field public colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    return-void
.end method


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-ne v3, v7, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v9

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v6, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v7

    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    :cond_5
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v3, v2, [F

    new-array v2, v2, [I

    move v9, v5

    move v10, v9

    move v11, v10

    :goto_2
    iget v12, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/2addr v12, v7

    if-ge v9, v12, :cond_b

    div-int/lit8 v12, v9, 0x4

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    rem-int/lit8 v15, v9, 0x4

    if-eqz v15, :cond_9

    const-wide v16, 0x406fe00000000000L    # 255.0

    if-eq v15, v4, :cond_8

    if-eq v15, v6, :cond_7

    if-eq v15, v8, :cond_6

    goto :goto_3

    :cond_6
    mul-double v13, v13, v16

    double-to-int v13, v13

    const/16 v14, 0xff

    invoke-static {v14, v10, v11, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    aput v13, v2, v12

    goto :goto_3

    :cond_7
    mul-double v13, v13, v16

    double-to-int v11, v13

    goto :goto_3

    :cond_8
    mul-double v13, v13, v16

    double-to-int v10, v13

    goto :goto_3

    :cond_9
    if-lez v12, :cond_a

    add-int/lit8 v15, v12, -0x1

    aget v15, v3, v15

    double-to-float v8, v13

    cmpl-float v15, v15, v8

    if-ltz v15, :cond_a

    const v13, 0x3c23d70a    # 0.01f

    add-float/2addr v8, v13

    aput v8, v3, v12

    goto :goto_3

    :cond_a
    double-to-float v8, v13

    aput v8, v3, v12

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x3

    goto :goto_2

    :cond_b
    new-instance v8, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v8, v3, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/2addr v0, v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_c

    goto/16 :goto_17

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/2addr v2, v6

    new-array v3, v2, [F

    new-array v7, v2, [F

    move v9, v5

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_e

    rem-int/lit8 v10, v0, 0x2

    if-nez v10, :cond_d

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v3, v9

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    iget-object v0, v8, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    array-length v1, v0

    if-nez v1, :cond_f

    move-object v9, v3

    goto :goto_b

    :cond_f
    if-nez v2, :cond_10

    move-object v9, v0

    goto :goto_b

    :cond_10
    array-length v1, v0

    add-int/2addr v1, v2

    new-array v9, v1, [F

    move v10, v5

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_6
    if-ge v10, v1, :cond_17

    array-length v14, v0

    const/high16 v15, 0x7fc00000    # Float.NaN

    if-ge v12, v14, :cond_11

    aget v14, v0, v12

    goto :goto_7

    :cond_11
    move v14, v15

    :goto_7
    if-ge v13, v2, :cond_12

    aget v15, v3, v13

    :cond_12
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_16

    cmpg-float v16, v14, v15

    if-gez v16, :cond_13

    goto :goto_9

    :cond_13
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v16

    if-nez v16, :cond_15

    cmpg-float v16, v15, v14

    if-gez v16, :cond_14

    goto :goto_8

    :cond_14
    aput v14, v9, v10

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_15
    :goto_8
    aput v15, v9, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_16
    :goto_9
    aput v14, v9, v10

    add-int/lit8 v12, v12, 0x1

    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_17
    if-nez v11, :cond_18

    goto :goto_b

    :cond_18
    sub-int/2addr v1, v11

    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v9

    :goto_b
    array-length v1, v9

    new-array v10, v1, [I

    move v11, v5

    :goto_c
    if-ge v11, v1, :cond_26

    aget v12, v9, v11

    invoke-static {v0, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v13

    invoke-static {v3, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v14

    const-string v15, "Unreachable code."

    const/high16 v16, 0x437f0000    # 255.0f

    iget-object v4, v8, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    if-ltz v13, :cond_1f

    if-lez v14, :cond_19

    goto :goto_12

    :cond_19
    aget v4, v4, v13

    if-lt v2, v6, :cond_1e

    aget v13, v3, v5

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v13, 0x1

    :goto_d
    if-ge v13, v2, :cond_1d

    aget v14, v3, v13

    cmpg-float v17, v14, v12

    if-gez v17, :cond_1b

    add-int/lit8 v6, v2, -0x1

    if-eq v13, v6, :cond_1b

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x2

    goto :goto_d

    :cond_1b
    if-gtz v17, :cond_1c

    aget v6, v7, v13

    :goto_e
    mul-float v6, v6, v16

    float-to-int v6, v6

    goto :goto_f

    :cond_1c
    add-int/lit8 v6, v13, -0x1

    aget v15, v3, v6

    sub-float/2addr v14, v15

    sub-float/2addr v12, v15

    div-float/2addr v12, v14

    aget v6, v7, v6

    aget v13, v7, v13

    invoke-static {v6, v13, v12}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    goto :goto_e

    :goto_f
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v6, v12, v13, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto :goto_11

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_10
    aget v6, v7, v5

    mul-float v6, v6, v16

    float-to-int v6, v6

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v6, v12, v13, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    :goto_11
    aput v4, v10, v11

    const/16 v18, 0x1

    goto :goto_16

    :cond_1f
    :goto_12
    if-gez v14, :cond_20

    add-int/lit8 v14, v14, 0x1

    neg-int v14, v14

    :cond_20
    aget v6, v7, v14

    array-length v13, v4

    const/4 v14, 0x2

    if-lt v13, v14, :cond_21

    aget v13, v0, v5

    cmpl-float v13, v12, v13

    if-nez v13, :cond_22

    :cond_21
    const/16 v18, 0x1

    goto :goto_14

    :cond_22
    const/4 v13, 0x1

    :goto_13
    array-length v14, v0

    if-ge v13, v14, :cond_25

    aget v14, v0, v13

    cmpg-float v17, v14, v12

    if-gez v17, :cond_23

    array-length v5, v0

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v13, v5, :cond_24

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_13

    :cond_23
    const/16 v18, 0x1

    :cond_24
    add-int/lit8 v5, v13, -0x1

    aget v15, v0, v5

    sub-float/2addr v14, v15

    sub-float/2addr v12, v15

    div-float/2addr v12, v14

    aget v13, v4, v13

    aget v4, v4, v5

    mul-float v6, v6, v16

    float-to-int v5, v6

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v12, v6, v14}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v14

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v12, v14, v15}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v14

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v12, v4, v13}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v4

    invoke-static {v5, v6, v14, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/4 v5, 0x0

    goto :goto_15

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_14
    aget v4, v4, v5

    :goto_15
    aput v4, v10, v11

    :goto_16
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v18

    const/4 v6, 0x2

    goto/16 :goto_c

    :cond_26
    new-instance v8, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    :goto_17
    return-object v8
.end method
