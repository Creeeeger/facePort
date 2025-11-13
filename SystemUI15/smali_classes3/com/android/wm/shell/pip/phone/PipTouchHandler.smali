.class public final Lcom/android/wm/shell/pip/phone/PipTouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mBottomOffsetBufferPx:I

.field public final mConnection:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

.field public final mContext:Landroid/content/Context;

.field public mDeferResizeToNormalBoundsUntilRotation:I

.field public final mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

.field public mDisplayRotation:I

.field public mEnableResize:Z

.field public mEnableStash:Z

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public final mGesture:Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

.field public mImeHeight:I

.field public mImeOffset:I

.field public final mInsetBounds:Landroid/graphics/Rect;

.field public mIsImeShowing:Z

.field public mIsShelfShowing:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public mMenuState:I

.field public mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field public mMovementBoundsExtraOffsets:I

.field public mMovementWithinDismiss:Z

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

.field public final mPipNaturalSwitchingHandler:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

.field public final mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

.field public mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public mSavedSnapFraction:F

.field public mSendingHoverAccessibilityEvents:Z

.field public mShelfHeight:I

.field public final mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

.field public mStashVelocityThreshold:F

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/SizeSpecSource;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/common/pip/PipBoundsState;",
            "Lcom/android/wm/shell/common/pip/SizeSpecSource;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            "Lcom/android/wm/shell/common/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/pip/PipPerfHintController;",
            ">;",
            "Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v1, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableStash:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    iput-object v14, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    iput-object v11, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const/4 v3, 0x0

    move-object/from16 v4, p12

    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iput-object v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v14, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object v13, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iput-object v12, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object v15, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iput-object v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler$PipMenuListener;

    invoke-direct {v3, v0, v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    iget-object v4, v15, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v15, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

    invoke-direct {v3, v0, v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mGesture:Lcom/android/wm/shell/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    new-instance v7, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-direct {v7, v14, v10, v1, v11}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    new-instance v6, Lcom/android/wm/shell/pip/phone/PipTouchState;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v15, v4}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v6, v1, v2, v3, v11}, Lcom/android/wm/shell/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    new-instance v5, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v3, v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    move-object/from16 v3, p4

    move-object/from16 v17, v4

    move-object/from16 v4, p5

    move-object v15, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v7, p7

    move-object/from16 v8, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    move-object/from16 v10, p10

    move-object/from16 v11, p3

    move-object v14, v12

    move-object/from16 v12, p11

    move-object v14, v13

    move-object/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/phone/PipTouchState;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Ljava/lang/Runnable;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/pip/PipPerfHintController;)V

    iput-object v15, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    new-instance v11, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v6, v14, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    new-instance v7, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    new-instance v8, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    new-instance v9, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v9, v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v11, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mConnection:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v2, p5

    iget-object v3, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnAspectRatioChangedCallbacks:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnAspectRatioChangedCallbacks:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda5;->accept(Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v1, :cond_2

    new-instance v9, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v9, v0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    new-instance v10, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p11

    move-object/from16 v4, p7

    move-object/from16 v5, p5

    move-object/from16 v6, v17

    move-object/from16 v7, p3

    move-object/from16 v8, p13

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipTouchState;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Ljava/lang/Runnable;)V

    iput-object v10, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipNaturalSwitchingHandler:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    :cond_2
    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final animateToNormalSize(Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->getEstimatedMinMenuSize()Landroid/util/Size;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v3, v2, v0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->adjustNormalBoundsToFitMenu(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_0

    cmpg-float v5, v3, v4

    if-ltz v5, :cond_1

    :cond_0
    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    cmpl-float v2, v3, v4

    if-ltz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[PipTaskOrganizer] animateToNormalSize setUserResizeBounds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason=ratio_change"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PipTouchHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    invoke-static {v0, v3, v2, v4}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, v3, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, v3, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v6, v5, v4, v1}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iput-object p1, v3, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked$1(Landroid/graphics/Rect;)V

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    return-void
.end method

.method public final animateToUnStashedState()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

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

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_1
    iput v3, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked$1(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final animateToUnexpandedState(Landroid/graphics/Rect;)V
    .locals 6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v3, v1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    return-void
.end method

.method public getPipResizeGestureHandler()Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    return-object p0
.end method

.method public final getPossiblyMotionBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

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

.method public final onRegistrationChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mConnection:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mConnectionImpl:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iget-boolean p1, p1, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final sendAccessibilityHoverEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

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

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setPipMotionHelper(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    return-void
.end method

.method public setPipResizeGestureHandler(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    return-void
.end method

.method public final updateMovementBounds()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v0, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const v5, 0x3ff33333    # 1.9f

    invoke-direct {v0, v5, v3, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-direct {v0, v5, v3, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v0, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getStashInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    sub-int/2addr v0, v4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getStashInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v2, v5, v3, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mStashConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final updatePipSizeConstraints(Landroid/graphics/Rect;F)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-eqz v1, :cond_0

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->updateMinMaxSize(F)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object p2, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMinSize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMinSize(II)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object p1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMaxSize(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMinSize(II)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object p1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateMaxSize(II)V

    :goto_0
    return-void
.end method

.method public final willResizeMenu()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableResize:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->getEstimatedMinMenuSize()Landroid/util/Size;

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

    const-wide v3, 0x3bf14b26a5453715L    # 5.859285507839664E-20

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-gt v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr v0, p0

    if-le v0, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
