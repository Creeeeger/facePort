.class public final Lcom/android/wm/shell/windowdecor/FreeformStashState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimType:I

.field public mAnimating:Z

.field public mFreeformStashYFraction:F

.field public mFreeformThickness:I

.field public final mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

.field public mScale:F

.field public mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

.field public mStashType:I

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformStashYFraction:F

    return-void
.end method


# virtual methods
.method public final createStashDimOverlay(Landroid/view/SurfaceControl;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const v0, 0x7f06015d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070fab

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformThickness:I

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->isLeashValidLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    const/16 v5, 0x4e22

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    neg-int v3, p0

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    iget-object p3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final destroyStashDimOverlay()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->isLeashValidLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final getStashScaleOffsetX(I)F
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    mul-float v1, p1, v0

    sub-float/2addr p1, v1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformThickness:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1

    :cond_0
    iget p1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformThickness:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    mul-float/2addr p1, p0

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isLeftStashed()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStashed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setDimOverlayAlpha(F)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->isLeashValidLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final setStashed(I)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->destroyStashDimOverlay()V

    :cond_0
    return-void
.end method
