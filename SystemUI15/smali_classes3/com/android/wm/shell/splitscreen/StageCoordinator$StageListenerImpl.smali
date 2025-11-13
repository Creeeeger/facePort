.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;


# instance fields
.field public mHasChildren:Z

.field public mHasRootTask:Z

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mHasRootTask="

    invoke-static {p2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    const-string v2, "mVisible="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    const-string v2, "mHasChildren="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final onChildTaskStatusChanged(IZZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    iget-object v6, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-eqz v5, :cond_2

    if-ne v0, v6, :cond_0

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_0
    iget-object v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne v0, v5, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_1
    iget-object v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iget-object v6, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez v0, :cond_6

    iget v7, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v7}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v7

    iget-object v8, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v8

    iget-object v9, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v9, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget-object v10, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v7, v9}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    move-result v7

    invoke-virtual {v5, v7, v8}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateMainStageState(II)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    iget v13, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    iget v14, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v18

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v8, 0x184

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v8 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    goto :goto_2

    :cond_6
    iget v7, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v8

    iget-object v9, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v9, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget-object v10, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    if-nez v10, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v7, v9}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    move-result v7

    invoke-virtual {v5, v7, v8}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateSideStageState(II)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    iget v15, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    iget v7, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v18

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v8, 0x184

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v16, v7

    invoke-static/range {v8 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    :goto_2
    if-eqz p2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    :cond_9
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v5, :cond_d

    if-ne v0, v4, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelActivity(Ljava/lang/String;)Z

    move-result v5

    goto :goto_4

    :cond_b
    :goto_3
    move v5, v2

    :goto_4
    if-eqz v5, :cond_c

    move v2, v4

    :cond_c
    iput-boolean v2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateFlexPanelState(ZLandroid/view/SurfaceControl$Transaction;Z)V

    :cond_d
    iget-object v2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_5
    if-ltz v2, :cond_e

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    move/from16 v5, p1

    invoke-interface {v4, v5, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onTaskStageChanged(IIZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public final onNoLongerSupportMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "onNoLongerSupportMultiWindow: task=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x7b2e918a23b73e6bL    # 2.2727948660713E285

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v3, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v4, 0x1

    if-ne v3, p0, :cond_1

    move v1, v4

    :cond_1
    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_0
    invoke-virtual {v0, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleUnsupportedSplitStart()V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    xor-int/lit8 v3, v1, 0x1

    :goto_1
    move v8, v3

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    goto :goto_1

    :goto_2
    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez v3, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v1

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v0, v6, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;)V

    :cond_6
    invoke-virtual {v0, v8, v6, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearSplitPairedInRecents(I)V

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v5, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const-string v1, " does not support splitscreen, or is a controlled activity type"

    const-string v3, "onNoLongerSupportMultiWindow"

    const-string v4, "StageCoordinator"

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "taskInfo "

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v5, "app package "

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    :cond_8
    return-void
.end method

.method public final onSplitLayoutChangeRequested(Lcom/samsung/android/multiwindow/TaskOrganizerInfo;)V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSplitLayoutChangeRequested: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StageCoordinator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->isChangeToHorizontalSplitLayout()Z

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    if-eqz v5, :cond_0

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v6, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividePositionByRatio()I

    move-result v5

    if-eq v6, v5, :cond_1

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v5, v2, v4, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->rotateMultiSplitWithTransition()Z

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_5

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v6, v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string v7, "change_to_horizontal_split_layout"

    invoke-virtual {v5, v6, v4, v7}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v8, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v8, v4, v7}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v7, v5}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v7, v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v6, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->isChangeSplitLayoutForLaunchAdjacent()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CREATE_MODE:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getSplitScreenCreateMode()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitCreateMode(IZ)Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    :cond_4
    iput-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getExitSplitScreenTopTaskId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getSplitToFreeformTaskId()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getExitSplitScreenStageType()I

    move-result v6

    const/4 v11, -0x1

    if-ne v0, v11, :cond_7

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    if-eq v5, v11, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V

    goto :goto_3

    :cond_7
    :goto_2
    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    const-string/jumbo v7, "split_exit"

    invoke-virtual {v5, v3, v7}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v7, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->maximizeSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_8
    if-ne v6, v4, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->maximizeSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_9
    const/4 v0, 0x2

    if-ne v6, v0, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->maximizeSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_a
    const/4 v0, 0x4

    if-ne v6, v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->maximizeSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    :cond_b
    :goto_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getSplitFeasibleMode()I

    move-result v0

    if-eq v0, v11, :cond_f

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v6, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    if-eqz v7, :cond_c

    if-eqz v6, :cond_c

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    iput v0, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    if-le v6, v0, :cond_d

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_d
    if-ne v0, v4, :cond_e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v5

    if-nez v5, :cond_e

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, v11, v6, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    goto :goto_4

    :cond_e
    if-ne v0, v4, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v5, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    if-eq v0, v5, :cond_f

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    move-result v0

    invoke-virtual {p0, v5, v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v5, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v5, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_f
    :goto_4
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getAssistantActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getAssistantActivityIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getRequestedSplitRatio()F

    move-result v12

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->getDeferSplitRotationInPort()Z

    move-result p1

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v8, 0xc000000

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    if-nez v13, :cond_10

    const-string p0, "assistantPendingIntent null"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_10
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz p1, :cond_11

    goto :goto_5

    :cond_11
    move v10, v4

    goto :goto_6

    :cond_12
    :goto_5
    move v10, v3

    goto :goto_6

    :cond_13
    move v10, v11

    :goto_6
    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p0

    move-object v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v6

    if-nez v6, :cond_14

    if-nez p1, :cond_14

    move v10, v2

    goto :goto_7

    :cond_14
    move v10, v12

    :goto_7
    invoke-virtual {v1, v13, v0, v5}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v2, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAiKeyAppLaunch(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1, v10, v4, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    const-string v0, "ai_hot_key"

    invoke-virtual {v1, p1, v0}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_9

    :cond_15
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareBringSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V

    goto :goto_8

    :cond_16
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareActiveSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V

    :goto_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction;->setChangeTransitionRequest(I)V

    :cond_17
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/16 v9, 0x452

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v6, v1

    move-object v8, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    :cond_18
    :goto_9
    return-void
.end method

.method public final postDividerPanelAutoOpenIfNeeded()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsPendingFirstAutoOpenDividerPanel:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerPanel;->isSupportPanelOpenPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsPendingFirstAutoOpenDividerPanel:Z

    const-string v0, "SplitWindowManager"

    const-string v1, "Try to run DividerPanel first auto open"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanelAutoOpen:Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
