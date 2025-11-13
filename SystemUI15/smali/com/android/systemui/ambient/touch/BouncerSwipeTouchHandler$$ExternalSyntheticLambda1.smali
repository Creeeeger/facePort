.class public final synthetic Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Landroid/view/MotionEvent;

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "non MotionEvent received:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BouncerSwipeTouchHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    invoke-virtual {p1}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->pop()V

    iget-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    iget-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-double v2, p1

    float-to-double v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v2, v2, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpg-float p1, p1, v2

    const/4 v2, 0x0

    if-gez p1, :cond_4

    iget p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentExpansion:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    cmpl-float p1, v6, v2

    if-lez p1, :cond_3

    goto :goto_0

    :goto_1
    xor-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v3

    :goto_2
    cmpl-float v2, p1, v2

    if-nez v2, :cond_6

    iget-object v4, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_SWIPED:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$DreamEvent;

    invoke-interface {v4, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    iget-object v4, v4, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v7, v4

    iget v4, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentExpansion:F

    mul-float v5, v7, v4

    mul-float v8, v7, p1

    iget-object v9, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mValueAnimatorCreator:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$ValueAnimatorCreator;

    check-cast v9, Lcom/android/systemui/ambient/touch/dagger/BouncerSwipeModule$$ExternalSyntheticLambda0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x2

    new-array v9, v9, [F

    aput v4, v9, v0

    aput p1, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez v2, :cond_9

    new-instance v1, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$3;-><init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_9
    cmpl-float p1, p1, v3

    if-nez p1, :cond_a

    iget-object v2, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtilsClosing:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object v3, v0

    move v4, v5

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object v3, v0

    move v4, v5

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_b
    :goto_4
    return-void
.end method
