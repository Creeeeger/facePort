.class public Lcom/samsung/android/wallpaper/colortheme/ColorPalette;
.super Ljava/lang/Object;
.source "ColorPalette.java"


# static fields
.field public static final blacklist BOTTOM_DEFAULT:I = 0x4

.field public static final blacklist BOTTOM_REVERSED:I = 0x8

.field public static final blacklist INDEX_ACCENT1:I = 0x0

.field public static final blacklist LUMINANCE_NUM:I = 0xd

.field public static final blacklist MID_DEFAULT:I = 0xa

.field public static final blacklist MID_REVERSED:I = 0x3

.field public static final blacklist NIO_TEXT_DEFAULT:I = 0xa

.field public static final blacklist NIO_TEXT_REVERSED:I = 0x3

.field public static final blacklist SATURATION_NUM:I = 0x5

.field public static final blacklist TOP_DEFAULT:I = 0x3

.field public static final blacklist TOP_REVERSED:I = 0xa

.field public static blacklist guideIntensity:[F


# instance fields
.field private final blacklist table:[[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->guideIntensity:[F

    return-void

    :array_0
    .array-data 4
        0x42c80000    # 100.0f
        0x42c60000    # 99.0f
        0x42be0000    # 95.0f
        0x42b40000    # 90.0f
        0x42a00000    # 80.0f
        0x428c0000    # 70.0f
        0x42700000    # 60.0f
        0x42480000    # 50.0f
        0x42200000    # 40.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/16 v4, 0xd

    aput v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput v5, v2, v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getAccent1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getAccent2()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getAccent3()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getNeutral1()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->getNeutral2()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v9, v9, v4

    iget-object v10, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v10, v10, v3

    iget-object v11, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v11, v11, v1

    iget-object v12, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    const/4 v13, 0x3

    aget-object v12, v12, v13

    iget-object v14, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    const/4 v15, 0x4

    aget-object v14, v14, v15

    const/16 v16, -0x1

    aput v16, v14, v4

    aput v16, v12, v4

    aput v16, v11, v4

    aput v16, v10, v4

    aput v16, v9, v4

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0xc

    if-ge v9, v10, :cond_0

    iget-object v10, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v10, v10, v4

    add-int/lit8 v11, v9, 0x1

    aget v12, v2, v9

    aput v12, v10, v11

    iget-object v10, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v10, v10, v3

    add-int/lit8 v11, v9, 0x1

    aget v12, v5, v9

    aput v12, v10, v11

    iget-object v10, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v10, v10, v1

    add-int/lit8 v11, v9, 0x1

    aget v12, v6, v9

    aput v12, v10, v11

    iget-object v10, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v10, v10, v13

    add-int/lit8 v11, v9, 0x1

    aget v12, v7, v9

    aput v12, v10, v11

    iget-object v10, v0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v10, v10, v15

    add-int/lit8 v11, v9, 0x1

    aget v12, v8, v9

    aput v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>([F[F[F[F[F)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0xd

    aput v3, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v1, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget v1, p1, v3

    aget v4, p1, v2

    invoke-direct {p0, v1, v4, v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    aget v1, p2, v3

    aget v4, p2, v2

    invoke-direct {p0, v1, v4, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    aget v1, p3, v3

    aget v4, p3, v2

    invoke-direct {p0, v1, v4, v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    aget v0, p4, v3

    aget v1, p4, v2

    const/4 v4, 0x3

    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    aget v0, p5, v3

    aget v1, p5, v2

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->generateTable(FFI)V

    return-void
.end method

.method private blacklist generateTable(FFI)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->guideIntensity:[F

    aget v4, v4, v3

    invoke-static {p1, p2, v0, v4}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->searchL(FFFF)F

    move-result v0

    aput v0, v1, v2

    iget-object v4, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    aget-object v4, v4, p3

    invoke-static {v1}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist getnerateSingleTable(FF)[I
    .locals 7

    const/16 v0, 0xd

    new-array v1, v0, [I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p0, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    sget-object v6, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->guideIntensity:[F

    aget v6, v6, v5

    invoke-static {p0, p1, v2, v6}, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->searchL(FFFF)F

    move-result v2

    aput v2, v3, v4

    invoke-static {v3}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static blacklist searchL(FFFF)F
    .locals 12

    const v0, 0x3a83126f    # 0.001f

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v3, v2, [D

    :goto_0
    int-to-float v4, v1

    mul-float/2addr v4, v0

    sub-float v4, p2, v4

    float-to-double v4, v4

    const-wide v6, -0x40af9db22d0e5604L    # -0.001

    cmpl-double v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_1

    int-to-float v4, v1

    mul-float/2addr v4, v0

    sub-float v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p0, v5, v6

    const/4 v7, 0x1

    aput p1, v5, v7

    const/4 v7, 0x2

    aput v4, v5, v7

    invoke-static {v5}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v7

    invoke-static {v7, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    aget-wide v8, v3, v6

    float-to-double v10, p3

    cmpg-double v6, v8, v10

    if-gtz v6, :cond_0

    return v4

    :cond_0
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method


# virtual methods
.method public blacklist getTable()[[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/ColorPalette;->table:[[I

    return-object v0
.end method
