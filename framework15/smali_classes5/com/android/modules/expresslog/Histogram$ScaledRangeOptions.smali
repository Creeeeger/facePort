.class public final Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;
.super Ljava/lang/Object;
.source "Histogram.java"

# interfaces
.implements Lcom/android/modules/expresslog/Histogram$BinOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/expresslog/Histogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaledRangeOptions"
.end annotation


# instance fields
.field final blacklist mBins:[J


# direct methods
.method public constructor blacklist <init>(IIFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0, p2, p3, p4}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->initBins(IIFF)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scaled factor invalid (should be 1.f at minimum)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "First bin width invalid (should be 1.f at minimum)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bin count should be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist initBins(IIFF)[J
    .locals 8

    new-array v0, p0, [J

    const/4 v1, 0x0

    int-to-long v2, p1

    aput-wide v2, v0, v1

    float-to-double v1, p2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p0, :cond_1

    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v0, v4

    long-to-double v4, v4

    add-double/2addr v4, v1

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_0

    double-to-long v6, v4

    aput-wide v6, v0, v3

    float-to-double v6, p3

    mul-double/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Attempted to create a bucket larger than maxint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    return-object v0
.end method

.method private static blacklist lower_bound([JJ)I
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    return v1

    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist getBinForSample(F)I
    .locals 4

    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-float v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    iget-object v1, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    long-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    array-length v0, v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    float-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->lower_bound([JJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist getBinsCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
