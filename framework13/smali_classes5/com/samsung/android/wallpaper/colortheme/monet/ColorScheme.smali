.class public Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;
.super Ljava/lang/Object;
.source "ColorScheme.java"


# static fields
.field public static final blacklist ACCENT1_CHROMA:F = 48.0f

.field public static final blacklist GOOGLE_BLUE:I = -0xe4910d

.field public static final blacklist MIN_CHROMA:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "ColorScheme"


# instance fields
.field private blacklist accent1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist accent2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist accent3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist darkTheme:Z

.field private blacklist neutral1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist neutral2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist seed:I

.field private final blacklist style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;


# direct methods
.method public constructor blacklist <init>(IZ)V
    .locals 1
    .param p1, "seed"    # I
    .param p2, "darkTheme"    # Z

    .line 347
    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->TONAL_SPOT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V

    .line 348
    return-void
.end method

.method public constructor blacklist <init>(IZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V
    .locals 0
    .param p1, "seed"    # I
    .param p2, "darkTheme"    # Z
    .param p3, "style"    # Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->seed:I

    .line 360
    iput-boolean p2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->darkTheme:Z

    .line 361
    iput-object p3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->init()V

    .line 364
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/WallpaperColors;Z)V
    .locals 1
    .param p1, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "darkTheme"    # Z

    .line 351
    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->TONAL_SPOT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V

    .line 352
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/WallpaperColors;ZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V
    .locals 1
    .param p1, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "darkTheme"    # Z
    .param p3, "style"    # Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    .line 355
    sget-object v0, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->CONTENT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getSeedColor(Landroid/app/WallpaperColors;Z)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;-><init>(IZLcom/samsung/android/wallpaper/colortheme/monet/Style;)V

    .line 356
    return-void
.end method

.method private static blacklist entriesSortedByValues(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Ljava/lang/Comparable<",
            "-TV;>;>(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 689
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 691
    .local v0, "sortedEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme$1;

    invoke-direct {v1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 700
    return-object v0
.end method

.method public static blacklist getSeedColor(Landroid/app/WallpaperColors;)I
    .locals 2
    .param p0, "wallpaperColors"    # Landroid/app/WallpaperColors;

    .line 456
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getSeedColor(Landroid/app/WallpaperColors;Z)I
    .locals 2
    .param p0, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p1, "filter"    # Z

    .line 467
    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getSeedColors(Landroid/app/WallpaperColors;)Ljava/util/List;
    .locals 1
    .param p0, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperColors;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 471
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;
    .locals 25
    .param p0, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p1, "filter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperColors;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 482
    move/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 483
    .local v1, "totalPopulation":D
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v3

    .line 484
    .local v3, "allColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    .local v4, "importances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 486
    .local v6, "importance":I
    int-to-double v7, v6

    add-double/2addr v1, v7

    .line 487
    .end local v6    # "importance":I
    goto :goto_0

    .line 489
    :cond_0
    const-wide/16 v5, 0x0

    cmpl-double v5, v1, v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 491
    .local v5, "totalPopulationMeaningless":Z
    :goto_1
    const/high16 v6, 0x40a00000    # 5.0f

    const v7, -0xe4910d

    if-eqz v5, :cond_6

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v8

    .line 498
    .local v8, "colors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v9, "distinctColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Color;

    .line 501
    .local v11, "color":Landroid/graphics/Color;
    if-nez v0, :cond_2

    .line 502
    invoke-virtual {v11}, Landroid/graphics/Color;->toArgb()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 503
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Color;->toArgb()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v12

    cmpl-float v12, v12, v6

    if-ltz v12, :cond_3

    .line 504
    invoke-virtual {v11}, Landroid/graphics/Color;->toArgb()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v11    # "color":Landroid/graphics/Color;
    :cond_3
    :goto_3
    goto :goto_2

    .line 508
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 509
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_5
    return-object v9

    .line 515
    .end local v8    # "colors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    .end local v9    # "distinctColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 516
    .local v8, "intToProportion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 517
    .local v9, "intToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 518
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-double v13, v13

    div-double/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_4

    .line 523
    :cond_7
    invoke-static {v9, v8, v0}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->huePopulations(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v10

    .line 525
    .local v10, "hueProportions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v11, "intToHueProportion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 527
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/graphics/cam/Cam;

    .line 528
    .local v14, "cam":Lcom/android/internal/graphics/cam/Cam;
    invoke-virtual {v14}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 529
    .local v15, "hue":I
    const-wide/16 v16, 0x0

    .line 530
    .local v16, "proportion":D
    add-int/lit8 v18, v15, -0xf

    move/from16 v7, v18

    .local v7, "i":I
    :goto_6
    add-int/lit8 v6, v15, 0xf

    if-gt v7, v6, :cond_8

    .line 531
    invoke-static {v7}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->wrapDegrees(I)I

    move-result v6

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    add-double v16, v16, v20

    .line 530
    add-int/lit8 v7, v7, 0x1

    const/high16 v6, 0x40a00000    # 5.0f

    goto :goto_6

    .line 533
    .end local v7    # "i":I
    :cond_8
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "cam":Lcom/android/internal/graphics/cam/Cam;
    .end local v15    # "hue":I
    .end local v16    # "proportion":D
    const/high16 v6, 0x40a00000    # 5.0f

    const v7, -0xe4910d

    goto :goto_5

    .line 539
    :cond_9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 540
    .local v6, "filteredIntToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 541
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    if-nez v0, :cond_a

    .line 542
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/graphics/cam/Cam;

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v19, v1

    const/high16 v17, 0x40a00000    # 5.0f

    goto :goto_9

    .line 544
    :cond_a
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/graphics/cam/Cam;

    .line 545
    .local v13, "cam":Lcom/android/internal/graphics/cam/Cam;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 546
    .local v14, "proportion":D
    invoke-virtual {v13}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v16

    const/high16 v17, 0x40a00000    # 5.0f

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_d

    if-nez v5, :cond_c

    const-wide v19, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v16, v14, v19

    if-lez v16, :cond_b

    goto :goto_8

    :cond_b
    move-wide/from16 v19, v1

    goto :goto_9

    .line 548
    :cond_c
    :goto_8
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v19, v1

    .end local v1    # "totalPopulation":D
    .local v19, "totalPopulation":D
    move-object/from16 v1, v16

    check-cast v1, Lcom/android/internal/graphics/cam/Cam;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 546
    .end local v19    # "totalPopulation":D
    .restart local v1    # "totalPopulation":D
    :cond_d
    move-wide/from16 v19, v1

    .line 551
    .end local v1    # "totalPopulation":D
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    .end local v13    # "cam":Lcom/android/internal/graphics/cam/Cam;
    .end local v14    # "proportion":D
    .restart local v19    # "totalPopulation":D
    :goto_9
    move/from16 v0, p1

    move-wide/from16 v1, v19

    goto :goto_7

    .line 554
    .end local v19    # "totalPopulation":D
    .restart local v1    # "totalPopulation":D
    :cond_e
    move-wide/from16 v19, v1

    .end local v1    # "totalPopulation":D
    .restart local v19    # "totalPopulation":D
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 555
    .local v0, "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 556
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 557
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/graphics/cam/Cam;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->score(Lcom/android/internal/graphics/cam/Cam;D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 556
    invoke-interface {v0, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    goto :goto_a

    .line 560
    :cond_f
    invoke-static {v0}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->entriesSortedByValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 566
    .local v1, "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    const/16 v2, 0xf

    .line 568
    .local v2, "minimumHueDistance":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v7, "seeds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v12, 0x5a

    .local v12, "i":I
    :goto_b
    if-lt v12, v2, :cond_14

    .line 571
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 574
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 575
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 576
    .local v15, "key":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 577
    .local v17, "otherKey":I
    move-object/from16 v21, v0

    .end local v0    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .local v21, "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/cam/Cam;

    invoke-virtual {v0}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v0

    .line 578
    .local v0, "hueA":F
    move-object/from16 v22, v1

    .end local v1    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    .local v22, "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/graphics/cam/Cam;

    invoke-virtual {v1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v1

    .line 579
    .local v1, "hueB":F
    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->hueDiff(FF)F

    move-result v23

    move/from16 v24, v0

    .end local v0    # "hueA":F
    .local v24, "hueA":F
    int-to-float v0, v12

    cmpg-float v0, v23, v0

    if-gez v0, :cond_10

    .line 580
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    goto :goto_c

    .line 582
    .end local v1    # "hueB":F
    .end local v17    # "otherKey":I
    .end local v24    # "hueA":F
    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    goto :goto_d

    .line 583
    .end local v21    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v22    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    .local v0, "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .local v1, "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    :cond_11
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    .end local v0    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v1    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    .restart local v21    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v22    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v15    # "key":I
    move-object/from16 v0, v21

    goto :goto_c

    .line 585
    .end local v21    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v22    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    .restart local v0    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v1    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    :cond_12
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    .end local v0    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v1    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    .restart local v21    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v22    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_13

    .line 586
    goto :goto_e

    .line 570
    :cond_13
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    goto/16 :goto_b

    .end local v21    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v22    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    .restart local v0    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v1    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    :cond_14
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    .line 590
    .end local v0    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v1    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    .end local v12    # "i":I
    .restart local v21    # "intToScoreIntermediate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v22    # "intToScore":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    :goto_e
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 592
    const v0, -0xe4910d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_15
    return-object v7
.end method

.method private static blacklist hueDiff(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 619
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v1, v0

    return v1
.end method

.method private static blacklist huePopulations(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/List;
    .locals 10
    .param p2, "filter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/graphics/cam/Cam;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 656
    .local p0, "camByColor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/graphics/cam/Cam;>;"
    .local p1, "populationByColor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x168

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .local v0, "huePopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 658
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 662
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 663
    .local v4, "population":D
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/graphics/cam/Cam;

    .line 664
    .local v6, "cam":Lcom/android/internal/graphics/cam/Cam;
    invoke-virtual {v6}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    rem-int/2addr v7, v1

    .line 665
    .local v7, "hue":I
    if-eqz p2, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 666
    goto :goto_1

    .line 668
    :cond_1
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 669
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v4    # "population":D
    .end local v6    # "cam":Lcom/android/internal/graphics/cam/Cam;
    .end local v7    # "hue":I
    goto :goto_1

    .line 671
    :cond_2
    return-object v0
.end method

.method public static blacklist humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "paletteName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 633
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 634
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 635
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 636
    .local v2, "color":I
    invoke-static {v2}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->stringForColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    .end local v2    # "color":I
    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist init()V
    .locals 4

    .line 367
    iget v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->seed:I

    invoke-static {v0}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    .line 370
    .local v0, "proposedSeedCam":Lcom/android/internal/graphics/cam/Cam;
    iget v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->seed:I

    if-nez v1, :cond_0

    .line 371
    const v1, -0xe4910d

    .local v1, "seedArgb":I
    goto :goto_0

    .line 372
    .end local v1    # "seedArgb":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    sget-object v2, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->CONTENT:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 373
    const v1, -0xe4910d

    .restart local v1    # "seedArgb":I
    goto :goto_0

    .line 375
    .end local v1    # "seedArgb":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->seed:I

    .line 378
    .restart local v1    # "seedArgb":I
    :goto_0
    invoke-static {v1}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v2

    .line 379
    .local v2, "camSeed":Lcom/android/internal/graphics/cam/Cam;
    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->getCoreSpec()Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;->getA1()Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->shades(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent1:Ljava/util/List;

    .line 380
    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->getCoreSpec()Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;->getA2()Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->shades(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent2:Ljava/util/List;

    .line 381
    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->getCoreSpec()Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;->getA3()Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->shades(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent3:Ljava/util/List;

    .line 382
    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->getCoreSpec()Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;->getN1()Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->shades(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral1:Ljava/util/List;

    .line 383
    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/Style;->getCoreSpec()Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/monet/CoreSpec;->getN2()Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->shades(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral2:Ljava/util/List;

    .line 384
    return-void
.end method

.method private static blacklist score(Lcom/android/internal/graphics/cam/Cam;D)D
    .locals 8
    .param p0, "cam"    # Lcom/android/internal/graphics/cam/Cam;
    .param p1, "proportion"    # D

    .line 643
    const-wide v0, 0x4051800000000000L    # 70.0

    mul-double/2addr v0, p1

    .line 644
    .local v0, "proportionScore":D
    const-wide/16 v2, 0x0

    .line 645
    .local v2, "chromaScore":D
    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v4

    const/high16 v5, 0x42400000    # 48.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 646
    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v4

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    .end local v2    # "chromaScore":D
    .local v4, "chromaScore":D
    goto :goto_0

    .line 648
    .end local v4    # "chromaScore":D
    .restart local v2    # "chromaScore":D
    :cond_0
    const-wide v6, 0x3fd3333333333333L    # 0.3

    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v4

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    .line 651
    .end local v2    # "chromaScore":D
    .restart local v4    # "chromaScore":D
    :goto_0
    add-double v2, v4, v0

    return-wide v2
.end method

.method private static blacklist sortByValue(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Ljava/lang/Comparable<",
            "-TV;>;>(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 675
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 676
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 678
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 679
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 680
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 683
    :cond_0
    return-object v1
.end method

.method private static final blacklist stringForColor(I)Ljava/lang/String;
    .locals 9
    .param p0, "color"    # I

    .line 623
    invoke-static {p0}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    .line 624
    .local v0, "hct":Lcom/android/internal/graphics/cam/Cam;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%04d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "h":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x43

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "c":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x54

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromInt(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "t":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/Object;

    const v6, 0xffffff

    and-int/2addr v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "%-06s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "hex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static blacklist wrapDegrees(I)I
    .locals 2
    .param p0, "degrees"    # I

    .line 599
    const/16 v0, 0x168

    if-gez p0, :cond_0

    .line 600
    rem-int/lit16 v1, p0, 0x168

    add-int/2addr v1, v0

    return v1

    .line 601
    :cond_0
    if-lt p0, v0, :cond_1

    .line 602
    rem-int/lit16 v0, p0, 0x168

    return v0

    .line 604
    :cond_1
    return p0
.end method

.method public static blacklist wrapDegreesDouble(D)D
    .locals 5
    .param p0, "degrees"    # D

    .line 609
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const-wide v1, 0x4076800000000000L    # 360.0

    if-gez v0, :cond_0

    .line 610
    rem-double v3, p0, v1

    add-double/2addr v3, v1

    return-wide v3

    .line 611
    :cond_0
    cmpl-double v0, p0, v1

    if-ltz v0, :cond_1

    .line 612
    rem-double v0, p0, v1

    return-wide v0

    .line 614
    :cond_1
    return-wide p0
.end method


# virtual methods
.method public blacklist accentColor()I
    .locals 2

    .line 426
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->darkTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent1:Ljava/util/List;

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent1:Ljava/util/List;

    const/4 v1, 0x6

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method public blacklist allAccentColors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v0, "allColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent3:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    return-object v0
.end method

.method public blacklist allNeutralColors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "allColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    iget-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 418
    return-object v0
.end method

.method public blacklist backgroundColor()I
    .locals 2

    .line 422
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->darkTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral1:Ljava/util/List;

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral1:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method public blacklist getAccent1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent1:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAccent2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent2:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAccent3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent3:Ljava/util/List;

    return-object v0
.end method

.method public final blacklist getDarkTheme()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->darkTheme:Z

    return v0
.end method

.method public blacklist getNeutral1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral1:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getNeutral2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral2:Ljava/util/List;

    return-object v0
.end method

.method public final blacklist getSeed()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->seed:I

    return v0
.end method

.method public final blacklist getStyle()Lcom/samsung/android/wallpaper/colortheme/monet/Style;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorScheme {\n  seed color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->seed:I

    .line 432
    invoke-static {v1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->stringForColor(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  style: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->style:Lcom/samsung/android/wallpaper/colortheme/monet/Style;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  palettes: \n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent1:Ljava/util/List;

    .line 435
    const-string v3, "PRIMARY"

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent2:Ljava/util/List;

    .line 436
    const-string v4, "SECONDARY"

    invoke-static {v4, v3}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->accent3:Ljava/util/List;

    .line 437
    const-string v4, "TERTIARY"

    invoke-static {v4, v3}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral1:Ljava/util/List;

    .line 438
    const-string v4, "NEUTRAL"

    invoke-static {v4, v3}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->neutral2:Ljava/util/List;

    .line 439
    const-string v3, "NEUTRAL VARIANT"

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->humanReadable(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    return-object v0
.end method
