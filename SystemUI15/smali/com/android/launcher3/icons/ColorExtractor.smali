.class public final Lcom/android/launcher3/icons/ColorExtractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTmpHsv:[F

.field public final mTmpHueScoreHistogram:[F

.field public final mTmpPixels:[I

.field public final mTmpRgbScores:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    const/16 v0, 0x168

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final findDominantColorByHue(Landroid/graphics/Bitmap;)I
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v3, v1, v2

    const/16 v4, 0x14

    div-int/2addr v3, v4

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v3, v5

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    move v3, v5

    :cond_0
    iget-object v6, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v8, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    invoke-static {v8, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v7, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    const/4 v9, 0x0

    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([II)V

    const/4 v11, -0x1

    move v12, v9

    move v13, v12

    const/high16 v14, -0x40800000    # -1.0f

    :goto_0
    const/high16 v16, -0x1000000

    if-ge v12, v1, :cond_7

    move v10, v9

    :goto_1
    if-ge v10, v2, :cond_6

    move-object/from16 v15, p1

    invoke-virtual {v15, v10, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    shr-int/lit8 v5, v17, 0x18

    and-int/lit16 v5, v5, 0xff

    const/16 v4, 0x80

    if-ge v5, v4, :cond_2

    :cond_1
    :goto_2
    const/16 v9, 0x14

    goto :goto_3

    :cond_2
    or-int v4, v17, v16

    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v5, v6, v9

    float-to-int v5, v5

    if-ltz v5, :cond_1

    array-length v9, v8

    if-lt v5, v9, :cond_3

    goto :goto_2

    :cond_3
    const/16 v9, 0x14

    if-ge v13, v9, :cond_4

    add-int/lit8 v18, v13, 0x1

    aput v4, v7, v13

    move/from16 v13, v18

    :cond_4
    const/4 v4, 0x1

    aget v18, v6, v4

    const/4 v4, 0x2

    aget v19, v6, v4

    mul-float v18, v18, v19

    aget v4, v8, v5

    add-float v4, v4, v18

    aput v4, v8, v5

    cmpl-float v18, v4, v14

    if-lez v18, :cond_5

    move v14, v4

    move v11, v5

    :cond_5
    :goto_3
    add-int/2addr v10, v3

    move v4, v9

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v15, p1

    move v9, v4

    add-int/2addr v12, v3

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    iget-object v0, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    :goto_4
    if-ge v1, v13, :cond_b

    aget v2, v7, v1

    invoke-static {v2, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v3, 0x0

    aget v4, v6, v3

    float-to-int v4, v4

    if-ne v4, v11, :cond_9

    const/4 v4, 0x1

    aget v5, v6, v4

    const/4 v8, 0x2

    aget v9, v6, v8

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v12, v5

    float-to-int v12, v12

    const v14, 0x461c4000    # 10000.0f

    mul-float/2addr v14, v9

    float-to-int v14, v14

    add-int/2addr v12, v14

    mul-float/2addr v5, v9

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v5, v9

    :goto_5
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    cmpl-float v9, v5, v10

    if-lez v9, :cond_a

    move/from16 v16, v2

    move v10, v5

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    const/4 v8, 0x2

    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    return v16
.end method
