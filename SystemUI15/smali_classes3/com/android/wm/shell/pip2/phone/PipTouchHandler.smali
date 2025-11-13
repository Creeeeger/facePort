.class public final Lcom/android/wm/shell/pip2/phone/PipTouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mContext:Landroid/content/Context;

.field public mDeferResizeToNormalBoundsUntilRotation:I

.field public mEnableResize:Z

.field public mEnableStash:Z

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public final mGesture:Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;

.field public final mInsetBounds:Landroid/graphics/Rect;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

.field public mMenuState:I

.field public mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

.field public mMovementWithinDismiss:Z

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

.field public mPipInputConsumer:Lcom/android/wm/shell/pip2/phone/PipInputConsumer;

.field public final mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

.field public mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public mSavedSnapFraction:F

.field public mSendingHoverAccessibilityEvents:Z

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public mStashVelocityThreshold:F

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip2/phone/PipTransitionState;Lcom/android/wm/shell/pip2/phone/PipScheduler;Lcom/android/wm/shell/common/pip/SizeSpecSource;Lcom/android/wm/shell/pip2/phone/PipMotionHelper;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/common/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip2/phone/PipTransitionState;",
            "Lcom/android/wm/shell/pip2/phone/PipScheduler;",
            "Lcom/android/wm/shell/common/pip/SizeSpecSource;",
            "Lcom/android/wm/shell/pip2/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            "Lcom/android/wm/shell/common/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/pip/PipPerfHintController;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p4

    move-object/from16 v13, p6

    move-object/from16 v7, p7

    move-object/from16 v1, p10

    move-object/from16 v9, p12

    move-object/from16 v11, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mEnableStash:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuState:I

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSavedSnapFraction:F

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    iput-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object v11, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const/4 v4, 0x0

    move-object/from16 v5, p14

    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iput-object v12, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iput-object v13, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object v7, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    new-instance v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;)V

    invoke-virtual {v7, v5}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->addPipTransitionStateChangedListener(Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;)V

    iput-object v10, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iput-object v9, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    new-instance v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;

    invoke-direct {v5, p0, v3}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;I)V

    iget-object v6, v10, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v10, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v5, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;

    invoke-direct {v5, p0, v3}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;I)V

    iput-object v5, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mGesture:Lcom/android/wm/shell/pip2/phone/PipTouchHandler$DefaultPipTouchGesture;

    iput-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    new-instance v3, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    invoke-direct {v3, v2, v9, v1, v11}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/pip2/phone/PipMotionHelper;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v3, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    new-instance v5, Lcom/android/wm/shell/pip2/phone/PipTouchState;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    new-instance v3, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;I)V

    new-instance v6, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;

    const/4 v8, 0x0

    invoke-direct {v6, v10, v8}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v5, v1, v3, v6, v11}, Lcom/android/wm/shell/pip2/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v5, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

    new-instance v14, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    new-instance v8, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v8, p0, v1}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;I)V

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v9, p12

    move-object/from16 v10, p4

    move-object/from16 v11, p13

    invoke-direct/range {v1 .. v12}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip2/phone/PipTouchState;Lcom/android/wm/shell/pip2/phone/PipScheduler;Lcom/android/wm/shell/pip2/phone/PipTransitionState;Ljava/lang/Runnable;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/pip/PipPerfHintController;)V

    iput-object v14, v0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    iget-object v2, v13, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnAspectRatioChangedCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v13, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnAspectRatioChangedCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v13, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda4;->accept(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipTouchHandler;I)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final animateToNormalSize(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V
    .locals 6

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->getEstimatedMinMenuSize()Landroid/util/Size;

    move-result-object p1

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v2, v1, p1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->adjustNormalBoundsToFitMenu(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, v2, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSavedSnapFraction:F

    return-void
.end method

.method public final animateToUnStashedState()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_1
    iput v3, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final animateToUnexpandedState(Landroid/graphics/Rect;)V
    .locals 8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iget v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v4, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    iget-object v6, v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-gez v5, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v5, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    iget-object v7, v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v7, v5, v3, v4}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v3

    :cond_0
    iget v4, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    iget v5, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    iget-object v6, v6, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mSavedSnapFraction:F

    return-void
.end method

.method public getPipResizeGestureHandler()Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    return-object p0
.end method

.method public final getPossiblyMotionBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->isInMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onPipTransitionStateChanged(IILandroid/os/Bundle;)V
    .locals 12

    const/4 p1, 0x3

    const-string p3, "PipInputConsumer"

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

    if-eq p2, p1, :cond_6

    if-eq p2, v3, :cond_5

    const/4 p1, 0x6

    if-eq p2, p1, :cond_4

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-boolean v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowInputEvents:Z

    iget-object p1, v1, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, v1, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    iget-object p2, v0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iput-boolean v4, p1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mIsAttached:Z

    iget-object p2, p1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p1}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->updateIsEnabled()V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipInputConsumer:Lcom/android/wm/shell/pip2/phone/PipInputConsumer;

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipInputConsumer$InputEventReceiver;

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    iget-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mToken:Landroid/os/IBinder;

    invoke-interface {p1, p2, v4}, Landroid/view/IWindowManager;->destroyInputConsumer(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p2, p2, v3

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v4, "%s: Failed to destroy input consumer, %s"

    const-wide v1, 0x314d206adb9436c5L    # 3.2970177329094335E-71

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipInputConsumer$InputEventReceiver;

    invoke-virtual {p1}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipInputConsumer$InputEventReceiver;

    new-instance p1, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipInputConsumer;I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    iput-boolean v2, v5, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowInputEvents:Z

    goto :goto_3

    :cond_5
    iput-boolean v4, v5, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowInputEvents:Z

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->createOrUpdateDismissTarget()V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    iput-boolean v2, p1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mIsAttached:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->updateIsEnabled()V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentAdded(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipInputConsumer:Lcom/android/wm/shell/pip2/phone/PipInputConsumer;

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipInputConsumer$InputEventReceiver;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Landroid/view/InputChannel;

    invoke-direct {p1}, Landroid/view/InputChannel;-><init>()V

    :try_start_1
    iget-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mToken:Landroid/os/IBinder;

    invoke-interface {p2, v0, v4}, Landroid/view/IWindowManager;->destroyInputConsumer(Landroid/os/IBinder;I)Z

    iget-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mName:Ljava/lang/String;

    invoke-interface {p2, v0, v1, v4, p1}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_8

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v11

    const-string v10, "%s: Failed to create input consumer, %s"

    const-wide v7, -0x257b4641e7a7ce07L    # -1.1223656919904318E128

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_1
    new-instance p2, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/pip2/phone/PipInputConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipInputConsumer;Landroid/view/InputChannel;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    iput-boolean v2, v5, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowInputEvents:Z

    :goto_3
    return-void
.end method

.method public final sendAccessibilityHoverEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSourceNodeId(J)V

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setPipMotionHelper(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    return-void
.end method

.method public setPipResizeGestureHandler(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;

    return-void
.end method

.method public final updateMovementBounds()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    const v7, 0x3ff33333    # 1.9f

    invoke-direct {v0, v7, v2, v6}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2, v5}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v7, v2, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v0, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    sub-int/2addr v0, v5

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v3, v7, v4, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final willResizeMenu()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mEnableResize:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->getEstimatedMinMenuSize()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "%s: Failed to get estimated menu size"

    const-string p0, "PipTouchHandler"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x2d96cc1edfbe323bL    # 4.476572110584617E-89

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ge p0, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
