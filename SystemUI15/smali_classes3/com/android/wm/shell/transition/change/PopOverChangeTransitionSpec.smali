.class public final Lcom/android/wm/shell/transition/change/PopOverChangeTransitionSpec;
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
    .locals 8

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mRootOffsets:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mRootOffsets:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v2, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-direct {v1, v4, v6, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v5, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getAnimationDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    sget-object v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2, v1, p0, v3, v0}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v2
.end method

.method public final createSnapshotAnimation()Landroid/view/animation/Animation;
    .locals 8

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getAnimationDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget v6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    div-float v2, v5, v2

    div-float/2addr v5, v3

    new-instance v3, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v3, v2, v2, v5, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v0
.end method

.method public final isRootOffsetNeeded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final setupChangeTransitionHierarchy(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const-string v2, ", change="

    const-string v3, "PopOverChangeTransitionSpec"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mContext:Landroid/content/Context;

    const/16 v5, 0x1a

    invoke-static {v5, v4}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->dipToPixel(ILandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v4, -0x1

    invoke-virtual {p2, v1, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v1, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v6, 0x0

    invoke-virtual {p2, v1, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mContext:Landroid/content/Context;

    invoke-static {v5, p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->dipToPixel(ILandroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const p0, 0x7fffffff

    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v0, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setupChangeTransitionHierarchy: reparent "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setupChangeTransitionHierarchy: invalid surfaces, snapshot="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", container="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
