.class public final Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAnimatorControlHandler:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;

.field public mCurrentScale:F

.field public mKeyguardState:Z

.field public mLastDrawingTime:J

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;Landroid/view/SurfaceControl;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mAnimatorControlHandler:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;

    const-string v0, "ImageWallpaper[WallpaperAnimator]"

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mKeyguardState:Z

    return-void
.end method


# virtual methods
.method public final cancelReservedDownScaleAnimation()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mAnimatorControlHandler:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final changeToUpScaleImmediately()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    const-string v1, "changeToUpScaleImmediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    const v0, 0x3f833333    # 1.025f

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->onTransitionScaleChanged(F)V

    return-void
.end method

.method public final onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;IZZZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "engineDisplayStateChanged: state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFullAodShown = "

    const-string v2, ", isMultipack = "

    invoke-static {v0, p3, v1, p4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyguardState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mKeyguardState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;->ON:Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mKeyguardState:Z

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p4, :cond_2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->reserveDownScaleAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->playUpScale()V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    if-nez p3, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->changeToUpScaleImmediately()V

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_7

    if-eqz p4, :cond_6

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->reserveDownScaleAnimation()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->playUpScale()V

    goto :goto_0

    :cond_6
    if-ne p1, v0, :cond_b

    if-nez p3, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->changeToUpScaleImmediately()V

    goto :goto_0

    :cond_7
    if-eqz p4, :cond_9

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->reserveDownScaleAnimation()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->playUpScale()V

    goto :goto_0

    :cond_9
    if-ne p1, v0, :cond_a

    goto :goto_0

    :cond_a
    if-nez p3, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->changeToUpScaleImmediately()V

    :cond_b
    :goto_0
    return-void
.end method

.method public final onEngineVisibilityChanged(ZZZI)V
    .locals 3

    const-string v0, "onEngineVisibilityChanged: visible = "

    const-string v1, ", which = "

    const-string v2, ", isFullAodShown = "

    invoke-static {v0, p4, v1, p1, v2}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMultipack = "

    const-string v2, ", mKeyguardState = "

    invoke-static {v0, p2, v1, p3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mKeyguardState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-boolean p3, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mKeyguardState:Z

    if-eqz p3, :cond_a

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->changeToUpScaleImmediately()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->playDownScale()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->changeToUpScaleImmediately()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_7

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->changeToUpScaleImmediately()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->playDownScale()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->changeToUpScaleImmediately()V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->playDownScale()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->changeToUpScaleImmediately()V

    :cond_a
    :goto_0
    return-void
.end method

.method public final onTransitionScaleChanged(F)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    float-to-int v4, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sub-float/2addr v7, v0

    float-to-int v0, v7

    invoke-direct {v2, v3, v4, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->scaleSurface(Landroid/graphics/Rect;)V

    iput p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mCurrentScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTransitionScaleChanged: e = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTransitionScaleChanged: mSurfaceHolder = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final playDownScale()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    const-string v1, "playDownScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->cancelReservedDownScaleAnimation()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mCurrentScale:F

    goto :goto_0

    :cond_0
    const v0, 0x3f833333    # 1.025f

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->startAnimation(FF)V

    return-void
.end method

.method public final playUpScale()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playUpScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->cancelReservedDownScaleAnimation()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mCurrentScale:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const v1, 0x3f833333    # 1.025f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->startAnimation(FF)V

    return-void
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->cancelReservedDownScaleAnimation()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public final reserveDownScaleAnimation()V
    .locals 3

    const-string/jumbo v0, "reserveDownScaleAnimation: delay = 240"

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->cancelReservedDownScaleAnimation()V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mAnimatorControlHandler:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;

    const/16 v0, 0x3e8

    const-wide/16 v1, 0xf0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final scaleSurface(Landroid/graphics/Rect;)V
    .locals 5

    const-string/jumbo v0, "scaleSurface: mSurfaceHolder = "

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "scaleSurface: visibleRect = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    check-cast v0, Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, p1, v4}, Landroid/view/SurfaceControl$Transaction;->setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    check-cast p0, Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object p0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", frame = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "scaleSurface: e = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final startAnimation(FF)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->release()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$2;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
