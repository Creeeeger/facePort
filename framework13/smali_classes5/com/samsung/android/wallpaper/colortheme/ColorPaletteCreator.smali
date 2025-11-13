.class public Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
.super Ljava/lang/Object;
.source "ColorPaletteCreator.java"


# static fields
.field private static final blacklist ACCENT1_SAT_DELTA:F = 0.3f

.field private static final blacklist ACCENT1_SAT_MAX:F = 0.8f

.field private static final blacklist ACCENT2_SAT_MAX:F = 0.4f

.field private static final blacklist ACCENT3_SAT_DELTA:F = 0.1f

.field private static final blacklist ACCENT3_SAT_MAX:F = 0.6f

.field private static final blacklist GRAY_HUE_PRESET1:I = 0x0

.field private static final blacklist GRAY_HUE_PRESET2:I = 0xf0

.field private static final blacklist GRAY_SAT_PRESET1:F = 0.0f

.field private static final blacklist GRAY_SAT_PRESET2:F = 0.05f

.field private static final blacklist MAX_RANGE:I = 0x11

.field private static final blacklist NEUTRAL_SAT_MAX:F = 0.15f

.field private static final blacklist hueRange:[I

.field private static final blacklist range:[I


# instance fields
.field private blacklist mColorPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation
.end field

.field private blacklist mSeedColors:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 22
    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueRange:[I

    .line 23
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x16
        0x28
        0x34
        0x3c
        0x51
        0x8b
        0xa9
        0xc8
        0xdb
        0x100
        0x117
        0x13e
        0x151
        0x15c
        0x164
        0x169
    .end array-data

    :array_1
    .array-data 4
        -0x4
        0x8
        0x16
        0x28
        0x34
        0x3c
        0x51
        0x8b
        0xa9
        0xc8
        0xdb
        0x100
        0x117
        0x13e
        0x151
        0x15c
        0x164
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    .line 28
    return-void
.end method

.method public static blacklist converAccent1ToSeedColors([I)[I
    .locals 10
    .param p0, "seeds"    # [I

    .line 359
    if-eqz p0, :cond_5

    array-length v0, p0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 363
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v0, "covertedSeeds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 367
    .local v2, "accent1":[F
    array-length v3, p0

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v1, v5, v6

    const/4 v1, 0x0

    aput v3, v5, v1

    const-class v3, F

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 368
    .local v3, "colorHsl":[[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_1

    .line 369
    aget v7, p0, v5

    aget-object v8, v3, v5

    invoke-static {v7, v8}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 368
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 372
    .end local v5    # "i":I
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->isGrayImage([[F)Z

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_2

    .line 373
    const/4 v5, 0x0

    aput v5, v2, v1

    .line 374
    aput v5, v2, v6

    .line 375
    aput v7, v2, v4

    .line 376
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    aput v5, v2, v1

    .line 379
    const v4, 0x3d4ccccd    # 0.05f

    aput v4, v2, v6

    .line 380
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const/high16 v5, 0x43700000    # 240.0f

    aput v5, v2, v1

    .line 383
    aput v4, v2, v6

    .line 384
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 385
    :cond_2
    array-length v5, p0

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3e99999a    # 0.3f

    if-ne v5, v6, :cond_3

    .line 387
    aget-object v5, v3, v1

    aget v5, v5, v1

    aput v5, v2, v1

    .line 388
    aget-object v5, v3, v1

    aget v5, v5, v6

    add-float/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v6

    .line 389
    aput v7, v2, v4

    .line 390
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    aget-object v4, v3, v1

    aget v4, v4, v1

    invoke-static {v4, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v2, v1

    .line 394
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    aget-object v4, v3, v1

    aget v4, v4, v1

    aput v4, v2, v1

    .line 398
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 399
    :cond_3
    array-length v5, p0

    if-ne v5, v4, :cond_4

    .line 401
    aget-object v5, v3, v1

    aget v5, v5, v1

    aput v5, v2, v1

    .line 402
    aget-object v5, v3, v1

    aget v5, v5, v6

    add-float/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v6

    .line 403
    aput v7, v2, v4

    .line 404
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    aget-object v4, v3, v6

    aget v4, v4, v1

    aput v4, v2, v1

    .line 408
    aget-object v4, v3, v6

    aget v4, v4, v6

    add-float/2addr v4, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v6

    .line 409
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    aget-object v4, v3, v1

    aget v4, v4, v1

    invoke-static {v4, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v2, v1

    .line 413
    aget-object v4, v3, v1

    aget v4, v4, v6

    add-float/2addr v4, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v6

    .line 414
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    aget-object v4, v3, v1

    aget v4, v4, v1

    aput v4, v2, v1

    .line 418
    aget-object v1, v3, v1

    aget v1, v1, v6

    add-float/2addr v1, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v2, v6

    .line 419
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    :cond_4
    aget-object v5, v3, v1

    aget v5, v5, v1

    aput v5, v2, v1

    .line 423
    aget-object v5, v3, v1

    aget v5, v5, v6

    add-float/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v6

    .line 424
    aput v7, v2, v4

    .line 425
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    aget-object v5, v3, v6

    aget v5, v5, v1

    aput v5, v2, v1

    .line 429
    aget-object v5, v3, v6

    aget v5, v5, v6

    add-float/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v6

    .line 430
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    aget-object v5, v3, v4

    aget v5, v5, v1

    aput v5, v2, v1

    .line 434
    aget-object v4, v3, v4

    aget v4, v4, v6

    add-float/2addr v4, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v6

    .line 435
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    aget-object v4, v3, v1

    aget v4, v4, v1

    aput v4, v2, v1

    .line 439
    aget-object v1, v3, v1

    aget v1, v1, v6

    add-float/2addr v1, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v2, v6

    .line 440
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1

    .line 360
    .end local v0    # "covertedSeeds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "accent1":[F
    .end local v3    # "colorHsl":[[F
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist findRange(F)I
    .locals 4
    .param p0, "hue"    # F

    .line 67
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 71
    const/16 v3, 0x10

    aget v3, v2, v3

    int-to-float v3, v3

    cmpg-float v3, v3, p0

    if-gtz v3, :cond_1

    .line 72
    return v1

    .line 73
    :cond_1
    aget v2, v2, v0

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_2

    .line 74
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 70
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist findRatio(FI)F
    .locals 4
    .param p0, "hue"    # F
    .param p1, "r"    # I

    .line 87
    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    const/16 v1, 0x10

    aget v1, v0, v1

    int-to-float v1, v1

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    .line 88
    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr p0, v1

    .line 91
    :cond_0
    aget v1, v0, p1

    int-to-float v2, v1

    sub-float v2, p0, v2

    add-int/lit8 v3, p1, 0x1

    aget v0, v0, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method static blacklist getHue(IF)F
    .locals 4
    .param p0, "r"    # I
    .param p1, "ratio"    # F

    .line 95
    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    aget v1, v0, p0

    int-to-float v2, v1

    add-int/lit8 v3, p0, 0x1

    aget v0, v0, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    .line 96
    .local v2, "hue":F
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    .line 97
    add-float/2addr v2, v1

    goto :goto_0

    .line 98
    :cond_0
    cmpl-float v0, v2, v1

    if-lez v0, :cond_1

    .line 99
    sub-float/2addr v2, v1

    .line 101
    :cond_1
    :goto_0
    return v2
.end method

.method static blacklist hueMove(FI)F
    .locals 5
    .param p0, "hue"    # F
    .param p1, "step"    # I

    .line 105
    invoke-static {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->findRange(F)I

    move-result v0

    .line 106
    .local v0, "r":I
    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->findRatio(FI)F

    move-result v1

    .line 107
    .local v1, "ratio":F
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 108
    add-int v2, v0, p1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v2, v3

    .end local v0    # "r":I
    .local v2, "r":I
    goto :goto_0

    .line 110
    .end local v2    # "r":I
    .restart local v0    # "r":I
    :cond_0
    sub-int v2, v0, p1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v2, v3

    .line 112
    .end local v0    # "r":I
    .restart local v2    # "r":I
    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->getHue(IF)F

    move-result p0

    .line 113
    return p0
.end method

.method static blacklist isGrayImage([[F)Z
    .locals 6
    .param p0, "colorHsl"    # [[F

    .line 125
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    .line 126
    .local v4, "color":[F
    aget v3, v4, v3

    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 127
    return v1

    .line 125
    .end local v4    # "color":[F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return v3
.end method

.method static synthetic blacklist lambda$converAccent1ToSeedColors$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 443
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist populateStyles()V
    .locals 19

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    if-eqz v1, :cond_5

    array-length v2, v1

    if-gtz v2, :cond_0

    goto/16 :goto_2

    .line 138
    :cond_0
    const/4 v2, 0x3

    new-array v9, v2, [F

    .line 139
    .local v9, "accent1":[F
    new-array v10, v2, [F

    .line 140
    .local v10, "accent2":[F
    new-array v11, v2, [F

    .line 141
    .local v11, "accent3":[F
    new-array v12, v2, [F

    .line 142
    .local v12, "neutral1":[F
    new-array v13, v2, [F

    .line 144
    .local v13, "neutral2":[F
    array-length v1, v1

    const/4 v14, 0x2

    new-array v3, v14, [I

    const/4 v15, 0x1

    aput v2, v3, v15

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, F

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 145
    .local v1, "colorHsl":[[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 146
    aget v4, v4, v3

    aget-object v5, v1, v3

    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .end local v3    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->isGrayImage([[F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    const/4 v14, 0x0

    aput v14, v9, v2

    .line 151
    aput v14, v9, v15

    .line 153
    aput v14, v10, v2

    .line 154
    aput v14, v10, v15

    .line 156
    aput v14, v11, v2

    .line 157
    aput v14, v11, v15

    .line 159
    aput v14, v12, v2

    .line 160
    aput v14, v12, v15

    .line 162
    aput v14, v13, v2

    .line 163
    aput v14, v13, v15

    .line 164
    iget-object v8, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v16, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v16

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v15, v8

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 165
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 164
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    aput v14, v9, v2

    .line 168
    const v15, 0x3d4ccccd    # 0.05f

    const/4 v3, 0x1

    aput v15, v9, v3

    .line 170
    aput v14, v10, v2

    .line 171
    aput v15, v10, v3

    .line 173
    aput v14, v11, v2

    .line 174
    aput v15, v11, v3

    .line 176
    aput v14, v12, v2

    .line 177
    aput v15, v12, v3

    .line 179
    aput v14, v13, v2

    .line 180
    aput v15, v13, v3

    .line 181
    iget-object v14, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v16, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 182
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 181
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const/high16 v3, 0x43700000    # 240.0f

    aput v3, v9, v2

    .line 185
    const/4 v4, 0x1

    aput v15, v9, v4

    .line 187
    aput v3, v10, v2

    .line 188
    aput v15, v10, v4

    .line 190
    aput v3, v11, v2

    .line 191
    aput v15, v11, v4

    .line 193
    aput v3, v12, v2

    .line 194
    aput v15, v12, v4

    .line 196
    aput v3, v13, v2

    .line 197
    aput v15, v13, v4

    .line 198
    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v3, v14

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 199
    invoke-virtual {v14}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 198
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 201
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v4, v3

    const v15, 0x3f19999a    # 0.6f

    const v16, 0x3dcccccd    # 0.1f

    const v8, 0x3ecccccd    # 0.4f

    const v7, 0x3f4ccccd    # 0.8f

    const v17, 0x3e99999a    # 0.3f

    const v6, 0x3e19999a    # 0.15f

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 203
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v9, v2

    .line 204
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-static {v3, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v10, v2

    .line 205
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v3

    aput v3, v11, v2

    .line 206
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v12, v2

    .line 207
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v3

    aput v3, v13, v2

    .line 209
    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    add-float v3, v3, v17

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v4

    .line 210
    aget-object v3, v1, v2

    aget v3, v3, v4

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v4

    .line 211
    aget-object v3, v1, v2

    aget v3, v3, v4

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v11, v4

    .line 212
    aget-object v3, v1, v2

    aget v3, v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v12, v4

    .line 213
    aget-object v3, v1, v2

    aget v3, v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v13, v4

    .line 214
    iget-object v15, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v16, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v16

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 215
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 214
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    aget-object v3, v1, v2

    aget v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v9, v2

    .line 219
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-static {v3, v14}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v10, v2

    .line 220
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v3

    aput v3, v11, v2

    .line 221
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v12, v2

    .line 222
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v3

    aput v3, v13, v2

    .line 223
    iget-object v14, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v15, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v3, v15

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 224
    invoke-virtual {v15}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 223
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v9, v2

    .line 228
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v3

    aput v3, v10, v2

    .line 229
    aget-object v3, v1, v2

    aget v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v11, v2

    .line 230
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v12, v2

    .line 231
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v3

    aput v3, v13, v2

    .line 232
    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v3, v14

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 233
    invoke-virtual {v14}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 232
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 235
    :cond_3
    array-length v3, v3

    if-ne v3, v14, :cond_4

    .line 237
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v9, v2

    .line 238
    aget-object v3, v1, v2

    aget v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v10, v2

    .line 239
    aget-object v3, v1, v4

    aget v3, v3, v2

    aput v3, v11, v2

    .line 240
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v12, v2

    .line 241
    aget-object v3, v1, v4

    aget v3, v3, v2

    aput v3, v13, v2

    .line 243
    aget-object v3, v1, v2

    aget v3, v3, v4

    add-float v3, v3, v17

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v4

    .line 244
    aget-object v3, v1, v2

    aget v3, v3, v4

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v4

    .line 245
    aget-object v3, v1, v4

    aget v3, v3, v4

    add-float v3, v3, v16

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v11, v4

    .line 246
    aget-object v3, v1, v2

    aget v3, v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v12, v4

    .line 247
    aget-object v3, v1, v4

    aget v3, v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v13, v4

    .line 248
    iget-object v5, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v18

    move-object v4, v9

    move-object v14, v5

    move-object v5, v10

    move-object v6, v11

    move v15, v7

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 249
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 248
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v3, 0x1

    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v9, v2

    .line 253
    aget-object v4, v1, v3

    aget v4, v4, v2

    invoke-static {v4, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v10, v2

    .line 254
    aget-object v4, v1, v2

    aget v4, v4, v2

    aput v4, v11, v2

    .line 255
    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v12, v2

    .line 256
    aget-object v4, v1, v2

    aget v4, v4, v2

    aput v4, v13, v2

    .line 258
    aget-object v4, v1, v3

    aget v4, v4, v3

    add-float v4, v4, v17

    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v9, v3

    .line 259
    aget-object v4, v1, v3

    aget v4, v4, v3

    const v14, 0x3ecccccd    # 0.4f

    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v10, v3

    .line 260
    aget-object v4, v1, v2

    aget v4, v4, v3

    add-float v4, v4, v16

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v11, v3

    .line 261
    aget-object v4, v1, v3

    aget v4, v4, v3

    const v8, 0x3e19999a    # 0.15f

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v12, v3

    .line 262
    aget-object v4, v1, v2

    aget v4, v4, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v13, v3

    .line 263
    iget-object v7, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v18

    move-object v4, v9

    move-object v5, v10

    move-object v14, v7

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 264
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 263
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    aget-object v3, v1, v2

    aget v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v9, v2

    .line 268
    aget-object v3, v1, v2

    aget v3, v3, v2

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v10, v2

    .line 269
    aget-object v3, v1, v4

    aget v3, v3, v2

    aput v3, v11, v2

    .line 270
    aget-object v3, v1, v2

    aget v3, v3, v2

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v12, v2

    .line 271
    aget-object v3, v1, v4

    aget v3, v3, v2

    aput v3, v13, v2

    .line 273
    aget-object v3, v1, v2

    aget v3, v3, v4

    add-float v3, v3, v17

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v4

    .line 274
    aget-object v3, v1, v2

    aget v3, v3, v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v4

    .line 275
    aget-object v3, v1, v4

    aget v3, v3, v4

    add-float v3, v3, v16

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v11, v4

    .line 276
    aget-object v3, v1, v2

    aget v3, v3, v4

    const v14, 0x3e19999a    # 0.15f

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v12, v4

    .line 277
    aget-object v3, v1, v4

    aget v3, v3, v4

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v13, v4

    .line 278
    iget-object v8, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v18

    move-object v4, v9

    move-object v5, v10

    move-object v14, v8

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 279
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 278
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v9, v2

    .line 283
    const/4 v3, 0x1

    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v10, v2

    .line 284
    aget-object v4, v1, v3

    aget v4, v4, v2

    invoke-static {v4, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v11, v2

    .line 285
    aget-object v4, v1, v2

    aget v4, v4, v2

    aput v4, v12, v2

    .line 286
    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v13, v2

    .line 288
    aget-object v4, v1, v2

    aget v4, v4, v3

    add-float v4, v4, v17

    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v9, v3

    .line 289
    aget-object v4, v1, v3

    aget v4, v4, v3

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v10, v3

    .line 290
    aget-object v4, v1, v3

    aget v4, v4, v3

    add-float v4, v4, v16

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v11, v3

    .line 291
    aget-object v2, v1, v2

    aget v2, v2, v3

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v12, v3

    .line 292
    aget-object v2, v1, v3

    aget v2, v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v13, v3

    .line 293
    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v3, v14

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 294
    invoke-virtual {v14}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 293
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 297
    :cond_4
    move v15, v7

    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v9, v2

    .line 298
    aget-object v3, v1, v2

    aget v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v10, v2

    .line 299
    aget-object v3, v1, v4

    aget v3, v3, v2

    aput v3, v11, v2

    .line 300
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v12, v2

    .line 301
    aget-object v3, v1, v4

    aget v3, v3, v2

    aput v3, v13, v2

    .line 303
    aget-object v3, v1, v2

    aget v3, v3, v4

    add-float v3, v3, v17

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v4

    .line 304
    aget-object v3, v1, v2

    aget v3, v3, v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v4

    .line 305
    aget-object v3, v1, v4

    aget v3, v3, v4

    add-float v3, v3, v16

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v11, v4

    .line 306
    aget-object v3, v1, v2

    aget v3, v3, v4

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v12, v4

    .line 307
    aget-object v3, v1, v4

    aget v3, v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v13, v4

    .line 308
    iget-object v14, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v18

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 309
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 308
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const/4 v3, 0x1

    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v9, v2

    .line 313
    aget-object v4, v1, v3

    aget v4, v4, v2

    invoke-static {v4, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v10, v2

    .line 314
    aget-object v4, v1, v2

    aget v4, v4, v2

    aput v4, v11, v2

    .line 315
    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v12, v2

    .line 316
    aget-object v4, v1, v2

    aget v4, v4, v2

    aput v4, v13, v2

    .line 318
    aget-object v4, v1, v3

    aget v4, v4, v3

    add-float v4, v4, v17

    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v9, v3

    .line 319
    aget-object v4, v1, v3

    aget v4, v4, v3

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v10, v3

    .line 320
    aget-object v4, v1, v2

    aget v4, v4, v3

    add-float v4, v4, v16

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v11, v3

    .line 321
    aget-object v4, v1, v3

    aget v4, v4, v3

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v12, v3

    .line 322
    aget-object v4, v1, v2

    aget v4, v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v13, v3

    .line 323
    iget-object v14, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v18

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 324
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 323
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    const/4 v3, 0x2

    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v9, v2

    .line 328
    aget-object v4, v1, v3

    aget v4, v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v10, v2

    .line 329
    aget-object v4, v1, v2

    aget v4, v4, v2

    aput v4, v11, v2

    .line 330
    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v12, v2

    .line 331
    aget-object v4, v1, v2

    aget v4, v4, v2

    aput v4, v13, v2

    .line 333
    aget-object v4, v1, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    add-float v4, v4, v17

    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v9, v5

    .line 334
    aget-object v4, v1, v3

    aget v4, v4, v5

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v10, v5

    .line 335
    aget-object v4, v1, v2

    aget v4, v4, v5

    add-float v4, v4, v16

    const v6, 0x3f19999a    # 0.6f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v11, v5

    .line 336
    aget-object v4, v1, v3

    aget v3, v4, v5

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v12, v5

    .line 337
    aget-object v3, v1, v2

    aget v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v13, v5

    .line 338
    iget-object v14, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v3, v18

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 339
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 338
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v9, v2

    .line 343
    const/4 v3, 0x1

    aget-object v4, v1, v3

    aget v3, v4, v2

    aput v3, v10, v2

    .line 344
    const/4 v3, 0x2

    aget-object v4, v1, v3

    aget v3, v4, v2

    aput v3, v11, v2

    .line 345
    aget-object v3, v1, v2

    aget v3, v3, v2

    aput v3, v12, v2

    .line 346
    const/4 v3, 0x1

    aget-object v4, v1, v3

    aget v4, v4, v2

    aput v4, v13, v2

    .line 348
    aget-object v4, v1, v2

    aget v4, v4, v3

    add-float v4, v4, v17

    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v9, v3

    .line 349
    aget-object v4, v1, v3

    aget v4, v4, v3

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v10, v3

    .line 350
    const/4 v4, 0x2

    aget-object v4, v1, v4

    aget v4, v4, v3

    add-float v4, v4, v16

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v11, v3

    .line 351
    aget-object v2, v1, v2

    aget v2, v2, v3

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v12, v3

    .line 352
    aget-object v2, v1, v3

    aget v2, v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v13, v3

    .line 353
    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v3, v14

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    .line 354
    invoke-virtual {v14}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v3

    .line 353
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_1
    return-void

    .line 135
    .end local v1    # "colorHsl":[[F
    .end local v9    # "accent1":[F
    .end local v10    # "accent2":[F
    .end local v11    # "accent3":[F
    .end local v12    # "neutral1":[F
    .end local v13    # "neutral2":[F
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method blacklist comp(F)F
    .locals 2
    .param p1, "hue"    # F

    .line 117
    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p1, v0

    .line 118
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 119
    sub-float/2addr p1, v0

    .line 121
    :cond_0
    return p1
.end method

.method public blacklist generateColorPalette()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->populateStyles()V

    .line 51
    return-void
.end method

.method public blacklist generateColorPalette(Z)V
    .locals 8
    .param p1, "fromGoogle"    # Z

    .line 54
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 58
    .local v4, "seed":I
    new-instance v5, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;

    invoke-direct {v5, v4, v2}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZ)V

    .line 59
    .local v5, "colorScheme":Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;
    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {v7, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V

    invoke-virtual {v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v4    # "seed":I
    .end local v5    # "colorScheme":Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->populateStyles()V

    .line 64
    :cond_1
    return-void
.end method

.method public blacklist getColorPalettes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    return-object v0
.end method

.method public blacklist setColors([I)V
    .locals 0
    .param p1, "seeds"    # [I

    .line 45
    iput-object p1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    .line 46
    return-void
.end method

.method public blacklist setColors([[F)V
    .locals 3
    .param p1, "p"    # [[F

    .line 35
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 36
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v2

    aput v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
