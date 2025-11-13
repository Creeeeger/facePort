.class public final Lcom/android/wm/shell/transition/MultiTaskingTransitionState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimation:Landroid/view/animation/Animation;

.field public mAnimationLoaded:Z

.field public mChange:Landroid/window/TransitionInfo$Change;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDisplayId:I

.field public mForceHidingTransit:I

.field public mFreeformStashScale:F

.field public mHasCustomDisplayChangeTransition:Z

.field public mIsEnter:Z

.field public mIsFreeformMovingBehindSplitScreen:Z

.field public mIsPopOverAnimationNeeded:Z

.field public mMinimizeAnimState:I

.field public final mMinimizePoint:Landroid/graphics/PointF;

.field public mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mSeparatedFromCustomDisplayChange:Z

.field public mTaskId:I

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionType:I

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/TransitionAnimation;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsPopOverAnimationNeeded:Z

    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iput-object p2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-void
.end method


# virtual methods
.method public final createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v12, v5, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v13, v5, v6

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    if-eqz v4, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v5

    goto :goto_1

    :cond_2
    move/from16 v10, p4

    :goto_1
    if-eqz p1, :cond_3

    move/from16 v5, p4

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    float-to-int v8, v8

    if-eqz p5, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, p4

    sub-float/2addr v9, v11

    goto :goto_3

    :cond_5
    move v9, v6

    :goto_3
    iget v11, v1, Landroid/graphics/PointF;->x:F

    int-to-float v7, v7

    add-float/2addr v7, v9

    sub-float/2addr v11, v7

    iget v1, v1, Landroid/graphics/PointF;->y:F

    int-to-float v7, v8

    sub-float/2addr v1, v7

    if-eqz p1, :cond_6

    move v9, v11

    goto :goto_4

    :cond_6
    move v9, v6

    :goto_4
    if-eqz p1, :cond_7

    move v11, v6

    :cond_7
    if-eqz p1, :cond_8

    move v8, v1

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    if-eqz p1, :cond_9

    move v1, v6

    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p1, :cond_a

    move v15, v6

    goto :goto_6

    :cond_a
    move v15, v7

    :goto_6
    if-eqz p1, :cond_b

    move v14, v7

    goto :goto_7

    :cond_b
    move v14, v6

    :goto_7
    cmpl-float v6, p4, v6

    if-lez v6, :cond_d

    cmpg-float v6, p4, v7

    if-gez v6, :cond_d

    if-eqz p5, :cond_c

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/16 v19, 0x1

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x1

    const/16 v22, 0x0

    move v7, v14

    move-object v14, v6

    move v12, v15

    move v15, v10

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v5

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_8
    move/from16 v17, v2

    move-object v5, v6

    move v15, v7

    move v3, v8

    move v14, v9

    move v2, v11

    move v6, v12

    goto :goto_9

    :cond_c
    move v7, v14

    move v12, v15

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v6, v10, v5, v10, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_8

    :cond_d
    move v7, v14

    move v6, v15

    new-instance v14, Landroid/view/animation/ScaleAnimation;

    move v15, v7

    move-object v7, v14

    move v3, v8

    move v8, v10

    move-object/from16 p2, v14

    move v14, v9

    move v9, v5

    move/from16 v17, v2

    move v2, v11

    move v11, v5

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v5, p2

    :goto_9
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v14, v2, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz v4, :cond_e

    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    goto :goto_a

    :cond_e
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    :goto_a
    invoke-virtual {v7, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v4, :cond_f

    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    goto :goto_b

    :cond_f
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v4, :cond_10

    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    goto :goto_c

    :cond_10
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    :goto_c
    invoke-virtual {v5, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    if-nez p1, :cond_12

    iget v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_11

    const/4 v3, 0x4

    if-ne v1, v3, :cond_12

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_d

    :cond_12
    if-eqz v17, :cond_13

    iget-object v0, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x1c2

    goto :goto_d

    :cond_13
    const-wide/16 v0, 0xfa

    :goto_d
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    :cond_14
    return-object v2
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final isActivityTypeHome()Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isClosingTransitionType()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

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

.method public final isOpeningTransitionType()Z
    .locals 2

    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final loadAnimationFromResources(I)Landroid/view/animation/Animation;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public final reset()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    iget-object v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mHasCustomDisplayChangeTransition:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mSeparatedFromCustomDisplayChange:Z

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_2
    return-void
.end method

.method public final setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", mForceHidingTransit="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->forceHidingTransitToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{Type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsEnter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mWindowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    sget-object v0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    if-ne p0, v0, :cond_1

    const-string v1, ", NO_AMIM"

    :cond_1
    const/16 p0, 0x7d

    invoke-static {v2, v1, p0}, Landroidx/compose/runtime/OpaqueKey$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
