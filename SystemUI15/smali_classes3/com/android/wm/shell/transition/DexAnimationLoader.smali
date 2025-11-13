.class public final Lcom/android/wm/shell/transition/DexAnimationLoader;
.super Lcom/android/wm/shell/transition/AnimationLoader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/AnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final loadAnimationIfPossible()V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/transition/AnimationLoader;->DIRECT_SHOW_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_MINIMIZE_SHELL_TRANSITION:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    if-ne v0, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-nez v0, :cond_5

    const v0, 0x7f0101a9

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DexAnimationLoader"

    return-object p0
.end method
