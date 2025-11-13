.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iget-boolean v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result v2

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(Landroid/graphics/Rect;ZZZ)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    :cond_1
    return-void

    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController;

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-wide v1, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->updatePipPositionForKeepClearAreas()V

    :goto_0
    return-void

    :pswitch_2
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNeedToCheckRotation:Z

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iput-boolean v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNeedToCheckRotation:Z

    iget v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    iget-object v1, v3, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    iget v7, v1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-eq v8, v7, :cond_d

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v6, v5, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mRotationController:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;

    move-object v10, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;->onDisplayChange$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object p0, v2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->moveToBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget-object v0, v3, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_d

    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    sub-int/2addr v0, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v4

    const/4 v3, 0x5

    if-eqz p0, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "    "

    invoke-static {v3, v6}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v8, "PipMotionHelper"

    filled-new-array {v8, p0, v5, v6}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, -0x50f661092fefc55dL    # -4.220330686911861E-82

    const/4 v10, 0x0

    const-string v11, "%s: animateToOffset: originalBounds=%s offset=%s callers=\n%s"

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation$1()V

    iget-object v5, v1, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object p0, v5, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v6, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_d

    if-ne v6, v3, :cond_7

    goto :goto_2

    :cond_7
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    iget-boolean p0, v5, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    const-string v3, "PipTaskOrganizer"

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v4

    if-eqz p0, :cond_d

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x0

    const-string v8, "%s: skip scheduleOffsetPip, entering pip deferred"

    const-wide v5, 0x2ef6d5472b223f97L    # 1.880556571333136E-82

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    if-ne v6, v7, :cond_a

    const-string/jumbo p0, "skip offset pip mState=ENTERING_PIP"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    iget-object p0, v5, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_b

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v7

    if-eqz p0, :cond_c

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v10

    const-string v9, "%s: mTaskInfo is not set"

    const-wide v6, -0x5a4f6390aecbc570L    # -3.83424217626957E-127

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_b
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x12c

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    :cond_c
    :goto_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    :cond_d
    :goto_2
    return-void

    :pswitch_3
    move-object v0, p0

    check-cast v0, Lcom/android/wm/shell/pip/phone/PipController;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "prev="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPipTaskAppeared: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PipController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    move-object v0, p0

    check-cast v0, Lcom/android/wm/shell/pip/phone/PipController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/android/wm/shell/pip/phone/PipController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PipController"

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    const-string v3, "pip_input_consumer"

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/pip/phone/PipController;I)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object v1, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnMinimalSizeChangeCallback:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnShelfVisibilityChangeCallback:Lcom/android/internal/util/function/TriConsumer;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnPipTaskAppearedCallback:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/pip/phone/PipController;I)V

    iput-object v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnPipStashCallback:Ljava/util/function/IntConsumer;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    iput-object v3, v2, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    iput-object v3, v2, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mRegistrationListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda15;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipInputConsumer;I)V

    iget-object v2, v2, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v1, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    iget-object v2, v2, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mRotationController:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iput v1, v2, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    new-instance v1, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iget-object v3, v2, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    const/4 v1, 0x0

    const/4 v3, 0x4

    :try_start_0
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedTaskListener:Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

    iget-object v4, v4, Lcom/android/wm/shell/WindowManagerShellWrapper;->mPinnedStackListenerForwarder:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    iget-object v6, v4, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    iget-object v4, v4, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->mListenerImpl:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListenerImpl;

    invoke-interface {v5, v1, v4}, Landroid/view/IWindowManager;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_f

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v10

    const-string v9, "%s: Failed to register pinned stack listener, %s"

    const-wide v6, -0x2b2a9fd6c755c899L    # -4.675385999635295E100

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5, v1}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->registerInputConsumer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v3, v4, v3

    if-eqz v3, :cond_10

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v9

    const-string v8, "%s: Failed to register pinned stack listener, %s"

    const-wide v5, -0x2b2a9fd6c755c899L    # -4.675385999635295E100

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_4
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$2;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$3;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    iget-object v3, v1, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_5

    :cond_12
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget v0, v2, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$4;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$4;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda17;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

    iget-object v2, v1, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    iget-object v2, v1, Lcom/android/wm/shell/common/TabletopModeController;->mListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda17;->onTabletopModeChanged(Z)V

    :goto_6
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mOneHandedController:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/wm/shell/common/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    const-string v2, "extra_shell_pip"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
