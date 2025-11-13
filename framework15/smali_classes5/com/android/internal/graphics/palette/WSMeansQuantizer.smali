.class public final Lcom/android/internal/graphics/palette/WSMeansQuantizer;
.super Ljava/lang/Object;
.source "WSMeansQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_ITERATIONS:I = 0xa

.field private static final blacklist MIN_MOVEMENT_DISTANCE:F = 3.0f

.field private static final blacklist TAG:Ljava/lang/String; = "QuantizerWsmeans"


# instance fields
.field private blacklist mClusterIndices:[I

.field private blacklist mClusterPopulations:[I

.field private blacklist mClusters:[[F

.field private blacklist mDistanceMatrix:[[F

.field private blacklist mIndexMatrix:[[I

.field private blacklist mInputPixelToCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPalette:Lcom/android/internal/graphics/palette/Palette;

.field private blacklist mPixels:[I

.field private final blacklist mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

.field private blacklist mPoints:[[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>([ILcom/android/internal/graphics/palette/PointProvider;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/android/internal/graphics/palette/PointProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    new-array v1, v0, [[F

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    iput-object p2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    array-length v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    invoke-interface {p2, v3}, Lcom/android/internal/graphics/palette/PointProvider;->fromInt(I)[F

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v6

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    return-void
.end method

.method private blacklist initializeClusters(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/32 v2, 0x42688

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    array-length v4, v4

    sub-int v4, p1, v4

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5, v2, v3}, Ljava/util/Random;-><init>(J)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_2

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v11, v11

    if-ge v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v10, v10

    invoke-virtual {v5, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    goto :goto_2

    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    aget-object v10, v10, v9

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    invoke-static {v9, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[F

    array-length v10, v9

    array-length v11, v8

    invoke-static {v8, v1, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    :cond_3
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    aput v3, v4, v2

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method static synthetic blacklist lambda$calculateClusterDistances$0(Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->getDistance()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->getDistance()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method


# virtual methods
.method blacklist calculateClusterDistances(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, p1, :cond_0

    new-array v0, v2, [I

    aput p1, v0, v3

    aput p1, v0, v1

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int/lit8 v4, v0, 0x1

    :goto_1
    if-ge v4, p1, :cond_1

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v7, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/android/internal/graphics/palette/PointProvider;->distance([F[F)F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    aget-object v6, v6, v4

    aput v5, v6, v0

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    aget-object v6, v6, v0

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    array-length v0, v0

    if-eq v0, p1, :cond_3

    new-array v0, v2, [I

    aput p1, v0, v3

    aput p1, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_4

    new-instance v3, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    aget-object v4, v4, v0

    aget v4, v4, v2

    invoke-direct {v3, v2, v4}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;-><init>(IF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    new-instance v2, Lcom/android/internal/graphics/palette/WSMeansQuantizer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_5

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    aget-object v3, v3, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;

    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->getIndex()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public blacklist getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist quantize([II)V
    .locals 7

    nop

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/graphics/palette/QuantizerMap;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/graphics/palette/QuantizerMap;->quantize([II)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;->getColorToCount()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

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

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    aput v2, v3, v0

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    invoke-interface {v4, v2}, Lcom/android/internal/graphics/palette/PointProvider;->fromInt(I)[F

    move-result-object v4

    aput-object v4, v3, v0

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    array-length v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->initializeClusters(I)V

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->calculateClusterDistances(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->reassignPoints(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->recalculateClusterCenters(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_5

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    invoke-interface {v4, v3}, Lcom/android/internal/graphics/palette/PointProvider;->toInt([F)I

    move-result v4

    new-instance v5, Lcom/android/internal/graphics/palette/Palette$Swatch;

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    aget v6, v6, v2

    invoke-direct {v5, v4, v6}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lcom/android/internal/graphics/palette/Palette;->from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    return-void
.end method

.method blacklist reassignPoints(I)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    invoke-interface {v5, v2, v4}, Lcom/android/internal/graphics/palette/PointProvider;->distance([F[F)F

    move-result v5

    move v6, v5

    const/4 v7, -0x1

    const/4 v8, 0x1

    :goto_1
    if-ge v8, p1, :cond_2

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    aget-object v9, v9, v3

    aget v9, v9, v8

    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    aget-object v10, v10, v3

    aget v10, v10, v9

    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v11, v5

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_0

    goto :goto_2

    :cond_0
    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v11, v11, v9

    invoke-interface {v10, v2, v11}, Lcom/android/internal/graphics/palette/PointProvider;->distance([F[F)F

    move-result v10

    cmpg-float v11, v10, v6

    if-gez v11, :cond_1

    move v6, v10

    move v7, v9

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_3

    const/4 v0, 0x1

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    aput v7, v9, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method blacklist recalculateClusterCenters(I)V
    .locals 13

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    new-array v0, p1, [F

    new-array v1, p1, [F

    new-array v2, p1, [F

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v4, v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    aget v4, v4, v3

    iget-object v8, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    aget v9, v9, v3

    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    aget v12, v11, v4

    add-int/2addr v12, v10

    aput v12, v11, v4

    aget v11, v0, v4

    aget v6, v8, v6

    int-to-float v12, v10

    mul-float/2addr v6, v12

    add-float/2addr v11, v6

    aput v11, v0, v4

    aget v6, v1, v4

    aget v7, v8, v7

    int-to-float v11, v10

    mul-float/2addr v7, v11

    add-float/2addr v6, v7

    aput v6, v1, v4

    aget v6, v2, v4

    aget v5, v8, v5

    int-to-float v7, v10

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    aput v6, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    aget v4, v4, v3

    aget v8, v0, v3

    aget v9, v1, v3

    aget v10, v2, v3

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v11, v11, v3

    int-to-float v12, v4

    div-float v12, v8, v12

    aput v12, v11, v6

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v11, v11, v3

    int-to-float v12, v4

    div-float v12, v9, v12

    aput v12, v11, v7

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v11, v11, v3

    int-to-float v12, v4

    div-float v12, v10, v12

    aput v12, v11, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
