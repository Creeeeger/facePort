.class public final Lcom/android/wm/shell/transition/FreeformAnimationLoader;
.super Lcom/android/wm/shell/transition/AnimationLoader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/AnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    return-void
.end method


# virtual methods
.method public final getCornerRadius(Landroid/content/Context;)F
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xe

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    return p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadAnimationIfPossible()V
    .locals 10

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    if-eqz v0, :cond_8

    iget v0, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    if-eqz v4, :cond_3

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v0, v4, v7}, Landroid/graphics/PointF;-><init>(FF)V

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    if-eqz v4, :cond_1

    iget-object v4, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v7, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v5, v4, :cond_2

    iget v4, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    const/4 v4, 0x0

    iget v7, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    move-object v3, v9

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;

    move-result-object v3

    iget v4, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    new-instance v5, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;

    invoke-direct {v5, v9, v4, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;ILandroid/graphics/PointF;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_4

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    if-eqz v4, :cond_4

    iget-object v4, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v4, v7}, Landroid/graphics/PointF;->set(FF)V

    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v7, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v5, v4, :cond_5

    iget v4, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_5

    move v8, v1

    goto :goto_3

    :cond_5
    move v8, v3

    :goto_3
    const/4 v4, 0x1

    iget v7, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    move-object v3, v9

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {v9, v3}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    iget-boolean v0, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v0, :cond_e

    iget v0, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    if-eqz v0, :cond_e

    iget p0, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {v9, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_9
    const/4 p0, 0x4

    if-eq v0, p0, :cond_d

    const/4 p0, 0x3

    if-ne v0, p0, :cond_a

    goto :goto_6

    :cond_a
    if-ne v0, v1, :cond_b

    const p0, 0x7f0101b3

    goto :goto_5

    :cond_b
    const p0, 0x7f0101b4

    :goto_5
    invoke-virtual {v9, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_c

    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_c
    return-void

    :cond_d
    :goto_6
    sget-object p0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {v9, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    if-eqz v0, :cond_10

    iget-object v0, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsFreeformMovingBehindSplitScreen:Z

    if-eqz v0, :cond_f

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_f
    iget-object v0, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    sget-object p0, Lcom/android/wm/shell/transition/AnimationLoader;->DIRECT_SHOW_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {v9, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_10
    iget-boolean v0, v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    invoke-virtual {v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isOpeningTransitionType()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_11

    const v1, 0x7f0101b1

    goto :goto_7

    :cond_11
    const v1, 0x7f0101b2

    goto :goto_7

    :cond_12
    invoke-virtual {v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_13

    const v1, 0x7f0101a8

    goto :goto_7

    :cond_13
    const v1, 0x7f0101a9

    goto :goto_7

    :cond_14
    move v1, v2

    :goto_7
    if-eq v1, v2, :cond_18

    invoke-virtual {v9, v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isOpeningTransitionType()Z

    move-result v2

    if-eqz v2, :cond_15

    if-nez v0, :cond_16

    :cond_15
    invoke-virtual {v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez v0, :cond_17

    :cond_16
    instance-of v0, v1, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_17

    invoke-virtual {v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/transition/AnimationLoader;->addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;)V

    :cond_17
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FreeformAnimationLoader"

    return-object p0
.end method
