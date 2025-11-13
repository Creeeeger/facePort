.class public final Lcom/android/wm/shell/bubbles/BubbleController$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_0
    return-void
.end method

.method public final bubbleOrderChanged(Ljava/util/List;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShouldReorderBubblesAfterGestureCompletes:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleOrderInternal(Ljava/util/List;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bubbleOverflowChanged()V
    .locals 0

    sget-object p0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final expansionChanged(Z)V
    .locals 22

    move/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v4, :cond_1d

    iget-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-ne v0, v5, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v6, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManager:Lcom/android/wm/shell/bubbles/BubbleStackViewManager;

    check-cast v6, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;

    iget-object v6, v6, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BubbleController;->hideCurrentInputMethod()V

    iget-object v6, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mSysuiProxyProvider:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy$Provider;

    check-cast v6, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v6, v6, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v7, v6, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;

    iget-object v9, v6, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-direct {v8, v6, v9, v0}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Lcom/android/systemui/model/SysUiState;Z)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-eqz v5, :cond_c

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->stopMonitoringSwipeUpGestureInternal()V

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v7, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;

    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    iput-boolean v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_1

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v8, 0xb48f89a16a533e9L

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isManageEduVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/ManageEducationView;->hide()V

    :cond_2
    iput-boolean v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    iput-boolean v3, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    iget-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRemovingLastBubbleWhileExpanded:Z

    if-nez v5, :cond_3

    invoke-virtual {v4, v2, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;)V

    :cond_3
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getAnimatedProperties()Ljava/util/Set;

    move-result-object v6

    new-array v7, v2, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    :goto_0
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    sget-object v6, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iput-boolean v3, v5, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget-object v7, v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v8}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v7

    iget-object v8, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubbleCountSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v8}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v8

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v5, v8}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v7, :cond_5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_5
    iget v5, v5, Landroid/graphics/RectF;->right:F

    :goto_1
    iput v5, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowDotVisibility(Z)V

    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, v4, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const/16 v8, 0xa

    invoke-direct {v7, v4, v8}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iget-object v8, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v9, v9, v2

    iget v10, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mMinFlingVelocity:I

    if-eqz v9, :cond_6

    iget v9, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    float-to-double v11, v9

    int-to-long v13, v10

    iget v9, v6, Landroid/graphics/PointF;->x:F

    float-to-double v0, v9

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-double v2, v6

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v6, v11, v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const/16 v19, 0xa6

    const/16 v20, 0x0

    const-wide v17, 0x48d227b66013c3bL

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAnimating:Z

    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    float-to-int v2, v2

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result v0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v8}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->MANAGE_BUTTON_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$4;

    const/4 v3, 0x1

    new-array v6, v3, [F

    const/4 v3, 0x0

    const/4 v9, 0x0

    aput v3, v6, v9

    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v11, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->CONTENT_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;

    const/4 v12, 0x1

    new-array v13, v12, [F

    const/4 v9, 0x0

    const/4 v14, 0x0

    aput v9, v13, v14

    invoke-static {v0, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x5d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-array v2, v12, [Z

    aput-boolean v14, v2, v14

    new-instance v3, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v5}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$$ExternalSyntheticLambda0;-><init>([ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->BACKGROUND_ALPHA:Lcom/android/wm/shell/bubbles/BubbleExpandedView$3;

    new-array v3, v12, [F

    const/4 v5, 0x0

    aput v5, v3, v14

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xac

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;

    invoke-direct {v2, v8, v7}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    iget v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    int-to-float v1, v10

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result v0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iget v2, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    int-to-float v0, v0

    iget v3, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    sub-float v20, v0, v2

    iget-object v5, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-object v15, v5

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v0

    move/from16 v19, v3

    invoke-virtual/range {v15 .. v20}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v0, v2

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v0, v2

    iget-object v2, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    long-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v3}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v5

    long-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_2

    :cond_8
    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_9
    iget-object v0, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_a
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    :cond_b
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v1, 0x4

    invoke-virtual {v4, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    goto/16 :goto_b

    :cond_c
    move v1, v2

    const/high16 v0, 0x66000000

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iput-boolean v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_d
    const-string v0, "null"

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v21

    const/16 v20, 0x0

    const-wide v17, -0x5789f699652ca9dL

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    iput-boolean v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    :cond_f
    iput-boolean v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedBubble()V

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    invoke-virtual {v4, v0, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;)V

    iget-boolean v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    sget-object v0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadges(Z)V

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    invoke-static {}, Lcom/android/wm/shell/Flags;->enableBubbleStashing()V

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    const/16 v2, 0xb

    invoke-direct {v1, v4, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_10

    const-string v1, "Overflow"

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4

    :cond_10
    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result v0

    :goto_4
    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_11
    iget v3, v0, Landroid/graphics/PointF;->x:F

    :goto_5
    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F

    move-result v1

    iget-object v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    goto :goto_6

    :cond_12
    iget-object v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    :goto_6
    if-eqz v1, :cond_13

    iget v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_7

    :cond_13
    iget v3, v0, Landroid/graphics/PointF;->x:F

    :goto_7
    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    if-lez v5, :cond_14

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v2, v5

    const v5, 0x43520001    # 210.00002f

    add-float/2addr v2, v5

    float-to-long v5, v2

    goto :goto_8

    :cond_14
    const-wide/16 v5, 0x0

    :goto_8
    const/high16 v2, 0x40000000    # 2.0f

    const v7, 0x3f666666    # 0.9f

    if-eqz v1, :cond_16

    iget-boolean v8, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-eqz v8, :cond_15

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    goto :goto_9

    :cond_15
    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    :goto_9
    iget-object v9, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v10, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v10, v10

    div-float/2addr v10, v2

    add-float/2addr v10, v0

    invoke-virtual {v9, v7, v7, v8, v10}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    goto :goto_a

    :cond_16
    iget-object v8, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v10, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v10, v10

    div-float v2, v10, v2

    add-float/2addr v2, v9

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v10

    iget v9, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewPadding:I

    int-to-float v9, v9

    add-float/2addr v0, v9

    invoke-virtual {v8, v7, v7, v2, v0}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    :goto_a
    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentAlpha(F)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setBackgroundAlpha(F)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAnimating:Z

    :cond_17
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;

    invoke-direct {v0, v4, v1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;ZF)V

    iput-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDelayedAnimation:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda36;

    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/16 v1, 0xf

    invoke-virtual {v4, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManager:Lcom/android/wm/shell/bubbles/BubbleStackViewManager;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda30;

    invoke-direct {v1, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda30;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;

    const/4 v5, 0x1

    invoke-direct {v3, v0, v1, v5}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/Object;I)V

    iget-object v0, v2, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v5}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_b
    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-boolean v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    iget-object v2, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    if-eqz v2, :cond_18

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(Ljava/lang/String;Z)V

    :cond_18
    iget-object v0, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iget-boolean v1, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    instance-of v2, v0, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_1d

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f130d15

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    if-eqz v2, :cond_1b

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f13031f

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    :goto_d
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1c

    const v1, 0x7f13031a

    goto :goto_e

    :cond_1c
    const v1, 0x7f130319

    :goto_e
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_f
    return-void
.end method

.method public final removeBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_8

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRemovingLastBubbleWhileExpanded:Z

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;

    const/4 v4, 0x1

    invoke-direct {v1, p0, p1, v0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Object;I)V

    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    iput-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v5, :cond_5

    check-cast v0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    iget-object v5, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupViews()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressed()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupViews()V

    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "was asked to remove Bubble, but didn\'t find the view! "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method public final selectionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_0
    return-void
.end method

.method public final suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Bubble is already added to parent. Can\'t unsuppress: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v2, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    :cond_0
    return-void
.end method
