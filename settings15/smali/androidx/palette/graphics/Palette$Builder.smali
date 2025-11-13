.class public final Landroidx/palette/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mFilters:Ljava/util/List;

.field public mMaxColors:I

.field public final mResizeArea:I

.field public final mResizeMaxDimension:I

.field public final mTargets:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    const/16 v1, 0x10

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v1, 0x3100

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bitmap is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final generate()Landroidx/palette/graphics/Palette;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_12

    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    if-le v6, v2, :cond_1

    int-to-double v2, v2

    int-to-double v4, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-le v5, v2, :cond_1

    int-to-double v2, v2

    int-to-double v4, v5

    div-double v3, v2, v4

    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    cmpg-double v2, v3, v5

    const/4 v5, 0x0

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v6, v2

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    new-instance v2, Landroidx/palette/graphics/ColorCutQuantizer;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v3, v12, v13

    new-array v3, v3, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    move-object v7, v3

    move v9, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v4, v0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroidx/palette/graphics/Palette$1;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/palette/graphics/Palette$1;

    :goto_2
    invoke-direct {v2, v3, v4, v6}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/Palette$1;)V

    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v1, v2, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v2, Landroidx/palette/graphics/Palette;

    iget-object v0, v0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-direct {v2, v1, v0}, Landroidx/palette/graphics/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v5

    :goto_3
    if-ge v1, v0, :cond_11

    iget-object v3, v2, Landroidx/palette/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/palette/graphics/Target;

    iget-object v4, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v6, v4

    const/4 v8, 0x0

    move v9, v5

    move v10, v8

    :goto_4
    if-ge v9, v6, :cond_6

    aget v11, v4, v9

    cmpl-float v12, v11, v8

    if-lez v12, :cond_5

    add-float/2addr v10, v11

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    cmpl-float v6, v10, v8

    if-eqz v6, :cond_8

    array-length v6, v4

    move v9, v5

    :goto_5
    if-ge v9, v6, :cond_8

    aget v11, v4, v9

    cmpl-float v12, v11, v8

    if-lez v12, :cond_7

    div-float/2addr v11, v10

    aput v11, v4, v9

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    iget-object v4, v2, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v5

    move v10, v8

    const/4 v9, 0x0

    :goto_6
    const/4 v11, 0x1

    if-ge v6, v4, :cond_f

    iget-object v12, v2, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {v12}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v13

    aget v14, v13, v11

    iget-object v15, v3, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    aget v16, v15, v5

    cmpl-float v16, v14, v16

    if-ltz v16, :cond_e

    const/16 v16, 0x2

    aget v17, v15, v16

    cmpg-float v14, v14, v17

    if-gtz v14, :cond_e

    aget v13, v13, v16

    iget-object v14, v3, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    aget v17, v14, v5

    cmpl-float v17, v13, v17

    if-ltz v17, :cond_e

    aget v17, v14, v16

    cmpg-float v13, v13, v17

    if-gtz v13, :cond_e

    iget-object v13, v2, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    iget v7, v12, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    invoke-virtual {v13, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v12}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v7

    iget-object v13, v2, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    if-eqz v13, :cond_9

    iget v13, v13, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    goto :goto_7

    :cond_9
    move v13, v11

    :goto_7
    iget-object v11, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v18, v11, v5

    cmpl-float v19, v18, v8

    const/high16 v20, 0x3f800000    # 1.0f

    if-lez v19, :cond_a

    const/16 v19, 0x1

    aget v21, v7, v19

    aget v15, v15, v19

    sub-float v21, v21, v15

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float v15, v20, v15

    mul-float v15, v15, v18

    goto :goto_8

    :cond_a
    const/16 v19, 0x1

    move v15, v8

    :goto_8
    aget v18, v11, v19

    cmpl-float v21, v18, v8

    if-lez v21, :cond_b

    aget v7, v7, v16

    aget v14, v14, v19

    sub-float/2addr v7, v14

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v20, v20, v7

    mul-float v20, v20, v18

    goto :goto_9

    :cond_b
    move/from16 v20, v8

    :goto_9
    aget v7, v11, v16

    cmpl-float v11, v7, v8

    if-lez v11, :cond_c

    iget v11, v12, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    int-to-float v11, v11

    int-to-float v13, v13

    div-float/2addr v11, v13

    mul-float/2addr v11, v7

    goto :goto_a

    :cond_c
    move v11, v8

    :goto_a
    add-float v15, v15, v20

    add-float/2addr v15, v11

    if-eqz v9, :cond_d

    cmpl-float v7, v15, v10

    if-lez v7, :cond_e

    :cond_d
    move-object v9, v12

    move v10, v15

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_f
    if-eqz v9, :cond_10

    iget-object v4, v2, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    iget v6, v9, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_10
    iget-object v4, v2, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_11
    iget-object v0, v2, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-object v2

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
