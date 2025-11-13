.class public Landroid/graphics/SurfaceTexture;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;,
        Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;,
        Landroid/graphics/SurfaceTexture$SetFrameRateArgs;,
        Landroid/graphics/SurfaceTexture$OutOfResourcesException;
    }
.end annotation


# instance fields
.field private final greylist-max-o mCreatorLooper:Landroid/os/Looper;

.field private greylist-max-r mFrameAvailableListener:J

.field private greylist-max-o mIsSingleBuffered:Z

.field private greylist-max-r mOnFrameAvailableHandler:Landroid/os/Handler;

.field private blacklist mOnSetFrameRateHandler:Landroid/os/Handler;

.field private greylist mProducer:J

.field private greylist mSurfaceTexture:J


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    return-void
.end method

.method public constructor whitelist <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    iput-boolean p2, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    iput-boolean p1, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, v0}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    return-void
.end method

.method private native greylist-max-o nativeAttachToGLContext(I)I
.end method

.method private native greylist nativeDetachFromGLContext()I
.end method

.method private native greylist-max-o nativeFinalize()V
.end method

.method private native blacklist nativeGetDataSpace()I
.end method

.method private native greylist-max-o nativeGetTimestamp()J
.end method

.method private native greylist-max-o nativeGetTransformMatrix([F)V
.end method

.method private native greylist-max-o nativeInit(ZIZLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native greylist-max-o nativeIsReleased()Z
.end method

.method private native greylist-max-o nativeRelease()V
.end method

.method private native greylist-max-o nativeReleaseTexImage()V
.end method

.method private native greylist-max-o nativeSetDefaultBufferSize(II)V
.end method

.method private native greylist-max-o nativeUpdateTexImage()V
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private static blacklist postOnSetFrameRateEventFromNative(Ljava/lang/ref/WeakReference;FII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/SurfaceTexture;",
            ">;FII)V"
        }
    .end annotation

    const-string/jumbo v0, "postOnSetFrameRateEventFromNative"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/graphics/SurfaceTexture;->mOnSetFrameRateHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    new-instance v5, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;

    invoke-direct {v5, p1, p2, p3}, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;-><init>(FII)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method


# virtual methods
.method public whitelist attachToGLContext(I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeAttachToGLContext(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during attachToGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist detachFromGLContext()V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeDetachFromGLContext()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during detachFromGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeFinalize()V
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

    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetDataSpace()I

    move-result v0

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTransformMatrix([F)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeGetTransformMatrix([F)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist isReleased()Z
    .locals 1

    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeIsReleased()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSingleBuffered()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/SurfaceTexture;->mIsSingleBuffered:Z

    return v0
.end method

.method public whitelist release()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeRelease()V

    return-void
.end method

.method public whitelist releaseTexImage()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeReleaseTexImage()V

    return-void
.end method

.method public whitelist setDefaultBufferSize(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->nativeSetDefaultBufferSize(II)V

    return-void
.end method

.method public whitelist setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 7

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    move-object v3, v0

    :goto_1
    nop

    new-instance v0, Landroid/graphics/SurfaceTexture$1;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/SurfaceTexture$1;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    :goto_2
    return-void
.end method

.method public blacklist setOnSetFrameRateListener(Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;Landroid/os/Handler;)V
    .locals 7

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    move-object v3, v0

    :goto_1
    nop

    new-instance v0, Landroid/graphics/SurfaceTexture$2;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/SurfaceTexture$2;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnSetFrameRateListener;)V

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnSetFrameRateHandler:Landroid/os/Handler;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnSetFrameRateHandler:Landroid/os/Handler;

    :goto_2
    return-void
.end method

.method public whitelist updateTexImage()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeUpdateTexImage()V

    return-void
.end method
