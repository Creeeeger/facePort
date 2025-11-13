.class public Landroid/hardware/camera2/MultiResolutionImageReader;
.super Ljava/lang/Object;
.source "MultiResolutionImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiResolutionImageReader"


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mMaxImages:I

.field private final blacklist mReaders:[Landroid/media/ImageReader;

.field private final blacklist mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;


# direct methods
.method public constructor whitelist <init>(Ljava/util/Collection;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mFormat:I

    iput p3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-lt v0, v1, :cond_2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v1, v0, [Landroid/media/ImageReader;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    new-array v1, v0, [Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v6

    invoke-static {v5, v6, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aput-object v3, v4, v1

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The streams info collection must contain at least 2 entries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/util/Collection;IIJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;IIJ)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v7, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v7, v0, Landroid/hardware/camera2/MultiResolutionImageReader;->mFormat:I

    move/from16 v8, p3

    iput v8, v0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget v1, v0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-lt v1, v2, :cond_2

    const/16 v1, 0x11

    if-eq v7, v1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    new-array v1, v9, [Landroid/media/ImageReader;

    iput-object v1, v0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    new-array v1, v9, [Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iput-object v1, v0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v1

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iget-object v13, v0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    invoke-virtual {v12}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v1

    invoke-virtual {v12}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v2

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-static/range {v1 .. v6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v1

    aput-object v1, v13, v11

    iget-object v1, v0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aput-object v12, v1, v11

    nop

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "NV21 format is not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Maximum outstanding image count must be at least 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The streams info collection must contain at least 2 entries"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flush()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->close()V

    return-void
.end method

.method public whitelist flush()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    return-void
.end method

.method public blacklist flushOther(Landroid/media/ImageReader;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_1

    nop

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public blacklist getReaders()[Landroid/media/ImageReader;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    return-object v0
.end method

.method public whitelist getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageReader doesn\'t belong to this multi-resolution imagereader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v3, v0, :cond_0

    move v0, v3

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public blacklist getSurface(Landroid/util/Size;Ljava/lang/String;)Landroid/view/Surface;
    .locals 3

    const-string v0, "configuredSize must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "physicalCameraId must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuredSize and physicalCameraId don\'t match with this MultiResolutionImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
