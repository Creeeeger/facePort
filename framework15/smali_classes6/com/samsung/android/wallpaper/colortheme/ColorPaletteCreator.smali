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
.field protected final blacklist mColorPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation
.end field

.field protected blacklist mSeedColors:[I

.field protected final blacklist mWallpaperColorStyles:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueRange:[I

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
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->TONAL_SPOT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->SPRITZ:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->VIBRANT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->EXPRESSIVE:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mWallpaperColorStyles:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    return-void
.end method

.method public static blacklist converAccent1ToSeedColors([I)[I
    .locals 10

    if-eqz p0, :cond_5

    array-length v0, p0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [F

    array-length v3, p0

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v1, v5, v6

    const/4 v1, 0x0

    aput v3, v5, v1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    const/4 v5, 0x0

    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_1

    aget v7, p0, v5

    aget-object v8, v3, v5

    invoke-static {v7, v8}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->isGrayImage([[F)Z

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aput v5, v2, v1

    aput v5, v2, v6

    aput v7, v2, v4

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput v5, v2, v1

    const v4, 0x3d4ccccd    # 0.05f

    aput v4, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v5, 0x43700000    # 240.0f

    aput v5, v2, v1

    aput v4, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    array-length v5, p0

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3e99999a    # 0.3f

    if-ne v5, v6, :cond_3

    aget-object v5, v3, v1

    aget v5, v5, v1

    aput v5, v2, v1

    aget-object v5, v3, v1

    aget v5, v5, v6

    add-float/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v6

    aput v7, v2, v4

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v4, v3, v1

    aget v4, v4, v1

    invoke-static {v4, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v2, v1

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v4, v3, v1

    aget v4, v4, v1

    aput v4, v2, v1

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    array-length v5, p0

    if-ne v5, v4, :cond_4

    aget-object v5, v3, v1

    aget v5, v5, v1

    aput v5, v2, v1

    aget-object v5, v3, v1

    aget v5, v5, v6

    add-float/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v6

    aput v7, v2, v4

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v4, v3, v6

    aget v4, v4, v1

    aput v4, v2, v1

    aget-object v4, v3, v6

    aget v4, v4, v6

    add-float/2addr v4, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v4, v3, v1

    aget v4, v4, v1

    invoke-static {v4, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v2, v1

    aget-object v4, v3, v1

    aget v4, v4, v6

    add-float/2addr v4, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v4, v3, v1

    aget v4, v4, v1

    aput v4, v2, v1

    aget-object v1, v3, v1

    aget v1, v1, v6

    add-float/2addr v1, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    aget-object v5, v3, v1

    aget v5, v5, v1

    aput v5, v2, v1

    aget-object v5, v3, v1

    aget v5, v5, v6

    add-float/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v6

    aput v7, v2, v4

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v5, v3, v6

    aget v5, v5, v1

    aput v5, v2, v1

    aget-object v5, v3, v6

    aget v5, v5, v6

    add-float/2addr v5, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v5, v3, v4

    aget v5, v5, v1

    aput v5, v2, v1

    aget-object v4, v3, v4

    aget v4, v4, v6

    add-float/2addr v4, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v4, v3, v1

    aget v4, v4, v1

    aput v4, v2, v1

    aget-object v1, v3, v1

    aget v1, v1, v6

    add-float/2addr v1, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v2, v6

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist findRange(F)I
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    const/16 v3, 0x10

    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p0

    if-gtz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist findRatio(FI)F
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    aget v0, v0, p1

    int-to-float v0, v0

    sub-float v0, p0, v0

    sget-object v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method static blacklist getHue(IF)F
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    aget v0, v0, p0

    int-to-float v0, v0

    sget-object v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    add-int/lit8 v2, p0, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    aget v2, v2, p0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    sub-float/2addr v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method static blacklist hueMove(FI)F
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->findRange(F)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->findRatio(FI)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    add-int v2, v0, p1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v2, v3

    goto :goto_0

    :cond_0
    sub-int v2, v0, p1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->range:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v2, v3

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->getHue(IF)F

    move-result p0

    return p0
.end method

.method static blacklist isGrayImage([[F)Z
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    aget v3, v4, v3

    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method static synthetic blacklist lambda$converAccent1ToSeedColors$0(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist populateStyles()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v1, v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x3

    new-array v8, v1, [F

    new-array v9, v1, [F

    new-array v10, v1, [F

    new-array v11, v1, [F

    new-array v12, v1, [F

    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v2, v2

    const/4 v13, 0x2

    new-array v3, v13, [I

    const/4 v14, 0x1

    aput v1, v3, v14

    const/4 v1, 0x0

    aput v2, v3, v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, [[F

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    aget v3, v3, v2

    aget-object v4, v15, v2

    invoke-static {v3, v4}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v15}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->isGrayImage([[F)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v13, 0x0

    aput v13, v8, v1

    aput v13, v8, v14

    aput v13, v9, v1

    aput v13, v9, v14

    aput v13, v10, v1

    aput v13, v10, v14

    aput v13, v11, v1

    aput v13, v11, v14

    aput v13, v12, v1

    aput v13, v12, v14

    iget-object v7, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v16, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v16

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v14, v7

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput v13, v8, v1

    const v14, 0x3d4ccccd    # 0.05f

    const/4 v2, 0x1

    aput v14, v8, v2

    aput v13, v9, v1

    aput v14, v9, v2

    aput v13, v10, v1

    aput v14, v10, v2

    aput v13, v11, v1

    aput v14, v11, v2

    aput v13, v12, v1

    aput v14, v12, v2

    iget-object v13, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v16, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x43700000    # 240.0f

    aput v2, v8, v1

    const/4 v3, 0x1

    aput v14, v8, v3

    aput v2, v9, v1

    aput v14, v9, v3

    aput v2, v10, v1

    aput v14, v10, v3

    aput v2, v11, v1

    aput v14, v11, v3

    aput v2, v12, v1

    aput v14, v12, v3

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v13, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v2, v13

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v13}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v2, v2

    const v14, 0x3f19999a    # 0.6f

    const v16, 0x3dcccccd    # 0.1f

    const v7, 0x3ecccccd    # 0.4f

    const v6, 0x3f4ccccd    # 0.8f

    const v17, 0x3e99999a    # 0.3f

    const v5, 0x3e19999a    # 0.15f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v8, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v9, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v10, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v11, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v12, v1

    aget-object v2, v15, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    add-float v2, v2, v17

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v8, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v9, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    add-float v2, v2, v16

    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v10, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v11, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v12, v3

    iget-object v14, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v16, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v16

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, v15, v1

    aget v2, v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v8, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-static {v2, v13}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v9, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v10, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v11, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v12, v1

    iget-object v13, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v14, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v2, v14

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v14}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v8, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v9, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v10, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v11, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->comp(F)F

    move-result v2

    aput v2, v12, v1

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v13, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v2, v13

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v13}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v2, v2

    if-ne v2, v13, :cond_4

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v8, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v9, v1

    aget-object v2, v15, v3

    aget v2, v2, v1

    aput v2, v10, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v11, v1

    aget-object v2, v15, v3

    aget v2, v2, v1

    aput v2, v12, v1

    aget-object v2, v15, v1

    aget v2, v2, v3

    add-float v2, v2, v17

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v8, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v9, v3

    aget-object v2, v15, v3

    aget v2, v2, v3

    add-float v2, v2, v16

    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v10, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v11, v3

    aget-object v2, v15, v3

    aget v2, v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v12, v3

    iget-object v4, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v18

    move-object v3, v8

    move-object v13, v4

    move-object v4, v9

    move-object v5, v10

    move v14, v6

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v8, v1

    aget-object v3, v15, v2

    aget v3, v3, v1

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v9, v1

    aget-object v3, v15, v1

    aget v3, v3, v1

    aput v3, v10, v1

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v11, v1

    aget-object v3, v15, v1

    aget v3, v3, v1

    aput v3, v12, v1

    aget-object v3, v15, v2

    aget v3, v3, v2

    add-float v3, v3, v17

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v2

    aget-object v3, v15, v2

    aget v3, v3, v2

    const v13, 0x3ecccccd    # 0.4f

    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v2

    aget-object v3, v15, v1

    aget v3, v3, v2

    add-float v3, v3, v16

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v2

    aget-object v3, v15, v2

    aget v3, v3, v2

    const v7, 0x3e19999a    # 0.15f

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v11, v2

    aget-object v3, v15, v1

    aget v3, v3, v2

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v12, v2

    iget-object v6, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v18

    move-object v3, v8

    move-object v4, v9

    move-object v13, v6

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, v15, v1

    aget v2, v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v8, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v9, v1

    aget-object v2, v15, v3

    aget v2, v2, v1

    aput v2, v10, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v11, v1

    aget-object v2, v15, v3

    aget v2, v2, v1

    aput v2, v12, v1

    aget-object v2, v15, v1

    aget v2, v2, v3

    add-float v2, v2, v17

    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v8, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v9, v3

    aget-object v2, v15, v3

    aget v2, v2, v3

    add-float v2, v2, v16

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v10, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    const v13, 0x3e19999a    # 0.15f

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v11, v3

    aget-object v2, v15, v3

    aget v2, v2, v3

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v12, v3

    iget-object v7, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v18

    move-object v3, v8

    move-object v4, v9

    move-object v13, v7

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v8, v1

    const/4 v2, 0x1

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v9, v1

    aget-object v3, v15, v2

    aget v3, v3, v1

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v10, v1

    aget-object v3, v15, v1

    aget v3, v3, v1

    aput v3, v11, v1

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v12, v1

    aget-object v3, v15, v1

    aget v3, v3, v2

    add-float v3, v3, v17

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v2

    aget-object v3, v15, v2

    aget v3, v3, v2

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v2

    aget-object v3, v15, v2

    aget v3, v3, v2

    add-float v3, v3, v16

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v2

    aget-object v1, v15, v1

    aget v1, v1, v2

    const v3, 0x3e19999a    # 0.15f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v11, v2

    aget-object v1, v15, v2

    aget v1, v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v12, v2

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v13, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v2, v13

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v13}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move v14, v6

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v8, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v9, v1

    aget-object v2, v15, v3

    aget v2, v2, v1

    aput v2, v10, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v11, v1

    aget-object v2, v15, v3

    aget v2, v2, v1

    aput v2, v12, v1

    aget-object v2, v15, v1

    aget v2, v2, v3

    add-float v2, v2, v17

    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v8, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v9, v3

    aget-object v2, v15, v3

    aget v2, v2, v3

    add-float v2, v2, v16

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v10, v3

    aget-object v2, v15, v1

    aget v2, v2, v3

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v11, v3

    aget-object v2, v15, v3

    aget v2, v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v12, v3

    iget-object v13, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v18

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v8, v1

    aget-object v3, v15, v2

    aget v3, v3, v1

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v9, v1

    aget-object v3, v15, v1

    aget v3, v3, v1

    aput v3, v10, v1

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v11, v1

    aget-object v3, v15, v1

    aget v3, v3, v1

    aput v3, v12, v1

    aget-object v3, v15, v2

    aget v3, v3, v2

    add-float v3, v3, v17

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v2

    aget-object v3, v15, v2

    aget v3, v3, v2

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v2

    aget-object v3, v15, v1

    aget v3, v3, v2

    add-float v3, v3, v16

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v2

    aget-object v3, v15, v2

    aget v3, v3, v2

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v11, v2

    aget-object v3, v15, v1

    aget v3, v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v12, v2

    iget-object v13, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v18

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v8, v1

    aget-object v3, v15, v2

    aget v3, v3, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->hueMove(FI)F

    move-result v3

    aput v3, v9, v1

    aget-object v3, v15, v1

    aget v3, v3, v1

    aput v3, v10, v1

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v11, v1

    aget-object v3, v15, v1

    aget v3, v3, v1

    aput v3, v12, v1

    aget-object v3, v15, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    add-float v3, v3, v17

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v4

    aget-object v3, v15, v2

    aget v3, v3, v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v4

    aget-object v3, v15, v1

    aget v3, v3, v4

    add-float v3, v3, v16

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v4

    aget-object v3, v15, v2

    aget v2, v3, v4

    const v3, 0x3e19999a    # 0.15f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v11, v4

    aget-object v2, v15, v1

    aget v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v12, v4

    iget-object v13, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v18, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object/from16 v2, v18

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v8, v1

    const/4 v2, 0x1

    aget-object v3, v15, v2

    aget v2, v3, v1

    aput v2, v9, v1

    const/4 v2, 0x2

    aget-object v3, v15, v2

    aget v2, v3, v1

    aput v2, v10, v1

    aget-object v2, v15, v1

    aget v2, v2, v1

    aput v2, v11, v1

    const/4 v2, 0x1

    aget-object v3, v15, v2

    aget v3, v3, v1

    aput v3, v12, v1

    aget-object v3, v15, v1

    aget v3, v3, v2

    add-float v3, v3, v17

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v8, v2

    aget-object v3, v15, v2

    aget v3, v3, v2

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v9, v2

    const/4 v3, 0x2

    aget-object v3, v15, v3

    aget v3, v3, v2

    add-float v3, v3, v16

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v2

    aget-object v1, v15, v1

    aget v1, v1, v2

    const v3, 0x3e19999a    # 0.15f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v11, v2

    aget-object v1, v15, v2

    aget v1, v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v12, v2

    iget-object v1, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v13, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    move-object v2, v13

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v13}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method blacklist comp(F)F
    .locals 2

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method public blacklist generateColorPalette()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->populateStyles()V

    return-void
.end method

.method public blacklist generateColorPalette(Z)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mWallpaperColorStyles:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    new-instance v9, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;

    invoke-direct {v9, v4, v2, v8}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V

    iget-object v10, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v11, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {v11, v9}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V

    invoke-virtual {v11}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->populateStyles()V

    :cond_2
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

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSeedColors()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    return-object v0
.end method

.method public blacklist setColors([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    return-void
.end method

.method public blacklist setColors([[F)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->mSeedColors:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
