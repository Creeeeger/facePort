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

    .line 19
    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    .line 22
    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    .line 24
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    .line 25
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist checkGayScaleWithSV([FFF)Z
    .locals 2
    .param p0, "hsv"    # [F
    .param p1, "offsetValue_s"    # F
    .param p2, "offsetValue_b"    # F

    .line 407
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
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "hsv_weight"    # [F

    .line 380
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 381
    .local v1, "diff_h":F
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    .line 382
    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v3, v1

    .line 384
    :cond_0
    div-float v2, v1, v2

    aget v0, p2, v0

    mul-float/2addr v2, v0

    .line 385
    .end local v1    # "diff_h":F
    .local v2, "diff_h":F
    const/4 v0, 0x1

    aget v1, p1, v0

    aget v3, p0, v0

    sub-float/2addr v1, v3

    aget v0, p2, v0

    mul-float/2addr v1, v0

    .line 386
    .local v1, "diff_s":F
    const/4 v0, 0x2

    aget v3, p1, v0

    aget v4, p0, v0

    sub-float/2addr v3, v4

    aget v0, p2, v0

    mul-float/2addr v3, v0

    .line 390
    .local v3, "diff_b":F
    mul-float v0, v2, v2

    mul-float v4, v1, v1

    add-float/2addr v0, v4

    mul-float v4, v3, v3

    add-float/2addr v0, v4

    return v0
.end method

.method protected static blacklist colorDistance_rgb_sqaure2(II)F
    .locals 6
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .line 395
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

    .line 396
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

    .line 397
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

    .line 395
    return v0
.end method

.method public static blacklist discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;F)V
    .locals 1
    .param p0, "dominantColorArray"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "hsvDistance"    # F

    .line 443
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;FZ)V

    .line 444
    return-void
.end method

.method public static blacklist discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;FZ)V
    .locals 25
    .param p0, "dominantColorArray"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "distanceThresholdRatio"    # F
    .param p2, "mixSameColors"    # Z

    .line 448
    move-object/from16 v0, p0

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    .line 450
    .local v1, "clusterCalcWeightColor":[F
    const v2, 0x3fddb3d7

    mul-float v2, v2, p1

    .line 451
    .local v2, "squaredThresholdDistanceColor":F
    mul-float/2addr v2, v2

    .line 454
    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    .line 456
    .local v3, "clusterCalcWeightGrayscale":[F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p1

    .line 457
    .local v4, "squaredThresholdDistanceMono":F
    mul-float/2addr v4, v4

    .line 458
    sget v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    .local v5, "saturationThresholdForGrayscale":F
    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    .line 460
    .local v6, "brightnessThresholdForGrayscale":F
    const/4 v7, 0x3

    new-array v8, v7, [F

    .line 461
    .local v8, "hsvA":[F
    new-array v7, v7, [F

    .line 462
    .local v7, "hsvB":[F
    array-length v9, v0

    .line 470
    .local v9, "dominantColorLength":I
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    if-ge v10, v9, :cond_7

    .line 471
    aget-object v11, v0, v10

    .line 472
    .local v11, "dominantColorResult_A":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget v12, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    .line 473
    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_6

    .line 475
    :cond_0
    invoke-virtual {v11, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    .line 477
    invoke-static {v8, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v12

    .line 479
    .local v12, "isGrayScaleA":Z
    if-eqz v12, :cond_1

    .line 480
    move-object v14, v3

    .line 481
    .local v14, "clusterCalcWeight":[F
    move v15, v4

    .local v15, "squaredThresholdDistance":F
    goto :goto_1

    .line 483
    .end local v14    # "clusterCalcWeight":[F
    .end local v15    # "squaredThresholdDistance":F
    :cond_1
    move-object v14, v1

    .line 484
    .restart local v14    # "clusterCalcWeight":[F
    move v15, v2

    .line 486
    .restart local v15    # "squaredThresholdDistance":F
    :goto_1
    const/4 v13, 0x0

    aget v17, v8, v13

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHumanEyeBasedHueNormalizedDistance(F)F

    move-result v17

    const/high16 v18, 0x43b40000    # 360.0f

    mul-float v17, v17, v18

    aput v17, v8, v13

    .line 487
    add-int/lit8 v17, v10, 0x1

    move/from16 v13, v17

    .local v13, "b":I
    :goto_2
    if-ge v13, v9, :cond_6

    .line 488
    move-object/from16 v17, v1

    .end local v1    # "clusterCalcWeightColor":[F
    .local v17, "clusterCalcWeightColor":[F
    aget-object v1, v0, v13

    .line 489
    .local v1, "dominantColorResult_B":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    move/from16 v20, v2

    .end local v2    # "squaredThresholdDistanceColor":F
    .local v20, "squaredThresholdDistanceColor":F
    iget v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/16 v16, 0x0

    cmpl-float v2, v2, v16

    if-nez v2, :cond_2

    .line 490
    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_5

    .line 495
    :cond_2
    invoke-virtual {v1, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    .line 496
    invoke-static {v7, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v2

    .line 497
    .local v2, "isGrayScaleB":Z
    const/16 v19, 0x0

    aget v21, v7, v19

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHumanEyeBasedHueNormalizedDistance(F)F

    move-result v21

    mul-float v21, v21, v18

    aput v21, v7, v19

    .line 498
    if-ne v12, v2, :cond_5

    invoke-static {v8, v7, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_hsv_square2([F[F[F)D

    move-result-wide v21

    move/from16 v24, v2

    move-object/from16 v23, v3

    .end local v2    # "isGrayScaleB":Z
    .end local v3    # "clusterCalcWeightGrayscale":[F
    .local v23, "clusterCalcWeightGrayscale":[F
    .local v24, "isGrayScaleB":Z
    float-to-double v2, v15

    cmpg-double v2, v21, v2

    if-gez v2, :cond_4

    .line 499
    iget v2, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v2, v3

    .line 501
    .local v2, "percentageSum":F
    if-eqz p2, :cond_3

    .line 502
    iget-object v3, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    move/from16 v21, v4

    .end local v4    # "squaredThresholdDistanceMono":F
    .local v21, "squaredThresholdDistanceMono":F
    iget-object v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    move/from16 v22, v5

    .end local v5    # "saturationThresholdForGrayscale":F
    .local v22, "saturationThresholdForGrayscale":F
    iget v5, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    div-float/2addr v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedColorHSVBased([F[FF)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    goto :goto_3

    .line 501
    .end local v21    # "squaredThresholdDistanceMono":F
    .end local v22    # "saturationThresholdForGrayscale":F
    .restart local v4    # "squaredThresholdDistanceMono":F
    .restart local v5    # "saturationThresholdForGrayscale":F
    :cond_3
    move/from16 v21, v4

    move/from16 v22, v5

    .line 504
    .end local v4    # "squaredThresholdDistanceMono":F
    .end local v5    # "saturationThresholdForGrayscale":F
    .restart local v21    # "squaredThresholdDistanceMono":F
    .restart local v22    # "saturationThresholdForGrayscale":F
    :goto_3
    iput v2, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 505
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    .line 506
    const/4 v4, 0x0

    iput v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 507
    add-int/lit8 v5, v9, -0x1

    invoke-static {v0, v13, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ArrayUtils;->arrayChangePos([Ljava/lang/Object;II)V

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v3, v23

    goto :goto_2

    .line 498
    .end local v2    # "percentageSum":F
    .end local v21    # "squaredThresholdDistanceMono":F
    .end local v22    # "saturationThresholdForGrayscale":F
    .restart local v4    # "squaredThresholdDistanceMono":F
    .restart local v5    # "saturationThresholdForGrayscale":F
    :cond_4
    move/from16 v21, v4

    move/from16 v22, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .end local v4    # "squaredThresholdDistanceMono":F
    .end local v5    # "saturationThresholdForGrayscale":F
    .restart local v21    # "squaredThresholdDistanceMono":F
    .restart local v22    # "saturationThresholdForGrayscale":F
    goto :goto_4

    .end local v21    # "squaredThresholdDistanceMono":F
    .end local v22    # "saturationThresholdForGrayscale":F
    .end local v23    # "clusterCalcWeightGrayscale":[F
    .end local v24    # "isGrayScaleB":Z
    .local v2, "isGrayScaleB":Z
    .restart local v3    # "clusterCalcWeightGrayscale":[F
    .restart local v4    # "squaredThresholdDistanceMono":F
    .restart local v5    # "saturationThresholdForGrayscale":F
    :cond_5
    move/from16 v24, v2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 509
    .end local v2    # "isGrayScaleB":Z
    .end local v3    # "clusterCalcWeightGrayscale":[F
    .end local v4    # "squaredThresholdDistanceMono":F
    .end local v5    # "saturationThresholdForGrayscale":F
    .restart local v21    # "squaredThresholdDistanceMono":F
    .restart local v22    # "saturationThresholdForGrayscale":F
    .restart local v23    # "clusterCalcWeightGrayscale":[F
    .restart local v24    # "isGrayScaleB":Z
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v3, v23

    goto/16 :goto_2

    .line 487
    .end local v17    # "clusterCalcWeightColor":[F
    .end local v20    # "squaredThresholdDistanceColor":F
    .end local v21    # "squaredThresholdDistanceMono":F
    .end local v22    # "saturationThresholdForGrayscale":F
    .end local v23    # "clusterCalcWeightGrayscale":[F
    .end local v24    # "isGrayScaleB":Z
    .local v1, "clusterCalcWeightColor":[F
    .local v2, "squaredThresholdDistanceColor":F
    .restart local v3    # "clusterCalcWeightGrayscale":[F
    .restart local v4    # "squaredThresholdDistanceMono":F
    .restart local v5    # "saturationThresholdForGrayscale":F
    :cond_6
    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    .line 470
    .end local v1    # "clusterCalcWeightColor":[F
    .end local v2    # "squaredThresholdDistanceColor":F
    .end local v3    # "clusterCalcWeightGrayscale":[F
    .end local v4    # "squaredThresholdDistanceMono":F
    .end local v5    # "saturationThresholdForGrayscale":F
    .end local v13    # "b":I
    .restart local v17    # "clusterCalcWeightColor":[F
    .restart local v20    # "squaredThresholdDistanceColor":F
    .restart local v21    # "squaredThresholdDistanceMono":F
    .restart local v22    # "saturationThresholdForGrayscale":F
    .restart local v23    # "clusterCalcWeightGrayscale":[F
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v3, v23

    goto/16 :goto_0

    .end local v11    # "dominantColorResult_A":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .end local v12    # "isGrayScaleA":Z
    .end local v14    # "clusterCalcWeight":[F
    .end local v15    # "squaredThresholdDistance":F
    .end local v17    # "clusterCalcWeightColor":[F
    .end local v20    # "squaredThresholdDistanceColor":F
    .end local v21    # "squaredThresholdDistanceMono":F
    .end local v22    # "saturationThresholdForGrayscale":F
    .end local v23    # "clusterCalcWeightGrayscale":[F
    .restart local v1    # "clusterCalcWeightColor":[F
    .restart local v2    # "squaredThresholdDistanceColor":F
    .restart local v3    # "clusterCalcWeightGrayscale":[F
    .restart local v4    # "squaredThresholdDistanceMono":F
    .restart local v5    # "saturationThresholdForGrayscale":F
    :cond_7
    move-object/from16 v17, v1

    move/from16 v20, v2

    move-object/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v5

    .line 515
    .end local v1    # "clusterCalcWeightColor":[F
    .end local v2    # "squaredThresholdDistanceColor":F
    .end local v3    # "clusterCalcWeightGrayscale":[F
    .end local v4    # "squaredThresholdDistanceMono":F
    .end local v5    # "saturationThresholdForGrayscale":F
    .end local v10    # "a":I
    .restart local v17    # "clusterCalcWeightColor":[F
    .restart local v20    # "squaredThresholdDistanceColor":F
    .restart local v21    # "squaredThresholdDistanceMono":F
    .restart local v22    # "saturationThresholdForGrayscale":F
    .restart local v23    # "clusterCalcWeightGrayscale":[F
    :goto_6
    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 519
    return-void
.end method

.method public static blacklist getAverageColorFromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)I
    .locals 9
    .param p0, "dominantColorResult"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 429
    const/4 v0, 0x0

    .local v0, "avgR":F
    const/4 v1, 0x0

    .local v1, "avgG":F
    const/4 v2, 0x0

    .line 430
    .local v2, "avgB":F
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 431
    .local v5, "colorResult":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 432
    .local v6, "color":I
    iget v7, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 433
    .local v7, "percentage":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_0

    .line 434
    goto :goto_1

    .line 435
    :cond_0
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v0, v8

    .line 436
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v1, v8

    .line 437
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v2, v8

    .line 430
    .end local v5    # "colorResult":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .end local v6    # "color":I
    .end local v7    # "percentage":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 439
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
    .param p0, "colorA"    # I
    .param p1, "weightA"    # F
    .param p2, "colorB"    # I
    .param p3, "weightB"    # F

    .line 574
    nop

    .line 575
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

    .line 576
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

    .line 577
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

    .line 578
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

    .line 574
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static blacklist getBrightnessThresholdForGrayscale()F
    .locals 1

    .line 36
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist getHsvDistanceWeight()[F
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static blacklist getSaturationThresholdForGrayscale()F
    .locals 1

    .line 28
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "clusterGroups"    # [I

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 172
    .local v0, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 173
    .local v9, "bitmapHeight":I
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

    .line 174
    mul-int v1, v0, v9

    new-array v10, v1, [I

    .line 175
    .local v10, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 176
    invoke-static {v10, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 41
    .param p0, "pixels"    # [I
    .param p1, "clusterGroups"    # [I

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 181
    .local v2, "iterationNum":I
    array-length v3, v1

    .line 182
    .local v3, "clusterSize":I
    new-array v4, v3, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 183
    .local v4, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    new-array v5, v3, [I

    .line 184
    .local v5, "clusterGroups_copied":[I
    new-array v6, v3, [Z

    .line 185
    .local v6, "grayScaleFlags":[Z
    new-array v7, v3, [[F

    .line 186
    .local v7, "clusterGroups_hsv_copied":[[F
    new-array v8, v3, [Z

    .line 187
    .local v8, "clusterGroupGrayColors":[Z
    new-array v9, v3, [I

    .line 188
    .local v9, "aN":[I
    new-array v10, v3, [[J

    .line 190
    .local v10, "aColorAvg":[[J
    sget-object v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    .line 191
    .local v11, "clusterCalcWeightColor":[F
    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    .line 192
    .local v12, "clusterCalcWeightGrayScale":[F
    sget v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    .line 193
    .local v13, "saturationThresholdForGrayscale":F
    sget v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    .line 195
    .local v14, "brightnessThresholdForGrayscale":F
    const/4 v15, 0x3

    move/from16 v16, v2

    .end local v2    # "iterationNum":I
    .local v16, "iterationNum":I
    new-array v2, v15, [F

    .line 196
    .local v2, "pixels_hsv":[F
    const/16 v17, 0x0

    .line 210
    .local v17, "numberOfVisiblePixels":I
    const/high16 v18, -0x1000000

    .line 211
    .local v18, "A_MASK":I
    const/high16 v19, 0xff0000

    .line 212
    .local v19, "R_MASK":I
    const v20, 0xff00

    .line 213
    .local v20, "G_MASK":I
    const/16 v21, 0xff

    .line 215
    .local v21, "B_MASK":I
    const/16 v22, 0x0

    move/from16 v15, v22

    .local v15, "i":I
    :goto_0
    move-object/from16 v22, v4

    .end local v4    # "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .local v22, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    if-ge v15, v3, :cond_0

    .line 216
    aget v24, v1, v15

    aput v24, v5, v15

    .line 217
    const/4 v4, 0x3

    new-array v1, v4, [F

    .line 218
    .local v1, "clusterGroupsHsv":[F
    aget v4, v5, v15

    invoke-static {v4, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 221
    invoke-static {v1, v13, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v4

    aput-boolean v4, v8, v15

    .line 223
    aput-object v1, v7, v15

    .line 224
    const/4 v4, 0x0

    aput v4, v9, v15

    .line 225
    move-object/from16 v23, v1

    const/4 v4, 0x3

    .end local v1    # "clusterGroupsHsv":[F
    .local v23, "clusterGroupsHsv":[F
    new-array v1, v4, [J

    fill-array-data v1, :array_0

    aput-object v1, v10, v15

    .line 215
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v22

    goto :goto_0

    .line 229
    .end local v15    # "i":I
    .end local v23    # "clusterGroupsHsv":[F
    :cond_0
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    const/4 v4, 0x1

    if-ge v1, v4, :cond_c

    .line 230
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v25

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v27

    sub-long v25, v25, v27

    .line 233
    .local v25, "prevMemoryUsage":J
    const/4 v15, 0x0

    .line 234
    .local v15, "clusterColorGrayFlag":Z
    const/4 v4, 0x0

    invoke-static {v9, v4}, Ljava/util/Arrays;->fill([II)V

    .line 235
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_1

    .line 236
    move/from16 v27, v15

    .end local v15    # "clusterColorGrayFlag":Z
    .local v27, "clusterColorGrayFlag":Z
    aget-object v15, v10, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    .end local v5    # "clusterGroups_copied":[I
    .end local v6    # "grayScaleFlags":[Z
    .local v28, "clusterGroups_copied":[I
    .local v29, "grayScaleFlags":[Z
    const-wide/16 v5, 0x0

    invoke-static {v15, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 235
    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto :goto_2

    .end local v27    # "clusterColorGrayFlag":Z
    .end local v28    # "clusterGroups_copied":[I
    .end local v29    # "grayScaleFlags":[Z
    .restart local v5    # "clusterGroups_copied":[I
    .restart local v6    # "grayScaleFlags":[Z
    .restart local v15    # "clusterColorGrayFlag":Z
    :cond_1
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v27, v15

    .line 239
    .end local v4    # "i":I
    .end local v5    # "clusterGroups_copied":[I
    .end local v6    # "grayScaleFlags":[Z
    .end local v15    # "clusterColorGrayFlag":Z
    .restart local v27    # "clusterColorGrayFlag":Z
    .restart local v28    # "clusterGroups_copied":[I
    .restart local v29    # "grayScaleFlags":[Z
    array-length v4, v0

    move/from16 v6, v17

    const/4 v5, 0x0

    .end local v17    # "numberOfVisiblePixels":I
    .end local v27    # "clusterColorGrayFlag":Z
    .local v6, "numberOfVisiblePixels":I
    .restart local v15    # "clusterColorGrayFlag":Z
    :goto_3
    const/16 v17, 0x2

    const v27, 0xff00

    const/high16 v30, 0xff0000

    if-ge v5, v4, :cond_6

    move/from16 v31, v4

    aget v4, v0, v5

    .line 240
    .local v4, "pixel":I
    ushr-int/lit8 v32, v4, 0x18

    .line 241
    .local v32, "alpha":I
    if-gtz v32, :cond_2

    .line 242
    move-object/from16 v37, v2

    move-object/from16 v39, v7

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    goto/16 :goto_6

    .line 244
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 246
    const v33, 0x7f7fffff    # Float.MAX_VALUE

    .line 247
    .local v33, "minDist":F
    const/16 v34, 0x0

    .line 248
    .local v34, "minDistID":I
    invoke-static {v4, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    .line 249
    invoke-static {v2, v13, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v35

    .line 250
    .local v35, "isPixelColorGray":Z
    const/16 v36, 0x0

    move/from16 v0, v36

    .local v0, "clusterIdx":I
    :goto_4
    if-ge v0, v3, :cond_5

    .line 251
    move/from16 v36, v6

    .end local v6    # "numberOfVisiblePixels":I
    .local v36, "numberOfVisiblePixels":I
    aget-object v6, v7, v0

    .line 252
    .local v6, "clusterGroupsHsv":[F
    aget-boolean v37, v8, v0

    .line 254
    .local v37, "isClusterColorGray":Z
    if-nez v35, :cond_3

    if-nez v37, :cond_3

    .line 255
    invoke-static {v2, v6, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_hsv_square2([F[F[F)F

    move-result v38

    .line 256
    .local v38, "dist":F
    cmpg-float v39, v38, v33

    if-gez v39, :cond_4

    .line 257
    move/from16 v33, v38

    .line 258
    move/from16 v34, v0

    .line 259
    const/4 v15, 0x0

    goto :goto_5

    .line 261
    .end local v38    # "dist":F
    :cond_3
    if-eqz v35, :cond_4

    if-eqz v37, :cond_4

    .line 262
    invoke-static {v2, v6, v12}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_hsv_square2([F[F[F)F

    move-result v38

    .line 263
    .restart local v38    # "dist":F
    cmpg-float v39, v38, v33

    if-gez v39, :cond_4

    .line 264
    move/from16 v33, v38

    .line 265
    move/from16 v34, v0

    .line 266
    const/4 v15, 0x1

    .line 250
    .end local v38    # "dist":F
    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v36

    goto :goto_4

    .end local v36    # "numberOfVisiblePixels":I
    .end local v37    # "isClusterColorGray":Z
    .local v6, "numberOfVisiblePixels":I
    :cond_5
    move/from16 v36, v6

    .line 270
    .end local v0    # "clusterIdx":I
    .end local v6    # "numberOfVisiblePixels":I
    .restart local v36    # "numberOfVisiblePixels":I
    aget-object v0, v10, v34

    .line 272
    .local v0, "colorAvg":[J
    aget v6, v9, v34

    const/16 v23, 0x1

    add-int/lit8 v6, v6, 0x1

    aput v6, v9, v34

    .line 274
    const/4 v6, 0x0

    aget-wide v37, v0, v6

    and-int v6, v4, v30

    move-object/from16 v39, v7

    .end local v7    # "clusterGroups_hsv_copied":[[F
    .local v39, "clusterGroups_hsv_copied":[[F
    int-to-long v6, v6

    add-long v37, v37, v6

    const/4 v6, 0x0

    aput-wide v37, v0, v6

    .line 275
    aget-wide v6, v0, v23

    move-object/from16 v37, v2

    .end local v2    # "pixels_hsv":[F
    .local v37, "pixels_hsv":[F
    and-int v2, v4, v27

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    .end local v11    # "clusterCalcWeightColor":[F
    .end local v12    # "clusterCalcWeightGrayScale":[F
    .local v38, "clusterCalcWeightColor":[F
    .local v40, "clusterCalcWeightGrayScale":[F
    int-to-long v11, v2

    add-long/2addr v6, v11

    aput-wide v6, v0, v23

    .line 276
    aget-wide v6, v0, v17

    and-int/lit16 v2, v4, 0xff

    int-to-long v11, v2

    add-long/2addr v6, v11

    aput-wide v6, v0, v17

    move/from16 v6, v36

    .line 239
    .end local v0    # "colorAvg":[J
    .end local v4    # "pixel":I
    .end local v33    # "minDist":F
    .end local v34    # "minDistID":I
    .end local v35    # "isPixelColorGray":Z
    .end local v36    # "numberOfVisiblePixels":I
    .restart local v6    # "numberOfVisiblePixels":I
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v31

    move-object/from16 v2, v37

    move-object/from16 v11, v38

    move-object/from16 v7, v39

    move-object/from16 v12, v40

    goto/16 :goto_3

    .line 279
    .end local v32    # "alpha":I
    .end local v37    # "pixels_hsv":[F
    .end local v38    # "clusterCalcWeightColor":[F
    .end local v39    # "clusterGroups_hsv_copied":[[F
    .end local v40    # "clusterCalcWeightGrayScale":[F
    .restart local v2    # "pixels_hsv":[F
    .restart local v7    # "clusterGroups_hsv_copied":[[F
    .restart local v11    # "clusterCalcWeightColor":[F
    .restart local v12    # "clusterCalcWeightGrayScale":[F
    :cond_6
    move-object/from16 v37, v2

    move-object/from16 v39, v7

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    .end local v2    # "pixels_hsv":[F
    .end local v7    # "clusterGroups_hsv_copied":[[F
    .end local v11    # "clusterCalcWeightColor":[F
    .end local v12    # "clusterCalcWeightGrayScale":[F
    .restart local v37    # "pixels_hsv":[F
    .restart local v38    # "clusterCalcWeightColor":[F
    .restart local v39    # "clusterGroups_hsv_copied":[[F
    .restart local v40    # "clusterCalcWeightGrayScale":[F
    aput-boolean v15, v29, v1

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v3, :cond_8

    .line 284
    aget-object v2, v10, v0

    .line 285
    .local v2, "colorAvg":[J
    aget v4, v9, v0

    .line 286
    .local v4, "number":I
    if-nez v4, :cond_7

    .line 287
    const/4 v5, 0x0

    .line 288
    .local v5, "avgR":I
    const/4 v7, 0x0

    .line 289
    .local v7, "avgG":I
    const/4 v11, 0x0

    move/from16 v23, v6

    .local v11, "avgB":I
    goto :goto_8

    .line 291
    .end local v5    # "avgR":I
    .end local v7    # "avgG":I
    .end local v11    # "avgB":I
    :cond_7
    const/4 v5, 0x0

    aget-wide v11, v2, v5

    move v7, v6

    .end local v6    # "numberOfVisiblePixels":I
    .local v7, "numberOfVisiblePixels":I
    int-to-long v5, v4

    div-long/2addr v11, v5

    long-to-int v5, v11

    and-int v5, v5, v30

    .line 292
    .restart local v5    # "avgR":I
    const/4 v6, 0x1

    aget-wide v11, v2, v6

    move/from16 v23, v7

    .end local v7    # "numberOfVisiblePixels":I
    .local v23, "numberOfVisiblePixels":I
    int-to-long v6, v4

    div-long/2addr v11, v6

    long-to-int v6, v11

    and-int v7, v6, v27

    .line 293
    .local v7, "avgG":I
    aget-wide v11, v2, v17

    move/from16 v32, v5

    .end local v5    # "avgR":I
    .local v32, "avgR":I
    int-to-long v5, v4

    div-long/2addr v11, v5

    long-to-int v5, v11

    and-int/lit16 v11, v5, 0xff

    move/from16 v5, v32

    .line 298
    .end local v32    # "avgR":I
    .restart local v5    # "avgR":I
    .restart local v11    # "avgB":I
    :goto_8
    const/high16 v6, -0x1000000

    or-int/2addr v6, v5

    or-int/2addr v6, v7

    or-int/2addr v6, v11

    aput v6, v28, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v23

    goto :goto_7

    .end local v2    # "colorAvg":[J
    .end local v4    # "number":I
    .end local v5    # "avgR":I
    .end local v7    # "avgG":I
    .end local v11    # "avgB":I
    .end local v23    # "numberOfVisiblePixels":I
    .restart local v6    # "numberOfVisiblePixels":I
    :cond_8
    move/from16 v23, v6

    .line 303
    .end local v0    # "i":I
    .end local v6    # "numberOfVisiblePixels":I
    .restart local v23    # "numberOfVisiblePixels":I
    if-nez v1, :cond_b

    .line 305
    if-lez v23, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v6, v23

    .end local v23    # "numberOfVisiblePixels":I
    .restart local v6    # "numberOfVisiblePixels":I
    int-to-float v2, v6

    div-float/2addr v0, v2

    goto :goto_9

    .end local v6    # "numberOfVisiblePixels":I
    .restart local v23    # "numberOfVisiblePixels":I
    :cond_9
    move/from16 v6, v23

    .end local v23    # "numberOfVisiblePixels":I
    .restart local v6    # "numberOfVisiblePixels":I
    const/4 v0, 0x0

    .line 306
    .local v0, "invPixelLength":F
    :goto_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v3, :cond_a

    .line 307
    new-instance v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v5, v28, v2

    aget v7, v9, v2

    int-to-float v7, v7

    mul-float/2addr v7, v0

    aget-boolean v11, v29, v2

    invoke-direct {v4, v5, v7, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v4, v22, v2

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 310
    .end local v2    # "i":I
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

    .line 311
    .local v4, "currentMemoryUsage":J
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

    .line 312
    move/from16 v17, v6

    goto :goto_b

    .line 229
    .end local v0    # "invPixelLength":F
    .end local v4    # "currentMemoryUsage":J
    .end local v6    # "numberOfVisiblePixels":I
    .restart local v23    # "numberOfVisiblePixels":I
    :cond_b
    move/from16 v6, v23

    .end local v23    # "numberOfVisiblePixels":I
    .restart local v6    # "numberOfVisiblePixels":I
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

    .end local v15    # "clusterColorGrayFlag":Z
    .end local v25    # "prevMemoryUsage":J
    .end local v28    # "clusterGroups_copied":[I
    .end local v29    # "grayScaleFlags":[Z
    .end local v37    # "pixels_hsv":[F
    .end local v38    # "clusterCalcWeightColor":[F
    .end local v39    # "clusterGroups_hsv_copied":[[F
    .end local v40    # "clusterCalcWeightGrayScale":[F
    .local v2, "pixels_hsv":[F
    .local v5, "clusterGroups_copied":[I
    .local v6, "grayScaleFlags":[Z
    .local v7, "clusterGroups_hsv_copied":[[F
    .local v11, "clusterCalcWeightColor":[F
    .restart local v12    # "clusterCalcWeightGrayScale":[F
    .restart local v17    # "numberOfVisiblePixels":I
    :cond_c
    move-object/from16 v37, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v39, v7

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    .line 317
    .end local v1    # "k":I
    .end local v2    # "pixels_hsv":[F
    .end local v5    # "clusterGroups_copied":[I
    .end local v6    # "grayScaleFlags":[Z
    .end local v7    # "clusterGroups_hsv_copied":[[F
    .end local v11    # "clusterCalcWeightColor":[F
    .end local v12    # "clusterCalcWeightGrayScale":[F
    .restart local v28    # "clusterGroups_copied":[I
    .restart local v29    # "grayScaleFlags":[Z
    .restart local v37    # "pixels_hsv":[F
    .restart local v38    # "clusterCalcWeightColor":[F
    .restart local v39    # "clusterGroups_hsv_copied":[[F
    .restart local v40    # "clusterCalcWeightGrayScale":[F
    :goto_b
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v1, v22

    .end local v22    # "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .local v1, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 321
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
    .param p0, "lhs"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "rhs"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 516
    const v0, 0x49742400    # 1000000.0f

    .line 517
    .local v0, "boostVal":F
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
    .param p0, "lhs"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "rhs"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 318
    const v0, 0x49742400    # 1000000.0f

    .line 319
    .local v0, "boostVal":F
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
    .param p0, "lhs"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "rhs"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 584
    iget v0, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static blacklist makeClusterGroupColorBandBased()[I
    .locals 4

    .line 87
    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 88
    .local v0, "clusterGroups":[I
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 89
    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 90
    const/4 v1, 0x2

    const v2, -0x777778

    aput v2, v0, v1

    .line 91
    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v1

    .line 92
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 93
    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 94
    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 95
    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 96
    new-array v2, v1, [F

    fill-array-data v2, :array_5

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 97
    new-array v2, v1, [F

    fill-array-data v2, :array_6

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v0, v3

    .line 98
    new-array v2, v1, [F

    fill-array-data v2, :array_7

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0xa

    aput v2, v0, v3

    .line 99
    new-array v1, v1, [F

    fill-array-data v1, :array_8

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 100
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

    .line 104
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 105
    .local v0, "clusterGroups":[I
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 106
    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 107
    const/4 v1, 0x2

    const v2, -0x777778

    aput v2, v0, v1

    .line 108
    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v1

    .line 109
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 110
    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 111
    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 112
    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 113
    new-array v2, v1, [F

    fill-array-data v2, :array_5

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 114
    new-array v1, v1, [F

    fill-array-data v1, :array_6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 115
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

    .line 119
    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 120
    .local v0, "clusterGroups":[I
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 121
    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 122
    const/4 v1, 0x2

    const v2, -0x777778

    aput v2, v0, v1

    .line 123
    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v0, v1

    .line 124
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 125
    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 126
    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 127
    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 128
    new-array v2, v1, [F

    fill-array-data v2, :array_5

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 129
    new-array v2, v1, [F

    fill-array-data v2, :array_6

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v0, v3

    .line 130
    new-array v1, v1, [F

    fill-array-data v1, :array_7

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 131
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

    .line 135
    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 136
    .local v0, "clusterGroups":[I
    const/4 v1, 0x0

    .line 137
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v3, -0x1

    aput v3, v0, v1

    .line 138
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/high16 v3, -0x1000000

    aput v3, v0, v2

    .line 139
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const v3, -0x777778

    aput v3, v0, v1

    .line 141
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/4 v3, 0x3

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v2

    .line 142
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v1

    .line 143
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-array v4, v3, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v2

    .line 144
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-array v4, v3, [F

    fill-array-data v4, :array_3

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v1

    .line 145
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-array v4, v3, [F

    fill-array-data v4, :array_4

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v2

    .line 146
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-array v4, v3, [F

    fill-array-data v4, :array_5

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v1

    .line 147
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    new-array v4, v3, [F

    fill-array-data v4, :array_6

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v2

    .line 148
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    new-array v4, v3, [F

    fill-array-data v4, :array_7

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v0, v1

    .line 150
    sget v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    .local v1, "saturationThresholdForGrayscale":F
    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    .line 151
    .local v4, "brightnessThresholdForGrayscale":F
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    new-array v6, v3, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v9, 0x2

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v2

    .line 152
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .restart local v2    # "i":I
    new-array v6, v3, [F

    const/high16 v10, 0x42100000    # 36.0f

    aput v10, v6, v8

    aput v1, v6, v7

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v5

    .line 153
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    new-array v6, v3, [F

    const/high16 v10, 0x42900000    # 72.0f

    aput v10, v6, v8

    aput v1, v6, v7

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v2

    .line 154
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .restart local v2    # "i":I
    new-array v6, v3, [F

    const/high16 v10, 0x42fc0000    # 126.0f

    aput v10, v6, v8

    aput v1, v6, v7

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v5

    .line 155
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    new-array v6, v3, [F

    const/high16 v10, 0x43340000    # 180.0f

    aput v10, v6, v8

    aput v1, v6, v7

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v2

    .line 156
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .restart local v2    # "i":I
    new-array v6, v3, [F

    const/high16 v10, 0x437c0000    # 252.0f

    aput v10, v6, v8

    aput v1, v6, v7

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v5

    .line 157
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    new-array v6, v3, [F

    const/high16 v10, 0x43900000    # 288.0f

    aput v10, v6, v8

    aput v1, v6, v7

    aput v4, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v2

    .line 158
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .restart local v2    # "i":I
    new-array v3, v3, [F

    const/high16 v6, 0x43a20000    # 324.0f

    aput v6, v3, v8

    aput v1, v3, v7

    aput v4, v3, v9

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v0, v5

    .line 160
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
    .locals 10
    .param p0, "clusterNum"    # I

    .line 73
    const/4 v0, 0x3

    .line 74
    .local v0, "defaultColorNum":I
    if-ge p0, v0, :cond_0

    .line 75
    move p0, v0

    .line 76
    :cond_0
    new-array v1, p0, [I

    .line 77
    .local v1, "clusterGroups":[I
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 78
    const/high16 v2, -0x1000000

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 79
    const v2, -0x777778

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 80
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 81
    const/4 v6, 0x3

    new-array v6, v6, [F

    sub-int v7, v2, v0

    int-to-float v7, v7

    const/high16 v8, 0x43b40000    # 360.0f

    sub-int v9, p0, v0

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    aput v7, v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v6, v4

    aput v7, v6, v5

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v1, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method static blacklist mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V
    .locals 5
    .param p0, "dominantColorResultA"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "dominantColorResultB"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p2, "colorMergeType"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    .line 555
    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    iget v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v0, v1

    .line 556
    .local v0, "percentageSum":F
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    if-ne p2, v1, :cond_1

    .line 559
    iget v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    .line 560
    iget-boolean v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    goto :goto_0

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    iget-object v2, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    iget v3, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    div-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getInterpolatedColorHSVBased([F[FF)I

    move-result v1

    .line 563
    .local v1, "colorSum":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    .line 564
    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHSVFromColor(I)[F

    move-result-object v2

    sget v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    invoke-static {v2, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    .line 567
    .end local v1    # "colorSum":I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->setColor(I)V

    .line 568
    iput v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 569
    const/4 v1, 0x0

    iput v1, p1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 571
    return-void
.end method

.method public static blacklist sampleColorsWithBias(Landroid/graphics/Bitmap;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dominantColoResults"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p2, "biasHSV"    # [F

    .line 325
    if-nez p0, :cond_0

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 328
    .local v0, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 329
    .local v9, "bitmapHeight":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sampleColorsWithBias input bitmap size = "

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

    .line 330
    mul-int v1, v0, v9

    new-array v10, v1, [I

    .line 331
    .local v10, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 332
    invoke-static {v10, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sampleColorsWithBias([I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sampleColorsWithBias([I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;[F)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 20
    .param p0, "pixels"    # [I
    .param p1, "dominantColoResults"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p2, "weightColorHSV"    # [F

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    .line 337
    .local v2, "clusterNum":I
    array-length v3, v0

    .line 341
    .local v3, "pixelLength":I
    new-array v4, v2, [I

    .line 342
    .local v4, "sampleColors":[I
    const/4 v5, 0x3

    new-array v6, v5, [F

    .line 343
    .local v6, "currentDominantColorHSV":[F
    new-array v5, v5, [F

    .line 344
    .local v5, "resultClusterColorHSV":[F
    sget v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    .local v7, "saturationThresholdForGrayscale":F
    sget v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    .line 345
    .local v8, "brightnessThresholdForGrayscale":F
    new-array v9, v2, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 346
    .local v9, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    if-ge v10, v2, :cond_3

    .line 347
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 348
    .local v11, "minPixelDistance":F
    const/4 v12, 0x0

    .line 350
    .local v12, "minPixelDistanceID":I
    aget-object v13, v1, v10

    iget-object v6, v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    .line 351
    aget-object v13, v1, v10

    iget-boolean v13, v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-nez v13, :cond_0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v13

    if-nez v13, :cond_0

    .line 352
    const/high16 v13, 0x43b40000    # 360.0f

    aget v18, v6, v16

    aget v19, p2, v16

    add-float v14, v18, v19

    invoke-static {v15, v13, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->rangeRevolving(FFF)F

    move-result v13

    aput v13, v5, v16

    .line 353
    aget v13, v6, v17

    aget v14, p2, v17

    add-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v15, v14, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->range(FFF)F

    move-result v13

    aput v13, v5, v17

    goto :goto_1

    .line 355
    :cond_0
    aget v13, v6, v16

    aput v13, v5, v16

    .line 356
    aget v13, v6, v17

    aput v13, v5, v17

    .line 358
    :goto_1
    const/4 v13, 0x2

    aget v14, v6, v13

    aget v16, p2, v13

    add-float v14, v14, v16

    move-object/from16 v16, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .end local v6    # "currentDominantColorHSV":[F
    .local v16, "currentDominantColorHSV":[F
    invoke-static {v15, v6, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->range(FFF)F

    move-result v6

    aput v6, v5, v13

    .line 359
    invoke-static {v5}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v6

    .line 360
    .local v6, "resultClusterColor":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v3, :cond_2

    .line 361
    aget v14, v0, v13

    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    .line 362
    .local v14, "alpha":I
    if-lez v14, :cond_1

    .line 363
    aget v15, v0, v13

    invoke-static {v15, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->colorDistance_rgb_sqaure2(II)F

    move-result v15

    .line 364
    .local v15, "dist":F
    cmpl-float v17, v11, v15

    if-lez v17, :cond_1

    .line 365
    move v11, v15

    .line 366
    move v12, v13

    .line 360
    .end local v15    # "dist":F
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 370
    .end local v13    # "i":I
    .end local v14    # "alpha":I
    :cond_2
    aget v13, v0, v12

    aput v13, v4, v10

    .line 346
    .end local v6    # "resultClusterColor":I
    .end local v11    # "minPixelDistance":F
    .end local v12    # "minPixelDistanceID":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v16

    goto :goto_0

    .line 372
    .end local v10    # "j":I
    .end local v16    # "currentDominantColorHSV":[F
    .local v6, "currentDominantColorHSV":[F
    :cond_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v2, :cond_4

    .line 373
    new-instance v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v12, v4, v10

    aget-object v13, v1, v10

    iget v13, v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    aget-object v14, v1, v10

    iget-boolean v14, v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    invoke-direct {v11, v12, v13, v14}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v11, v9, v10

    .line 372
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 375
    .end local v10    # "i":I
    :cond_4
    return-object v9
.end method

.method public static blacklist setBrightnessThresholdForGrayscale(F)V
    .locals 0
    .param p0, "brightnessThreshold"    # F

    .line 40
    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sBrightnessThresholdForGrayscale:F

    .line 41
    return-void
.end method

.method public static blacklist setGrayscaleDistanceWeight(FFF)V
    .locals 2
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F

    .line 62
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterGrayscaleDistanceWeight:[F

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 63
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 64
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 65
    return-void
.end method

.method public static blacklist setGrayscaleDistanceWeight([F)V
    .locals 3
    .param p0, "grayscaleWeight"    # [F

    .line 58
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setGrayscaleDistanceWeight(FFF)V

    .line 59
    return-void
.end method

.method public static blacklist setHsvDistanceWeight(FFF)V
    .locals 2
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F

    .line 52
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sClusterHsvDistanceWeight:[F

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 53
    const/4 v1, 0x1

    aput p1, v0, v1

    .line 54
    const/4 v1, 0x2

    aput p2, v0, v1

    .line 55
    return-void
.end method

.method public static blacklist setHsvDistanceWeight([F)V
    .locals 3
    .param p0, "hsvWeight"    # [F

    .line 48
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setHsvDistanceWeight(FFF)V

    .line 49
    return-void
.end method

.method public static blacklist setSaturationThresholdForGrayscale(F)V
    .locals 0
    .param p0, "saturationThreshold"    # F

    .line 32
    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->sSaturationThresholdForGrayscale:F

    .line 33
    return-void
.end method

.method static blacklist sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V
    .locals 1
    .param p0, "dominantColorArray"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 582
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 586
    return-void
.end method
