.class public final Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processDominantColorInImage(Landroid/graphics/drawable/Drawable;)I
    .locals 19

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "ExtractAppIconUtils"

    const-string v2, "The bitmap provided to processDominantColorInImage() is null. using default color."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    const/16 v3, 0x14

    int-to-float v4, v3

    div-float/2addr v2, v4

    new-instance v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;

    invoke-direct {v4}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v7, v5, v6

    div-int/lit8 v7, v7, 0x2

    int-to-double v8, v3

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v8, v8

    new-array v8, v8, [I

    move v9, v0

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v9, v5, :cond_a

    move v12, v0

    :goto_1
    if-ge v12, v6, :cond_8

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    const/16 v15, 0xfa

    if-ge v14, v15, :cond_2

    move-object/from16 v17, v1

    :cond_1
    move/from16 v16, v2

    :goto_2
    move-object/from16 v18, v8

    goto :goto_3

    :cond_2
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    float-to-int v3, v2

    div-int v16, v14, v3

    add-int v16, v16, v15

    mul-int/2addr v3, v0

    add-int v3, v3, v16

    aget v16, v8, v3

    move-object/from16 v17, v1

    add-int/lit8 v1, v16, 0x1

    aput v1, v8, v3

    if-le v1, v11, :cond_3

    invoke-static {v14, v15, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestColor:I

    move v11, v1

    :cond_3
    if-le v1, v10, :cond_1

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v3

    move/from16 v16, v2

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-ne v3, v2, :cond_4

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    sub-int/2addr v3, v13

    const/4 v13, 0x5

    move-object/from16 v18, v8

    if-gt v2, v13, :cond_6

    const/4 v8, -0x5

    if-ge v2, v8, :cond_5

    if-gt v3, v13, :cond_6

    :cond_5
    if-ge v3, v8, :cond_7

    :cond_6
    invoke-static {v14, v15, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestMatchingColor:I

    move v10, v1

    if-le v1, v7, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v12, v12, 0x14

    move/from16 v2, v16

    move-object/from16 v1, v17

    move-object/from16 v8, v18

    const/4 v0, 0x0

    const/16 v3, 0x14

    goto/16 :goto_1

    :cond_8
    move-object/from16 v17, v1

    move/from16 v16, v2

    move-object/from16 v18, v8

    :goto_4
    if-le v11, v7, :cond_9

    const/16 v0, 0x14

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x14

    move/from16 v2, v16

    move-object/from16 v1, v17

    move-object/from16 v8, v18

    const/4 v0, 0x0

    const/16 v3, 0x14

    goto/16 :goto_0

    :cond_a
    move v0, v3

    :goto_5
    div-int/2addr v5, v0

    div-int/2addr v6, v0

    mul-int/2addr v6, v5

    int-to-float v0, v6

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-le v10, v0, :cond_b

    iget v0, v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestMatchingColor:I

    return v0

    :cond_b
    iget v0, v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestColor:I

    return v0
.end method
