.class public final Lcom/android/wm/shell/bubbles/BubbleStackView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field public static final DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

.field static final FLYOUT_HIDE_AFTER:I = 0x1388

.field public static final FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;


# instance fields
.field public mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

.field public final mAfterFlyoutTransitionSpring:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;

.field public mAnimateInFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

.field public final mAnimateStashedState:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

.field public final mAnimateTemporarilyInvisibleImmediate:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

.field public final mAnimatingOutSurfaceAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

.field public final mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

.field public final mBubbleClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

.field public final mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

.field public final mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

.field public final mBubbleElevation:I

.field public final mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

.field public final mBubbleSALogger:Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;

.field public mBubbleSize:I

.field public mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public final mBubbleTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$7;

.field public final mBubbleTouchPadding:I

.field public mBubblesNavBarGestureTracker:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

.field public final mContainerSwipeListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

.field public mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;

.field public final mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

.field public mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

.field public mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

.field public final mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field public mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public final mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

.field public final mExpandedViewContainer:Landroid/widget/FrameLayout;

.field public final mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

.field public final mExpandedViewPadding:I

.field public mExpandedViewTemporarilyHidden:Z

.field public mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

.field public final mFlyoutClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$10;

.field public final mFlyoutCollapseProperty:Lcom/android/wm/shell/bubbles/BubbleStackView$3;

.field public mFlyoutDragDeltaX:F

.field public final mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$11;

.field public final mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

.field public final mIndividualBubbleMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

.field public mIsBubbleSwitchAnimating:Z

.field public mIsDraggingStack:Z

.field public mIsExpanded:Z

.field public mIsExpansionAnimating:Z

.field public mIsGestureInProgress:Z

.field public mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

.field public mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

.field public final mManageMenuScrim:Landroid/view/View;

.field public final mManager:Lcom/android/wm/shell/bubbles/BubbleStackViewManager;

.field public final mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

.field public mPointerIndexDown:I

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

.field public mRemovingLastBubbleWhileExpanded:Z

.field public final mScaleInSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mScrim:Landroid/view/View;

.field public mScrimAnimation:Landroid/view/ViewPropertyAnimator;

.field public mSensitiveNotificationProtectionActive:Z

.field public mShouldReorderBubblesAfterGestureCompletes:Z

.field public mShowedUserEducationInTouchListenerActive:Z

.field public final mShowingOverflow:Z

.field public final mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

.field public mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

.field public mStackEducationViewManager:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;

.field public final mStackMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$5;

.field public mStackOnLeftOrWillBe:Z

.field public final mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

.field public final mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

.field public final mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$9;

.field public final mSystemGestureExcludeUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

.field public final mSystemGestureExclusionRects:Ljava/util/List;

.field public final mSysuiProxyProvider:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy$Provider;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTemporarilyInvisible:Z

.field public mViewBeingDismissed:Landroid/view/View;

.field public mViewUpdatedRequested:Z

.field public final mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;


# direct methods
.method public static $r8$lambda$3M-sxRBbrm4dnX3P5Z7QOrXp5IU(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/Bubble;->getSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSALogger:Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    const-string v1, "QPNE0102"

    const-string v2, "app"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static $r8$lambda$ecS6BCO608AQvEBSbEaZ37rK_08(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-static {v1, v2}, Lcom/android/wm/shell/bubbles/DeviceConfig;->create(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/DeviceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(Lcom/android/wm/shell/bubbles/DeviceConfig;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateResources()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->updateResources()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubbleCountSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v2

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->getAbsolutePositionInRegion(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static -$$Nest$mshowExpandedViewIfNeeded(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    sget-object v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const v3, 0x43f9ffff    # 499.99997f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda23;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    iget-object v2, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackViewManager;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy$Provider;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const/4 v10, 0x4

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x43960000    # 300.0f

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x44610000    # 900.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    invoke-direct {v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    new-instance v2, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-direct {v2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v2, v12, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    iput-object v13, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const/4 v14, 0x0

    invoke-direct {v2, v0, v14}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v15, 0x1

    iput-boolean v15, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRemovingLastBubbleWhileExpanded:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSensitiveNotificationProtectionActive:Z

    new-array v2, v12, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, -0x1

    iput v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShouldReorderBubblesAfterGestureCompletes:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$2;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$3;

    const-string v3, "FlyoutCollapseSpring"

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$3;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/lang/String;)V

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v5, v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput v11, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$5;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$5;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$5;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$6;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$7;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$7;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$7;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mContainerSwipeListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$9;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$10;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$10;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$10;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$11;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$11;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$11;

    iput-boolean v14, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const v3, 0x44bb8000    # 1500.0f

    const/high16 v11, 0x3f400000    # 0.75f

    invoke-direct {v2, v3, v11}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v15}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v12}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManager:Lcom/android/wm/shell/bubbles/BubbleStackViewManager;

    iput-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSysuiProxyProvider:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy$Provider;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    iget v3, v8, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleElevation:I

    iput v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleElevation:I

    const v6, 0x7f070195

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    const v6, 0x7f070166

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    iget-object v2, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v6, 0x1010571

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f07101e

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v6, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const/4 v2, 0x3

    invoke-direct {v6, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;

    invoke-direct {v11, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    new-instance v15, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-direct {v15, v0, v10}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    move-object/from16 p3, v2

    move v10, v3

    move-object/from16 v3, p7

    move-object/from16 v16, v4

    move-object v4, v11

    move-object v11, v5

    move-object v5, v6

    move-object v14, v6

    move-object v6, v15

    move-object v15, v7

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;-><init>(Lcom/android/wm/shell/common/FloatingContentCoordinator;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    new-instance v3, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-direct {v3, v8, v14, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;-><init>(Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/lang/Runnable;Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    new-instance v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    invoke-direct {v3, v1, v8}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    if-eqz p6, :cond_0

    move-object/from16 v3, p6

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    :goto_0
    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    new-instance v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {v4, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    int-to-float v2, v10

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/SurfaceView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v3, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-float v3, v12

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleStackView$12;

    invoke-direct {v7, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$12;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-interface {v3, v7}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v7

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v7, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpFlyout()V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v1, v11, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    move-object/from16 v1, v16

    invoke-virtual {v11, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpDismissView()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object v1, v9, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    move-object/from16 v1, p2

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleSALogger:Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSALogger:Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;

    sget-object v2, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeViewNoAnimation(Lcom/android/wm/shell/bubbles/BadgedImageView;)V

    :cond_2
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "overflow bubble"

    const-string v3, "QPNE0100"

    const-string v4, "app"

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenuScrim:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07033b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07033c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v1, 0x2

    new-array v3, v1, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;F)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x140

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v3, 0x96

    invoke-virtual {v15, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v15, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$13;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$13;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v15, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    invoke-virtual {v15, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v13, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    invoke-virtual {v13, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$14;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$14;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {v13, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    instance-of v4, v3, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "HasSeenBubblesOnboarding"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "force_show_bubbles_user_education"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_3

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v9, 0x0

    const-wide v6, -0x1bf781927113c70eL    # -7.572595045258461E173

    const/4 v8, 0x3

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v3, :cond_5

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force_hide_bubbles_user_education"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "Bubbles"

    const-string v4, "Want to show stack edu, but it is forced hidden"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v1

    :cond_5
    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    :cond_6
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v3, :cond_7

    return-void

    :cond_7
    if-eqz v0, :cond_9

    iget-boolean v3, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition(Z)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition(Z)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isStackOnLeft(Landroid/graphics/PointF;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iput-object v0, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    :cond_a
    :goto_4
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v5, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1, v4, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$7;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method public final animateDismissBubble(Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewBeingDismissed:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleStackView$19;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$19;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :goto_0
    return-void
.end method

.method public final animateFlyoutCollapsed(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v2, :cond_0

    const v2, 0x44bb8000    # 1500.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43480000    # 200.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    iput v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    iput p1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    if-eqz v0, :cond_1

    neg-int p0, p0

    :cond_1
    int-to-float p0, p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 8

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showFlyout()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSensitiveNotificationProtectionActive:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-nez v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x49d99b5838e8c2bbL    # -7.661019499575993E-48

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    :goto_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;I)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    sget-object v2, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_4
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    return-void

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    :cond_6
    return-void
.end method

.method public final animateShadows()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPointerIndexDown:I

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$7;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShouldReorderBubblesAfterGestureCompletes:Z

    if-eqz p1, :cond_6

    if-nez v3, :cond_6

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShouldReorderBubblesAfterGestureCompletes:Z

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleOrderInternal(Ljava/util/List;Z)V

    :cond_6
    return v0
.end method

.method public final getBubbleCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public final getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getIconView$1()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getExpandedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-object p0
.end method

.method public final getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->numberOfBubbles:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->selectedIndex:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackViewState:Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    iput-boolean p0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;->onLeft:Z

    return-object v0
.end method

.method public final hideFlyoutImmediate()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->run()V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAfterFlyoutHidden:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateInFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public isManageEduVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isManageMenuDontBubbleVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isManageMenuSettingsVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStackEduVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V
    .locals 13

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v5

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v4, v1

    goto :goto_2

    :cond_1
    move v4, v3

    :goto_2
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v7, v4

    invoke-direct {v1, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    int-to-float v1, v1

    div-float v3, p0, v1

    :cond_2
    new-instance p0, Ljava/math/BigDecimal;

    float-to-double v9, v3

    invoke-direct {p0, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, v7, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v1, 0x95

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v7, p2

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)V

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Overflow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    iget p1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_SELECTED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-interface {p0, p2, p1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    iget v4, p1, Lcom/android/wm/shell/bubbles/Bubble;->mNotificationId:I

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v1, 0x95

    move v7, p2

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/android/wm/shell/bubbles/DeviceConfig;->create(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/DeviceConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(Lcom/android/wm/shell/bubbles/DeviceConfig;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    if-eqz v3, :cond_4

    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/wm/shell/Flags;->enableBubbleStashing()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    if-eqz v4, :cond_3

    iget v2, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeHeight:I

    :cond_3
    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_5
    :goto_1
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda10;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final onDisplaySizeChanged()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpFlyout()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpDismissView()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateUserEdu()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Display size changed. Icon null: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bubbles"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateResources()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->updateResources()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubbleCountSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v2

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->getAbsolutePositionInRegion(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    :cond_4
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public final onOrientationChanged()V
    .locals 4

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    return-void
.end method

.method public final performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object p2

    const/high16 v1, 0x100000

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissAll(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f13005e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v0

    :cond_1
    const/high16 v1, 0x80000

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    :cond_2
    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    :cond_3
    const v1, 0x7f0a008c

    const/high16 v3, 0x442f0000    # 700.0f

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    return v0

    :cond_4
    const v1, 0x7f0a008d

    if-ne p1, v1, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    return v0

    :cond_5
    const v1, 0x7f0a0081

    if-ne p1, v1, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    return v0

    :cond_6
    const v1, 0x7f0a0082

    if-ne p1, v1, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    return v0

    :cond_7
    return v2
.end method

.method public final requestUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resetCircle()V
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const v2, 0x7f07101d

    const v3, 0x7f080766

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    const v0, 0x7f0806cd

    invoke-virtual {p0, v3, v0, v2}, Lcom/android/wm/shell/common/bubbles/DismissCircleView;->setup(III)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    const v0, 0x7f0806cc

    invoke-virtual {p0, v3, v0, v2}, Lcom/android/wm/shell/common/bubbles/DismissCircleView;->setup(III)V

    :goto_0
    return-void
.end method

.method public final resetDismissAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissBubbleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewBeingDismissed:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewBeingDismissed:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object v0, v0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->resetCircle()V

    :cond_1
    return-void
.end method

.method public final setFlyoutStateForDragLength(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    if-eqz v0, :cond_1

    neg-float p1, p1

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_2

    cmpl-float v3, p1, v4

    if-lez v3, :cond_a

    :cond_2
    cmpl-float v2, p1, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    if-eqz v0, :cond_4

    if-gtz v2, :cond_5

    :cond_4
    if-nez v0, :cond_6

    if-gez v1, :cond_6

    :cond_5
    move v3, v5

    :cond_6
    if-eqz v6, :cond_7

    sub-float/2addr p1, v4

    goto :goto_1

    :cond_7
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    :goto_1
    if-eqz v3, :cond_8

    const/4 v0, -0x1

    goto :goto_2

    :cond_8
    move v0, v5

    :goto_2
    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    if-eqz v6, :cond_9

    const/4 v5, 0x2

    :cond_9
    int-to-float v1, v5

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v2, v1

    div-float/2addr v0, v2

    mul-float v2, v0, p1

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public final setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overflow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iput-boolean v0, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    sget-object v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mBackToExpandedAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_5
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->reset()V

    :cond_6
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManager:Lcom/android/wm/shell/bubbles/BubbleStackViewManager;

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleController;->hideCurrentInputMethod()V

    sget-object v1, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Object;I)V

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView$1;Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_7
    return-void
.end method

.method public final setUpDismissView()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/bubbles/DismissView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/DismissViewUtils;->setup(Lcom/android/wm/shell/common/bubbles/DismissView;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    mul-int/lit8 v1, v1, 0x2

    const-string v2, "bubble_dismiss_radius"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    iget-object v2, v2, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public final setUpFlyout()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$10;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyoutTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$11;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f130317

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a008c

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f130318

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a008d

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f130315

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0081

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f130316

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a0082

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void
.end method

.method public showManageMenu(Z)V
    .locals 0

    return-void
.end method

.method public final showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;)V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$18;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView$18;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimation:Landroid/view/ViewPropertyAnimator;

    sget-object p0, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3ea3d70a    # 0.32f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final startMonitoringSwipeUpGesture()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->stopMonitoringSwipeUpGestureInternal()V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubblesNavBarGestureTracker:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSwipeUpListener:Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v4, 0x5d025f35cef13b15L    # 1.0939120940232126E140

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/InputMonitor;->dispose()V

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_2
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    const-string v4, "bubbles-gesture"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;)V

    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-direct {v3, v4, v6, v5, v1}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/lang/Runnable;Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/view/Choreographer;Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mContainerSwipeListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void
.end method

.method public final stopMonitoringSwipeUpGestureInternal()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubblesNavBarGestureTracker:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v3, -0x3266ed1f66f3c0deL    # -6.601432442601602E65

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/InputMonitor;->dispose()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_2
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubblesNavBarGestureTracker:Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void
.end method

.method public final updateBadges(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showDotAndBadge(Z)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_3

    if-nez v2, :cond_2

    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showDotAndBadge(Z)V

    goto :goto_2

    :cond_2
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideDotAndBadge(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final updateBubbleOrderInternal(Ljava/util/List;Z)V
    .locals 11

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move v5, v3

    move v6, v5

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v8, v1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-ne v5, v8, :cond_1

    invoke-virtual {v1, v7, v5, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveToFinalIndex(Landroid/view/View;ILcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;)V

    move v7, v3

    goto :goto_2

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, v1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget v10, v1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSwapAnimationOffset:F

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x12c

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;

    invoke-direct {v9, v1, v4, v7, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;Landroid/view/View;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const v9, 0x7f0a09b8

    invoke-virtual {v7, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v7, v5, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveToFinalIndex(Landroid/view/View;ILcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;)V

    :goto_1
    move v7, v2

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_6

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;->run()V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->run()V

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadges(Z)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    :cond_7
    return-void
.end method

.method public final updateBubbleShadows(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Overflow"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v3, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleElevation:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setZ(F)V

    goto :goto_4

    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    iget v3, v4, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    :goto_2
    sub-int/2addr v3, v1

    int-to-float v5, v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    iget v3, v4, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    iget v4, v4, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleElevation:I

    mul-int/2addr v3, v4

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setZ(F)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final updateExpandedBubble()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$1$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView$1;Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public final updateExpandedView()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "Overflow"

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewContainerPadding(ZZ)[I

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    aget v4, v0, v2

    aget v1, v0, v1

    const/4 v5, 0x2

    aget v6, v0, v5

    const/4 v7, 0x3

    aget v0, v0, v7

    invoke-virtual {v3, v4, v1, v6, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    iget v1, v1, Landroid/graphics/PointF;->x:F

    :goto_1
    invoke-virtual {v4, v6, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isStackOnLeft(Landroid/graphics/PointF;)Z

    move-result v1

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3, v1, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewContainerPadding(ZZ)[I

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:I

    iget v6, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerOverlap:I

    sub-int/2addr v4, v6

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    aget v6, v1, v2

    sub-int/2addr v3, v6

    aget v1, v1, v5

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    if-eq v1, v3, :cond_3

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v3, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateDimensions()V

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateHeight()V

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    return-void
.end method

.method public final updateOverflow()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->applyThemeAttrs()V

    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubbleIcon:Landroid/widget/ImageView;

    const v2, 0x7f08100d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateBtnTheme()V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->reorderView(Landroid/view/View;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    return-void
.end method

.method public final updateOverflowDotVisibility(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda32;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda32;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZI)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final updateOverflowVisibility()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    sget-object v1, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final updatePointerPosition(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_2
    iget v1, v1, Landroid/graphics/PointF;->x:F

    :goto_0
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setPointerPosition(FZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateTemporarilyInvisibleAnimation(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-wide/16 v2, 0x3e8

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateUserEdu()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    if-nez v1, :cond_7

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManager:Lcom/android/wm/shell/bubbles/BubbleStackViewManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackViewManager;)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEducationViewManager:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/wm/shell/bubbles/StackEducationView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEducationViewManager:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/wm/shell/bubbles/StackEducationView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/StackEducationView$Manager;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;->LEFT:Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;->RIGHT:Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getStartPosition(Lcom/android/wm/shell/bubbles/BubblePositioner$StackPinnedEdge;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x442f0000    # 700.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springStack(FFF)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->manager:Lcom/android/wm/shell/bubbles/StackEducationView$Manager;

    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackViewManager;

    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v6, v5, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-nez v6, :cond_3

    iget-boolean v5, v5, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07019a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_2
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isStackOnLeft(Landroid/graphics/PointF;)Z

    move-result v3

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->view$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070196

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-eqz v3, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v6

    :goto_3
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070198

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, v1, Lcom/android/wm/shell/bubbles/StackEducationView;->view$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v3, :cond_6

    const v7, 0x7f0806db

    goto :goto_5

    :cond_6
    const v7, 0x7f0806dc

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v6, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;

    invoke-direct {v6, v1, v3, v5, v0}, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;ZILandroid/graphics/PointF;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HasSeenBubblesOnboarding"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isManageEduVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/ManageEducationView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->show(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Z)V

    :cond_9
    :goto_7
    return-void
.end method
