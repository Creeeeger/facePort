.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    return-void
.end method


# virtual methods
.method public final onDisplayChange$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 19

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v5, p5

    move-object/from16 v2, p0

    iget-object v6, v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v2, v6, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v2, v0, v1, v5}, Lcom/android/wm/shell/pip/PipTransitionController;->handleRotateDisplay(IILandroid/window/WindowContainerTransaction;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v6, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v3, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v3

    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-ne v3, v1, :cond_1

    iget-object v0, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBoundsScale:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    goto/16 :goto_3

    :cond_1
    iget-object v3, v6, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget-boolean v4, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    iget-object v7, v6, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v8, 0x2

    if-eqz v4, :cond_2

    iget v3, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v3, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-ne v3, v8, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v3, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v3, v3, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Landroid/graphics/Rect;

    iget-object v3, v3, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iget-object v3, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v6, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    iget-object v9, v6, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v10, v9, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    move/from16 v11, p1

    if-ne v11, v10, :cond_c

    if-ne v0, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v10, 0x0

    invoke-interface {v0, v8, v10}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v8, v6, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iget-object v11, v8, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    invoke-virtual {v8, v15, v4}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v4

    iget v12, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    invoke-virtual {v11, v12, v15, v4}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v14

    invoke-virtual {v9, v1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->rotateTo(I)V

    iget v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    iget-object v4, v6, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v11, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v11, v11, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v11, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updatePipSizeConstraints(Landroid/graphics/Rect;F)V

    iget-object v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v11, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBoundsScale:F

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v11, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    iget v12, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBoundsScale:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v15, v10, v10, v1, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v8, v15, v10}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v13

    iget v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    iget v11, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    invoke-virtual {v9}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual {v9}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v18

    move-object v12, v15

    move-object v9, v15

    move v15, v1

    move/from16 v16, v11

    invoke-static/range {v12 .. v18}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v8, v7}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v0, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v6, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v7, v10}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v1, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    sub-int/2addr v1, v8

    iget v8, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    sub-int/2addr v1, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gt v1, v0, :cond_7

    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_7
    iget-boolean v0, v6, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    if-nez v0, :cond_a

    iget-boolean v0, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsShelfShowing:Z

    if-nez v0, :cond_8

    iget v0, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mShelfHeight:I

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    iput-boolean v10, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsShelfShowing:Z

    iput v10, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mShelfHeight:I

    iget-object v0, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnShelfVisibilityChangeCallback:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v0, :cond_9

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v1, v7, v1}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    :goto_1
    invoke-virtual {v2, v10, v10}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setImeVisibility(IZ)V

    iput-boolean v10, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    iput v10, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mShelfHeight:I

    iput-boolean v10, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    iput v10, v4, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    :cond_a
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, v3

    move v3, v4

    move v4, v7

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    iget-boolean v0, v6, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_c

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v2, "PipController"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x13358592b4ae3bf9L    # 3.901944643352567E-216

    const/4 v4, 0x0

    const-string v5, "%s: Failed to get RootTaskInfo for pinned task, %s"

    move-object/from16 p0, v1

    move-wide/from16 p1, v2

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    :goto_2
    iget-object v0, v6, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->rotateTo(I)V

    iget-object v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-ne v0, v8, :cond_c

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    :cond_c
    :goto_3
    return-void
.end method
