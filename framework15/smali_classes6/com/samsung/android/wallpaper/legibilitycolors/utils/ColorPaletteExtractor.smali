.class public Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;
.super Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;
.source "ColorPaletteExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;,
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;,
        Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;
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

    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    const v0, 0x3e3851ec    # 0.18f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

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

    sget v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sput v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

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

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;-><init>()V

    return-void
.end method

.method public static blacklist discardSameColorFromDominantColorsForColorPalette([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;DLcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;Z)I
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x3

    new-array v3, v2, [F

    new-array v4, v2, [F

    new-array v5, v2, [D

    new-array v2, v2, [D

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v0

    const-wide/16 v12, 0x0

    move-wide/from16 v14, p1

    move/from16 v16, v6

    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    const-wide v17, 0x4076800000000000L    # 360.0

    if-ne v1, v6, :cond_0

    mul-double v14, p1, v17

    move/from16 v6, v16

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->RGB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v6, :cond_1

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxRGB:F

    move/from16 v19, v7

    float-to-double v6, v6

    mul-double v14, p1, v6

    move/from16 v6, v16

    move/from16 v7, v19

    goto :goto_0

    :cond_1
    move/from16 v19, v7

    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v6, :cond_2

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    float-to-double v6, v6

    mul-double v14, p1, v6

    move/from16 v6, v16

    move/from16 v7, v19

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v6, :cond_3

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxLab:F

    float-to-double v6, v6

    mul-double v14, p1, v6

    move/from16 v6, v16

    move/from16 v7, v19

    goto :goto_0

    :cond_3
    move/from16 v6, v16

    move/from16 v7, v19

    :goto_0
    const/16 v16, 0x0

    move/from16 v19, v6

    new-array v6, v11, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    const/16 v20, 0x0

    move/from16 v46, v20

    move/from16 v20, v8

    move/from16 v8, v46

    :goto_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x1

    if-ge v8, v11, :cond_11

    move/from16 v25, v9

    aget-object v9, v0, v8

    move/from16 v26, v10

    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v10, v10, v21

    if-nez v10, :cond_4

    move-object/from16 v31, v6

    move/from16 v30, v7

    move/from16 v32, v11

    move-wide/from16 v27, v12

    goto/16 :goto_b

    :cond_4
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    move-wide/from16 v27, v12

    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-eq v1, v12, :cond_7

    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v12, :cond_5

    goto :goto_2

    :cond_5
    sget-object v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v12, :cond_6

    invoke-static {v10, v5}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    :cond_6
    move/from16 v13, v26

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {v9, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    invoke-static {v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v12

    aget v13, v3, v22

    move/from16 v20, v12

    :goto_3
    const-wide v29, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v12, -0x1

    add-int/lit8 v26, v8, 0x1

    move-object/from16 v31, v6

    move-wide/from16 v46, v29

    move/from16 v30, v7

    move/from16 v29, v10

    move/from16 v10, v26

    move-wide/from16 v6, v46

    :goto_4
    if-ge v10, v11, :cond_f

    move/from16 v32, v11

    aget-object v11, v0, v10

    iget v0, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v0, v0, v21

    if-nez v0, :cond_8

    move-wide/from16 v34, v6

    move/from16 v33, v8

    move/from16 v39, v12

    move/from16 v38, v13

    goto/16 :goto_9

    :cond_8
    iget v0, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    move/from16 v33, v8

    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HSV:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-eq v1, v8, :cond_a

    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->HUE:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v8, :cond_9

    goto :goto_5

    :cond_9
    sget-object v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->LAB:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;

    if-ne v1, v8, :cond_b

    invoke-static {v0, v2}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual {v11, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    :cond_b
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorSpace;->ordinal()I

    move-result v8

    move-wide/from16 v34, v6

    packed-switch v8, :pswitch_data_0

    move/from16 v26, v0

    move/from16 v39, v12

    move/from16 v38, v13

    goto/16 :goto_7

    :pswitch_0
    iget-boolean v8, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    iget-boolean v6, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-ne v8, v6, :cond_d

    iget-boolean v6, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v6, :cond_c

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v6

    sub-float v6, v20, v6

    float-to-double v6, v6

    mul-double/2addr v6, v14

    const-wide/high16 v38, 0x3ff8000000000000L    # 1.5

    mul-double v6, v6, v38

    move v8, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move-wide/from16 v27, v6

    move/from16 v26, v8

    move/from16 v39, v12

    move/from16 v38, v13

    goto/16 :goto_7

    :cond_c
    move v8, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    aget v6, v4, v22

    invoke-static {v13, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistanceHueFast(FF)D

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move-wide/from16 v27, v6

    move/from16 v26, v8

    move/from16 v39, v12

    move/from16 v38, v13

    goto/16 :goto_7

    :cond_d
    move v8, v0

    const-wide v0, 0x3f947ae140000000L    # 0.019999999552965164

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    invoke-static {v3, v4, v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvDistanceSquare2FromCornSpaceDoubleFast([F[FF)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-wide/from16 v38, v0

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    float-to-double v0, v0

    div-double/2addr v6, v0

    const-wide v0, 0x3f947ae140000000L    # 0.019999999552965164

    sub-double v0, v6, v0

    mul-double v0, v0, v17

    add-double/2addr v0, v14

    move-wide/from16 v40, v6

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    move-wide/from16 v27, v0

    move/from16 v26, v8

    move/from16 v39, v12

    move/from16 v38, v13

    goto :goto_7

    :pswitch_1
    move v8, v0

    aget-wide v0, v5, v22

    sget v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    float-to-double v6, v6

    mul-double/2addr v0, v6

    aget-wide v6, v2, v22

    move/from16 v26, v8

    sget v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    move/from16 v39, v12

    move/from16 v38, v13

    float-to-double v12, v8

    mul-double/2addr v6, v12

    sub-double v40, v0, v6

    aget-wide v0, v5, v24

    aget-wide v6, v2, v24

    sub-double v42, v0, v6

    aget-wide v0, v5, v23

    aget-wide v6, v2, v23

    sub-double v44, v0, v6

    invoke-static/range {v40 .. v45}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->distanceSqrt2(DDD)D

    move-result-wide v0

    move-wide/from16 v27, v0

    goto :goto_7

    :pswitch_2
    move/from16 v26, v0

    move/from16 v39, v12

    move/from16 v38, v13

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    invoke-static {v3, v4, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getHsvDistanceSquare2FromCornSpaceDoubleFast([F[FF)D

    move-result-wide v0

    move-wide/from16 v27, v0

    goto :goto_7

    :pswitch_3
    move/from16 v26, v0

    move/from16 v39, v12

    move/from16 v38, v13

    iget v0, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    iget v1, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistance_rgb_sqaure2(II)D

    move-result-wide v0

    move-wide/from16 v27, v0

    :goto_7
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpg-double v0, v27, v0

    if-gez v0, :cond_e

    cmpl-double v0, v34, v27

    if-lez v0, :cond_e

    move v0, v10

    move-wide/from16 v6, v27

    move v12, v0

    goto :goto_8

    :cond_e
    move-wide/from16 v6, v34

    move/from16 v12, v39

    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v11, v32

    move/from16 v8, v33

    move/from16 v13, v38

    goto/16 :goto_4

    :cond_f
    move-wide/from16 v34, v6

    move/from16 v33, v8

    move/from16 v32, v11

    move/from16 v39, v12

    move/from16 v38, v13

    :goto_9
    const/4 v0, -0x1

    move/from16 v12, v39

    if-eq v12, v0, :cond_10

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;

    move/from16 v1, v33

    move-wide/from16 v6, v34

    invoke-direct {v0, v1, v12, v6, v7}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;-><init>(IID)V

    aput-object v0, v31, v1

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_a

    :cond_10
    move/from16 v1, v33

    move-wide/from16 v6, v34

    :goto_a
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v9, v25

    move-wide/from16 v12, v27

    move/from16 v7, v30

    move-object/from16 v6, v31

    move/from16 v11, v32

    move/from16 v10, v38

    goto/16 :goto_1

    :cond_11
    move-object/from16 v31, v6

    move/from16 v30, v7

    move v1, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v32, v11

    move-wide/from16 v27, v12

    :goto_b
    if-eqz v16, :cond_1c

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$1;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$1;-><init>()V

    move-object/from16 v1, v31

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, v1

    move/from16 v6, v19

    move/from16 v7, v22

    :goto_c
    if-ge v7, v0, :cond_1b

    aget-object v8, v1, v7

    if-nez v8, :cond_12

    move-object/from16 v31, v1

    move-object/from16 v29, v2

    move-object/from16 v33, v5

    goto/16 :goto_f

    :cond_12
    iget v9, v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->index:I

    iget v10, v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorResultData;->indexTarget:I

    aget-object v11, p0, v9

    aget-object v12, p0, v10

    iget v13, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v13, v13, v21

    if-lez v13, :cond_1a

    iget v13, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v13, v13, v21

    if-lez v13, :cond_1a

    if-nez p4, :cond_13

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v11, v12, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    move/from16 v22, v0

    move-object/from16 v31, v1

    move-object/from16 v29, v2

    move-object/from16 v33, v5

    goto/16 :goto_d

    :cond_13
    iget v13, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-virtual {v11, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    move/from16 v22, v0

    iget v0, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-virtual {v12, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->copyHSV([F)V

    move-object/from16 v31, v1

    iget-boolean v1, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    move-object/from16 v29, v2

    iget v2, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    move-object/from16 v33, v5

    iget v5, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    invoke-static {v13}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v19

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->calculateLuminance(I)F

    move-result v34

    div-float v35, v5, v2

    move/from16 v36, v0

    iget-boolean v0, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    move/from16 v37, v2

    iget-boolean v2, v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-ne v0, v2, :cond_17

    iget-boolean v0, v11, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v0, :cond_15

    mul-float v0, v34, v35

    cmpg-float v0, v19, v0

    if-gez v0, :cond_14

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v11, v12, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    :cond_14
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v11, v12, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    :cond_15
    aget v0, v3, v24

    aget v2, v3, v23

    mul-float/2addr v0, v2

    aget v2, v4, v24

    aget v38, v4, v23

    mul-float v2, v2, v38

    mul-float v2, v2, v35

    cmpg-float v0, v0, v2

    if-gez v0, :cond_16

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v11, v12, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    :cond_16
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v11, v12, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    :cond_17
    if-eqz v1, :cond_19

    aget v0, v3, v23

    aget v2, v4, v23

    mul-float v2, v2, v35

    const v38, 0x3f99999a    # 1.2f

    mul-float v2, v2, v38

    cmpg-float v0, v0, v2

    if-gez v0, :cond_18

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->B:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v11, v12, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    :cond_18
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v11, v12, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    goto :goto_d

    :cond_19
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;->A:Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;

    invoke-static {v11, v12, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->mergeDominantColorUnit(Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor$ColorMergeType;)V

    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1a
    move/from16 v22, v0

    move-object/from16 v31, v1

    move-object/from16 v29, v2

    move-object/from16 v33, v5

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v22

    move-object/from16 v2, v29

    move-object/from16 v1, v31

    move-object/from16 v5, v33

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v31, v1

    move-object/from16 v29, v2

    move-object/from16 v33, v5

    :goto_f
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V

    goto :goto_10

    :cond_1c
    move-object/from16 v29, v2

    move-object/from16 v33, v5

    move/from16 v6, v19

    :goto_10
    if-eqz v16, :cond_1e

    add-int/lit8 v7, v30, 0x1

    const/16 v0, 0x3e8

    move/from16 v1, v30

    if-lt v1, v0, :cond_1d

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

    move-object/from16 v5, v33

    goto/16 :goto_0

    :cond_1e
    move/from16 v1, v30

    move v7, v1

    :goto_11
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getBrightnessThresholdForGrayscale()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist getHsvSpaceClusteringRadiusValue()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    return v0
.end method

.method public static blacklist getHsvSpaceHueRadiusValue()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    return v0
.end method

.method public static blacklist getOnlyColorsFromDominantColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;D)[I
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    const/4 v4, 0x0

    if-lez v3, :cond_5

    aget-object v5, p0, v3

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v7, 0x3c1374bc    # 0.009f

    cmpg-float v6, v6, v7

    if-lez v6, :cond_4

    iget-boolean v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v6, :cond_0

    goto :goto_4

    :cond_0
    iget-object v1, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    const/4 v6, 0x0

    add-int/lit8 v7, v3, -0x1

    :goto_1
    if-ltz v7, :cond_3

    aget-object v8, p0, v7

    iget-boolean v9, v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, v8, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->hsv:[F

    aget v9, v1, v4

    aget v10, v2, v4

    invoke-static {v9, v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorDistanceHueFast(FF)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v10, v9

    cmpg-double v10, v10, p1

    if-gez v10, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-nez v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    aget-object v3, p0, v4

    iget-boolean v3, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->isGrayScale:Z

    if-nez v3, :cond_6

    aget-object v3, p0, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_7

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    return-object v4

    :cond_8
    const/4 v4, 0x0

    return-object v4
.end method

.method public static blacklist getSaturationThresholdForGrayscale()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    return v0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv(Landroid/graphics/Bitmap;[IZ)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist kMeansHsv(Landroid/graphics/Bitmap;[IZ)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
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

    const-string v2, "ColorPaletteExtractor"

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

    invoke-static {v10, p1, p2, v0, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist kMeansHsv([I[IZII)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    array-length v3, v1

    new-array v4, v3, [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    new-array v5, v3, [I

    new-array v6, v3, [[F

    new-array v7, v3, [[F

    new-array v8, v3, [I

    new-array v9, v3, [[J

    const/4 v10, 0x3

    new-array v11, v10, [F

    sget v12, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    sget v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    sget v14, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    const/4 v15, 0x0

    :goto_0
    const/16 v16, 0x0

    if-ge v15, v3, :cond_0

    move-object/from16 v17, v4

    new-array v4, v10, [F

    aput-object v4, v7, v15

    new-array v4, v10, [F

    aget v10, v1, v15

    invoke-static {v10, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    invoke-static {v4, v12, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->convertHsv2CornSpace([FF[F)V

    aput-object v4, v6, v15

    aput v16, v8, v15

    const/4 v10, 0x3

    new-array v1, v10, [J

    fill-array-data v1, :array_0

    aput-object v1, v9, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    goto :goto_0

    :cond_0
    move-object/from16 v17, v4

    const/high16 v1, -0x1000000

    const/high16 v4, 0xff0000

    const v10, 0xff00

    const/16 v15, 0xff

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v20, v1

    move/from16 v1, v19

    :goto_1
    if-ge v1, v2, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v23

    sub-long v21, v21, v23

    const/16 v19, 0x0

    move/from16 v23, v4

    array-length v4, v0

    move/from16 v24, v10

    move/from16 v10, v19

    move/from16 v19, v15

    move/from16 v15, v16

    :goto_2
    const v25, 0xff00

    const/high16 v26, 0xff0000

    const/16 v27, 0x2

    const/16 v28, 0x1

    if-ge v15, v4, :cond_4

    move/from16 v29, v4

    aget v4, v0, v15

    ushr-int/lit8 v30, v4, 0x18

    if-gtz v30, :cond_1

    move-object/from16 v39, v6

    move-object/from16 v40, v11

    move/from16 v41, v12

    move/from16 v37, v13

    move/from16 v38, v14

    goto :goto_4

    :cond_1
    add-int/lit8 v10, v10, 0x1

    const v31, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v32, 0x0

    invoke-static {v4, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    invoke-static {v11, v12, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->convertHsv2CornSpace([FF[F)V

    aget v33, v11, v16

    aget v34, v11, v28

    aget v35, v11, v27

    const/16 v36, 0x0

    move/from16 v43, v36

    move/from16 v36, v10

    move/from16 v10, v43

    :goto_3
    if-ge v10, v3, :cond_3

    aget-object v37, v6, v10

    aget v38, v37, v16

    sub-float v38, v33, v38

    aget v39, v37, v28

    sub-float v39, v34, v39

    aget v40, v37, v27

    sub-float v40, v35, v40

    mul-float v41, v38, v38

    mul-float v42, v39, v39

    add-float v41, v41, v42

    mul-float v42, v40, v40

    add-float v41, v41, v42

    cmpg-float v42, v41, v31

    if-gez v42, :cond_2

    move/from16 v31, v41

    move/from16 v32, v10

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    aget-object v10, v9, v32

    aget v37, v8, v32

    add-int/lit8 v37, v37, 0x1

    aput v37, v8, v32

    aget-wide v37, v10, v16

    move-object/from16 v39, v6

    and-int v6, v4, v26

    move-object/from16 v40, v11

    move/from16 v41, v12

    int-to-long v11, v6

    add-long v37, v37, v11

    aput-wide v37, v10, v16

    aget-wide v11, v10, v28

    and-int v6, v4, v25

    move/from16 v37, v13

    move/from16 v38, v14

    int-to-long v13, v6

    add-long/2addr v11, v13

    aput-wide v11, v10, v28

    aget-wide v11, v10, v27

    and-int/lit16 v6, v4, 0xff

    int-to-long v13, v6

    add-long/2addr v11, v13

    aput-wide v11, v10, v27

    move/from16 v10, v36

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v29

    move/from16 v13, v37

    move/from16 v14, v38

    move-object/from16 v6, v39

    move-object/from16 v11, v40

    move/from16 v12, v41

    goto/16 :goto_2

    :cond_4
    move-object/from16 v39, v6

    move-object/from16 v40, v11

    move/from16 v41, v12

    move/from16 v37, v13

    move/from16 v38, v14

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_6

    aget-object v6, v9, v4

    aget v11, v8, v4

    if-gtz v11, :cond_5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v8

    move-object/from16 v29, v9

    goto :goto_6

    :cond_5
    aget-wide v12, v6, v16

    int-to-long v14, v11

    div-long/2addr v12, v14

    long-to-int v12, v12

    and-int v12, v12, v26

    aget-wide v13, v6, v28

    move-object v15, v8

    move-object/from16 v29, v9

    int-to-long v8, v11

    div-long/2addr v13, v8

    long-to-int v8, v13

    and-int v13, v8, v25

    aget-wide v8, v6, v27

    move v14, v12

    move/from16 v30, v13

    int-to-long v12, v11

    div-long/2addr v8, v12

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    move v12, v14

    move/from16 v13, v30

    move v14, v8

    :goto_6
    const/high16 v8, -0x1000000

    or-int/2addr v8, v12

    or-int/2addr v8, v13

    or-int/2addr v8, v14

    aput v8, v5, v4

    aget v8, v5, v4

    aget-object v9, v7, v4

    invoke-static {v8, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->colorToHSV(I[F)V

    add-int/lit8 v4, v4, 0x1

    move-object v8, v15

    move-object/from16 v9, v29

    goto :goto_5

    :cond_6
    move-object v15, v8

    move-object/from16 v29, v9

    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_9

    if-lez v10, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v6, v10

    div-float/2addr v4, v6

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v3, :cond_8

    aget-object v8, v7, v6

    move/from16 v9, v37

    move/from16 v11, v38

    invoke-static {v8, v9, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->checkGayScaleWithSV([FFF)Z

    move-result v8

    aget v12, v15, v6

    int-to-float v12, v12

    mul-float/2addr v12, v4

    new-instance v13, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    aget v14, v5, v6

    invoke-direct {v13, v14, v12, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;-><init>(IFZ)V

    aput-object v13, v17, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_8
    move/from16 v9, v37

    move/from16 v11, v38

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v25

    sub-long v12, v12, v25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ColorExtractor Memory Usage "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v8, v2

    move v14, v3

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

    goto :goto_9

    :cond_9
    move v8, v2

    move v14, v3

    move/from16 v9, v37

    move/from16 v11, v38

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

    :goto_9
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sortColorResult([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)V

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
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-gez v3, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr p0, v3

    :cond_0
    :goto_0
    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v4, v2, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-gez v4, :cond_1

    new-array v3, v1, [F

    aput v2, v3, v6

    aput v8, v3, v7

    aput v8, v3, v5

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, p0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    array-length v9, p1

    if-ge v4, v9, :cond_5

    const/4 v2, 0x0

    :goto_2
    cmpg-float v9, v2, v3

    if-gez v9, :cond_2

    aget v9, p1, v4

    new-array v10, v1, [F

    aput v2, v10, v6

    aput v9, v10, v7

    aput v8, v10, v5

    invoke-static {v10}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, p0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    cmpg-float v9, v2, v3

    if-gez v9, :cond_3

    aget v9, p1, v4

    new-array v10, v1, [F

    aput v2, v10, v6

    aput v8, v10, v7

    aput v9, v10, v5

    invoke-static {v10}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, p0

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_4
    cmpg-float v9, v2, v3

    if-gez v9, :cond_4

    aget v9, p1, v4

    aget v10, p1, v4

    new-array v11, v1, [F

    aput v2, v11, v6

    aput v9, v11, v7

    aput v10, v11, v5

    invoke-static {v11}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, p0

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    aput v5, v1, v3

    move v3, v6

    goto :goto_5

    :cond_6
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

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sBrightnessThresholdForGrayscale:F

    return-void
.end method

.method public static blacklist setHsvSpaceHueRadiusValue(F)V
    .locals 2

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sHsvSpaceHueRadiusValue:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sMaxHSV:F

    return-void
.end method

.method public static blacklist setLabSpaceLightnessValue(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sLabSpaceLightnessScale:F

    return-void
.end method

.method public static blacklist setSaturationThresholdForGrayscale(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorPaletteExtractor;->sSaturationThresholdForGrayscale:F

    return-void
.end method
