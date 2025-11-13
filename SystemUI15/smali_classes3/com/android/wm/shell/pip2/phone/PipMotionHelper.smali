.class public final Lcom/android/wm/shell/pip2/phone/PipMotionHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/pip/PipAppOpsListener$Callback;
.implements Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;
.implements Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;


# instance fields
.field public final mAnimateToDismissSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mCatchUpSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mConflictResolutionSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mContext:Landroid/content/Context;

.field public mDismissalPending:Z

.field public mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public final mFloatingAllowedArea:Landroid/graphics/Rect;

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public mMagnetizedPip:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;

.field public final mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

.field public final mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

.field public final mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

.field public final mResizePipUpdateListener:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda2;

.field public final mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

.field public final mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public mSpringingToTouch:Z

.field public mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public mWaitingForBoundsChangeTransition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/pip2/phone/PipScheduler;Ljava/util/Optional;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip2/phone/PipTransitionState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            "Lcom/android/wm/shell/pip2/phone/PipScheduler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/pip/PipPerfHintController;",
            ">;",
            "Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip2/phone/PipTransitionState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x442f0000    # 700.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mAnimateToDismissSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mCatchUpSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mConflictResolutionSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mDismissalPending:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mWaitingForBoundsChangeTransition:Z

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p8, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iput-object p6, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    iput-object p5, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    const/4 p1, 0x0

    invoke-virtual {p7, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    new-instance p1, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mResizePipUpdateListener:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda2;

    iput-object p9, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    invoke-virtual {p9, p0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->addPipTransitionStateChangedListener(Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;)V

    return-void
.end method


# virtual methods
.method public final cancelPhysicsAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    return-void
.end method

.method public final dismissPip()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;ZZI)V

    :cond_0
    return-void
.end method

.method public final flingToSnapTarget(FFLjava/lang/Runnable;)V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    iget-object v7, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    iget-object v8, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v7, v1, v2, v9, v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2, v9, v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v6, 0x1

    move-object v1, v7

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Z)V

    sget-object v2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    move-object v1, v7

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Z)V

    iget-object v1, v8, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    iget-object v0, v8, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float p1, p1, v9

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p1, v8, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    invoke-static {p1, p2, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->estimateFlingEndValue(FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;)F

    move-result p1

    check-cast p3, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;)V

    return-void
.end method

.method public final getAllowedFloatingBoundsRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getFloatingBoundsOnScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final moveToBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->setBoundsInMotion(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mConflictResolutionSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;)V

    return-void
.end method

.method public final onPipTransitionStateChanged(IILandroid/os/Bundle;)V
    .locals 5

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq p2, v3, :cond_5

    const/4 v3, 0x5

    if-eq p2, v3, :cond_2

    const/4 p1, 0x7

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->isInMotion()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->settlePipBoundsAfterPhysicsAnimation(Z)V

    goto/16 :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mWaitingForBoundsChangeTransition:Z

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mWaitingForBoundsChangeTransition:Z

    const-string p2, "pip_start_tx"

    const-class v1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    const-string v1, "pip_dest_bounds"

    const-class v3, Landroid/graphics/Rect;

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPinnedTaskLeash:Landroid/view/SurfaceControl;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2, v0, v1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->settlePipBoundsAfterPhysicsAnimation(Z)V

    iget-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    iput-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_4
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/pip2/phone/PipScheduler;->scheduleFinishResizePip(Z)V

    goto :goto_0

    :cond_5
    const-string p2, "fling_bounds_change"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v1, p3, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->settlePipBoundsAfterPhysicsAnimation(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    iput-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipTransitionState;)V

    iget-object p1, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_8
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mWaitingForBoundsChangeTransition:Z

    iget-object p0, p3, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v4}, Lcom/android/wm/shell/pip2/phone/PipScheduler;->scheduleAnimateResizePip(Landroid/graphics/Rect;Z)V

    :goto_0
    return-void
.end method

.method public final settlePipBoundsAfterPhysicsAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iget-object p1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mDismissalPending:Z

    return-void
.end method

.method public final startBoundsAnimator(FFLcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringingToTouch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, p2

    invoke-direct {v0, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;)V

    const-string/jumbo v0, "startBoundsAnimator"

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController;->startSession(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mResizePipUpdateListener:Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda2;

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;I)V

    aput-object v2, v0, p2

    aput-object p3, v0, p1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v1, p3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, p1, [Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;I)V

    aput-object v0, p1, p2

    invoke-virtual {p3, p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    return-void
.end method
