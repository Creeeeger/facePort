.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$HwuiContext;,
        Landroid/view/Surface$OutOfResourcesException;,
        Landroid/view/Surface$FrameRateCategory;,
        Landroid/view/Surface$ChangeFrameRateStrategy;,
        Landroid/view/Surface$FrameRateCompatibility;,
        Landroid/view/Surface$Rotation;,
        Landroid/view/Surface$ScalingMode;
    }
.end annotation


# static fields
.field public static final whitelist CHANGE_FRAME_RATE_ALWAYS:I = 0x1

.field public static final whitelist CHANGE_FRAME_RATE_ONLY_IF_SEAMLESS:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FRAME_RATE_CATEGORY_DEFAULT:I = 0x0

.field public static final blacklist FRAME_RATE_CATEGORY_HIGH:I = 0x5

.field public static final blacklist FRAME_RATE_CATEGORY_HIGH_HINT:I = 0x4

.field public static final blacklist FRAME_RATE_CATEGORY_LOW:I = 0x2

.field public static final blacklist FRAME_RATE_CATEGORY_NORMAL:I = 0x3

.field public static final blacklist FRAME_RATE_CATEGORY_NO_PREFERENCE:I = 0x1

.field public static final whitelist FRAME_RATE_COMPATIBILITY_DEFAULT:I = 0x0

.field public static final blacklist FRAME_RATE_COMPATIBILITY_EXACT:I = 0x64

.field public static final whitelist FRAME_RATE_COMPATIBILITY_FIXED_SOURCE:I = 0x1

.field public static final blacklist FRAME_RATE_COMPATIBILITY_GTE:I = 0x67

.field public static final blacklist FRAME_RATE_COMPATIBILITY_MIN:I = 0x66

.field public static final blacklist FRAME_RATE_COMPATIBILITY_NO_VOTE:I = 0x65

.field public static final whitelist ROTATION_0:I = 0x0

.field public static final whitelist ROTATION_180:I = 0x2

.field public static final whitelist ROTATION_270:I = 0x3

.field public static final whitelist ROTATION_90:I = 0x1

.field public static final greylist-max-o SCALING_MODE_FREEZE:I = 0x0

.field public static final greylist-max-o SCALING_MODE_NO_SCALE_CROP:I = 0x3

.field public static final greylist-max-o SCALING_MODE_SCALE_CROP:I = 0x2

.field public static final greylist-max-o SCALING_MODE_SCALE_TO_WINDOW:I = 0x1

.field private static final blacklist SURFACE_NATIVE_ALLOCATION_SIZE_BYTES:J = 0x1388L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mCompatibleMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mGenerationId:I

.field private greylist-max-o mHwuiContext:Landroid/view/Surface$HwuiContext;

.field private greylist-max-o mIsAutoRefreshEnabled:Z

.field private greylist-max-o mIsSharedBufferModeEnabled:Z

.field private greylist-max-o mIsSingleBuffered:Z

.field final greylist mLock:Ljava/lang/Object;

.field private greylist-max-r mLockedObject:J

.field private greylist mName:Ljava/lang/String;

.field greylist mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCompatibleMatrix(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {}, Landroid/view/Surface;->registerNativeMemoryUsage()V

    return-void
.end method

.method private constructor greylist-max-r <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/Surface;->registerNativeMemoryUsage()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public constructor whitelist <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isSingleBuffered()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/Surface;->registerNativeMemoryUsage()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/view/SurfaceControl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-static {}, Landroid/view/Surface;->registerNativeMemoryUsage()V

    return-void
.end method

.method private greylist-max-o checkNotReleasedLocked()V
    .locals 4

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist freeNativeMemoryUsage()V
    .locals 3

    invoke-static {}, Landroid/view/flags/Flags;->enableSurfaceNativeAllocRegistrationRo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    :cond_0
    return-void
.end method

.method private static native greylist-max-o nativeAllocateBuffers(J)V
.end method

.method private static native blacklist nativeAttachAndQueueBufferWithColorSpace(JLandroid/hardware/HardwareBuffer;I)I
.end method

.method private static native greylist-max-o nativeCreateFromSurfaceControl(J)J
.end method

.method private static native greylist-max-o nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native blacklist nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeForceScopedDisconnect(J)I
.end method

.method private static native blacklist nativeGetFromBlastBufferQueue(JJ)J
.end method

.method private static native blacklist nativeGetFromSurfaceControl(JJ)J
.end method

.method private static native greylist-max-o nativeGetHeight(J)I
.end method

.method private static native greylist-max-o nativeGetNextFrameNumber(J)J
.end method

.method private static native greylist-max-o nativeGetWidth(J)I
.end method

.method private static native greylist-max-o nativeIsConsumerRunningBehind(J)Z
.end method

.method private static native greylist-max-o nativeIsValid(J)Z
.end method

.method private static native greylist-max-o nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native greylist-max-r nativeRelease(J)V
.end method

.method private static native greylist-max-o nativeSetAutoRefreshEnabled(JZ)I
.end method

.method private static native blacklist nativeSetFrameRate(JFII)I
.end method

.method private static native greylist-max-o nativeSetScalingMode(JI)I
.end method

.method private static native greylist-max-o nativeSetSharedBufferModeEnabled(JZ)I
.end method

.method private static native greylist-max-o nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static blacklist registerNativeMemoryUsage()V
    .locals 3

    invoke-static {}, Landroid/view/flags/Flags;->enableSurfaceNativeAllocRegistrationRo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(J)V

    :cond_0
    return-void
.end method

.method public static greylist-max-o rotationToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ROTATION_270"

    return-object v0

    :pswitch_1
    const-string v0, "ROTATION_180"

    return-object v0

    :pswitch_2
    const-string v0, "ROTATION_90"

    return-object v0

    :pswitch_3
    const-string v0, "ROTATION_0"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o setNativeObjectLocked(J)V
    .locals 4

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "Surface.release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_1
    :goto_0
    iput-wide p1, p0, Landroid/view/Surface;->mNativeObject:J

    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/Surface;->mGenerationId:I

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->updateSurface()V

    :cond_2
    return-void
.end method

.method private greylist-max-o unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") != mLockedObject (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Surface"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :try_start_0
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1}, Landroid/view/Surface;->nativeRelease(J)V

    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeRelease(J)V

    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateNativeObject(J)V
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeRelease(J)V

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public greylist-max-o allocateBuffers()V
    .locals 3

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeAllocateBuffers(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    if-nez p2, :cond_0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    move-object p2, v1

    :cond_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v3

    invoke-static {v1, v2, p1, v3}, Landroid/view/Surface;->nativeAttachAndQueueBufferWithColorSpace(JLandroid/hardware/HardwareBuffer;I)I

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to attach and queue buffer to Surface (bad object?), native error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist clearFrameRate()V
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Landroid/view/Surface;->nativeSetFrameRate(JFII)I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clear the frame rate on Surface. Native error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist copyFrom(Landroid/graphics/BLASTBufferQueue;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p1, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, v0, v1}, Landroid/view/Surface;->nativeGetFromBlastBufferQueue(JJ)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->updateNativeObject(J)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null BLASTBufferQueue native object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "queue must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist copyFrom(Landroid/view/SurfaceControl;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, v0, v1}, Landroid/view/Surface;->nativeGetFromSurfaceControl(JJ)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->updateNativeObject(J)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null SurfaceControl native object. Are you using a released SurfaceControl?"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o createFrom(Landroid/view/SurfaceControl;)V
    .locals 9

    if-eqz p1, :cond_2

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(J)J

    move-result-wide v4

    iget-object v6, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-wide v7, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    :cond_0
    invoke-direct {p0, v4, v5}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null SurfaceControl native object. Are you using a released SurfaceControl?"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist destroy()V
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeDestroy(J)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

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
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-static {}, Landroid/view/Surface;->freeNativeMemoryUsage()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-static {}, Landroid/view/Surface;->freeNativeMemoryUsage()V

    throw v0
.end method

.method greylist-max-o forceScopedDisconnect()V
    .locals 4

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeForceScopedDisconnect(J)I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to disconnect Surface instance (bad object?)"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDefaultSize()Landroid/graphics/Point;
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    new-instance v1, Landroid/graphics/Point;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v3, v4}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getGenerationId()I
    .locals 2

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/Surface;->mGenerationId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getNextFrameNumber()J
    .locals 3

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeGetNextFrameNumber(J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o hwuiDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    :cond_0
    return-void
.end method

.method public greylist-max-o isAutoRefreshEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    return v0
.end method

.method public greylist-max-o isConsumerRunningBehind()Z
    .locals 3

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(J)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o isSharedBufferModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    return v0
.end method

.method public greylist-max-o isSingleBuffered()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    return v0
.end method

.method public whitelist isValid()Z
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeIsValid(J)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    iget-object v3, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v1, v2, v3, p1}, Landroid/view/Surface;->nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    iget-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was already locked"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/Surface$HwuiContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;Z)V

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v3, v4}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o lockHardwareWideColorGamutCanvas()Landroid/graphics/Canvas;
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->isWideColorGamut()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/Surface$HwuiContext;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;Z)V

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    :cond_1
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v3, v4}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    :cond_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeRelease(J)V

    invoke-direct {p0, v3, v4}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setAutoRefreshEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    if-eq v0, p1, :cond_1

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeSetAutoRefreshEnabled(JZ)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to set auto refresh on Surface (bad object?)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method greylist-max-o setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_0
    return-void
.end method

.method public whitelist setFrameRate(FI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/Surface;->setFrameRate(FII)V

    return-void
.end method

.method public whitelist setFrameRate(FII)V
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, p2, p3}, Landroid/view/Surface;->nativeSetFrameRate(JFII)I

    move-result v1

    sget v2, Landroid/system/OsConstants;->EINVAL:I

    neg-int v2, v2

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, "Surface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set frame rate on Surface. Native error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid argument to Surface.setFrameRate()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setScalingMode(I)V
    .locals 5

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeSetScalingMode(JI)I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid scaling mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setSharedBufferModeEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    if-eq v0, p1, :cond_1

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeSetSharedBufferModeEnabled(JZ)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to set shared buffer mode on Surface (bad object?)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface(name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNativeObject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")/@0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist transferFrom(Landroid/view/Surface;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    iget-object v0, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p1, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    invoke-direct {p1, v3, v4}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v5, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_0

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v3, v4}, Landroid/view/Surface;->nativeRelease(J)V

    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1, p1}, Landroid/view/Surface$HwuiContext;->unlockAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/Surface;->unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
