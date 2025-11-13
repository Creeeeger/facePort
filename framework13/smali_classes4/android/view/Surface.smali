.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$HwuiContext;,
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$OutOfResourcesException;,
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

.field public static final whitelist FRAME_RATE_COMPATIBILITY_DEFAULT:I = 0x0

.field public static final blacklist FRAME_RATE_COMPATIBILITY_EXACT:I = 0x64

.field public static final whitelist FRAME_RATE_COMPATIBILITY_FIXED_SOURCE:I = 0x1

.field public static final whitelist ROTATION_0:I = 0x0

.field public static final whitelist ROTATION_180:I = 0x2

.field public static final whitelist ROTATION_270:I = 0x3

.field public static final whitelist ROTATION_90:I = 0x1

.field public static final greylist-max-o SCALING_MODE_FREEZE:I = 0x0

.field public static final greylist-max-o SCALING_MODE_NO_SCALE_CROP:I = 0x3

.field public static final greylist-max-o SCALING_MODE_SCALE_CROP:I = 0x2

.field public static final greylist-max-o SCALING_MODE_SCALE_TO_WINDOW:I = 0x1

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

    .line 104
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 257
    return-void
.end method

.method private constructor greylist-max-r <init>(J)V
    .locals 3
    .param p1, "nativeObject"    # J

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v1, Landroid/view/Surface$CompatibleCanvas;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas-IA;)V

    iput-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 301
    monitor-enter v0

    .line 302
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor whitelist <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v1, Landroid/view/Surface$CompatibleCanvas;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas-IA;)V

    iput-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 288
    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isSingleBuffered()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    .line 292
    monitor-enter v0

    .line 293
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 294
    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 295
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "from"    # Landroid/view/SurfaceControl;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas-IA;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 268
    invoke-virtual {p0, p1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 269
    return-void
.end method

.method private greylist-max-o checkNotReleasedLocked()V
    .locals 4

    .line 773
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 776
    return-void

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public static greylist-max-o rotationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "rotation"    # I

    .line 1024
    packed-switch p0, :pswitch_data_0

    .line 1038
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1035
    :pswitch_0
    const-string v0, "ROTATION_270"

    return-object v0

    .line 1032
    :pswitch_1
    const-string v0, "ROTATION_180"

    return-object v0

    .line 1029
    :pswitch_2
    const-string v0, "ROTATION_90"

    return-object v0

    .line 1026
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
    .locals 5
    .param p1, "ptr"    # J

    .line 758
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_2

    .line 759
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 760
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "Surface.release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 762
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 764
    :cond_1
    :goto_0
    iput-wide p1, p0, Landroid/view/Surface;->mNativeObject:J

    .line 765
    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/Surface;->mGenerationId:I

    .line 766
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->updateSurface()V

    .line 770
    :cond_2
    return-void
.end method

.method private greylist-max-o unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 484
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_2

    .line 488
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    .line 490
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") != mLockedObject (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    .line 491
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    const-string v1, "Surface"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 497
    :try_start_0
    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1}, Landroid/view/Surface;->nativeRelease(J)V

    .line 500
    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    .line 501
    nop

    .line 502
    return-void

    .line 499
    :catchall_0
    move-exception v0

    iget-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeRelease(J)V

    .line 500
    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    .line 501
    throw v0

    .line 494
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateNativeObject(J)V
    .locals 5
    .param p1, "newNativeObject"    # J

    .line 592
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 594
    monitor-exit v0

    return-void

    .line 596
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 597
    invoke-static {v1, v2}, Landroid/view/Surface;->nativeRelease(J)V

    .line 599
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 600
    monitor-exit v0

    .line 601
    return-void

    .line 600
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

    .line 783
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 785
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeAllocateBuffers(J)V

    .line 786
    monitor-exit v0

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V
    .locals 5
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 820
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 822
    if-nez p2, :cond_0

    .line 823
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    move-object p2, v1

    .line 825
    :cond_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    .line 826
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v3

    .line 825
    invoke-static {v1, v2, p1, v3}, Landroid/view/Surface;->nativeAttachAndQueueBufferWithColorSpace(JLandroid/hardware/HardwareBuffer;I)I

    move-result v1

    .line 827
    .local v1, "err":I
    if-nez v1, :cond_1

    .line 832
    .end local v1    # "err":I
    monitor-exit v0

    .line 833
    return-void

    .line 828
    .restart local v1    # "err":I
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

    .end local p0    # "this":Landroid/view/Surface;
    .end local p1    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local p2    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v2

    .line 832
    .end local v1    # "err":I
    .restart local p0    # "this":Landroid/view/Surface;
    .restart local p1    # "buffer":Landroid/hardware/HardwareBuffer;
    .restart local p2    # "colorSpace":Landroid/graphics/ColorSpace;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist copyFrom(Landroid/graphics/BLASTBufferQueue;)V
    .locals 4
    .param p1, "queue"    # Landroid/graphics/BLASTBufferQueue;

    .line 637
    if-eqz p1, :cond_1

    .line 641
    iget-wide v0, p1, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 642
    .local v0, "blastBufferQueuePtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 645
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, v0, v1}, Landroid/view/Surface;->nativeGetFromBlastBufferQueue(JJ)J

    move-result-wide v2

    .line 646
    .local v2, "newNativeObject":J
    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->updateNativeObject(J)V

    .line 647
    return-void

    .line 643
    .end local v2    # "newNativeObject":J
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null BLASTBufferQueue native object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    .end local v0    # "blastBufferQueuePtr":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "queue must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist copyFrom(Landroid/view/SurfaceControl;)V
    .locals 4
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .line 616
    if-eqz p1, :cond_1

    .line 620
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 621
    .local v0, "surfaceControlPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 625
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, v0, v1}, Landroid/view/Surface;->nativeGetFromSurfaceControl(JJ)J

    move-result-wide v2

    .line 626
    .local v2, "newNativeObject":J
    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->updateNativeObject(J)V

    .line 627
    return-void

    .line 622
    .end local v2    # "newNativeObject":J
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null SurfaceControl native object. Are you using a released SurfaceControl?"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 617
    .end local v0    # "surfaceControlPtr":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o createFrom(Landroid/view/SurfaceControl;)V
    .locals 9
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .line 662
    if-eqz p1, :cond_2

    .line 666
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 667
    .local v0, "surfaceControlPtr":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 671
    invoke-static {v0, v1}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(J)J

    move-result-wide v4

    .line 673
    .local v4, "newNativeObject":J
    iget-object v6, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 674
    :try_start_0
    iget-wide v7, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_0

    .line 675
    invoke-static {v7, v8}, Landroid/view/Surface;->nativeRelease(J)V

    .line 677
    :cond_0
    invoke-direct {p0, v4, v5}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 678
    monitor-exit v6

    .line 679
    return-void

    .line 678
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 668
    .end local v4    # "newNativeObject":J
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "null SurfaceControl native object. Are you using a released SurfaceControl?"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    .end local v0    # "surfaceControlPtr":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public greylist destroy()V
    .locals 5

    .line 344
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 346
    invoke-static {v1, v2}, Landroid/view/Surface;->nativeDestroy(J)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 349
    monitor-exit v0

    .line 350
    return-void

    .line 349
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

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 315
    nop

    .line 316
    return-void

    .line 314
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 315
    throw v0
.end method

.method greylist-max-o forceScopedDisconnect()V
    .locals 4

    .line 804
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 806
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeForceScopedDisconnect(J)I

    move-result v1

    .line 807
    .local v1, "err":I
    if-nez v1, :cond_0

    .line 810
    .end local v1    # "err":I
    monitor-exit v0

    .line 811
    return-void

    .line 808
    .restart local v1    # "err":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to disconnect Surface instance (bad object?)"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Surface;
    throw v2

    .line 810
    .end local v1    # "err":I
    .restart local p0    # "this":Landroid/view/Surface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDefaultSize()Landroid/graphics/Point;
    .locals 5

    .line 425
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 427
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

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getGenerationId()I
    .locals 2

    .line 385
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_0
    iget v1, p0, Landroid/view/Surface;->mGenerationId:I

    monitor-exit v0

    return v1

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getNextFrameNumber()J
    .locals 3

    .line 398
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 400
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeGetNextFrameNumber(J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o hwuiDestroy()V
    .locals 1

    .line 358
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 362
    :cond_0
    return-void
.end method

.method public greylist-max-o isAutoRefreshEnabled()Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    return v0
.end method

.method public greylist-max-o isConsumerRunningBehind()Z
    .locals 3

    .line 411
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 413
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o isSharedBufferModeEnabled()Z
    .locals 1

    .line 898
    iget-boolean v0, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    return v0
.end method

.method public greylist-max-o isSingleBuffered()Z
    .locals 1

    .line 840
    iget-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    return v0
.end method

.method public whitelist isValid()Z
    .locals 5

    .line 371
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 373
    :cond_0
    invoke-static {v1, v2}, Landroid/view/Surface;->nativeIsValid(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 5
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 453
    iget-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 460
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    iget-object v3, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v1, v2, v3, p1}, Landroid/view/Surface;->nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/Surface;->mLockedObject:J

    .line 461
    iget-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    monitor-exit v0

    return-object v1

    .line 458
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was already locked"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Surface;
    .end local p1    # "inOutDirty":Landroid/graphics/Rect;
    throw v1

    .line 462
    .restart local p0    # "this":Landroid/view/Surface;
    .restart local p1    # "inOutDirty":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 5

    .line 523
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 525
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v1, :cond_0

    .line 526
    new-instance v1, Landroid/view/Surface$HwuiContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;Z)V

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 528
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    .line 529
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    .line 530
    invoke-static {v3, v4}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    .line 528
    invoke-virtual {v1, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o lockHardwareWideColorGamutCanvas()Landroid/graphics/Canvas;
    .locals 5

    .line 556
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 558
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->isWideColorGamut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 560
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 562
    :cond_0
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v1, :cond_1

    .line 563
    new-instance v1, Landroid/view/Surface$HwuiContext;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;Z)V

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 565
    :cond_1
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    .line 566
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v3, p0, Landroid/view/Surface;->mNativeObject:J

    .line 567
    invoke-static {v3, v4}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    .line 565
    invoke-virtual {v1, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 715
    if-eqz p1, :cond_1

    .line 719
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    .line 728
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 729
    monitor-exit v0

    .line 730
    return-void

    .line 729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 716
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .locals 6

    .line 324
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 327
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 329
    :cond_0
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 330
    invoke-static {v1, v2}, Landroid/view/Surface;->nativeRelease(J)V

    .line 331
    invoke-direct {p0, v3, v4}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 333
    :cond_1
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setAutoRefreshEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 923
    iget-boolean v0, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    if-eq v0, p1, :cond_1

    .line 924
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeSetAutoRefreshEnabled(JZ)I

    move-result v0

    .line 925
    .local v0, "error":I
    if-nez v0, :cond_0

    .line 928
    iput-boolean p1, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    goto :goto_0

    .line 926
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to set auto refresh on Surface (bad object?)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    .end local v0    # "error":I
    :cond_1
    :goto_0
    return-void
.end method

.method greylist-max-o setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2
    .param p1, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;

    .line 584
    if-eqz p1, :cond_0

    .line 585
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 586
    .local v0, "appScale":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 587
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 589
    .end local v0    # "appScale":F
    :cond_0
    return-void
.end method

.method public whitelist setFrameRate(FI)V
    .locals 1
    .param p1, "frameRate"    # F
    .param p2, "compatibility"    # I

    .line 999
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/Surface;->setFrameRate(FII)V

    .line 1000
    return-void
.end method

.method public whitelist setFrameRate(FII)V
    .locals 4
    .param p1, "frameRate"    # F
    .param p2, "compatibility"    # I
    .param p3, "changeFrameRateStrategy"    # I

    .line 979
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 981
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, p2, p3}, Landroid/view/Surface;->nativeSetFrameRate(JFII)I

    move-result v1

    .line 983
    .local v1, "error":I
    sget v2, Landroid/system/OsConstants;->EINVAL:I

    neg-int v2, v2

    if-eq v1, v2, :cond_1

    .line 985
    if-nez v1, :cond_0

    .line 988
    .end local v1    # "error":I
    monitor-exit v0

    .line 989
    return-void

    .line 986
    .restart local v1    # "error":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to set frame rate on Surface"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Surface;
    .end local p1    # "frameRate":F
    .end local p2    # "compatibility":I
    .end local p3    # "changeFrameRateStrategy":I
    throw v2

    .line 984
    .restart local p0    # "this":Landroid/view/Surface;
    .restart local p1    # "frameRate":F
    .restart local p2    # "compatibility":I
    .restart local p3    # "changeFrameRateStrategy":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid argument to Surface.setFrameRate()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Surface;
    .end local p1    # "frameRate":F
    .end local p2    # "compatibility":I
    .end local p3    # "changeFrameRateStrategy":I
    throw v2

    .line 988
    .end local v1    # "error":I
    .restart local p0    # "this":Landroid/view/Surface;
    .restart local p1    # "frameRate":F
    .restart local p2    # "compatibility":I
    .restart local p3    # "changeFrameRateStrategy":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setScalingMode(I)V
    .locals 5
    .param p1, "scalingMode"    # I

    .line 794
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 796
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeSetScalingMode(JI)I

    move-result v1

    .line 797
    .local v1, "err":I
    if-nez v1, :cond_0

    .line 800
    .end local v1    # "err":I
    monitor-exit v0

    .line 801
    return-void

    .line 798
    .restart local v1    # "err":I
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

    .end local p0    # "this":Landroid/view/Surface;
    .end local p1    # "scalingMode":I
    throw v2

    .line 800
    .end local v1    # "err":I
    .restart local p0    # "this":Landroid/view/Surface;
    .restart local p1    # "scalingMode":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setSharedBufferModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 879
    iget-boolean v0, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 880
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeSetSharedBufferModeEnabled(JZ)I

    move-result v0

    .line 881
    .local v0, "error":I
    if-nez v0, :cond_0

    .line 885
    iput-boolean p1, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    goto :goto_0

    .line 882
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to set shared buffer mode on Surface (bad object?)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    .end local v0    # "error":I
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 751
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface(name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")/@0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 753
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 752
    return-object v1

    .line 754
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist transferFrom(Landroid/view/Surface;)V
    .locals 8
    .param p1, "other"    # Landroid/view/Surface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 690
    if-eqz p1, :cond_2

    .line 693
    if-eq p1, p0, :cond_1

    .line 695
    iget-object v0, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_0
    iget-wide v1, p1, Landroid/view/Surface;->mNativeObject:J

    .line 697
    .local v1, "newPtr":J
    const-wide/16 v3, 0x0

    invoke-direct {p1, v3, v4}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 698
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 700
    iget-object v5, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 701
    :try_start_1
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_0

    .line 702
    invoke-static {v6, v7}, Landroid/view/Surface;->nativeRelease(J)V

    .line 704
    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    .line 705
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 698
    .end local v1    # "newPtr":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 707
    :cond_1
    :goto_0
    return-void

    .line 691
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unlockCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 472
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_0
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    .line 475
    iget-object v1, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v1, p1}, Landroid/view/Surface$HwuiContext;->unlockAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/Surface;->unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 480
    :goto_0
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 734
    if-eqz p1, :cond_2

    .line 737
    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 741
    iget-boolean v1, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    iget-wide v1, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1}, Landroid/view/Surface;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 743
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 747
    :cond_1
    return-void

    .line 743
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 735
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
