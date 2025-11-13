.class public final Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation;
.super Lcom/android/wm/shell/back/CrossActivityBackAnimation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allowEnteringYShift:Z

.field public final enteringStartOffset:F

.field public final postCommitInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;)V

    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation;->postCommitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702b4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation;->enteringStartOffset:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation;->allowEnteringYShift:Z

    return-void
.end method


# virtual methods
.method public final getAllowEnteringYShift()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation;->allowEnteringYShift:Z

    return p0
.end method

.method public final getPostCommitAnimationDuration()J
    .locals 2

    const-wide/16 v0, 0x1c2

    return-wide v0
.end method

.method public final onGestureCommitted(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startEnteringRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentEnteringRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetEnteringRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation;->enteringStartOffset:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-super {p0, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->onGestureCommitted(F)V

    return-void
.end method

.method public final onPostCommitProgress(F)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->onPostCommitProgress(F)V

    const/4 v0, 0x5

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v0, p0, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation;->postCommitInterpolator:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;->setInterpolatedRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    sget-object v11, Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;->FLING_BOUNCE:Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;

    const/16 v8, 0x8

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, v11

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransform$default(Lcom/android/wm/shell/back/CrossActivityBackAnimation;Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;I)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentEnteringRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startEnteringRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetEnteringRect:Landroid/graphics/RectF;

    invoke-static {v0, v2, v3, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;->setInterpolatedRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    :cond_1
    move-object v7, v1

    iget-object v8, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentEnteringRect:Landroid/graphics/RectF;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/16 v12, 0x8

    move-object v6, p0

    invoke-static/range {v6 .. v12}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransform$default(Lcom/android/wm/shell/back/CrossActivityBackAnimation;Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransaction()V

    return-void
.end method

.method public final preparePreCommitClosingRectMovement(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;->scaleCentered$default(Landroid/graphics/RectF;F)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->displayBoundsMargin:F

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-void
.end method

.method public final preparePreCommitEnteringRectMovement()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startEnteringRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startEnteringRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/wm/shell/back/DefaultCrossActivityBackAnimation;->enteringStartOffset:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetEnteringRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startEnteringRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetEnteringRect:Landroid/graphics/RectF;

    const v0, 0x3f666666    # 0.9f

    invoke-static {p0, v0}, Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;->scaleCentered$default(Landroid/graphics/RectF;F)V

    return-void
.end method
