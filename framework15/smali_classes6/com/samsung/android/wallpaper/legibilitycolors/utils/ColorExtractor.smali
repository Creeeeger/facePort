.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    }
.end annotation


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "ColorExtractor"

.field public static final blacklist VERSION:Ljava/lang/String; = "1.0.0"

.field static blacklist sBrightnessThresholdForGrayscale:F

.field static blacklist sClusterGrayscaleDistanceWeight:[F

.field static blacklist sClusterHsvDistanceWeight:[F

.field static blacklist sSaturationThresholdForGrayscale:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist checkGayScaleWithSV([FFF)Z
    .locals 2

    const/4 v0, 0x1

    aget v1, p0, v0

    cmpg-float v1, v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method protected static blacklist colorDistance_hsv_square2([F[F[F)F
    .locals 5

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v3, v1

    :cond_0
    div-float v2, v1, v2

    aget v0, p2, v0

    mul-float/2addr v2, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    aget v3, p0, v0

    sub-float/2addr v1, v3

    aget v0, p2, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    aget v4, p0, v0

    sub-float/2addr v3, v4

    aget v0, p2, v0

    mul-float/2addr v3, v0

    mul-float v0, v2, v2

    mul-float v4, v1, v1

    add-float/2addr v0, v4

    mul-float v4, v3, v3

    add-float/2addr v0, v4

    return v0
.end method

.method protected static blacklist colorDistance_rgb_sqaure2(II)F
    .locals 6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static blacklist discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;F)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;FZ)V

    return-void
.end method

.method public static blacklist discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;FZ)V
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    const v2, 0x3fddb3d7

    mul-float v2, v2, p1

    mul-float/2addr v2, v2

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p1

    mul-float/2addr v4, v4

    sget v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    const/4 v7, 0x3

    new-array v8, v7, [F

    new-array v7, v7, [F

    array-length v9, v0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_7

    aget-object v11, v0, v10

    iget v12, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v11, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    invoke-static {v8, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v14, v3

    move v15, v4

    goto :goto_1

    :cond_1
    move-object v14, v1

    move v15, v2

    :goto_1
    const/4 v13, 0x0

    aget v17, v8, v13

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHumanEyeBasedHueNormalizedDistance(F)F

    move-result v17

    const/high16 v18, 0x43b40000    # 360.0f

    mul-float v17, v17, v18

    aput v17, v8, v13

    add-int/lit8 v17, v10, 0x1

    move/from16 v13, v17

    :goto_2
    if-ge v13, v9, :cond_6

    move-object/from16 v17, v1

    aget-object v1, v0, v13

    move/from16 v20, v2

    iget v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/16 v16, 0x0

    cmpl-float v2, v2, v16

    if-nez v2, :cond_2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v1, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    invoke-static {v7, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v2

    const/16 v19, 0x0

    aget v21, v7, v19

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHumanEyeBasedHueNormalizedDistance(F)F

    move-result v21

    mul-float v21, v21, v18

    aput v21, v7, v19

    if-ne v12, v2, :cond_5

    invoke-static {v8, v7, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide v21

    move/from16 v24, v2

    move-object/from16 v23, v3

    float-to-double v2, v15

    cmpg-double v2, v21, v2

    if-gez v2, :cond_4

    iget v2, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v2, v3

    if-eqz p2, :cond_3

    iget-object v3, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    move/from16 v21, v4

    iget-object v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    move/from16 v22, v5

    iget v5, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    div-float/2addr v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedColorHSVBased([F[FF)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    goto :goto_3

    :cond_3
    move/from16 v21, v4

    move/from16 v22, v5

    :goto_3
    iput v2, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    const/4 v4, 0x0

    iput v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-int/lit8 v5, v9, -0x1

    invoke-static {v0, v13, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ArrayUtils;->arrayChangePos([Ljava/lang/Object;II)V

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v3, v23

    goto :goto_2

    :cond_4
    move/from16 v21, v4

    move/from16 v22, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    move/from16 v24, v2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v3, v23

    goto/16 :goto_2

    :cond_6
    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v3, v23

    goto/16 :goto_0

    :cond_7
    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    :goto_6
    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public static blacklist getAverageColorFromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    iget v7, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v0, v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v1, v8

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    float-to-int v3, v0

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method static blacklist getAvgColorFromTwoColors(IFIF)I
    .locals 5

    nop

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static blacklist getBrightnessThresholdForGrayscale()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist getHsvDistanceWeight()[F
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static blacklist getSaturationThresholdForGrayscale()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 11

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kMeansHsv input bitmap size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | ClusterGroups Num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorExtractor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v1, v0, v9

    new-array v10, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v10, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    array-length v3, v1

    new-array v4, v3, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    new-array v5, v3, [I

    new-array v6, v3, [Z

    new-array v7, v3, [[F

    new-array v8, v3, [Z

    new-array v9, v3, [I

    new-array v10, v3, [[J

    sget-object v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    sget v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    const/4 v15, 0x3

    move/from16 v16, v2

    new-array v2, v15, [F

    const/16 v17, 0x0

    const/high16 v18, -0x1000000

    const/high16 v19, 0xff0000

    const v20, 0xff00

    const/16 v21, 0xff

    const/16 v22, 0x0

    move/from16 v15, v22

    :goto_0
    move-object/from16 v22, v4

    if-ge v15, v3, :cond_0

    aget v24, v1, v15

    aput v24, v5, v15

    const/4 v4, 0x3

    new-array v1, v4, [F

    aget v4, v5, v15

    invoke-static {v4, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v1, v13, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v4

    aput-boolean v4, v8, v15

    aput-object v1, v7, v15

    const/4 v4, 0x0

    aput v4, v9, v15

    move-object/from16 v23, v1

    const/4 v4, 0x3

    new-array v1, v4, [J

    fill-array-data v1, :array_0

    aput-object v1, v10, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v22

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v1, v4, :cond_c

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v25

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v27

    sub-long v25, v25, v27

    const/4 v15, 0x0

    const/4 v4, 0x0

    invoke-static {v9, v4}, Ljava/util/Arrays;->fill([II)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    move/from16 v27, v15

    aget-object v15, v10, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    const-wide/16 v5, 0x0

    invoke-static {v15, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto :goto_2

    :cond_1
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v27, v15

    array-length v4, v0

    move/from16 v6, v17

    const/4 v5, 0x0

    :goto_3
    const/16 v17, 0x2

    const v27, 0xff00

    const/high16 v30, 0xff0000

    if-ge v5, v4, :cond_6

    move/from16 v31, v4

    aget v4, v0, v5

    ushr-int/lit8 v32, v4, 0x18

    if-gtz v32, :cond_2

    move-object/from16 v37, v2

    move-object/from16 v39, v7

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const v33, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v34, 0x0

    invoke-static {v4, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    invoke-static {v2, v13, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v35

    const/16 v36, 0x0

    move/from16 v0, v36

    :goto_4
    if-ge v0, v3, :cond_5

    move/from16 v36, v6

    aget-object v6, v7, v0

    aget-boolean v37, v8, v0

    if-nez v35, :cond_3

    if-nez v37, :cond_3

    invoke-static {v2, v6, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_hsv_square2([F[F[F)F

    move-result v38

    cmpg-float v39, v38, v33

    if-gez v39, :cond_4

    move/from16 v33, v38

    move/from16 v34, v0

    const/4 v15, 0x0

    goto :goto_5

    :cond_3
    if-eqz v35, :cond_4

    if-eqz v37, :cond_4

    invoke-static {v2, v6, v12}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_hsv_square2([F[F[F)F

    move-result v38

    cmpg-float v39, v38, v33

    if-gez v39, :cond_4

    move/from16 v33, v38

    move/from16 v34, v0

    const/4 v15, 0x1

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v36

    goto :goto_4

    :cond_5
    move/from16 v36, v6

    aget-object v0, v10, v34

    aget v6, v9, v34

    const/16 v23, 0x1

    add-int/lit8 v6, v6, 0x1

    aput v6, v9, v34

    const/4 v6, 0x0

    aget-wide v37, v0, v6

    and-int v6, v4, v30

    move-object/from16 v39, v7

    int-to-long v6, v6

    add-long v37, v37, v6

    const/4 v6, 0x0

    aput-wide v37, v0, v6

    aget-wide v6, v0, v23

    move-object/from16 v37, v2

    and-int v2, v4, v27

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    int-to-long v11, v2

    add-long/2addr v6, v11

    aput-wide v6, v0, v23

    aget-wide v6, v0, v17

    and-int/lit16 v2, v4, 0xff

    int-to-long v11, v2

    add-long/2addr v6, v11

    aput-wide v6, v0, v17

    move/from16 v6, v36

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v31

    move-object/from16 v2, v37

    move-object/from16 v11, v38

    move-object/from16 v7, v39

    move-object/from16 v12, v40

    goto/16 :goto_3

    :cond_6
    move-object/from16 v37, v2

    move-object/from16 v39, v7

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    aput-boolean v15, v29, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v3, :cond_8

    aget-object v2, v10, v0

    aget v4, v9, v0

    if-nez v4, :cond_7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v23, v6

    goto :goto_8

    :cond_7
    const/4 v5, 0x0

    aget-wide v11, v2, v5

    move v7, v6

    int-to-long v5, v4

    div-long/2addr v11, v5

    long-to-int v5, v11

    and-int v5, v5, v30

    const/4 v6, 0x1

    aget-wide v11, v2, v6

    move/from16 v23, v7

    int-to-long v6, v4

    div-long/2addr v11, v6

    long-to-int v6, v11

    and-int v7, v6, v27

    aget-wide v11, v2, v17

    move/from16 v32, v5

    int-to-long v5, v4

    div-long/2addr v11, v5

    long-to-int v5, v11

    and-int/lit16 v11, v5, 0xff

    move/from16 v5, v32

    :goto_8
    const/high16 v6, -0x1000000

    or-int/2addr v6, v5

    or-int/2addr v6, v7

    or-int/2addr v6, v11

    aput v6, v28, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v23

    goto :goto_7

    :cond_8
    move/from16 v23, v6

    if-nez v1, :cond_b

    if-lez v23, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v6, v23

    int-to-float v2, v6

    div-float/2addr v0, v2

    goto :goto_9

    :cond_9
    move/from16 v6, v23

    const/4 v0, 0x0

    :goto_9
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v3, :cond_a

    new-instance v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v5, v28, v2

    aget v7, v9, v2

    int-to-float v7, v7

    mul-float/2addr v7, v0

    aget-boolean v11, v29, v2

    invoke-direct {v4, v5, v7, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v4, v22, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    sub-long/2addr v4, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ColorExtractor Memory Usage "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v11, v4, v25

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "ColorExtractor"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v6

    goto :goto_b

    :cond_b
    move/from16 v6, v23

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move/from16 v17, v6

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v2, v37

    move-object/from16 v11, v38

    move-object/from16 v7, v39

    move-object/from16 v12, v40

    goto/16 :goto_1

    :cond_c
    move-object/from16 v37, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v39, v7

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    :goto_b
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic blacklist lambda$discardSameHSVfromDominantColors$1(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 3

    const v0, 0x49742400    # 1000000.0f

    iget v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$kMeansHsv$0(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 4

    const v0, 0x49742400    # 1000000.0f

    iget v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v2, 0x49742400    # 1000000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$sortColorResult$2(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 2

    iget v0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static blacklist makeClusterGroupColorBandBased()[I
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x777778

    aput v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0xa

    aput v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_8

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x420a0000    # 34.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x428b0000    # 69.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x42f90000    # 124.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x43298000    # 169.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x43568000    # 214.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x43844000    # 264.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x4390c000    # 289.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_8
    .array-data 4
        0x439fc000    # 319.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBased2()[I
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x777778

    aput v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x42640000    # 57.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x42700000    # 60.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x42ea0000    # 117.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x43360000    # 182.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x436f0000    # 239.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x43958000    # 299.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBased3()[I
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x777778

    aput v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_7

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x42100000    # 36.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x42900000    # 72.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x42fc0000    # 126.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_4
    .array-data 4
        0x43340000    # 180.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x437c0000    # 252.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x43900000    # 288.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x43a20000    # 324.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBased4()[I
    .locals 11

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    add-int/lit8 v2, v1, 0x1

    const/4 v3, -0x1

    aput v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/high16 v3, -0x1000000

    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const v3, -0x777778

    aput v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x3

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v2, 0x1

    new-array v4, v3, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    new-array v4, v3, [F

    fill-array-data v4, :array_3

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v2, 0x1

    new-array v4, v3, [F

    fill-array-data v4, :array_4

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    new-array v4, v3, [F

    fill-array-data v4, :array_5

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v2, 0x1

    new-array v4, v3, [F

    fill-array-data v4, :array_6

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    new-array v4, v3, [F

    fill-array-data v4, :array_7

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v1

    sget v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v8, 0x1

    aput v1, v6, v8

    const/4 v9, 0x2

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v2

    add-int/lit8 v2, v5, 0x1

    new-array v6, v3, [F

    const/high16 v10, 0x42100000    # 36.0f

    aput v10, v6, v7

    aput v1, v6, v8

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [F

    const/high16 v10, 0x42900000    # 72.0f

    aput v10, v6, v7

    aput v1, v6, v8

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v2

    add-int/lit8 v2, v5, 0x1

    new-array v6, v3, [F

    const/high16 v10, 0x42fc0000    # 126.0f

    aput v10, v6, v7

    aput v1, v6, v8

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [F

    const/high16 v10, 0x43340000    # 180.0f

    aput v10, v6, v7

    aput v1, v6, v8

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v2

    add-int/lit8 v2, v5, 0x1

    new-array v6, v3, [F

    const/high16 v10, 0x437c0000    # 252.0f

    aput v10, v6, v7

    aput v1, v6, v8

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [F

    const/high16 v10, 0x43900000    # 288.0f

    aput v10, v6, v7

    aput v1, v6, v8

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v2

    add-int/lit8 v2, v5, 0x1

    new-array v3, v3, [F

    const/high16 v6, 0x43a20000    # 324.0f

    aput v6, v3, v7

    aput v1, v3, v8

    aput v4, v3, v9

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v0, v5

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x42100000    # 36.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x42900000    # 72.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x42fc0000    # 126.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x43340000    # 180.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x437c0000    # 252.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x43900000    # 288.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x43a20000    # 324.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static blacklist makeClusterrGroup_preset1(I)[I
    .locals 9

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    move p0, v0

    :cond_0
    new-array v1, p0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, -0x1000000

    const/4 v4, 0x1

    aput v2, v1, v4

    const v2, -0x777778

    const/4 v5, 0x2

    aput v2, v1, v5

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_1

    sub-int v6, v2, v0

    int-to-float v6, v6

    sub-int v7, p0, v0

    int-to-float v7, v7

    const/high16 v8, 0x43b40000    # 360.0f

    div-float/2addr v8, v7

    mul-float/2addr v6, v8

    const/4 v7, 0x3

    new-array v7, v7, [F

    aput v6, v7, v3

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, v7, v4

    aput v6, v7, v5

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static blacklist mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v0, v1

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    if-ne p2, v1, :cond_1

    iget v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    iget-boolean v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    iget-object v2, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    iget v3, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    div-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedColorHSVBased([F[FF)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHSVFromColor(I)[F

    move-result-object v2

    sget v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    invoke-static {v2, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v1, 0x0

    iput v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    return-void
.end method

.method public static blacklist sampleColorsWithBias(Landroid/graphics/Bitmap;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 11

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleColorsWithBias input bitmap size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | ClusterGroups Num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorExtractor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v1, v0, v9

    new-array v10, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v10, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sampleColorsWithBias([I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sampleColorsWithBias([I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    array-length v3, v0

    new-array v4, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [F

    sget v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    new-array v9, v2, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v2, :cond_3

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v12, 0x0

    aget-object v13, v1, v10

    iget-object v5, v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    aget-object v13, v1, v10

    iget-boolean v13, v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-nez v13, :cond_0

    invoke-static {v5, v7, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v13

    if-nez v13, :cond_0

    aget v13, v5, v16

    aget v18, p2, v16

    add-float v13, v13, v18

    const/high16 v14, 0x43b40000    # 360.0f

    invoke-static {v15, v14, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->rangeRevolving(FFF)F

    move-result v13

    aput v13, v6, v16

    aget v13, v5, v17

    aget v14, p2, v17

    add-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v15, v14, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->range(FFF)F

    move-result v13

    aput v13, v6, v17

    goto :goto_1

    :cond_0
    aget v13, v5, v16

    aput v13, v6, v16

    aget v13, v5, v17

    aput v13, v6, v17

    :goto_1
    const/4 v13, 0x2

    aget v14, v5, v13

    aget v16, p2, v13

    add-float v14, v14, v16

    move-object/from16 v16, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v15, v5, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->range(FFF)F

    move-result v5

    aput v5, v6, v13

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v5

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_2

    aget v14, v0, v13

    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    if-lez v14, :cond_1

    aget v15, v0, v13

    invoke-static {v15, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_rgb_sqaure2(II)F

    move-result v15

    cmpl-float v17, v11, v15

    if-lez v17, :cond_1

    move v11, v15

    move v12, v13

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    aget v13, v0, v12

    aput v13, v4, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v16

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v2, :cond_4

    new-instance v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v12, v4, v10

    aget-object v13, v1, v10

    iget v13, v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    aget-object v14, v1, v10

    iget-boolean v14, v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    invoke-direct {v11, v12, v13, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    return-object v9
.end method

.method public static blacklist setBrightnessThresholdForGrayscale(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    return-void
.end method

.method public static blacklist setGrayscaleDistanceWeight(FFF)V
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    const/4 v1, 0x0

    aput p0, v0, v1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    const/4 v1, 0x2

    aput p2, v0, v1

    return-void
.end method

.method public static blacklist setGrayscaleDistanceWeight([F)V
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setGrayscaleDistanceWeight(FFF)V

    return-void
.end method

.method public static blacklist setHsvDistanceWeight(FFF)V
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    const/4 v1, 0x0

    aput p0, v0, v1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    const/4 v1, 0x2

    aput p2, v0, v1

    return-void
.end method

.method public static blacklist setHsvDistanceWeight([F)V
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setHsvDistanceWeight(FFF)V

    return-void
.end method

.method public static blacklist setSaturationThresholdForGrayscale(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    return-void
.end method

.method static blacklist sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method
