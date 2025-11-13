.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda17;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda17;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;I)V

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->doForAllChildTasks(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda17;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda17;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;I)V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->doForAllChildTasks(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v13

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v14

    iget v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    const/4 v11, -0x1

    if-eqz v7, :cond_2

    iget-boolean v9, v8, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v9

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v10}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds3()Landroid/graphics/Rect;

    move-result-object v10

    iget v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v15}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v15

    invoke-static {v12, v15}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    move-result v15

    if-eqz v15, :cond_1

    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v15}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v15}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    move v15, v9

    move-object v9, v10

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    move v15, v11

    const/4 v12, 0x0

    :goto_2
    if-eqz v6, :cond_3

    move v6, v13

    move v10, v14

    goto :goto_3

    :cond_3
    move v10, v13

    move v6, v14

    :goto_3
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    move/from16 v17, v6

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    if-eq v13, v11, :cond_4

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eq v14, v11, :cond_5

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eq v15, v11, :cond_6

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExcludeLoggingPackages:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda20;

    invoke-direct {v6, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda20;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_8
    if-eqz v7, :cond_b

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/android/wm/shell/util/SplitBounds;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->calculateCurrentSnapPosition()I

    move-result v18

    iget v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    move-object v3, v2

    move/from16 v7, v17

    move-object v6, v9

    move v9, v7

    move v7, v10

    move/from16 v17, v8

    move v8, v9

    move/from16 v9, v18

    move v10, v15

    move-object/from16 v18, v0

    move v0, v11

    move v11, v12

    move/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIII)V

    if-eq v13, v0, :cond_12

    if-eq v14, v0, :cond_12

    if-eq v15, v0, :cond_12

    invoke-virtual {v1, v13, v14, v15, v2}, Lcom/android/wm/shell/recents/RecentTasksController;->addSplitPair(IIILcom/android/wm/shell/util/SplitBounds;)Z

    if-eqz v16, :cond_9

    invoke-virtual/range {v18 .. v18}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendPairLoggingLocked()V

    :cond_9
    move-object/from16 v11, v18

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_a

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    if-eqz v0, :cond_12

    invoke-virtual {v11, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasSameRatioInGroupedTasks(Lcom/android/wm/shell/util/SplitBounds;Z)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_a
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/wm/shell/common/split/SplitWindowManager;->sendSplitStateChangedInfo(Z)V

    iput-object v2, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    goto/16 :goto_4

    :cond_b
    move/from16 v9, v17

    const/4 v12, 0x0

    move/from16 v19, v11

    move-object v11, v0

    move/from16 v0, v19

    new-instance v2, Lcom/android/wm/shell/util/SplitBounds;

    iget-object v3, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->calculateCurrentSnapPosition()I

    move-result v8

    move-object v3, v2

    move v6, v10

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/util/SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    if-eq v13, v0, :cond_d

    if-eq v14, v0, :cond_d

    invoke-virtual {v1, v13, v14, v0, v2}, Lcom/android/wm/shell/recents/RecentTasksController;->addSplitPair(IIILcom/android/wm/shell/util/SplitBounds;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_c

    int-to-long v0, v10

    int-to-long v3, v9

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, -0x52dcca990eaac348L    # -2.946775709629069E-91

    const/4 v8, 0x5

    const-string/jumbo v9, "updateRecentTasksSplitPair: adding split pair ltTask=%d rbTask=%d"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-eqz v16, :cond_d

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendPairLoggingLocked()V

    :cond_d
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_e

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    if-eqz v0, :cond_f

    invoke-virtual {v11, v2, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasSameRatioInGroupedTasks(Lcom/android/wm/shell/util/SplitBounds;Z)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0, v12}, Lcom/android/wm/shell/common/split/SplitWindowManager;->sendSplitStateChangedInfo(Z)V

    iput-object v2, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    :cond_f
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_MODE_SA_LOGGING:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsTableMode:Z

    if-eqz v0, :cond_12

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStringList:Ljava/util/List;

    invoke-virtual {v11, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->collectPairInFlexPackageList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_10
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLoggingPairPackageListInFlexModeRunnable:Ljava/lang/Runnable;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v2, v1, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLoggingPairPackageListInFlexModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->loggingPendingPairPackageListInFlexMode()V

    :cond_11
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStringList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStringList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1043"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStringList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    :goto_4
    return-void

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onFoldedStateChanged(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
