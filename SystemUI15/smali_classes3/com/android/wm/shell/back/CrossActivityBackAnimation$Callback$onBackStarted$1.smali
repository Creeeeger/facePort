.class public final Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback$onBackStarted$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/CrossActivityBackAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback$onBackStarted$1;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .locals 10

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation$Callback$onBackStarted$1;->this$0:Lcom/android/wm/shell/back/CrossActivityBackAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->gestureInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    iput v7, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->gestureProgress:F

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v7}, Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;->setInterpolatedRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->initialTouchPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    const/4 v8, 0x0

    cmpg-float v2, p1, v8

    if-gez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v4

    iget-object v4, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->verticalMoveInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    iget v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->displayBoundsMargin:F

    sub-float/2addr v1, v0

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, p1

    int-to-float p1, v2

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v8, p1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, v9

    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v6, 0x18

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransform$default(Lcom/android/wm/shell/back/CrossActivityBackAnimation;Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;I)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentEnteringRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startEnteringRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetEnteringRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v7}, Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;->setInterpolatedRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->getAllowEnteringYShift()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentEnteringRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v8, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->getPreCommitEnteringBaseTransformation(F)Landroid/view/animation/Transformation;

    move-result-object v4

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    move-object v1, p1

    goto :goto_2

    :cond_3
    move-object v1, v9

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentEnteringRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p1

    :goto_3
    move v3, p1

    goto :goto_4

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :goto_4
    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransform$default(Lcom/android/wm/shell/back/CrossActivityBackAnimation;Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransaction()V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->background:Lcom/android/wm/shell/back/BackAnimationBackground;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationBackground;->customizeStatusBarAppearance(I)V

    return-void
.end method
