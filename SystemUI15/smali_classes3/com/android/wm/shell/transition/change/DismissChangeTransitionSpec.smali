.class public final Lcom/android/wm/shell/transition/change/DismissChangeTransitionSpec;
.super Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBoundsChangeAnimation()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getAnimationDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public final createSnapshotAnimation()Landroid/view/animation/Animation;
    .locals 9

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v4, v3, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v6

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v5

    int-to-float v5, v5

    invoke-direct {v3, v7, v6, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getAnimationDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v2, p0, v3, v0}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v1
.end method

.method public final reduceDurationScaleIfNeeded(Landroid/window/TransitionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChangeForAppsEdgeActivity()Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    :cond_1
    return-void
.end method

.method public final setupChangeTransitionHierarchy(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const-string v2, "ChangeTransitionProvider"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p2, v1, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const v4, 0x7fffffff

    invoke-virtual {p2, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p2, v0, v4, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setupChangeTransitionHierarchy: place "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " above "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", parent="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupChangeTransitionHierarchy: invalid surfaces, snapshot="

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", container="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", change="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DismissChangeTransition"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
