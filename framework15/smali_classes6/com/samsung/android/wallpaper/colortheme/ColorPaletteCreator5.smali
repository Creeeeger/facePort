.class public Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;
.super Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
.source "ColorPaletteCreator5.java"


# static fields
.field private static final blacklist GRAY_HUE_PRESET1:I = 0x0

.field private static final blacklist GRAY_HUE_PRESET2:I = 0x78

.field private static final blacklist GRAY_HUE_PRESET3:I = 0xf0

.field private static final blacklist GRAY_SAT_PRESET1:F = 0.0f

.field private static final blacklist GRAY_SAT_PRESET2:F = 0.05f

.field private static final blacklist MAX_RANGE:I = 0x13

.field private static final blacklist TAG:Ljava/lang/String; = "ColorPaletteCreator5"

.field private static final blacklist range:[I


# instance fields
.field blacklist accent1:[F

.field blacklist accent2:[F

.field blacklist accent3:[F

.field blacklist mColorHsl:[[F

.field blacklist neutral1:[F

.field blacklist neutral2:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    return-void

    :array_0
    .array-data 4
        -0x8
        0x17
        0x22
        0x2c
        0x34
        0x3d
        0x4f
        0x86
        0xa8
        0xb8
        0xc2
        0xc9
        0xde
        0x108
        0x121
        0x13a
        0x149
        0x159
        0x160
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    return-void
.end method

.method private blacklist addExpressive([FI)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getExpressiveHue(FI)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const v5, 0x3f333333    # 0.7f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v1

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v1, p1, v2

    add-float/2addr v1, v4

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v2

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist addGrayStylePalette()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    new-instance v10, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const v4, 0x3d4ccccd    # 0.05f

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v10, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/high16 v2, 0x42f00000    # 120.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v10, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/high16 v2, 0x43700000    # 240.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aput v4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist addNeutral([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v1

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v1

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3d4ccccd    # 0.05f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v1, p1, v2

    add-float/2addr v1, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v2

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist addTonalSpot([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v2, 0x1

    aget v3, p1, v2

    const v4, 0x3e99999a    # 0.3f

    add-float/2addr v3, v4

    const v4, 0x3f333333    # 0.7f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v1

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v1

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v2

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v1, p1, v2

    add-float/2addr v1, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v2

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist addVibrant([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    const/4 v2, 0x1

    aget v3, p1, v2

    const v4, 0x3e99999a    # 0.3f

    add-float/2addr v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    aget v3, p1, v2

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v1

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    aget v3, p1, v2

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    aget v3, p1, v2

    add-float/2addr v3, v4

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v3, p1, v1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    aget v1, p1, v2

    add-float/2addr v1, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v2

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent1:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent2:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->accent3:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral1:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->neutral2:[F

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p0

    if-gtz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

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
    .locals 5

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    aget v0, v0, p1

    int-to-float v0, v0

    sub-float v0, p0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    sget-object v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    const-string v1, "findRatio : ratio is more than 1"

    const-string v2, "ColorPaletteCreator5"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findRatio : hue = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " range[r] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " range[r+1] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ratio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method static blacklist getHue(IF)F
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v0, v0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr v0, v1

    sget-object p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    aget p0, p0, v0

    int-to-float p0, p0

    sget-object v1, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr p0, v1

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr p0, v2

    goto :goto_0

    :cond_0
    cmpl-float v1, p0, v2

    if-lez v1, :cond_1

    sub-float/2addr p0, v2

    :cond_1
    :goto_0
    return p0
.end method

.method static blacklist hueMove(FI)F
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->findRange(F)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->findRatio(FI)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    add-int v2, v0, p1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v2, v3

    goto :goto_0

    :cond_0
    sub-int v2, v0, p1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v2, v3

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getHue(IF)F

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

.method private blacklist populateStyles()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "populateStyles : seedsColor length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorPaletteCreator5"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    aget v2, v2, v0

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    aget-object v4, v4, v0

    invoke-static {v2, v4}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "populateStyles : seed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " C"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    aget-object v4, v4, v0

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    invoke-static {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->isGrayImage([[F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addGrayStylePalette()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addTonalSpot([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {p0, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addNeutral([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {p0, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addVibrant([F)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->addExpressive([FI)Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
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

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->populateStyles()V

    return-void
.end method

.method public blacklist generateColorPalette(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;->generateColorPalette(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->generateColorPalette()V

    :goto_0
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

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorPalettes:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getExpressiveHue(FI)F
    .locals 13

    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->findRange(F)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->findRatio(FI)F

    move-result v1

    add-int/lit8 v2, v0, -0x5

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v2, v3

    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getHue(IF)F

    move-result v3

    add-int/lit8 v4, v0, 0x5

    sget-object v5, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->range:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    rem-int/2addr v4, v5

    invoke-static {v4, v1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getHue(IF)F

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExpressiveHue : leftHue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rightHue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " C"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " case"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ColorPaletteCreator5"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v6, v3, v5

    const-string v8, " "

    const-string v9, "getExpressiveHue : return seeds C"

    const/4 v10, 0x0

    const-string v11, ")"

    if-lez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getExpressiveHue : leftHue("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ") > c1, c2, c3, c4 > rightHue("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    iget-object v11, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    array-length v11, v11

    if-ge v6, v11, :cond_2

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v11, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    aget-object v11, v11, v6

    aget v11, v11, v10

    cmpg-float v12, v5, v11

    if-gez v12, :cond_1

    cmpg-float v12, v11, v3

    if-gez v12, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    goto :goto_4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getExpressiveHue : 360 > c1,c2,c3,c4 > rightHue("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ") || 0 < c1,c2,c3,c4 < leftHue("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_2
    iget-object v11, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    array-length v11, v11

    if-ge v6, v11, :cond_8

    if-ne v6, p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v11, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mColorHsl:[[F

    aget-object v11, v11, v6

    aget v11, v11, v10

    const/high16 v12, 0x43b40000    # 360.0f

    cmpl-float v12, v12, v11

    if-lez v12, :cond_5

    cmpl-float v12, v11, v5

    if-gtz v12, :cond_6

    :cond_5
    cmpl-float v12, v3, v11

    if-lez v12, :cond_7

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_7

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    const/4 v6, -0x5

    invoke-static {p1, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->hueMove(FI)F

    move-result v6

    return v6
.end method

.method public blacklist setColors([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    return-void
.end method

.method public blacklist setColors([[F)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->mSeedColors:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
