.class public Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;
.super Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;
.source "StandardColorPaletteCreator.java"


# static fields
.field private static final blacklist MAX_RANGE:I = 0x13

.field private static final blacklist TAG:Ljava/lang/String; = "StandardColorPaletteCreator"

.field private static final blacklist range:[I


# instance fields
.field blacklist accent1:[F

.field blacklist accent2:[F

.field blacklist accent3:[F

.field protected final blacklist mBasicColorStyle:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

.field blacklist mColorHsl:[[F

.field blacklist neutral1:[F

.field blacklist neutral2:[F

.field blacklist oneColorHsl:[F

.field blacklist oneColorIntSeeds:[I

.field blacklist seedRange:[I

.field blacklist seeds:[Ljava/lang/String;

.field blacklist twoColorHsl:[F

.field blacklist twoColorIntSeeds:[I

.field blacklist twoColorRange:[I

.field blacklist twoColorSeeds:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->range:[I

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
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seedRange:[I

    const/4 v0, 0x7

    const/16 v1, 0x27

    const/16 v2, 0x6a

    const/16 v3, 0xd3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorRange:[I

    const-string v7, "#9126D9"

    const-string v8, "#D9269A"

    const-string v1, "#D73B26"

    const-string v2, "#D99A26"

    const-string v3, "#D9CD26"

    const-string v4, "#50D926"

    const-string v5, "#26D9CD"

    const-string v6, "#267DD9"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    const-string v0, "#50D926"

    const-string v1, "#267DD9"

    const-string v2, "#808080"

    const-string v3, "#D73B26"

    const-string v4, "#D99A26"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorSeeds:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->RAINBOW:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->FRUIT_SALAD:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mBasicColorStyle:[Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    return-void

    :array_0
    .array-data 4
        0x7
        0x27
        0x38
        0x6a
        0xb0
        0xd3
        0x114
        0x141
    .end array-data
.end method

.method private blacklist addGrayColorPalette()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    invoke-virtual {v7}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist addOneColorPalette([F)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    aget v2, p1, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    const v2, 0x3ecccccd    # 0.4f

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    aget v2, p1, v1

    invoke-static {v2, v3}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    aget v2, p1, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    const/4 v2, 0x0

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    aget v4, p1, v1

    aput v4, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    aput v2, v0, v3

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist addTwoColorPalette([F)V
    .locals 10

    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->isGrayColor([F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->addGrayColorPalette()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    aget v2, p1, v1

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    const v2, 0x3f19999a    # 0.6f

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    aget v2, p1, v1

    invoke-static {v2, v4}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    const v2, 0x3ecccccd    # 0.4f

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    aget v2, p1, v1

    invoke-static {v2, v4}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->hueMove(FI)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    const v2, 0x3e19999a    # 0.15f

    aput v2, v0, v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    aget v5, p1, v1

    invoke-static {v5, v4}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->hueMove(FI)F

    move-result v4

    aput v4, v0, v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    aput v2, v0, v3

    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent1:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent2:[F

    iget-object v7, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->accent3:[F

    iget-object v8, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral1:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->neutral2:[F

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>([F[F[F[F[F)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
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
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->range:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->range:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p0

    if-gtz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->range:[I

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

.method static blacklist getHue(I)F
    .locals 3

    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->range:[I

    aget v0, v0, p0

    int-to-float v0, v0

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

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v0

    invoke-static {v1}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->findRange(F)I

    move-result v1

    add-int v2, v1, p1

    sget-object v3, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->range:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    invoke-static {v2}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->getHue(I)F

    move-result v1

    return v1
.end method

.method static blacklist isGrayColor([F)Z
    .locals 3

    const/4 v0, 0x1

    aget v1, p0, v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist populateStyles()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->setColors()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "populateStyles : seeds length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " addOneColorPalette"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StandardColorPaletteCreator"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorHsl:[[F

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->addOneColorPalette([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->setTwoColors()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorSeeds:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " addTowColorPalette"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorSeeds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorHsl:[[F

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->addTwoColorPalette([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private blacklist setColors()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    array-length v0, v0

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    array-length v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorHsl:[[F

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorHsl:[[F

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private blacklist setTwoColors()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorSeeds:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorSeeds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorSeeds:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    array-length v0, v0

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    array-length v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorHsl:[[F

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    aget v1, v1, v0

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorHsl:[[F

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mSeedColors:[I

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mSeedColors:[I

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    array-length v3, v3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mSeedColors:[I

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist generateColorPalette()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->populateStyles()V

    return-void
.end method

.method public blacklist generateColorPalette(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mSeedColors:[I

    aget v1, v1, v0

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;

    sget-object v4, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->RAINBOW:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-direct {v3, v1, v2, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V

    move-object v2, v3

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    array-length v0, v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->seeds:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorSeeds:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mSeedColors:[I

    aget v1, v1, v0

    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;

    sget-object v4, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->FRUIT_SALAD:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-direct {v3, v1, v2, v4}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V

    new-instance v4, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;

    invoke-direct {v4, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;-><init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V

    iget-object v5, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->mColorPalettes:Ljava/util/List;

    invoke-virtual {v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->getTable()[[I

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->populateStyles()V

    :goto_2
    return-void
.end method

.method public blacklist getOneColorSeeds()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->oneColorIntSeeds:[I

    return-object v0
.end method

.method public blacklist getTwoColorSeeds()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->twoColorIntSeeds:[I

    return-object v0
.end method

.method public blacklist initSeedColors()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->setColors()V

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->setTwoColors()V

    return-void
.end method
