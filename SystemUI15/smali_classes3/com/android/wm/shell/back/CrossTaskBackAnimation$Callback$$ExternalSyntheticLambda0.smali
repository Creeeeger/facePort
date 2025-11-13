.class public final synthetic Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .locals 9

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    :cond_0
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v3}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mapRange(FFF)F

    move-result v3

    int-to-float v1, v1

    mul-float v5, v3, v1

    int-to-float v2, v2

    mul-float/2addr v3, v2

    iget-object v6, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v6

    const/4 v6, 0x0

    cmpg-float v7, p1, v6

    if-gez v7, :cond_2

    const/high16 v4, -0x40800000    # -1.0f

    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v2, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v8

    iget-object v8, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mVerticalMoveInterpolator:Landroid/view/animation/Interpolator;

    check-cast v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v8, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v4

    sub-float/2addr v2, v3

    div-float v4, v2, v7

    iget v7, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mVerticalMargin:F

    sub-float/2addr v4, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    iget-boolean v4, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mIsRightEdge:Z

    if-eqz v4, :cond_3

    invoke-static {v1, v5, p1, v5}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mVerticalMargin:F

    mul-float/2addr v0, p1

    sub-float p1, v1, v0

    :goto_0
    sub-float v0, p1, v5

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    add-float/2addr v3, v2

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    sub-float v1, v0, v5

    iget v4, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInterWindowMargin:F

    sub-float/2addr v1, v4

    sub-float/2addr v0, v4

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransaction$1()V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    float-to-int p1, v2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationBackground;->customizeStatusBarAppearance(I)V

    :cond_4
    :goto_1
    return-void
.end method
