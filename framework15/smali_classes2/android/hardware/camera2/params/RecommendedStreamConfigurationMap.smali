.class public final Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;
.super Ljava/lang/Object;
.source "RecommendedStreamConfigurationMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap$RecommendedUsecase;
    }
.end annotation


# static fields
.field public static final blacklist MAX_USECASE_COUNT:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "RecommendedStreamConfigurationMap"

.field public static final whitelist USECASE_10BIT_OUTPUT:I = 0x8

.field public static final whitelist USECASE_LOW_LATENCY_SNAPSHOT:I = 0x6

.field public static final whitelist USECASE_PREVIEW:I = 0x0

.field public static final whitelist USECASE_RAW:I = 0x5

.field public static final whitelist USECASE_RECORD:I = 0x1

.field public static final whitelist USECASE_SNAPSHOT:I = 0x3

.field public static final blacklist USECASE_VENDOR_START:I = 0x18

.field public static final whitelist USECASE_VIDEO_SNAPSHOT:I = 0x2

.field public static final whitelist USECASE_ZSL:I = 0x4


# instance fields
.field private blacklist mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private blacklist mSupportsPrivate:Z

.field private blacklist mUsecase:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput p2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mUsecase:I

    iput-boolean p3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mSupportsPrivate:Z

    return-void
.end method

.method private blacklist getUnmodifiableIntegerSet([I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getUnmodifiableRangeSet([Landroid/util/Range;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist getHighResolutionOutputSizes(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoFpsRanges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableRangeSet([Landroid/util/Range;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableRangeSet([Landroid/util/Range;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoSizes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoSizesFor(Landroid/util/Range;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputFormats()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableIntegerSet([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputSizes(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputFormats()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableIntegerSet([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mSupportsPrivate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getOutputSizes(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputSizes(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mSupportsPrivate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableSizeSet([Landroid/util/Size;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOutputStallDuration(ILandroid/util/Size;)J
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mSupportsPrivate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getRecommendedUseCase()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mUsecase:I

    return v0
.end method

.method public whitelist getValidOutputFormatsForInput(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->getUnmodifiableIntegerSet([I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isOutputSupportedFor(I)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isOutputSupportedFor(Landroid/view/Surface;)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;->mRecommendedMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Landroid/view/Surface;)Z

    move-result v0

    return v0
.end method
