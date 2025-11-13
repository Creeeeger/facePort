.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;
.super Ljava/lang/Object;
.source "LegibilityColorByHSV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;,
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;
    }
.end annotation


# static fields
.field private static final blacklist BASE_LUMINANCE:F = 68.0f

.field static final blacklist BLACK_COLOR:I = -0x1000000

.field static final blacklist CONTRAST_BLACK_THRESHOLD:F = 1.34f

.field static final blacklist CONTRAST_WHITE_THRESHOLD:F = 1.24f

.field static final blacklist DIFF_V:F = 0.11f

.field static final blacklist PERCENTAGE_THRESHOLD:F = 0.22f

.field static final blacklist SIMILAR_CONTRAST_THRESHOLD:F = 1.8f

.field static final blacklist SIMILAR_PERCENTAGE_THRESHOLD:F = 0.1f

.field static final blacklist WHITE_COLOR:I = -0x1

.field private static final blacklist XYZ_EPSILON:D = 0.008856

.field private static final blacklist XYZ_KAPPA:D = 903.3

.field static blacklist mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult-IA;)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calcurateIndicatorLegibility([I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    .locals 4

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->calcAvgColor([I)V

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgH()F

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgS()F

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgV()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->makeClusterGroupColorBandBased2()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->checkEdgeCaseForIndicator([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist checkEdgeCaseForIndicator([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    .locals 14

    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->initColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->NONE:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->white_contrast_percent:F

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->black_contrast_percent:F

    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move v7, v1

    :goto_0
    const/high16 v8, -0x1000000

    if-ge v7, v6, :cond_3

    aget-object v9, p0, v7

    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpg-float v10, v10, v2

    if-gtz v10, :cond_0

    goto :goto_1

    :cond_0
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v3, v10}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    const-wide v12, 0x3ff3d70a40000000L    # 1.2400000095367432

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v4, v10

    :cond_1
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v8, v10}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    const-wide v12, 0x3ff570a3e0000000L    # 1.340000033378601

    cmpg-double v8, v10, v12

    if-gez v8, :cond_2

    iget v8, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v5, v8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput v4, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->white_contrast_percent:F

    iput v5, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->black_contrast_percent:F

    const v6, 0x3e6147ae    # 0.22f

    cmpl-float v7, v4, v6

    const/4 v9, 0x1

    if-lez v7, :cond_6

    cmpl-float v7, v5, v6

    if-lez v7, :cond_6

    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    cmpl-float v3, v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e99999a    # 0.3f

    const/4 v8, 0x2

    const/4 v10, 0x3

    if-ltz v3, :cond_4

    new-array v3, v10, [F

    aput v2, v3, v1

    aput v2, v3, v9

    div-float v2, v5, v6

    mul-float/2addr v2, v7

    const v6, 0x3e4ccccd    # 0.2f

    add-float/2addr v2, v6

    aput v2, v3, v8

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_2

    :cond_4
    cmpg-float v3, v4, v5

    if-gez v3, :cond_5

    new-array v3, v10, [F

    aput v2, v3, v1

    aput v2, v3, v9

    div-float v2, v4, v6

    mul-float/2addr v2, v7

    const v6, 0x3f4ccccd    # 0.8f

    sub-float/2addr v6, v2

    aput v6, v3, v8

    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_3

    :cond_5
    :goto_2
    nop

    :goto_3
    iget v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    invoke-static {p0, p1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->checkSimilarColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    iget v2, v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    iget-object v2, v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    goto :goto_4

    :cond_6
    cmpl-float v2, v4, v6

    if-lez v2, :cond_7

    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    iput v8, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_4

    :cond_7
    cmpl-float v2, v5, v6

    if-lez v2, :cond_8

    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    iput v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_4

    :cond_8
    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    iput-object p1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    :cond_9
    :goto_4
    return-object v0
.end method

.method private static blacklist checkSimilarColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Z
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {p2, v6}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    const-wide v6, 0x3ffcccccc0000000L    # 1.7999999523162842

    cmpg-double v6, v1, v6

    if-gez v6, :cond_2

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v7, 0x3dcccccd    # 0.1f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/4 v4, -0x1

    iput v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    sget-object v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p1, v3, :cond_1

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/high16 v4, -0x1000000

    iput v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    sget-object v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method private static blacklist getLABLfromHSV(FFF)F
    .locals 50

    move/from16 v0, p2

    move/from16 v1, p0

    float-to-double v2, v1

    move/from16 v4, p1

    float-to-double v5, v4

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    sub-double v9, v7, v5

    float-to-double v11, v0

    mul-double/2addr v9, v11

    div-double/2addr v9, v7

    const-wide/16 v11, 0x0

    cmpl-double v13, v11, v9

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-eqz v13, :cond_2

    cmpl-double v13, v16, v9

    if-nez v13, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    cmpg-double v13, v9, v14

    if-gez v13, :cond_1

    float-to-double v14, v0

    mul-double/2addr v14, v5

    mul-double v20, v9, v7

    div-double v5, v14, v20

    goto :goto_0

    :cond_1
    float-to-double v13, v0

    mul-double/2addr v13, v5

    mul-double v20, v9, v7

    sub-double v20, v7, v20

    div-double v5, v13, v20

    :cond_2
    :goto_0
    double-to-int v13, v2

    div-int/lit8 v13, v13, 0x3c

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v2, v14

    rem-double/2addr v14, v7

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    sub-double v14, v16, v14

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide v26, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v28, 0x401f25f5682a5f56L    # 7.787068965517241

    const-wide v30, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    const-wide v32, 0x3f90d99ba104b946L    # 0.01645510835913313

    const-wide v34, 0x3fac57a06267cb7fL    # 0.05535603715170278

    const-wide v36, 0x3f76e3b07d4a16e4L    # 0.005588235294117647

    mul-double/2addr v7, v9

    sub-double v7, v7, v16

    cmpl-double v38, v7, v11

    if-lez v38, :cond_3

    move-wide v11, v7

    goto :goto_1

    :cond_3
    neg-double v11, v7

    :goto_1
    sub-double v16, v16, v11

    mul-double v16, v16, v5

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, v16

    sub-double v11, v9, v11

    mul-double v18, v16, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-double v20, v16, v11

    move-wide/from16 v22, v11

    add-double v24, v18, v11

    goto :goto_2

    :pswitch_1
    add-double v20, v18, v11

    move-wide/from16 v22, v11

    add-double v24, v16, v11

    goto :goto_2

    :pswitch_2
    move-wide/from16 v20, v11

    add-double v22, v18, v11

    add-double v24, v16, v11

    goto :goto_2

    :pswitch_3
    move-wide/from16 v20, v11

    add-double v22, v16, v11

    add-double v24, v18, v11

    goto :goto_2

    :pswitch_4
    add-double v20, v18, v11

    add-double v22, v16, v11

    move-wide/from16 v24, v11

    goto :goto_2

    :pswitch_5
    add-double v20, v16, v11

    add-double v22, v18, v11

    move-wide/from16 v24, v11

    nop

    :goto_2
    const-wide v39, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v41, v20, v39

    const-wide v0, 0x4003333333333333L    # 2.4

    const-wide v42, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v44, 0x3ff0e147ae147ae1L    # 1.055

    if-gez v41, :cond_4

    const-wide v46, 0x3f90d99ba104b946L    # 0.01645510835913313

    mul-double v46, v46, v20

    move-wide/from16 v48, v2

    goto :goto_3

    :cond_4
    div-double v46, v20, v44

    move-wide/from16 v48, v2

    add-double v2, v46, v42

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v46, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v46, v46, v2

    :goto_3
    move-wide/from16 v2, v46

    cmpg-double v20, v22, v39

    if-gez v20, :cond_5

    const-wide v20, 0x3fac57a06267cb7fL    # 0.05535603715170278

    mul-double v20, v20, v22

    move-wide/from16 v46, v5

    goto :goto_4

    :cond_5
    div-double v20, v22, v44

    move-wide/from16 v46, v5

    add-double v4, v20, v42

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v20, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v20, v20, v4

    :goto_4
    move-wide/from16 v4, v20

    cmpg-double v6, v24, v39

    if-gez v6, :cond_6

    const-wide v0, 0x3f76e3b07d4a16e4L    # 0.005588235294117647

    mul-double v0, v0, v24

    move-wide/from16 v22, v7

    goto :goto_5

    :cond_6
    div-double v20, v24, v44

    move-wide/from16 v22, v7

    add-double v6, v20, v42

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v6, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v0, v6

    :goto_5
    add-double v6, v2, v4

    add-double/2addr v6, v0

    const-wide v20, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v8, v6, v20

    if-lez v8, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v20

    goto :goto_6

    :cond_7
    const-wide v20, 0x401f25f5682a5f56L    # 7.787068965517241

    mul-double v20, v20, v6

    const-wide v24, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double v20, v20, v24

    :goto_6
    move-wide/from16 v6, v20

    const-wide/high16 v20, 0x405d000000000000L    # 116.0

    mul-double v20, v20, v6

    const-wide/high16 v24, 0x4030000000000000L    # 16.0

    move-wide/from16 v39, v0

    sub-double v0, v20, v24

    move-wide/from16 v20, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .locals 2

    const/high16 v0, 0x42880000    # 68.0f

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLABLfromHSV(FFF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    :goto_0
    return-object v0
.end method

.method public static blacklist getLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    .locals 1

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mGetLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist mGetLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->EACH:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    sub-float v1, p3, p7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3de147ae    # 0.11f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p4, v1, :cond_1

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p6, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, p7, v1

    if-lez v1, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->EACH:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->UNITY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    :cond_1
    :goto_0
    return-object v0
.end method
