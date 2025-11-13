.class public final Lcom/android/wm/shell/transition/SplitAnimationLoader;
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
    const/16 p0, 0xc

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
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadAnimationIfPossible()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mHasCustomDisplayChangeTransition:Z

    if-nez v1, :cond_c

    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mSeparatedFromCustomDisplayChange:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsPopOverAnimationNeeded:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v2, -0x1

    const v3, 0x7f0102ae

    const v4, 0x7f0102af

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    iget-object v5, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v5

    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_3

    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-nez v1, :cond_3

    const v1, 0x7f0102b3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isOpeningTransitionType()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    const v1, 0x7f0102b0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0102ad

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_b

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eq v1, v4, :cond_8

    if-ne v1, v3, :cond_9

    :cond_8
    instance-of v1, v2, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1, v3}, Lcom/android/wm/shell/transition/AnimationLoader;->addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;)V

    :cond_9
    if-nez v2, :cond_a

    const-string p0, "SplitAnimationLoader"

    const-string v0, "loadAnimationIfPossible: animation is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_b
    return-void

    :cond_c
    :goto_2
    sget-object p0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SplitAnimationLoader"

    return-object p0
.end method
