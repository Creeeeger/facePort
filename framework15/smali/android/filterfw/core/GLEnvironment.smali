.class public Landroid/filterfw/core/GLEnvironment;
.super Ljava/lang/Object;
.source "GLEnvironment.java"


# instance fields
.field private greylist-max-o glEnvId:I

.field private greylist-max-o mManageContext:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeAllocate()Z

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    return-void
.end method

.method public static greylist-max-o isAnyContextActive()Z
    .locals 1

    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->nativeIsAnyContextActive()Z

    move-result v0

    return v0
.end method

.method private native greylist-max-o nativeActivate()Z
.end method

.method private native greylist-max-o nativeActivateSurfaceId(I)Z
.end method

.method private native greylist-max-o nativeAddSurface(Landroid/view/Surface;)I
.end method

.method private native greylist-max-o nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
.end method

.method private native greylist-max-o nativeAddSurfaceWidthHeight(Landroid/view/Surface;II)I
.end method

.method private native greylist-max-o nativeAllocate()Z
.end method

.method private native greylist-max-o nativeDeactivate()Z
.end method

.method private native greylist-max-o nativeDeallocate()Z
.end method

.method private native greylist-max-o nativeDisconnectSurfaceMediaSource(Landroid/media/MediaRecorder;)Z
.end method

.method private native greylist-max-o nativeInitWithCurrentContext()Z
.end method

.method private native greylist-max-o nativeInitWithNewContext()Z
.end method

.method private native greylist-max-o nativeIsActive()Z
.end method

.method private static native greylist-max-o nativeIsAnyContextActive()Z
.end method

.method private native greylist-max-o nativeIsContextActive()Z
.end method

.method private native greylist-max-o nativeRemoveSurfaceId(I)Z
.end method

.method private native greylist-max-o nativeSetSurfaceTimestamp(J)Z
.end method

.method private native greylist-max-o nativeSwapBuffers()Z
.end method


# virtual methods
.method public greylist activate()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FilterFramework"

    const-string v1, "Activating GL context in UI thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not activate GLEnvironment!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public greylist activateSurfaceWithId(I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeActivateSurfaceId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not activate surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist deactivate()V
    .locals 2

    iget-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeDeactivate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not deactivate GLEnvironment!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->tearDown()V

    return-void
.end method

.method public greylist-max-o initWithCurrentContext()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeInitWithCurrentContext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not initialize GLEnvironment with current context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o initWithNewContext()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeInitWithNewContext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not initialize GLEnvironment with new context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist isActive()Z
    .locals 1

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeIsActive()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isContextActive()Z
    .locals 1

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeIsContextActive()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o registerSurface(Landroid/view/Surface;)I
    .locals 4

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurface(Landroid/view/Surface;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
    .locals 4

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering surface from MediaRecorder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o registerSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I
    .locals 5

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurfaceWidthHeight(Landroid/view/Surface;II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    if-ltz v1, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering surfaceTexture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist setSurfaceTimestamp(J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLEnvironment;->nativeSetSurfaceTimestamp(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set timestamp for current surface!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist swapBuffers()V
    .locals 2

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeSwapBuffers()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error swapping EGL buffers!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized greylist-max-o tearDown()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/GLEnvironment;->glEnvId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeDeallocate()Z

    iput v1, p0, Landroid/filterfw/core/GLEnvironment;->glEnvId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist unregisterSurfaceId(I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeRemoveSurfaceId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
