.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$HandlerExecutor;,
        Landroid/media/ImageReader$OnImageAvailableListener;,
        Landroid/media/ImageReader$ImagePlane;,
        Landroid/media/ImageReader$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final greylist-max-o ACQUIRE_NO_BUFS:I = 0x1

.field private static final greylist-max-o ACQUIRE_SUCCESS:I = 0x0

.field private static final blacklist DETACH_THROWS_ISE_ONLY:J = 0xe1daaa7L


# instance fields
.field private greylist-max-o mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCloseLock:Ljava/lang/Object;

.field private final blacklist mDataSpace:I

.field private final blacklist mDetachThrowsIseOnly:Z

.field private greylist-max-o mEstimatedNativeAllocBytes:I

.field private final greylist-max-o mFormat:I

.field private final blacklist mHardwareBufferFormat:I

.field private final greylist-max-o mHeight:I

.field private greylist-max-o mIsReaderValid:Z

.field private greylist-max-o mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxImages:I

.field private greylist-max-o mNativeContext:J

.field private final greylist-max-o mNumPlanes:I

.field private final blacklist mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private final blacklist mUsage:J

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataSpace(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFormat(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/media/ImageReader;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseImage(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    return-void
.end method

.method private constructor blacklist <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V
    .locals 17

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    nop

    const-wide/32 v0, 0xe1daaa7

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    iput-boolean v0, v9, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v9, Landroid/media/ImageReader;->mIsReaderValid:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v9, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    move/from16 v10, p1

    iput v10, v9, Landroid/media/ImageReader;->mWidth:I

    move/from16 v11, p2

    iput v11, v9, Landroid/media/ImageReader;->mHeight:I

    move/from16 v12, p3

    iput v12, v9, Landroid/media/ImageReader;->mFormat:I

    move-wide/from16 v13, p5

    iput-wide v13, v9, Landroid/media/ImageReader;->mUsage:J

    move/from16 v15, p4

    iput v15, v9, Landroid/media/ImageReader;->mMaxImages:I

    move-object/from16 v8, p7

    iput-object v8, v9, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    iget v0, v9, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v9, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    iget v0, v9, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v0

    iput v0, v9, Landroid/media/ImageReader;->mDataSpace:I

    iget v0, v9, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v0}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    iput v0, v9, Landroid/media/ImageReader;->mNumPlanes:I

    iget v7, v9, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    iget v5, v9, Landroid/media/ImageReader;->mDataSpace:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v16, v5

    move-wide/from16 v5, p5

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->initializeImageReader(IIIIJII)V

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;Landroid/media/ImageReader-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-void
.end method

.method private constructor blacklist <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V
    .locals 16

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    nop

    const-wide/32 v0, 0xe1daaa7

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    iput-boolean v0, v9, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v9, Landroid/media/ImageReader;->mIsReaderValid:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v9, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    move/from16 v10, p1

    iput v10, v9, Landroid/media/ImageReader;->mWidth:I

    move/from16 v11, p2

    iput v11, v9, Landroid/media/ImageReader;->mHeight:I

    move-wide/from16 v12, p4

    iput-wide v12, v9, Landroid/media/ImageReader;->mUsage:J

    move/from16 v14, p3

    iput v14, v9, Landroid/media/ImageReader;->mMaxImages:I

    move-object/from16 v15, p6

    iput-object v15, v9, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    move/from16 v8, p7

    iput v8, v9, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    move/from16 v7, p8

    iput v7, v9, Landroid/media/ImageReader;->mDataSpace:I

    iget v0, v9, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    invoke-static {v0}, Landroid/media/ImageUtils;->getNumPlanesForHardwareBufferFormat(I)I

    move-result v0

    iput v0, v9, Landroid/media/ImageReader;->mNumPlanes:I

    invoke-static/range {p7 .. p8}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v0

    iput v0, v9, Landroid/media/ImageReader;->mFormat:I

    iget v3, v9, Landroid/media/ImageReader;->mFormat:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->initializeImageReader(IIIIJII)V

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;IILandroid/media/ImageReader-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageReader;-><init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V

    return-void
.end method

.method private greylist-max-o acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 5

    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iget-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    move-result v2

    move v1, v2

    :cond_0
    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/AssertionError;

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    :pswitch_1
    nop

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist initializeImagePlanes(ILandroid/graphics/GraphicBuffer;IIJIILandroid/graphics/Rect;)[Landroid/media/ImageReader$ImagePlane;
    .locals 9

    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Landroid/media/ImageReader;->nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;

    move-result-object v1

    return-object v1
.end method

.method private blacklist initializeImageReader(IIIIJII)V
    .locals 15

    move-object v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    const/4 v13, 0x1

    if-lt v10, v13, :cond_2

    if-lt v11, v13, :cond_2

    move/from16 v14, p4

    if-lt v14, v13, :cond_1

    const/16 v0, 0x11

    if-eq v12, v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIIJII)V

    iput-boolean v13, v9, Landroid/media/ImageReader;->mIsReaderValid:Z

    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v9, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    invoke-static {v10, v11, v12, v13}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v0

    iput v0, v9, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, v9, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 v14, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isImageOwnedbyMe(Landroid/media/Image;)Z
    .locals 3

    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v2

    if-ne v2, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeClose()V
.end method

.method private static synchronized native blacklist nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;
.end method

.method private synchronized native blacklist nativeDetachImage(Landroid/media/Image;Z)I
.end method

.method private synchronized native greylist-max-o nativeDiscardFreeBuffers()V
.end method

.method private synchronized native greylist-max-o nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native greylist-max-o nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native blacklist nativeInit(Ljava/lang/Object;IIIJII)V
.end method

.method private synchronized native greylist-max-o nativeReleaseImage(Landroid/media/Image;)V
.end method

.method private static synchronized native blacklist nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
.end method

.method public static whitelist newInstance(IIII)Landroid/media/ImageReader;
    .locals 9

    new-instance v8, Landroid/media/ImageReader;

    const/16 v0, 0x22

    if-ne p2, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    :goto_0
    move-wide v5, v0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v8
.end method

.method public static whitelist newInstance(IIIIJ)Landroid/media/ImageReader;
    .locals 9

    new-instance v8, Landroid/media/ImageReader;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v8
.end method

.method public static blacklist newInstance(IIIILandroid/hardware/camera2/MultiResolutionImageReader;)Landroid/media/ImageReader;
    .locals 9

    new-instance v8, Landroid/media/ImageReader;

    const/16 v0, 0x22

    if-ne p2, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    :goto_0
    move-wide v5, v0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v8
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "android.media.ImageReader#postEventFromNative"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v5, v1, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-boolean v2, v1, Landroid/media/ImageReader;->mIsReaderValid:Z

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    new-instance v5, Landroid/media/ImageReader$1;

    invoke-direct {v5, v4, v1}, Landroid/media/ImageReader$1;-><init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/media/ImageReader;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private greylist-max-o releaseImage(Landroid/media/Image;)V
    .locals 3

    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This image was not produced by an ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist unlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
    .locals 0

    invoke-static {p0}, Landroid/media/ImageReader;->nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V

    return-void
.end method


# virtual methods
.method public whitelist acquireLatestImage()Landroid/media/Image;
    .locals 4

    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    move-object v2, v0

    const/4 v0, 0x0

    nop

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_1
    iget-object v3, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {v3, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    :cond_2
    return-object v2

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_4
    iget-object v2, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    :cond_5
    throw v1
.end method

.method public whitelist acquireNextImage()Landroid/media/Image;
    .locals 5

    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    iget v3, p0, Landroid/media/ImageReader;->mMaxImages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "maxImages (%d) has already been acquired, call #close before acquiring more."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const/4 v2, 0x0

    return-object v2

    :pswitch_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 2

    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist test-api close()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o detachImage(Landroid/media/Image;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/ImageReader;->mDetachThrowsIseOnly:Z

    invoke-direct {p0, p1, v1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;Z)I

    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$fputmPlanes(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$msetDetached(Landroid/media/ImageReader$SurfaceImage;Z)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image was already detached from this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist discardFreeBuffers()V
    .locals 2

    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeDiscardFreeBuffers()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist getDataSpace()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return v0
.end method

.method public whitelist getHardwareBufferFormat()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public whitelist getImageFormat()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public whitelist getMaxImages()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getUsage()J
    .locals 2

    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public whitelist setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-virtual {v2}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_2

    :cond_1
    new-instance v2, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    new-instance v2, Landroid/media/ImageReader$HandlerExecutor;

    iget-object v3, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v2, p0, v3}, Landroid/media/ImageReader$HandlerExecutor;-><init>(Landroid/media/ImageReader;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    :cond_2
    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    :goto_1
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
