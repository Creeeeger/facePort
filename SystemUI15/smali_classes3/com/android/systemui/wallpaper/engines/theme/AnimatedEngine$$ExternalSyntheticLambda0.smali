.class public final synthetic Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mShowing:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;)V

    invoke-virtual {p2, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;)V

    invoke-virtual {p2, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->TAG:Ljava/lang/String;

    const-string p2, "onFrameChanged : canvas is null"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    monitor-exit p1

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
