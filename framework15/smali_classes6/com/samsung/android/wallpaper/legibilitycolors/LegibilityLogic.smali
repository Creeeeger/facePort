.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;
.super Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;
.source "LegibilityLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;,
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LegibilityLogic"

.field static final blacklist mBgBrightnessRangeBlackMax:F = 0.7f

.field static final blacklist mBgBrightnessRangeBlackMin:F = 0.0f

.field static final blacklist mBgBrightnessRangeWhiteMax:F = 0.7f

.field static final blacklist mBgBrightnessRangeWhiteMin:F = 0.0f

.field static final blacklist mBrightnessThresholdForGrayscale:F = 0.25f

.field static final blacklist mSaturationThresholdForGrayscale:F = 0.12f

.field static blacklist mShapeAndColorComplexityRatio:F = 0.0f

.field static final blacklist mTextBrightnessRangeBlackMax:F = 0.35f

.field static final blacklist mTextBrightnessRangeBlackMin:F = 0.05f

.field static final blacklist mTextBrightnessRangeWhiteMax:F = 0.98f

.field static final blacklist mTextBrightnessRangeWhiteMin:F = 0.89f


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const v0, 0x3f2aaaab

    sput v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->mShapeAndColorComplexityRatio:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;-><init>()V

    return-void
.end method

.method public static blacklist calculateAdaptiveShadow(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdjustedDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;
    .locals 28

    move-object/from16 v0, p4

    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-direct {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;-><init>()V

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->computeLuminosityComplexity([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F

    move-result v2

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-object/from16 v4, p3

    if-ne v4, v3, :cond_0

    const/high16 v3, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    invoke-static {v3, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->computeContentContrastDifferentiation(I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F

    move-result v5

    invoke-static/range {p0 .. p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->computeShapeComplexity([III)F

    move-result v6

    iput v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->luminanceComplexity:F

    iput v5, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiff:F

    iput v6, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexity:F

    iput-object v0, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->dominantColorResults:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    const v7, 0x3ba3d70a    # 0.005f

    const v8, 0x3ca3d70a    # 0.02f

    const v9, 0x3cf5c28f    # 0.03f

    const v10, 0x3d75c28f    # 0.06f

    const v11, 0x3d99999a    # 0.075f

    const v12, 0x3dcccccd    # 0.1f

    const v13, 0x3df5c28f    # 0.12f

    const v14, 0x3ca3d70a    # 0.02f

    const v15, 0x3dcccccd    # 0.1f

    const v16, 0x3ecccccd    # 0.4f

    const v17, 0x3f19999a    # 0.6f

    const v18, 0x3f4ccccd    # 0.8f

    const v19, 0x3f666666    # 0.9f

    sget v20, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->mShapeAndColorComplexityRatio:F

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f000000    # 0.5f

    sub-float v23, v6, v8

    sub-float v24, v13, v8

    div-float v0, v23, v24

    move/from16 v23, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v25, v5, v15

    sub-float v26, v19, v15

    move/from16 v27, v3

    div-float v3, v25, v26

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v2, v3

    move/from16 v24, v5

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->getInstance()Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v2, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/interpolater/EasingQuintic;->easeIn(FFFF)F

    move-result v0

    mul-float v5, v0, v20

    sub-float v25, v2, v20

    mul-float v25, v25, v3

    add-float v5, v5, v25

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move/from16 v26, v6

    const v6, 0x38d1b717    # 1.0E-4f

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v5

    iput v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    iget v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    iput v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentOpacityNormalized:F

    nop

    iput v3, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentContrastDiffNormalized:F

    iput v0, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shapeComplexityNormalized:F

    iput v4, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->totalComplexity:F

    return-object v1
.end method

.method public static blacklist calculateAdjustedDominantColors(Landroid/graphics/Bitmap;)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    const v0, 0x3df5c28f    # 0.12f

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setSaturationThresholdForGrayscale(F)V

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setBrightnessThresholdForGrayscale(F)V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->makeClusterrGroup_preset1(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv(Landroid/graphics/Bitmap;[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateAdjustedDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    const v1, 0x3d8db8bb    # 0.0692f

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->discardSameHSVfromDominantColors([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;F)V

    return-object v0
.end method

.method public static blacklist calculateDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .locals 1

    const v0, 0x3df5c28f    # 0.12f

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setSaturationThresholdForGrayscale(F)V

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->setBrightnessThresholdForGrayscale(F)V

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->makeClusterGroupColorBandBased2()[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v10, v8, v9, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v10}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageHSV([I)[F

    move-result-object v7

    move-object v0, v10

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult([I[FIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateTotalLegibilityResult([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 17

    move-object/from16 v7, p3

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->getAverageHSV([I)[F

    move-result-object v8

    const/4 v0, 0x0

    aget v1, v8, v0

    const/4 v2, 0x1

    aget v3, v8, v2

    const/4 v4, 0x2

    aget v5, v8, v4

    invoke-static {v1, v3, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object v1

    if-eqz v7, :cond_0

    iget-object v9, v7, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iget-object v3, v7, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    aget v10, v3, v0

    iget-object v3, v7, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    aget v11, v3, v2

    iget-object v3, v7, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    aget v12, v3, v4

    aget v14, v8, v0

    aget v15, v8, v2

    aget v16, v8, v4

    move-object v13, v1

    invoke-static/range {v9 .. v16}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->UNITY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    if-ne v0, v2, :cond_0

    iget-object v1, v7, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v9

    move/from16 v6, p4

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult([I[FIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist calculateTotalLegibilityResult([I[FIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdjustedDominantColors([I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    invoke-direct {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;-><init>()V

    iput-object p1, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    invoke-static {p0, p2, p3, p5, v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateAdaptiveShadow([IIILcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    iput-object p5, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p5, v2, :cond_0

    const v2, -0x50506

    goto :goto_0

    :cond_0
    const v2, -0xbbbbbc

    :goto_0
    iput v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColor:I

    iget-object v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    invoke-static {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v2

    invoke-static {p5, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculatedAdaptiveContrastContentsColor(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    iput-object v0, v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    return-object v1
.end method

.method public static blacklist calculatedAdaptiveContrastContentsColor(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)I
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v0

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    if-ne v1, p0, :cond_0

    move v1, v0

    invoke-static {v1, v3, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->getRatioFromRange(FFF)F

    move-result v2

    const v3, 0x3f63d70a    # 0.89f

    const v4, 0x3f7ae148    # 0.98f

    invoke-static {v2, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-static {v1, v3, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->getRatioFromRange(FFF)F

    move-result v2

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3d4ccccd    # 0.05f

    invoke-static {v2, v3, v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v2

    move v1, v2

    :goto_0
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v2, v1

    float-to-int v3, v1

    float-to-int v4, v1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    return v2
.end method

.method public static blacklist computeBrightnessComplexity([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F
    .locals 7

    array-length v0, p0

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    const/4 v4, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    iget v3, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [F

    aput-object v3, v0, v2

    aget-object v3, p0, v2

    iget v3, v3, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    aget-object v5, v0, v2

    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget-object v3, v0, v2

    aget v3, v3, v4

    aget-object v4, p0, v2

    iget v4, v4, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_3

    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    aget-object v5, v0, v3

    aget v5, v5, v4

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aget-object v6, p0, v3

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method public static blacklist computeContentContrastDifferentiation(I[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F
    .locals 10

    invoke-static {p0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content Luminance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LegibilityLogic"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    float-to-double v6, v6

    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v6}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v6

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_1

    sub-float v7, v6, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v8, v7, v2

    if-gez v8, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    move v2, v8

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    return v1
.end method

.method public static blacklist computeLuminosityComplexity([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;)F
    .locals 8

    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    if-ge v3, v0, :cond_1

    aget-object v5, p0, v3

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    aput v4, v1, v3

    goto :goto_1

    :cond_0
    iget v4, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v4}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->caculateLuminosity(I)F

    move-result v4

    aput v4, v1, v3

    aget v4, v1, v3

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_3

    aget v6, v1, v5

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_2

    aget v6, v1, v5

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aget-object v7, p0, v5

    iget v7, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    return v3
.end method

.method public static blacklist computeShapeComplexity(Landroid/graphics/Bitmap;)F
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->computeShapeComplexity([III)F

    move-result v1

    return v1
.end method

.method public static blacklist computeShapeComplexity([III)F
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getShapeComplexityConvolution([III)Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->getDifferentialValueFromRed(F)F

    move-result v1

    return v1
.end method

.method public static blacklist getInterpolatedContentOpacity(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->contentOpacityNormalized:F

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static blacklist getInterpolatedShadowOpacity(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowOpacityNormalized:F

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static blacklist getInterpolatedShadowSize(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static blacklist getInterpolatedShadowYOffset(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;->shadowSizeNormalized:F

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXMathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static blacklist getShapeAndColorComplexityRatio()F
    .locals 1

    sget v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->mShapeAndColorComplexityRatio:F

    return v0
.end method

.method public static blacklist getShapeComplexityConvolution([III)Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;
    .locals 3

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;-><init>([IIILandroid/graphics/Bitmap$Config;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mFactor:D

    const-wide/high16 v1, 0x4060000000000000L    # 128.0

    iput-wide v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->mOffset:D

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->convertToLuminosity()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ConvolutionMatrixPresets;->highPassFilter(I)[[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/ImageConvolution;->computeConvolution([[D)V

    return-object v0
.end method

.method public static blacklist getUnequivalanttColor(II)I
    .locals 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    const/4 v2, 0x4

    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_3

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_1

    if-lt v0, v1, :cond_0

    sub-int v4, v2, v3

    add-int/2addr v0, v4

    const v4, -0x50506

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    if-le v0, v4, :cond_3

    sub-int v0, v1, v2

    goto :goto_0

    :cond_0
    sub-int v4, v2, v3

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_1
    if-lt v0, v1, :cond_2

    sub-int v4, v2, v3

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    sub-int v4, v2, v3

    sub-int/2addr v0, v4

    :cond_3
    :goto_0
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method public static blacklist setShapeAndColorComplexityRatio(F)V
    .locals 0

    sput p0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->mShapeAndColorComplexityRatio:F

    return-void
.end method
