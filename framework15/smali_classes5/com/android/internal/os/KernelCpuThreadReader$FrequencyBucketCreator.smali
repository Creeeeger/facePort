.class public Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencyBucketCreator"
.end annotation


# instance fields
.field private final blacklist mBucketStartIndices:[I

.field private final blacklist mNumBuckets:I

.field private final blacklist mNumFrequencies:I


# direct methods
.method public constructor blacklist <init>([JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    invoke-static {p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getClusterStartIndices([J)[I

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getBucketStartIndices([III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    array-length v1, v1

    iput v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    return-void
.end method

.method private static blacklist getBucketStartIndices([III)[I
    .locals 10

    array-length v0, p0

    if-le v0, p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-static {v2, p0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getLowerBound(I[I)I

    move-result v3

    nop

    invoke-static {v2, p0, p2}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getUpperBound(I[II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-eq v2, v5, :cond_1

    div-int v5, p1, v0

    goto :goto_1

    :cond_1
    div-int v5, p1, v0

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v5

    sub-int v6, p1, v6

    move v5, v6

    :goto_1
    sub-int v6, v4, v3

    div-int v7, v6, v5

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    mul-int v9, v8, v7

    add-int/2addr v9, v3

    if-lt v9, v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v9}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getClusterStartIndices([J)[I
    .locals 6

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-wide v4, p0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getLowerBound(I[I)I
    .locals 1

    aget v0, p1, p0

    return v0
.end method

.method private static blacklist getUpperBound(I[II)I
    .locals 1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x1

    aget v0, p1, v0

    return v0

    :cond_0
    return p2
.end method


# virtual methods
.method public blacklist bucketFrequencies([J)[I
    .locals 4

    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    aget v2, v2, v1

    aget-wide v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public blacklist bucketValues([J)[I
    .locals 9

    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    invoke-static {v1, v2}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getLowerBound(I[I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    array-length v4, p1

    invoke-static {v1, v3, v4}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getUpperBound(I[II)I

    move-result v3

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_1

    aget v5, v0, v1

    int-to-long v5, v5

    aget-wide v7, p1, v4

    add-long/2addr v5, v7

    long-to-int v5, v5

    aput v5, v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
