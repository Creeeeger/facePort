.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    iget v6, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    iget v7, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    iget v8, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    iget v4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mAppsStackedVertically:Z

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startSplitTasks(IIIZIFF)V

    return-void

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    iget v7, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    const/4 v4, -0x1

    const/high16 v8, 0x3f000000    # 0.5f

    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startSplitTasks(IIIZIFF)V

    return-void

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iget v4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V

    return-void

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iget v4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iget v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V

    return-void

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iget v0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;I)V

    return-void

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iget v4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iget v0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTaskAndIntent(ILandroid/content/Intent;II)V

    return-void

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iget v6, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iget v7, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    iget v8, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFILandroid/window/RemoteTransition;)V

    return-void

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->openInSplitWithAllApps(ILandroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v4, v4, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getToggleSplitScreenTarget()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "From Apps edge_Tap"

    if-eqz v4, :cond_1

    :try_start_1
    const-string v6, "1000"

    invoke-static {v6, v5}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v7

    goto :goto_1

    :cond_2
    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v7

    :goto_1
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->setResumedAffordanceAnimation()V

    :cond_3
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportMultiSplitAppMinimumSize()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isFlexPanelMode()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_4
    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v7

    iget-object v11, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v11, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    invoke-static {v11, v7}, Lcom/android/wm/shell/util/StageUtils;->getMultiSplitLaunchPosition(IZ)I

    move-result v7

    if-eq v2, v10, :cond_6

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, v10, v7, v6, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object v0

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v3, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6, v7, v8, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    :cond_5
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v9, v3, v0, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;I)V

    :goto_2
    if-eqz v4, :cond_9

    const-string v0, "1021"

    invoke-static {v0, v5}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-eq v2, v10, :cond_8

    invoke-virtual {v1, v2, v8, v6, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;)V

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v2, v3

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    const-string v1, "SplitScreenController"

    const-string v2, "Failed to open in split with tap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_4
    return-void

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageUserHandle:Landroid/os/UserHandle;

    iget v11, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    iget v12, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    iget v13, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    iget v14, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    iget v0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_a

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :cond_a
    move-object v8, v2

    if-nez v3, :cond_b

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v9, v2

    goto :goto_5

    :cond_b
    move-object v9, v3

    :goto_5
    if-nez v4, :cond_c

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v2

    goto :goto_6

    :cond_c
    move-object/from16 v16, v4

    :goto_6
    const/4 v15, 0x1

    const/16 v17, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v2, v1

    move-object v1, v10

    move-object/from16 v10, v16

    move/from16 v16, v14

    move v14, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v2 .. v18}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
