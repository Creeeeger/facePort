.class Landroid/view/SurfaceView$2;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method public static synthetic blacklist $r8$lambda$Ct1579SsSTElpiSMKPTrd33m5nk(Landroid/view/SurfaceView$2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView$2;->lambda$setKeepScreenOn$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;
    .locals 7

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "SurfaceView"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Locking canvas... stopped="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-boolean v2, v2, Landroid/view/SurfaceView;->mDrawingStopped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", surfaceControl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-boolean v2, v2, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "SurfaceHolder"

    const-string v4, "Exception locking surface"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Returned canvas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceView;->mLastLockTime:J

    return-object v0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-wide v3, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_5

    sub-long v5, v3, v1

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :cond_5
    iget-object v5, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iput-wide v1, v5, Landroid/view/SurfaceView;->mLastLockTime:J

    iget-object v5, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v5, v5, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v5, 0x0

    return-object v5
.end method

.method private synthetic blacklist lambda$setKeepScreenOn$0(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method


# virtual methods
.method public whitelist addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist isCreating()Z
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView$2;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView$2;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView$2;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setFixedSize(II)V
    .locals 5

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_2

    :cond_0
    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG_POSITION()Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget v1, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget v2, v2, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d setFixedSize %dx%d -> %dx%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public whitelist setFormat(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$fputmUpdateSurfaceCalledBy(Landroid/view/SurfaceView;I)V

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->updateSurface()V

    :cond_1
    return-void
.end method

.method public whitelist setKeepScreenOn(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/SurfaceView$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/SurfaceView$2$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView$2;Z)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist setSizeFromLayout()V
    .locals 4

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-static {}, Landroid/view/SurfaceView;->-$$Nest$sfgetDEBUG_POSITION()Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget v2, v2, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget v3, v3, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d setSizeFromLayout was %dx%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SurfaceView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v2, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iput v1, v2, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public whitelist setType(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/SurfaceView$2;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
