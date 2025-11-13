.class public abstract Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.super Landroid/view/SurfaceView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

.field public final mHolder:Landroid/view/SurfaceHolder;

.field public mIsCreated:Z

.field public mIsScreenOn:Z

.field public mMinInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    const-string p1, "OpenThemeSurfaceView"

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public abstract drawFrame(Landroid/graphics/Canvas;)V
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopThread"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "suspendThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    :cond_0
    return-void
.end method

.method public final screenTurnedOn()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;-><init>(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v1, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    :cond_0
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    if-lez p1, :cond_1

    iput p1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startThread"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    :cond_0
    return-void
.end method
