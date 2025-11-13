.class public final Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;
.super Lcom/android/systemui/wallpaper/engines/WallpaperEngine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mChoreographer:Landroid/view/Choreographer;

.field public mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mRootView:Landroid/widget/FrameLayout;

.field public mShowing:Z

.field public mSource:Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;-><init>(Lcom/android/systemui/wallpaper/engines/WallpaperEngineCallback;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mShowing:Z

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mLock:Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ImageWallpaper_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "[Animated]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mChoreographer:Landroid/view/Choreographer;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance p1, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getWhich()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mRootView:Landroid/widget/FrameLayout;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;-><init>(Landroid/content/Context;ILandroid/widget/FrameLayout;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSource:Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSource:Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->isFixedOrientation()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/engines/WallpaperEngine;->setFixedOrientation(ZZ)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSource:Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->getComplexAnimation()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to get apk resource : e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->TAG:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSource:Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedSource;->getComplexAnimation()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to get apk resource : e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mShowing:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->playAnimation()V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mShowing:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->playAnimation()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;)V

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->screenTurnedOff()V

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/theme/LockscreenCallback;->screenTurnedOff()V

    :cond_3
    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/engines/theme/AnimatedEngine;)V

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
