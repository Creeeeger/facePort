.class public final Landroid/hardware/camera2/params/ReprocessFormatsMap;
.super Ljava/lang/Object;
.source "ReprocessFormatsMap.java"


# instance fields
.field private final greylist-max-o mEntry:[I

.field private final greylist-max-o mInputCount:I


# direct methods
.method public constructor greylist-max-o <init>([I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "entry must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    aget v3, p1, v2

    invoke-static {v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_3

    aget v4, p1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    add-int v6, v2, v5

    aget v6, p1, v6

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    if-lez v4, :cond_2

    if-lt v1, v4, :cond_1

    add-int/2addr v2, v4

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    :goto_2
    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Input %x had no output format length listed"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iput-object p1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iput v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iget-object v2, v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    :cond_2
    return v0
.end method

.method public greylist-max-o getInputs()[I
    .locals 10

    iget v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v4, v4, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    if-lt v1, v5, :cond_2

    iget-object v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v5, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    if-lez v5, :cond_1

    if-lt v1, v5, :cond_0

    add-int/2addr v2, v5

    sub-int/2addr v1, v5

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_1
    :goto_1
    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Input %x had no output format length listed"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_3
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o getOutputs(I)[I
    .locals 8

    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v2, v2, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    if-lt v0, v3, :cond_4

    iget-object v3, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v3, v3, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    if-lez v3, :cond_1

    if-lt v0, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_1
    :goto_1
    if-ne v2, p1, :cond_3

    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    add-int v7, v1, v5

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v5

    return-object v5

    :cond_3
    add-int/2addr v1, v3

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Input %x had no output format length listed"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Input format %x was not one in #getInputs"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
