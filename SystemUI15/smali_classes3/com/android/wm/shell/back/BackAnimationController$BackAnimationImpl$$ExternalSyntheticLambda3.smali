.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFFFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$1:F

    iput p3, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$2:F

    iput p4, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$3:F

    iput p5, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$4:F

    iput p6, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$5:I

    iput p7, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iget v2, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$1:F

    iget v3, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$2:F

    iget v4, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$3:F

    iget v5, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$4:F

    iget v6, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$5:I

    iget v0, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda3;->f$6:I

    iget-object v1, v1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {v1}, Lcom/android/wm/shell/back/BackAnimationController;->getActiveTracker()Landroid/window/BackTouchTracker;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/window/BackTouchTracker;->update(FFFF)V

    :cond_0
    iget-object v4, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v4}, Landroid/window/BackTouchTracker;->isFinished()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v4}, Landroid/window/BackTouchTracker;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_21

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "Ignoring MotionEvent because two gestures are already being queued."

    const/4 v6, 0x0

    const-wide v2, -0x25e9c84aab7ecb48L    # -9.39973383532448E125

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    const/4 v4, 0x1

    if-nez v6, :cond_2

    iget-boolean v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez v0, :cond_21

    iput-boolean v4, v1, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    goto/16 :goto_9

    :cond_2
    iget-object v7, v1, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    const/4 v8, 0x2

    iget-object v9, v1, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const/4 v10, 0x3

    if-ne v6, v8, :cond_e

    iget-boolean v6, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez v6, :cond_b

    iget-boolean v6, v1, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    if-eqz v6, :cond_b

    iget-boolean v6, v1, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v6}, Landroid/window/BackTouchTracker;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v6}, Landroid/window/BackTouchTracker;->getTriggerBack()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v6}, Landroid/window/BackTouchTracker;->isInInitialState()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/android/wm/shell/back/BackAnimationController;->resetTouchTracker()V

    :cond_4
    iget-object v8, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v8}, Landroid/window/BackTouchTracker;->isInInitialState()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    goto :goto_1

    :cond_5
    iget-object v8, v1, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v8}, Landroid/window/BackTouchTracker;->isInInitialState()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    :goto_1
    invoke-virtual {v8, v2, v3, v0}, Landroid/window/BackTouchTracker;->setGestureStartLocation(FFI)V

    sget-object v0, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v8, v0}, Landroid/window/BackTouchTracker;->setState(Landroid/window/BackTouchTracker$TouchTrackerState;)V

    iput-boolean v4, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v6, :cond_6

    iput-boolean v5, v1, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v9, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/back/BackAnimationController;->startSystemAnimation()V

    goto :goto_4

    :cond_6
    iget-object v2, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    if-ne v8, v2, :cond_a

    :try_start_0
    iget-boolean v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mTrackingLatency:Z

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/android/wm/shell/back/BackAnimationController;->cancelLatencyTracking()V

    :cond_7
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v3, 0x19

    invoke-virtual {v0, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iput-boolean v4, v1, Lcom/android/wm/shell/back/BackAnimationController;->mTrackingLatency:Z

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, v1, Lcom/android/wm/shell/back/BackAnimationController;->mNavigationObserver:Landroid/os/RemoteCallback;

    iget-object v4, v1, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v0, v3, v4}, Landroid/app/IActivityTaskManager;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/back/BackAnimationController;->onBackNavigationInfoReceived(Landroid/window/BackNavigationInfo;Landroid/window/BackTouchTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v3, "ShellBackPreview"

    const-string v4, "Failed to initAnimation"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Landroid/window/BackTouchTracker;->getTriggerBack()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation(Z)V

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_a

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v7, -0x44b4d887689cc160L    # -4.492282882460402E-23

    const/4 v9, 0x0

    const-string v10, "Cannot start tracking new gesture with neither tracker in initial state."

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_4
    iput-boolean v5, v1, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    :cond_b
    iget-boolean v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v0, :cond_21

    iget-boolean v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z

    if-nez v0, :cond_c

    goto/16 :goto_9

    :cond_c
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->isActive()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_9

    :cond_d
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    goto/16 :goto_9

    :cond_e
    if-eq v6, v4, :cond_f

    if-ne v6, v10, :cond_21

    :cond_f
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_10

    int-to-long v2, v6

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v16

    const/4 v14, 0x1

    const-string v15, "Finishing gesture with event action: %d"

    const-wide v12, 0x7c73316231f831b7L    # 2.9926541122861627E291

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    if-ne v6, v10, :cond_11

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/back/BackAnimationController;->setTriggerBack(Z)V

    :cond_11
    invoke-virtual {v1}, Lcom/android/wm/shell/back/BackAnimationController;->getActiveTracker()Landroid/window/BackTouchTracker;

    move-result-object v0

    iget-boolean v2, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v2, :cond_20

    if-nez v0, :cond_12

    goto/16 :goto_8

    :cond_12
    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->getTriggerBack()Z

    move-result v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v16

    const/4 v14, 0x0

    const-string v15, "onGestureFinished() mTriggerBack == %s"

    const-wide v12, 0x1aed1c64aa953324L    # 5.61239702576357E-179

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iput-boolean v5, v1, Lcom/android/wm/shell/back/BackAnimationController;->mThresholdCrossed:Z

    iput-boolean v5, v1, Lcom/android/wm/shell/back/BackAnimationController;->mPointersPilfered:Z

    iput-boolean v5, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    sget-object v3, Landroid/window/BackTouchTracker$TouchTrackerState;->FINISHED:Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v0, v3}, Landroid/window/BackTouchTracker;->setState(Landroid/window/BackTouchTracker$TouchTrackerState;)V

    iget-boolean v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_21

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, 0x5ed670102f1233aeL    # 7.172608409795645E148

    const/4 v4, 0x0

    const-string v5, "Animation is still running"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_14
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->isInInitialState()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v3, 0x4

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_15

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v7, 0x48de7ade333b3c71L    # 1.0620713525363267E43

    const/4 v9, 0x0

    const-string v10, "mBackNavigationInfo is null AND there is another back animation in progress"

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->reset()V

    if-eqz v2, :cond_17

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_16

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v7, -0xfa43bee2efbc3d4L

    const/4 v9, 0x0

    const-string v10, "injectBackKey"

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/back/BackAnimationController;->sendBackEvent(I)V

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/back/BackAnimationController;->sendBackEvent(I)V

    :cond_17
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation(Z)V

    goto/16 :goto_9

    :cond_18
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToAnimator()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/android/wm/shell/back/BackAnimationController;->mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

    iget-object v3, v2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/back/BackAnimationRunner;

    if-nez v3, :cond_19

    goto :goto_5

    :cond_19
    iget-boolean v4, v3, Lcom/android/wm/shell/back/BackAnimationRunner;->mAnimationCancelled:Z

    :goto_5
    if-eqz v4, :cond_1a

    goto :goto_7

    :cond_1a
    iget-object v2, v2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/back/BackAnimationRunner;

    if-nez v0, :cond_1b

    goto :goto_6

    :cond_1b
    iget-boolean v5, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    :goto_6
    if-eqz v5, :cond_1d

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_1c

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, -0x785134a1d18dcdb0L

    const/4 v4, 0x0

    const-string v5, "Gesture released, but animation didn\'t ready."

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    const-wide/16 v0, 0x7d0

    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v9, v7, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_9

    :cond_1d
    invoke-virtual {v1}, Lcom/android/wm/shell/back/BackAnimationController;->startPostCommitAnimation()V

    goto :goto_9

    :cond_1e
    :goto_7
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1f

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x6a4cfb84d2b13bdcL    # 1.1358549068106616E204

    const/4 v5, 0x0

    const-string v6, "Trigger back without dispatching to animator."

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/back/BackAnimationController;->invokeOrCancelBack(Landroid/window/BackTouchTracker;)V

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->reset()V

    goto :goto_9

    :cond_20
    :goto_8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_21

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, -0x379eb12ceaac36aL    # -6.88619301966423E291

    const/4 v4, 0x0

    const-string v5, "onGestureFinished called while no gesture is started"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :goto_9
    return-void
.end method
