.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;
.super Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;
.source "ColorPaletteExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;,
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;,
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_GRAYSCALE_THRESHOLD_BRIGHTNESS:F = 0.18f

.field public static final blacklist DEFAULT_GRAYSCALE_THRESHOLD_SATURATION:F = 0.12f

.field static final blacklist LAB_BRIGHTNESS_SCALE:F = 10.0f

.field static final blacklist TAG:Ljava/lang/String; = "ColorPaletteExtractor"

.field static blacklist sBrightnessThresholdForGrayscale:F

.field static blacklist sHsvSpaceHueRadiusValue:F

.field static blacklist sLabSpaceLightnessScale:F

.field static blacklist sMaxHSV:F

.field static blacklist sMaxLab:F

.field static blacklist sMaxRGB:F

.field static blacklist sSaturationThresholdForGrayscale:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 27
    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    .line 28
    const v0, 0x3e3851ec    # 0.18f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    .line 30
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    .line 31
    const-wide v0, 0x406fe00000000000L    # 255.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sput v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxRGB:F

    .line 32
    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sput v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    .line 33
    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxLab:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;-><init>()V

    return-void
.end method

.method public static blacklist discardSameColorFromDominantColorsForColorPalette([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;DLcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;Z)I
    .locals 47
    .param p0, "dominantColorArray"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "normalizedMergeMinDistance"    # D
    .param p3, "colorSpace"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;
    .param p4, "isBrightnessOrientedMerge"    # Z

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x3

    new-array v3, v2, [F

    .local v3, "hsvA":[F
    new-array v4, v2, [F

    .line 124
    .local v4, "hsvB":[F
    new-array v5, v2, [D

    .local v5, "labA":[D
    new-array v2, v2, [D

    .line 125
    .local v2, "labB":[D
    const/4 v6, 0x0

    .line 126
    .local v6, "mergedColorNum":I
    const/4 v7, 0x0

    .line 137
    .local v7, "loopCount":I
    const/4 v8, 0x0

    .local v8, "luminanceA":F
    const/4 v9, 0x0

    .line 138
    .local v9, "luminanceB":F
    const/4 v10, 0x0

    .line 139
    .local v10, "hueA":F
    array-length v11, v0

    .line 145
    .local v11, "size":I
    const-wide/16 v12, 0x0

    .line 146
    .local v12, "squaredDistance":D
    move-wide/from16 v14, p1

    .line 150
    .local v14, "distanceThreshold":D
    move/from16 v16, v6

    .end local v6    # "mergedColorNum":I
    .local v16, "mergedColorNum":I
    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const-wide v17, 0x4076800000000000L    # 360.0

    if-ne v1, v6, :cond_0

    .line 151
    mul-double v14, p1, v17

    move/from16 v6, v16

    goto :goto_0

    .line 152
    :cond_0
    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->RGB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v6, :cond_1

    .line 153
    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxRGB:F

    move/from16 v19, v7

    .end local v7    # "loopCount":I
    .local v19, "loopCount":I
    float-to-double v6, v6

    mul-double v14, p1, v6

    move/from16 v6, v16

    move/from16 v7, v19

    goto :goto_0

    .line 154
    .end local v19    # "loopCount":I
    .restart local v7    # "loopCount":I
    :cond_1
    move/from16 v19, v7

    .end local v7    # "loopCount":I
    .restart local v19    # "loopCount":I
    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v6, :cond_2

    .line 155
    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    float-to-double v6, v6

    mul-double v14, p1, v6

    move/from16 v6, v16

    move/from16 v7, v19

    goto :goto_0

    .line 156
    :cond_2
    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v6, :cond_3

    .line 157
    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxLab:F

    float-to-double v6, v6

    mul-double v14, p1, v6

    move/from16 v6, v16

    move/from16 v7, v19

    goto :goto_0

    .line 156
    :cond_3
    move/from16 v6, v16

    move/from16 v7, v19

    .line 161
    .end local v16    # "mergedColorNum":I
    .end local v19    # "loopCount":I
    .restart local v6    # "mergedColorNum":I
    .restart local v7    # "loopCount":I
    :goto_0
    const/16 v16, 0x0

    .line 162
    .local v16, "mergeFlag":Z
    move/from16 v19, v6

    .end local v6    # "mergedColorNum":I
    .local v19, "mergedColorNum":I
    new-array v6, v11, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    .line 163
    .local v6, "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    const/16 v20, 0x0

    move/from16 v45, v20

    move/from16 v20, v8

    move/from16 v8, v45

    .local v8, "a":I
    .local v20, "luminanceA":F
    :goto_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x1

    if-ge v8, v11, :cond_11

    .line 164
    move/from16 v25, v9

    .end local v9    # "luminanceB":F
    .local v25, "luminanceB":F
    aget-object v9, v0, v8

    .line 165
    .local v9, "dominantColorResultA":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    move/from16 v26, v10

    .end local v10    # "hueA":F
    .local v26, "hueA":F
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v10, v10, v21

    if-nez v10, :cond_4

    .line 166
    move-object/from16 v39, v5

    move-object/from16 v31, v6

    move/from16 v30, v7

    move/from16 v32, v11

    move-wide/from16 v27, v12

    goto/16 :goto_b

    .line 168
    :cond_4
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 169
    .local v10, "colorA":I
    move-wide/from16 v27, v12

    .end local v12    # "squaredDistance":D
    .local v27, "squaredDistance":D
    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-eq v1, v12, :cond_7

    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v12, :cond_5

    goto :goto_2

    .line 175
    :cond_5
    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v12, :cond_6

    .line 176
    invoke-static {v10, v5}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 179
    :cond_6
    move/from16 v13, v26

    goto :goto_3

    .line 172
    :cond_7
    :goto_2
    invoke-virtual {v9, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    .line 173
    invoke-static {v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v12

    .line 174
    .end local v20    # "luminanceA":F
    .local v12, "luminanceA":F
    aget v13, v3, v22

    move/from16 v20, v12

    .line 179
    .end local v12    # "luminanceA":F
    .end local v26    # "hueA":F
    .local v13, "hueA":F
    .restart local v20    # "luminanceA":F
    :goto_3
    const-wide v29, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 180
    .local v29, "minDistance":D
    const/4 v12, -0x1

    .line 181
    .local v12, "minIndex":I
    add-int/lit8 v26, v8, 0x1

    move-object/from16 v31, v6

    move-wide/from16 v45, v29

    move/from16 v30, v7

    move/from16 v29, v10

    move/from16 v10, v26

    move-wide/from16 v6, v45

    .end local v7    # "loopCount":I
    .local v6, "minDistance":D
    .local v10, "b":I
    .local v29, "colorA":I
    .local v30, "loopCount":I
    .local v31, "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    :goto_4
    if-ge v10, v11, :cond_f

    .line 182
    move/from16 v32, v11

    .end local v11    # "size":I
    .local v32, "size":I
    aget-object v11, v0, v10

    .line 183
    .local v11, "dominantColorResultB":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget v0, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v0, v0, v21

    if-nez v0, :cond_8

    .line 184
    move-object/from16 v39, v5

    move-wide/from16 v34, v6

    move/from16 v33, v8

    move/from16 v38, v12

    move v7, v13

    goto/16 :goto_9

    .line 187
    :cond_8
    iget v0, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 188
    .local v0, "colorB":I
    move/from16 v33, v8

    .end local v8    # "a":I
    .local v33, "a":I
    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-eq v1, v8, :cond_a

    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v8, :cond_9

    goto :goto_5

    .line 192
    :cond_9
    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v8, :cond_b

    .line 193
    invoke-static {v0, v2}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    goto :goto_6

    .line 191
    :cond_a
    :goto_5
    invoke-virtual {v11, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    .line 196
    :cond_b
    :goto_6
    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$2;->$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$ColorPaletteExtractor$ColorSpace:[I

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->ordinal()I

    move-result v26

    aget v8, v8, v26

    move-wide/from16 v34, v6

    .end local v6    # "minDistance":D
    .local v34, "minDistance":D
    packed-switch v8, :pswitch_data_0

    move v8, v0

    move-object/from16 v39, v5

    move/from16 v38, v12

    move v7, v13

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .end local v0    # "colorB":I
    .end local v5    # "labA":[D
    .end local v12    # "minIndex":I
    .end local v13    # "hueA":F
    .local v7, "hueA":F
    .local v8, "colorB":I
    .local v38, "minIndex":I
    .local v39, "labA":[D
    goto/16 :goto_7

    .line 229
    .end local v7    # "hueA":F
    .end local v8    # "colorB":I
    .end local v38    # "minIndex":I
    .end local v39    # "labA":[D
    .restart local v0    # "colorB":I
    .restart local v5    # "labA":[D
    .restart local v12    # "minIndex":I
    .restart local v13    # "hueA":F
    :pswitch_0
    aget-wide v36, v5, v22

    sget v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    float-to-double v6, v8

    mul-double v36, v36, v6

    aget-wide v6, v2, v22

    move/from16 v38, v12

    move/from16 v26, v13

    .end local v12    # "minIndex":I
    .end local v13    # "hueA":F
    .restart local v26    # "hueA":F
    .restart local v38    # "minIndex":I
    float-to-double v12, v8

    mul-double/2addr v6, v12

    sub-double v39, v36, v6

    aget-wide v6, v5, v24

    aget-wide v12, v2, v24

    sub-double v41, v6, v12

    aget-wide v6, v5, v23

    aget-wide v12, v2, v23

    sub-double v43, v6, v12

    invoke-static/range {v39 .. v44}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(DDD)D

    move-result-wide v6

    move v8, v0

    move-object/from16 v39, v5

    move-wide/from16 v27, v6

    move/from16 v7, v26

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .end local v27    # "squaredDistance":D
    .local v6, "squaredDistance":D
    goto/16 :goto_7

    .line 226
    .end local v6    # "squaredDistance":D
    .end local v26    # "hueA":F
    .end local v38    # "minIndex":I
    .restart local v12    # "minIndex":I
    .restart local v13    # "hueA":F
    .restart local v27    # "squaredDistance":D
    :pswitch_1
    move/from16 v38, v12

    move/from16 v26, v13

    .end local v12    # "minIndex":I
    .end local v13    # "hueA":F
    .restart local v26    # "hueA":F
    .restart local v38    # "minIndex":I
    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    invoke-static {v3, v4, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvDistanceSquare2FromCornSpaceDoubleFast([F[FF)D

    move-result-wide v6

    .line 227
    .end local v27    # "squaredDistance":D
    .restart local v6    # "squaredDistance":D
    move v8, v0

    move-object/from16 v39, v5

    move-wide/from16 v27, v6

    move/from16 v7, v26

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    goto/16 :goto_7

    .line 223
    .end local v6    # "squaredDistance":D
    .end local v26    # "hueA":F
    .end local v38    # "minIndex":I
    .restart local v12    # "minIndex":I
    .restart local v13    # "hueA":F
    .restart local v27    # "squaredDistance":D
    :pswitch_2
    move/from16 v38, v12

    move/from16 v26, v13

    .end local v12    # "minIndex":I
    .end local v13    # "hueA":F
    .restart local v26    # "hueA":F
    .restart local v38    # "minIndex":I
    iget v6, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    iget v7, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v6, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_rgb_sqaure2(II)D

    move-result-wide v6

    .line 224
    .end local v27    # "squaredDistance":D
    .restart local v6    # "squaredDistance":D
    move v8, v0

    move-object/from16 v39, v5

    move-wide/from16 v27, v6

    move/from16 v7, v26

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    goto/16 :goto_7

    .line 198
    .end local v6    # "squaredDistance":D
    .end local v26    # "hueA":F
    .end local v38    # "minIndex":I
    .restart local v12    # "minIndex":I
    .restart local v13    # "hueA":F
    .restart local v27    # "squaredDistance":D
    :pswitch_3
    move/from16 v38, v12

    move/from16 v26, v13

    .end local v12    # "minIndex":I
    .end local v13    # "hueA":F
    .restart local v26    # "hueA":F
    .restart local v38    # "minIndex":I
    iget-boolean v6, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    iget-boolean v7, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-ne v6, v7, :cond_d

    .line 199
    iget-boolean v6, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v6, :cond_c

    .line 202
    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v6

    sub-float v6, v20, v6

    float-to-double v6, v6

    mul-double/2addr v6, v14

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move v8, v0

    move-object/from16 v39, v5

    move-wide/from16 v27, v6

    move-wide v5, v12

    move/from16 v7, v26

    .end local v27    # "squaredDistance":D
    .restart local v6    # "squaredDistance":D
    goto :goto_7

    .line 204
    .end local v6    # "squaredDistance":D
    .restart local v27    # "squaredDistance":D
    :cond_c
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    aget v6, v4, v22

    move v8, v0

    move/from16 v7, v26

    .end local v0    # "colorB":I
    .end local v26    # "hueA":F
    .restart local v7    # "hueA":F
    .restart local v8    # "colorB":I
    invoke-static {v7, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistanceHueFast(FF)D

    move-result-wide v0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    move-wide/from16 v27, v0

    move-object/from16 v39, v5

    move-wide v5, v12

    .end local v27    # "squaredDistance":D
    .local v0, "squaredDistance":D
    goto :goto_7

    .line 209
    .end local v7    # "hueA":F
    .end local v8    # "colorB":I
    .local v0, "colorB":I
    .restart local v26    # "hueA":F
    .restart local v27    # "squaredDistance":D
    :cond_d
    move v8, v0

    move/from16 v7, v26

    .end local v0    # "colorB":I
    .end local v26    # "hueA":F
    .restart local v7    # "hueA":F
    .restart local v8    # "colorB":I
    const-wide v0, 0x3f947ae140000000L    # 0.019999999552965164

    .line 211
    .local v0, "sameSVdistance":D
    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    invoke-static {v3, v4, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvDistanceSquare2FromCornSpaceDoubleFast([F[FF)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    move-wide/from16 v36, v0

    .end local v0    # "sameSVdistance":D
    .local v36, "sameSVdistance":D
    float-to-double v0, v6

    div-double/2addr v12, v0

    .line 213
    .local v12, "normalizedHSVdistance":D
    const-wide v0, 0x3f947ae140000000L    # 0.019999999552965164

    sub-double v0, v12, v0

    mul-double v0, v0, v17

    add-double/2addr v0, v14

    move-object/from16 v39, v5

    .end local v5    # "labA":[D
    .restart local v39    # "labA":[D
    const-wide/16 v5, 0x0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 221
    .end local v27    # "squaredDistance":D
    .end local v36    # "sameSVdistance":D
    .local v0, "squaredDistance":D
    move-wide/from16 v27, v0

    .line 244
    .end local v0    # "squaredDistance":D
    .end local v12    # "normalizedHSVdistance":D
    .restart local v27    # "squaredDistance":D
    :goto_7
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpg-double v0, v27, v0

    if-gez v0, :cond_e

    .line 245
    cmpl-double v0, v34, v27

    if-lez v0, :cond_e

    .line 246
    move v0, v10

    .line 247
    .end local v38    # "minIndex":I
    .local v0, "minIndex":I
    move-wide/from16 v5, v27

    move v12, v0

    move-wide/from16 v34, v5

    .end local v34    # "minDistance":D
    .local v5, "minDistance":D
    goto :goto_8

    .line 181
    .end local v0    # "minIndex":I
    .end local v5    # "minDistance":D
    .restart local v34    # "minDistance":D
    .restart local v38    # "minIndex":I
    :cond_e
    move/from16 v12, v38

    .end local v38    # "minIndex":I
    .local v12, "minIndex":I
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v13, v7

    move/from16 v11, v32

    move/from16 v8, v33

    move-wide/from16 v6, v34

    move-object/from16 v5, v39

    goto/16 :goto_4

    .end local v7    # "hueA":F
    .end local v32    # "size":I
    .end local v33    # "a":I
    .end local v34    # "minDistance":D
    .end local v39    # "labA":[D
    .local v5, "labA":[D
    .local v6, "minDistance":D
    .local v8, "a":I
    .local v11, "size":I
    .restart local v13    # "hueA":F
    :cond_f
    move-object/from16 v39, v5

    move-wide/from16 v34, v6

    move/from16 v33, v8

    move/from16 v32, v11

    move/from16 v38, v12

    move v7, v13

    .line 251
    .end local v5    # "labA":[D
    .end local v6    # "minDistance":D
    .end local v8    # "a":I
    .end local v10    # "b":I
    .end local v11    # "size":I
    .end local v12    # "minIndex":I
    .end local v13    # "hueA":F
    .restart local v7    # "hueA":F
    .restart local v32    # "size":I
    .restart local v33    # "a":I
    .restart local v34    # "minDistance":D
    .restart local v38    # "minIndex":I
    .restart local v39    # "labA":[D
    :goto_9
    const/4 v0, -0x1

    move/from16 v12, v38

    .end local v38    # "minIndex":I
    .restart local v12    # "minIndex":I
    if-eq v12, v0, :cond_10

    .line 252
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    move/from16 v1, v33

    move-wide/from16 v5, v34

    .end local v33    # "a":I
    .end local v34    # "minDistance":D
    .local v1, "a":I
    .local v5, "minDistance":D
    invoke-direct {v0, v1, v12, v5, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;-><init>(IID)V

    aput-object v0, v31, v1

    .line 253
    const/4 v0, 0x1

    move/from16 v16, v0

    .end local v16    # "mergeFlag":Z
    .local v0, "mergeFlag":Z
    goto :goto_a

    .line 251
    .end local v0    # "mergeFlag":Z
    .end local v1    # "a":I
    .end local v5    # "minDistance":D
    .restart local v16    # "mergeFlag":Z
    .restart local v33    # "a":I
    .restart local v34    # "minDistance":D
    :cond_10
    move/from16 v1, v33

    move-wide/from16 v5, v34

    .line 163
    .end local v33    # "a":I
    .end local v34    # "minDistance":D
    .restart local v1    # "a":I
    .restart local v5    # "minDistance":D
    :goto_a
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v10, v7

    move/from16 v9, v25

    move-wide/from16 v12, v27

    move/from16 v7, v30

    move-object/from16 v6, v31

    move/from16 v11, v32

    move-object/from16 v5, v39

    .end local v1    # "a":I
    .restart local v8    # "a":I
    goto/16 :goto_1

    .end local v25    # "luminanceB":F
    .end local v27    # "squaredDistance":D
    .end local v29    # "colorA":I
    .end local v30    # "loopCount":I
    .end local v31    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .end local v32    # "size":I
    .end local v39    # "labA":[D
    .local v5, "labA":[D
    .local v6, "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .local v7, "loopCount":I
    .local v9, "luminanceB":F
    .local v10, "hueA":F
    .restart local v11    # "size":I
    .local v12, "squaredDistance":D
    :cond_11
    move-object/from16 v39, v5

    move-object/from16 v31, v6

    move/from16 v30, v7

    move v1, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v32, v11

    move-wide/from16 v27, v12

    .line 256
    .end local v5    # "labA":[D
    .end local v6    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .end local v7    # "loopCount":I
    .end local v8    # "a":I
    .end local v9    # "luminanceB":F
    .end local v10    # "hueA":F
    .end local v11    # "size":I
    .end local v12    # "squaredDistance":D
    .restart local v25    # "luminanceB":F
    .restart local v26    # "hueA":F
    .restart local v27    # "squaredDistance":D
    .restart local v30    # "loopCount":I
    .restart local v31    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .restart local v32    # "size":I
    .restart local v39    # "labA":[D
    :goto_b
    if-eqz v16, :cond_1c

    .line 257
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$1;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$1;-><init>()V

    move-object/from16 v1, v31

    .end local v31    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .local v1, "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 272
    array-length v0, v1

    move/from16 v6, v19

    move/from16 v5, v22

    .end local v19    # "mergedColorNum":I
    .local v6, "mergedColorNum":I
    :goto_c
    if-ge v5, v0, :cond_1b

    aget-object v7, v1, v5

    .line 273
    .local v7, "colorResultData":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    if-nez v7, :cond_12

    .line 274
    move-object/from16 v31, v1

    move-object/from16 v29, v2

    goto/16 :goto_f

    .line 277
    :cond_12
    iget v8, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->index:I

    .line 278
    .local v8, "indexA":I
    iget v9, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->indexTarget:I

    .line 280
    .local v9, "indexB":I
    aget-object v10, p0, v8

    .line 281
    .local v10, "dominantColorResultA":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    aget-object v11, p0, v9

    .line 282
    .local v11, "dominantColorResultB":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget v12, v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v12, v12, v21

    if-lez v12, :cond_1a

    iget v12, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v12, v12, v21

    if-lez v12, :cond_1a

    .line 284
    if-nez p4, :cond_13

    .line 285
    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    move/from16 v22, v0

    move-object/from16 v31, v1

    move-object/from16 v29, v2

    goto/16 :goto_d

    .line 287
    :cond_13
    iget v12, v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 289
    .local v12, "colorA":I
    invoke-virtual {v10, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    .line 291
    iget v13, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    .line 293
    .local v13, "colorB":I
    invoke-virtual {v11, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    .line 295
    move/from16 v22, v0

    iget-boolean v0, v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    .line 296
    .local v0, "isGrayscaleA":Z
    move-object/from16 v31, v1

    .end local v1    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .restart local v31    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    iget v1, v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 297
    .local v1, "percentageA":F
    move-object/from16 v29, v2

    .end local v2    # "labB":[D
    .local v29, "labB":[D
    iget v2, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    .line 298
    .local v2, "percentageB":F
    invoke-static {v12}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v19

    .line 299
    .local v19, "brightnessA":F
    invoke-static {v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v33

    .line 304
    .local v33, "brightnessB":F
    div-float v34, v2, v1

    .line 306
    .local v34, "percentageGap":F
    move/from16 v35, v1

    .end local v1    # "percentageA":F
    .local v35, "percentageA":F
    iget-boolean v1, v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    move/from16 v36, v2

    .end local v2    # "percentageB":F
    .local v36, "percentageB":F
    iget-boolean v2, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-ne v1, v2, :cond_17

    .line 307
    iget-boolean v1, v10, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v1, :cond_15

    .line 308
    mul-float v1, v33, v34

    cmpg-float v1, v19, v1

    if-gez v1, :cond_14

    .line 309
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v10, v11, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    .line 311
    :cond_14
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v10, v11, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    .line 314
    :cond_15
    aget v1, v3, v24

    aget v2, v3, v23

    mul-float/2addr v1, v2

    aget v2, v4, v24

    aget v37, v4, v23

    mul-float v2, v2, v37

    mul-float v2, v2, v34

    cmpg-float v1, v1, v2

    if-gez v1, :cond_16

    .line 315
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v10, v11, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    .line 317
    :cond_16
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v10, v11, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    .line 321
    :cond_17
    if-eqz v0, :cond_19

    .line 322
    aget v1, v3, v23

    aget v2, v4, v23

    mul-float v2, v2, v34

    const v37, 0x3f99999a    # 1.2f

    mul-float v2, v2, v37

    cmpg-float v1, v1, v2

    if-gez v1, :cond_18

    .line 323
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v10, v11, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    .line 325
    :cond_18
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v10, v11, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    .line 328
    :cond_19
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v10, v11, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    .line 337
    .end local v0    # "isGrayscaleA":Z
    .end local v12    # "colorA":I
    .end local v13    # "colorB":I
    .end local v19    # "brightnessA":F
    .end local v33    # "brightnessB":F
    .end local v34    # "percentageGap":F
    .end local v35    # "percentageA":F
    .end local v36    # "percentageB":F
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 282
    .end local v29    # "labB":[D
    .end local v31    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .local v1, "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .local v2, "labB":[D
    :cond_1a
    move/from16 v22, v0

    move-object/from16 v31, v1

    move-object/from16 v29, v2

    .line 272
    .end local v1    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .end local v2    # "labB":[D
    .end local v7    # "colorResultData":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .restart local v29    # "labB":[D
    .restart local v31    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    :goto_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v22

    move-object/from16 v2, v29

    move-object/from16 v1, v31

    goto/16 :goto_c

    .end local v8    # "indexA":I
    .end local v9    # "indexB":I
    .end local v10    # "dominantColorResultA":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .end local v11    # "dominantColorResultB":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .end local v29    # "labB":[D
    .end local v31    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .restart local v1    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .restart local v2    # "labB":[D
    :cond_1b
    move-object/from16 v31, v1

    move-object/from16 v29, v2

    .line 341
    .end local v1    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    .end local v2    # "labB":[D
    .restart local v29    # "labB":[D
    .restart local v31    # "colorResultDataArray":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;
    :goto_f
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V

    goto :goto_10

    .line 256
    .end local v6    # "mergedColorNum":I
    .end local v29    # "labB":[D
    .restart local v2    # "labB":[D
    .local v19, "mergedColorNum":I
    :cond_1c
    move-object/from16 v29, v2

    .end local v2    # "labB":[D
    .restart local v29    # "labB":[D
    move/from16 v6, v19

    .line 343
    .end local v19    # "mergedColorNum":I
    .restart local v6    # "mergedColorNum":I
    :goto_10
    if-eqz v16, :cond_1e

    add-int/lit8 v7, v30, 0x1

    .end local v30    # "loopCount":I
    .local v7, "loopCount":I
    const/16 v0, 0x3e8

    move/from16 v1, v30

    .local v1, "loopCount":I
    if-lt v1, v0, :cond_1d

    .end local v1    # "loopCount":I
    goto :goto_11

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v8, v20

    move/from16 v9, v25

    move/from16 v10, v26

    move-wide/from16 v12, v27

    move-object/from16 v2, v29

    move/from16 v11, v32

    move-object/from16 v5, v39

    goto/16 :goto_0

    .end local v7    # "loopCount":I
    .restart local v30    # "loopCount":I
    :cond_1e
    move/from16 v1, v30

    .end local v30    # "loopCount":I
    .restart local v1    # "loopCount":I
    move v7, v1

    .line 345
    .end local v1    # "loopCount":I
    .restart local v7    # "loopCount":I
    :goto_11
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getBrightnessThresholdForGrayscale()F
    .locals 1

    .line 48
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist getHsvSpaceClusteringRadiusValue()F
    .locals 1

    .line 65
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    return v0
.end method

.method public static blacklist getHsvSpaceHueRadiusValue()F
    .locals 1

    .line 57
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    return v0
.end method

.method public static blacklist getOnlyColorsFromDominantColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;D)[I
    .locals 12
    .param p0, "dominantColorArray"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "minHueDistance"    # D

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v0, "dominantColorArrayUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;>;"
    const/4 v1, 0x3

    new-array v2, v1, [F

    .local v2, "hsvA":[F
    new-array v1, v1, [F

    .line 356
    .local v1, "hsvB":[F
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    .local v3, "a":I
    :goto_0
    const/4 v4, 0x0

    if-lez v3, :cond_5

    .line 357
    aget-object v5, p0, v3

    .line 358
    .local v5, "dominantColorResultA":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v7, 0x3c1374bc    # 0.009f

    cmpg-float v6, v6, v7

    if-lez v6, :cond_4

    iget-boolean v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v6, :cond_0

    .line 359
    goto :goto_4

    .line 362
    :cond_0
    iget-object v2, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    .line 363
    const/4 v6, 0x0

    .line 364
    .local v6, "isSameHueColor":Z
    add-int/lit8 v7, v3, -0x1

    .local v7, "b":I
    :goto_1
    if-ltz v7, :cond_3

    .line 365
    aget-object v8, p0, v7

    .line 366
    .local v8, "dominantColorResultB":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget-boolean v9, v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v9, :cond_1

    .line 367
    goto :goto_2

    .line 370
    :cond_1
    iget-object v1, v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    .line 371
    aget v9, v2, v4

    aget v10, v1, v4

    invoke-static {v9, v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistanceHueFast(FF)D

    move-result-wide v9

    double-to-float v9, v9

    .line 372
    .local v9, "hueDistance":F
    float-to-double v10, v9

    cmpg-double v10, v10, p1

    if-gez v10, :cond_2

    .line 373
    const/4 v6, 0x1

    .line 374
    goto :goto_3

    .line 364
    .end local v9    # "hueDistance":F
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 377
    .end local v7    # "b":I
    .end local v8    # "dominantColorResultB":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    :cond_3
    :goto_3
    if-nez v6, :cond_4

    .line 378
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v6    # "isSameHueColor":Z
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 381
    .end local v3    # "a":I
    .end local v5    # "dominantColorResultA":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    :cond_5
    aget-object v3, p0, v4

    iget-boolean v3, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-nez v3, :cond_6

    .line 382
    aget-object v3, p0, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 385
    .local v3, "size":I
    if-lez v3, :cond_8

    .line 386
    new-array v4, v3, [I

    .line 387
    .local v4, "colorResult":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v3, :cond_7

    .line 388
    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    aput v6, v4, v5

    .line 387
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 390
    .end local v5    # "i":I
    :cond_7
    return-object v4

    .line 392
    .end local v4    # "colorResult":[I
    :cond_8
    const/4 v4, 0x0

    return-object v4
.end method

.method public static blacklist getSaturationThresholdForGrayscale()F
    .locals 1

    .line 44
    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "clusterGroups"    # [I

    .line 401
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv(Landroid/graphics/Bitmap;[IZ)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[IZ)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "clusterGroups"    # [I
    .param p2, "isGettingExtraData"    # Z

    .line 405
    if-nez p0, :cond_0

    .line 406
    const/4 v0, 0x0

    return-object v0

    .line 407
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 408
    .local v0, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 409
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

    const-string v2, "ColorPaletteExtractor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    mul-int v1, v0, v9

    new-array v10, v1, [I

    .line 411
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

    .line 412
    invoke-static {v10, p1, p2, v0, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1
    .param p0, "pixels"    # [I
    .param p1, "clusterGroups"    # [I

    .line 416
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 44
    .param p0, "pixels"    # [I
    .param p1, "clusterGroups"    # [I
    .param p2, "isGettingExtraData"    # Z
    .param p3, "bitmapWidth"    # I
    .param p4, "bitmapHeight"    # I

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 421
    .local v2, "iterationNum":I
    array-length v3, v1

    .line 423
    .local v3, "clusterNum":I
    new-array v4, v3, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 425
    .local v4, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    new-array v5, v3, [I

    .line 426
    .local v5, "clusterGroupsAvgColor":[I
    new-array v6, v3, [[F

    .line 427
    .local v6, "clusterGroupsCornSpace":[[F
    new-array v7, v3, [[F

    .line 429
    .local v7, "clusterGroupsAvgHSV":[[F
    new-array v8, v3, [I

    .line 430
    .local v8, "aN":[I
    new-array v9, v3, [[J

    .line 433
    .local v9, "aColorAvg":[[J
    const/4 v10, 0x3

    new-array v11, v10, [F

    .line 439
    .local v11, "tempHsv":[F
    sget v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    .line 440
    .local v12, "hsvSpaceClusteringRadiusValue":F
    sget v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    .local v13, "saturationThresholdForGrayscale":F
    sget v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    .line 443
    .local v14, "brightnessThresholdForGrayscale":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v16, 0x0

    if-ge v15, v3, :cond_0

    .line 444
    move-object/from16 v17, v4

    .end local v4    # "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .local v17, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    new-array v4, v10, [F

    aput-object v4, v7, v15

    .line 445
    new-array v4, v10, [F

    .line 446
    .local v4, "tempClusterGroupsHsv":[F
    aget v10, v1, v15

    invoke-static {v10, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    .line 447
    invoke-static {v4, v12, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->convertHsv2CornSpace([FF[F)V

    .line 449
    aput-object v4, v6, v15

    .line 450
    aput v16, v8, v15

    .line 451
    const/4 v10, 0x3

    new-array v1, v10, [J

    fill-array-data v1, :array_0

    aput-object v1, v9, v15

    .line 443
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    goto :goto_0

    .end local v17    # "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .local v4, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    :cond_0
    move-object/from16 v17, v4

    .line 455
    .end local v4    # "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .end local v15    # "i":I
    .restart local v17    # "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    const/high16 v1, -0x1000000

    .line 456
    .local v1, "A_MASK":I
    const/high16 v4, 0xff0000

    .line 457
    .local v4, "R_MASK":I
    const v10, 0xff00

    .line 458
    .local v10, "G_MASK":I
    const/16 v15, 0xff

    .line 476
    .local v15, "B_MASK":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    .line 478
    .local v18, "runtime":Ljava/lang/Runtime;
    const/16 v19, 0x0

    move/from16 v20, v1

    move/from16 v1, v19

    .local v1, "k":I
    .local v20, "A_MASK":I
    :goto_1
    if-ge v1, v2, :cond_a

    .line 479
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v23

    sub-long v21, v21, v23

    .line 481
    .local v21, "prevMemoryUsage":J
    const/16 v19, 0x0

    .line 487
    .local v19, "numberOfVisiblePixels":I
    move/from16 v23, v4

    .end local v4    # "R_MASK":I
    .local v23, "R_MASK":I
    array-length v4, v0

    move/from16 v24, v10

    move/from16 v10, v19

    move/from16 v19, v15

    move/from16 v15, v16

    .end local v15    # "B_MASK":I
    .local v10, "numberOfVisiblePixels":I
    .local v19, "B_MASK":I
    .local v24, "G_MASK":I
    :goto_2
    const v25, 0xff00

    const/high16 v26, 0xff0000

    const/16 v27, 0x2

    const/16 v28, 0x1

    if-ge v15, v4, :cond_4

    move/from16 v29, v4

    aget v4, v0, v15

    .line 488
    .local v4, "pixel":I
    ushr-int/lit8 v30, v4, 0x18

    .line 489
    .local v30, "alpha":I
    if-gtz v30, :cond_1

    .line 490
    move-object/from16 v39, v6

    move-object/from16 v40, v11

    move/from16 v41, v12

    move/from16 v37, v13

    move/from16 v38, v14

    goto :goto_4

    .line 492
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 493
    const v31, 0x7f7fffff    # Float.MAX_VALUE

    .line 494
    .local v31, "minDist":F
    const/16 v32, 0x0

    .line 497
    .local v32, "minDistID":I
    invoke-static {v4, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    .line 498
    invoke-static {v11, v12, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->convertHsv2CornSpace([FF[F)V

    .line 499
    aget v33, v11, v16

    .line 500
    .local v33, "pixelCornSpaceH":F
    aget v34, v11, v28

    .line 501
    .local v34, "pixelCornSpaceS":F
    aget v35, v11, v27

    .line 503
    .local v35, "pixelCornSpaceV":F
    const/16 v36, 0x0

    move/from16 v43, v36

    move/from16 v36, v10

    move/from16 v10, v43

    .local v10, "i":I
    .local v36, "numberOfVisiblePixels":I
    :goto_3
    if-ge v10, v3, :cond_3

    .line 506
    aget-object v37, v6, v10

    .line 507
    .local v37, "tempClusterGroupsHsv":[F
    aget v38, v37, v16

    sub-float v38, v33, v38

    .line 508
    .local v38, "dH":F
    aget v39, v37, v28

    sub-float v39, v34, v39

    .line 509
    .local v39, "dS":F
    aget v40, v37, v27

    sub-float v40, v35, v40

    .line 511
    .local v40, "dV":F
    mul-float v41, v38, v38

    mul-float v42, v39, v39

    add-float v41, v41, v42

    mul-float v42, v40, v40

    add-float v41, v41, v42

    .line 512
    .local v41, "dist":F
    cmpg-float v42, v41, v31

    if-gez v42, :cond_2

    .line 513
    move/from16 v31, v41

    .line 514
    move/from16 v32, v10

    .line 503
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 518
    .end local v10    # "i":I
    .end local v37    # "tempClusterGroupsHsv":[F
    .end local v38    # "dH":F
    .end local v39    # "dS":F
    .end local v40    # "dV":F
    .end local v41    # "dist":F
    :cond_3
    aget-object v10, v9, v32

    .line 520
    .local v10, "colorAvg":[J
    aget v37, v8, v32

    add-int/lit8 v37, v37, 0x1

    aput v37, v8, v32

    .line 521
    aget-wide v37, v10, v16

    move-object/from16 v39, v6

    .end local v6    # "clusterGroupsCornSpace":[[F
    .local v39, "clusterGroupsCornSpace":[[F
    and-int v6, v4, v26

    move-object/from16 v40, v11

    move/from16 v41, v12

    .end local v11    # "tempHsv":[F
    .end local v12    # "hsvSpaceClusteringRadiusValue":F
    .local v40, "tempHsv":[F
    .local v41, "hsvSpaceClusteringRadiusValue":F
    int-to-long v11, v6

    add-long v37, v37, v11

    aput-wide v37, v10, v16

    .line 522
    aget-wide v11, v10, v28

    and-int v6, v4, v25

    move/from16 v37, v13

    move/from16 v38, v14

    .end local v13    # "saturationThresholdForGrayscale":F
    .end local v14    # "brightnessThresholdForGrayscale":F
    .local v37, "saturationThresholdForGrayscale":F
    .local v38, "brightnessThresholdForGrayscale":F
    int-to-long v13, v6

    add-long/2addr v11, v13

    aput-wide v11, v10, v28

    .line 523
    aget-wide v11, v10, v27

    and-int/lit16 v6, v4, 0xff

    int-to-long v13, v6

    add-long/2addr v11, v13

    aput-wide v11, v10, v27

    move/from16 v10, v36

    .line 487
    .end local v4    # "pixel":I
    .end local v31    # "minDist":F
    .end local v32    # "minDistID":I
    .end local v33    # "pixelCornSpaceH":F
    .end local v34    # "pixelCornSpaceS":F
    .end local v35    # "pixelCornSpaceV":F
    .end local v36    # "numberOfVisiblePixels":I
    .local v10, "numberOfVisiblePixels":I
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v29

    move/from16 v13, v37

    move/from16 v14, v38

    move-object/from16 v6, v39

    move-object/from16 v11, v40

    move/from16 v12, v41

    goto/16 :goto_2

    .line 530
    .end local v30    # "alpha":I
    .end local v37    # "saturationThresholdForGrayscale":F
    .end local v38    # "brightnessThresholdForGrayscale":F
    .end local v39    # "clusterGroupsCornSpace":[[F
    .end local v40    # "tempHsv":[F
    .end local v41    # "hsvSpaceClusteringRadiusValue":F
    .restart local v6    # "clusterGroupsCornSpace":[[F
    .restart local v11    # "tempHsv":[F
    .restart local v12    # "hsvSpaceClusteringRadiusValue":F
    .restart local v13    # "saturationThresholdForGrayscale":F
    .restart local v14    # "brightnessThresholdForGrayscale":F
    :cond_4
    move-object/from16 v39, v6

    move-object/from16 v40, v11

    move/from16 v41, v12

    move/from16 v37, v13

    move/from16 v38, v14

    .end local v6    # "clusterGroupsCornSpace":[[F
    .end local v11    # "tempHsv":[F
    .end local v12    # "hsvSpaceClusteringRadiusValue":F
    .end local v13    # "saturationThresholdForGrayscale":F
    .end local v14    # "brightnessThresholdForGrayscale":F
    .restart local v37    # "saturationThresholdForGrayscale":F
    .restart local v38    # "brightnessThresholdForGrayscale":F
    .restart local v39    # "clusterGroupsCornSpace":[[F
    .restart local v40    # "tempHsv":[F
    .restart local v41    # "hsvSpaceClusteringRadiusValue":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v3, :cond_6

    .line 533
    aget-object v6, v9, v4

    .line 534
    .local v6, "avgColor":[J
    aget v11, v8, v4

    .line 535
    .local v11, "number":I
    if-gtz v11, :cond_5

    .line 536
    const/4 v12, 0x0

    .line 537
    .local v12, "avgR":I
    const/4 v13, 0x0

    .line 538
    .local v13, "avgG":I
    const/4 v14, 0x0

    move-object v15, v8

    move-object/from16 v29, v9

    .local v14, "avgB":I
    goto :goto_6

    .line 540
    .end local v12    # "avgR":I
    .end local v13    # "avgG":I
    .end local v14    # "avgB":I
    :cond_5
    aget-wide v12, v6, v16

    int-to-long v14, v11

    div-long/2addr v12, v14

    long-to-int v12, v12

    and-int v12, v12, v26

    .line 541
    .restart local v12    # "avgR":I
    aget-wide v13, v6, v28

    move-object v15, v8

    move-object/from16 v29, v9

    .end local v8    # "aN":[I
    .end local v9    # "aColorAvg":[[J
    .local v15, "aN":[I
    .local v29, "aColorAvg":[[J
    int-to-long v8, v11

    div-long/2addr v13, v8

    long-to-int v8, v13

    and-int v13, v8, v25

    .line 542
    .restart local v13    # "avgG":I
    aget-wide v8, v6, v27

    move v14, v12

    move/from16 v30, v13

    .end local v12    # "avgR":I
    .end local v13    # "avgG":I
    .local v14, "avgR":I
    .local v30, "avgG":I
    int-to-long v12, v11

    div-long/2addr v8, v12

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    move v12, v14

    move/from16 v13, v30

    move v14, v8

    .line 545
    .end local v30    # "avgG":I
    .restart local v12    # "avgR":I
    .restart local v13    # "avgG":I
    .local v14, "avgB":I
    :goto_6
    const/high16 v8, -0x1000000

    or-int/2addr v8, v12

    or-int/2addr v8, v13

    or-int/2addr v8, v14

    aput v8, v5, v4

    .line 546
    aget v8, v5, v4

    aget-object v9, v7, v4

    invoke-static {v8, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    .line 530
    add-int/lit8 v4, v4, 0x1

    move-object v8, v15

    move-object/from16 v9, v29

    goto :goto_5

    .end local v6    # "avgColor":[J
    .end local v11    # "number":I
    .end local v12    # "avgR":I
    .end local v13    # "avgG":I
    .end local v14    # "avgB":I
    .end local v15    # "aN":[I
    .end local v29    # "aColorAvg":[[J
    .restart local v8    # "aN":[I
    .restart local v9    # "aColorAvg":[[J
    :cond_6
    move-object v15, v8

    move-object/from16 v29, v9

    .line 549
    .end local v4    # "i":I
    .end local v8    # "aN":[I
    .end local v9    # "aColorAvg":[[J
    .restart local v15    # "aN":[I
    .restart local v29    # "aColorAvg":[[J
    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_9

    .line 551
    if-lez v10, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v6, v10

    div-float/2addr v4, v6

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    .line 552
    .local v4, "invPixelLength":F
    :goto_7
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8
    if-ge v6, v3, :cond_8

    .line 553
    aget-object v8, v7, v6

    move/from16 v9, v37

    move/from16 v11, v38

    .end local v37    # "saturationThresholdForGrayscale":F
    .end local v38    # "brightnessThresholdForGrayscale":F
    .local v9, "saturationThresholdForGrayscale":F
    .local v11, "brightnessThresholdForGrayscale":F
    invoke-static {v8, v9, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v8

    .line 554
    .local v8, "isGrayScale":Z
    aget v12, v15, v6

    int-to-float v12, v12

    mul-float/2addr v12, v4

    .line 555
    .local v12, "percentage":F
    new-instance v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v14, v5, v6

    invoke-direct {v13, v14, v12, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v13, v17, v6

    .line 552
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .end local v8    # "isGrayScale":Z
    .end local v9    # "saturationThresholdForGrayscale":F
    .end local v11    # "brightnessThresholdForGrayscale":F
    .end local v12    # "percentage":F
    .restart local v37    # "saturationThresholdForGrayscale":F
    .restart local v38    # "brightnessThresholdForGrayscale":F
    :cond_8
    move/from16 v9, v37

    move/from16 v11, v38

    .line 557
    .end local v6    # "i":I
    .end local v37    # "saturationThresholdForGrayscale":F
    .end local v38    # "brightnessThresholdForGrayscale":F
    .restart local v9    # "saturationThresholdForGrayscale":F
    .restart local v11    # "brightnessThresholdForGrayscale":F
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v25

    sub-long v12, v12, v25

    .line 558
    .local v12, "currentMemoryUsage":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ColorExtractor Memory Usage "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v8, v2

    move v14, v3

    .end local v2    # "iterationNum":I
    .end local v3    # "clusterNum":I
    .local v8, "iterationNum":I
    .local v14, "clusterNum":I
    sub-long v2, v12, v21

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorPaletteExtractor"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    goto :goto_9

    .line 478
    .end local v4    # "invPixelLength":F
    .end local v8    # "iterationNum":I
    .end local v9    # "saturationThresholdForGrayscale":F
    .end local v11    # "brightnessThresholdForGrayscale":F
    .end local v12    # "currentMemoryUsage":J
    .end local v14    # "clusterNum":I
    .restart local v2    # "iterationNum":I
    .restart local v3    # "clusterNum":I
    .restart local v37    # "saturationThresholdForGrayscale":F
    .restart local v38    # "brightnessThresholdForGrayscale":F
    :cond_9
    move v8, v2

    move v14, v3

    move/from16 v9, v37

    move/from16 v11, v38

    .end local v2    # "iterationNum":I
    .end local v3    # "clusterNum":I
    .end local v37    # "saturationThresholdForGrayscale":F
    .end local v38    # "brightnessThresholdForGrayscale":F
    .restart local v8    # "iterationNum":I
    .restart local v9    # "saturationThresholdForGrayscale":F
    .restart local v11    # "brightnessThresholdForGrayscale":F
    .restart local v14    # "clusterNum":I
    add-int/lit8 v1, v1, 0x1

    move v13, v9

    move-object v8, v15

    move/from16 v15, v19

    move/from16 v4, v23

    move/from16 v10, v24

    move-object/from16 v9, v29

    move-object/from16 v6, v39

    move/from16 v12, v41

    move v14, v11

    move-object/from16 v11, v40

    goto/16 :goto_1

    .end local v19    # "B_MASK":I
    .end local v21    # "prevMemoryUsage":J
    .end local v23    # "R_MASK":I
    .end local v24    # "G_MASK":I
    .end local v29    # "aColorAvg":[[J
    .end local v39    # "clusterGroupsCornSpace":[[F
    .end local v40    # "tempHsv":[F
    .end local v41    # "hsvSpaceClusteringRadiusValue":F
    .restart local v2    # "iterationNum":I
    .restart local v3    # "clusterNum":I
    .local v4, "R_MASK":I
    .local v6, "clusterGroupsCornSpace":[[F
    .local v8, "aN":[I
    .local v9, "aColorAvg":[[J
    .local v10, "G_MASK":I
    .local v11, "tempHsv":[F
    .local v12, "hsvSpaceClusteringRadiusValue":F
    .local v13, "saturationThresholdForGrayscale":F
    .local v14, "brightnessThresholdForGrayscale":F
    .local v15, "B_MASK":I
    :cond_a
    move/from16 v23, v4

    move-object/from16 v39, v6

    move-object/from16 v29, v9

    move/from16 v24, v10

    move-object/from16 v40, v11

    move/from16 v41, v12

    move v9, v13

    move v11, v14

    move/from16 v19, v15

    move v14, v3

    move-object v15, v8

    move v8, v2

    .line 562
    .end local v1    # "k":I
    .end local v2    # "iterationNum":I
    .end local v3    # "clusterNum":I
    .end local v4    # "R_MASK":I
    .end local v6    # "clusterGroupsCornSpace":[[F
    .end local v10    # "G_MASK":I
    .end local v12    # "hsvSpaceClusteringRadiusValue":F
    .end local v13    # "saturationThresholdForGrayscale":F
    .local v8, "iterationNum":I
    .local v9, "saturationThresholdForGrayscale":F
    .local v11, "brightnessThresholdForGrayscale":F
    .local v14, "clusterNum":I
    .local v15, "aN":[I
    .restart local v19    # "B_MASK":I
    .restart local v23    # "R_MASK":I
    .restart local v24    # "G_MASK":I
    .restart local v29    # "aColorAvg":[[J
    .restart local v39    # "clusterGroupsCornSpace":[[F
    .restart local v40    # "tempHsv":[F
    .restart local v41    # "hsvSpaceClusteringRadiusValue":F
    :goto_9
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V

    .line 563
    return-object v17

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBasedFromHueInterval(F)[I
    .locals 1
    .param p0, "hueInterval"    # F

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->makeClusterGroupColorBandBasedFromHueInterval(F[F)[I

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public static blacklist makeClusterGroupColorBandBasedFromHueInterval(F[F)[I
    .locals 11
    .param p0, "hueInterval"    # F
    .param p1, "svValues"    # [F

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "clusterGroupArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "hue":F
    :goto_0
    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v4, v2, v3

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v4, :cond_0

    .line 81
    new-array v3, v1, [F

    aput v2, v3, v7

    aput v6, v3, v8

    aput v6, v3, v5

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-float/2addr v2, p0

    goto :goto_0

    .line 85
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, p1

    if-ge v4, v9, :cond_4

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_2
    cmpg-float v9, v2, v3

    if-gez v9, :cond_1

    .line 88
    new-array v9, v1, [F

    aput v2, v9, v7

    aget v10, p1, v4

    aput v10, v9, v8

    aput v6, v9, v5

    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-float/2addr v2, p0

    goto :goto_2

    .line 91
    :cond_1
    const/4 v2, 0x0

    .line 92
    :goto_3
    cmpg-float v9, v2, v3

    if-gez v9, :cond_2

    .line 93
    new-array v9, v1, [F

    aput v2, v9, v7

    aput v6, v9, v8

    aget v10, p1, v4

    aput v10, v9, v5

    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-float/2addr v2, p0

    goto :goto_3

    .line 96
    :cond_2
    const/4 v2, 0x0

    .line 97
    :goto_4
    cmpg-float v9, v2, v3

    if-gez v9, :cond_3

    .line 98
    new-array v9, v1, [F

    aput v2, v9, v7

    aget v10, p1, v4

    aput v10, v9, v8

    aget v10, p1, v4

    aput v10, v9, v5

    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-float/2addr v2, p0

    goto :goto_4

    .line 85
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 104
    .local v1, "clusterGroupArray":[I
    const/4 v3, 0x0

    .line 105
    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 106
    .local v5, "indexList":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aput v5, v1, v3

    move v3, v6

    .end local v5    # "indexList":I
    goto :goto_5

    .line 107
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_5
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3eaaa64c    # 0.3333f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f2aa64c    # 0.6666f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static blacklist setBrightnessThresholdForGrayscale(F)V
    .locals 0
    .param p0, "brightnessThreshold"    # F

    .line 40
    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    .line 41
    return-void
.end method

.method public static blacklist setHsvSpaceHueRadiusValue(F)V
    .locals 1
    .param p0, "hsvSpaceHueRadiusValue"    # F

    .line 52
    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    .line 53
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    .line 54
    return-void
.end method

.method public static blacklist setLabSpaceLightnessValue(F)V
    .locals 0
    .param p0, "labSpaceLightnessScale"    # F

    .line 61
    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    .line 62
    return-void
.end method

.method public static blacklist setSaturationThresholdForGrayscale(F)V
    .locals 0
    .param p0, "saturationThreshold"    # F

    .line 36
    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    .line 37
    return-void
.end method
