.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# instance fields
.field public mAppPairStarted:Z

.field public mBreakOnNextWake:Z

.field public mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

.field public mCellDividerVisible:Z

.field public final mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

.field public final mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mCellStageWindowConfigPosition:I

.field public final mContext:Landroid/content/Context;

.field public final mCurrentPackageNameList:Ljava/util/ArrayList;

.field public final mDelayedHandleLayoutSizeChange:Ljava/lang/Runnable;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayId:I

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

.field public mDividerLeashHidden:Z

.field public mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

.field public mDividerVisible:Z

.field public final mExcludeLoggingPackages:Ljava/util/List;

.field public mExitSplitScreenOnHide:Z

.field public mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

.field public final mFoldLockSettingsObserver:Lcom/android/internal/policy/FoldLockSettingsObserver;

.field public final mHandleSplitWithAIAssistTimeoutRunnable:Ljava/lang/Runnable;

.field public mIsDividerRemoteAnimating:Z

.field public mIsDropEntering:Z

.field public mIsExiting:Z

.field public mIsFlexPanelMode:Z

.field public mIsFolded:Z

.field public mIsMultiSplitRotating:Z

.field public mIsOpeningHomeDuringSplit:Z

.field public mIsRecentsInSplitAnimating:Z

.field public mIsRootTranslucent:Z

.field public mIsTableMode:Z

.field public mKeyguardActive:Z

.field mLastActiveStage:I

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public mLastFlexPanelTaskId:I

.field public mLastMainSplitDivision:I

.field public final mLastPackageNameList:Ljava/util/ArrayList;

.field public final mLastPairPackageListInFlexMode:Ljava/util/List;

.field public mLastReportedCellStageWinConfigPosition:I

.field public mLastReportedMainStageWinConfigPosition:I

.field public mLastReportedSideStageWinConfigPosition:I

.field public mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

.field public mLastTransactionType:I

.field public final mLaunchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

.field public final mListeners:Ljava/util/List;

.field public final mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

.field public final mLoggingPairPackageListInFlexModeRunnable:Ljava/lang/Runnable;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

.field public final mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

.field public mOrientation:I

.field public final mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

.field public final mPausingTasks:Ljava/util/ArrayList;

.field public final mPendingPairPackageListInFlexMode:Ljava/util/List;

.field public final mRecentTasks:Ljava/util/Optional;

.field mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mRootTaskLeash:Landroid/view/SurfaceControl;

.field public final mSelectListeners:Ljava/util/Set;

.field public mShouldUpdateRecents:Z

.field public mShowDecorImmediately:Z

.field public final mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

.field public final mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mSideStagePosition:I

.field public mSkipEvictingMainStageChildren:Z

.field public mSkipFlexPanelUpdate:Z

.field public final mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

.field public mSplitDivision:I

.field public mSplitInvocationListener:Lcom/android/systemui/wmshell/WMShell$8;

.field public mSplitInvocationListenerExecutor:Ljava/util/concurrent/Executor;

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mSplitLayoutChangedForLaunchAdjacent:Z

.field public mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

.field public mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field public final mSplitUnsupportedToast:Landroid/widget/Toast;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public final mTempRect3:Landroid/graphics/Rect;

.field public mTmpConfigAfterFoldDismiss:Landroid/content/res/Configuration;

.field public final mTmpStageList:Ljava/util/List;

.field public final mTmpStringList:Ljava/util/List;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public mWillBeFlexPanelMode:Z

.field public final mWindowDecorViewModel:Ljava/util/Optional;


# direct methods
.method public static -$$Nest$monRemoteAnimationFinishedOrCancelled(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "onRemoteAnimationFinishedOrCancelled"

    const-string v0, "main or side stage was not populated."

    invoke-static {p1, v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StageCoordinator"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleUnsupportedSplitStart()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;Lcom/android/wm/shell/common/LaunchAdjacentController;Ljava/util/Optional;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/LaunchAdjacentController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v4, p5

    move-object/from16 v3, p8

    move-object/from16 v2, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v16, Landroid/view/SurfaceSession;

    invoke-direct/range {v16 .. v16}, Landroid/view/SurfaceSession;-><init>()V

    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v11, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v11, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    new-instance v15, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v15, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v15, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    new-instance v14, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v14, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v14, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v13, 0x0

    iput v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSelectListeners:Ljava/util/Set;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    const/4 v7, -0x1

    iput v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    iput v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    iput v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastFlexPanelTaskId:I

    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Ljava/lang/Runnable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    const-string v7, "com.sec.android.app.launcher"

    const-string v8, "com.android.systemui"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExcludeLoggingPackages:Ljava/util/List;

    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    iput v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    iput-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastConfiguration:Landroid/content/res/Configuration;

    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsMultiSplitRotating:Z

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-direct {v7, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz v17, :cond_0

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    invoke-direct {v7, v6, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    :goto_0
    move-object v10, v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :goto_1
    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStageList:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPendingPairPackageListInFlexMode:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStringList:Ljava/util/List;

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v8, 0x4

    invoke-direct {v7, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLoggingPairPackageListInFlexModeRunnable:Ljava/lang/Runnable;

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v8, 0x6

    invoke-direct {v7, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mHandleSplitWithAIAssistTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iput v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    move-object/from16 v9, p3

    iput-object v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance v7, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-direct {v7}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    move-object/from16 v8, p11

    iput-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v7, p13

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    move-object/from16 v7, p14

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLaunchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

    move-object/from16 v7, p15

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWindowDecorViewModel:Ljava/util/Optional;

    invoke-virtual {v1, v0, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(ILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    sget-object v18, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v18, v18, v13

    if-eqz v18, :cond_1

    sget-object v19, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v20, 0x15b7110fd57334f2L    # 4.598195520672183E-204

    const/16 v22, 0x0

    const-string v23, "Creating main/side root task"

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/android/wm/shell/splitscreen/MainStage;

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v25, v10

    move/from16 v10, p2

    move-object/from16 v26, v12

    move-object/from16 v12, p3

    move v1, v13

    move-object/from16 v13, v16

    move-object/from16 v18, v14

    move-object/from16 v14, p10

    move-object/from16 v19, v15

    move-object/from16 v15, p15

    invoke-direct/range {v7 .. v15}, Lcom/android/wm/shell/splitscreen/MainStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    new-instance v0, Lcom/android/wm/shell/splitscreen/SideStage;

    move-object v7, v0

    move-object/from16 v11, v19

    invoke-direct/range {v7 .. v15}, Lcom/android/wm/shell/splitscreen/SideStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/wm/shell/splitscreen/CellStage;

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p2

    move-object/from16 v11, v18

    move-object/from16 v12, p3

    move-object/from16 v13, v16

    move-object/from16 v14, p10

    move-object/from16 v15, p15

    invoke-direct/range {v7 .. v15}, Lcom/android/wm/shell/splitscreen/CellStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    :cond_2
    iput-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual/range {p4 .. p4}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-direct {v8, v5, v9}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v7, v8}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_MODE_SA_LOGGING:Z

    if-eqz v7, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;

    invoke-direct {v8, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-virtual {v0, v7, v8}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_3
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v8, 0x7

    invoke-direct {v7, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-direct {v0, v2, v3, v7, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v4, v6}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-virtual {v3, v6}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    const v0, 0x7f130551

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    iput-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    new-instance v0, Lcom/android/internal/policy/FoldLockSettingsObserver;

    move-object/from16 v1, p12

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/FoldLockSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFoldLockSettingsObserver:Lcom/android/internal/policy/FoldLockSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->register()V

    new-instance v7, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v8, v3

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    if-eqz v17, :cond_4

    move-object/from16 v0, v25

    iput-object v0, v8, Lcom/android/wm/shell/transition/Transitions;->mRecentTransitionCallback:Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    :cond_4
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;Lcom/android/wm/shell/common/LaunchAdjacentController;Ljava/util/Optional;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/splitscreen/MainStage;",
            "Lcom/android/wm/shell/splitscreen/SideStage;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/LaunchAdjacentController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;)V"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v5, p7

    move-object/from16 v0, p11

    move-object/from16 v3, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v1, 0x0

    iput v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    const/4 v2, 0x1

    iput v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSelectListeners:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    const/4 v2, -0x1

    iput v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    iput v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    iput v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastFlexPanelTaskId:I

    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    const-string v2, "com.sec.android.app.launcher"

    const-string v4, "com.android.systemui"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExcludeLoggingPackages:Ljava/util/List;

    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    iput v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastConfiguration:Landroid/content/res/Configuration;

    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsMultiSplitRotating:Z

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    :cond_0
    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStageList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPendingPairPackageListInFlexMode:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStringList:Ljava/util/List;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLoggingPairPackageListInFlexModeRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v4, 0x6

    invoke-direct {v2, p0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mHandleSplitWithAIAssistTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    move v2, p2

    iput v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    move-object v2, p3

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v2, p4

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v2, p5

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    move-object/from16 v2, p6

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iput-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v2, p8

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v2, p9

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v2, p10

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v9, 0x7

    invoke-direct {v4, p0, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-direct {v2, v3, v0, v4, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-direct {v2}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    move-object/from16 v4, p13

    iput-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v2, p15

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    move-object/from16 v2, p16

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLaunchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

    move-object/from16 v2, p17

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWindowDecorViewModel:Ljava/util/Optional;

    invoke-virtual {v5, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object v6, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    const v0, 0x7f130551

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    new-instance v0, Lcom/android/internal/policy/FoldLockSettingsObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/FoldLockSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFoldLockSettingsObserver:Lcom/android/internal/policy/FoldLockSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->register()V

    new-instance v9, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;)V

    iput-object v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-virtual {p0, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_1
    return-void
.end method

.method public static addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .locals 2

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public static convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    and-int/lit8 v2, v0, 0x8

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    and-int/lit8 v0, v0, 0x20

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget p0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    return v3

    :cond_3
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    and-int/lit8 v2, v0, 0x10

    const/4 v3, 0x3

    if-eqz v2, :cond_4

    return v3

    :cond_4
    and-int/lit8 v0, v0, 0x40

    const/4 v2, 0x5

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    if-ne p0, v1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    return v3
.end method

.method public static getExpandChangeTransitionMode(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelActivity(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method public static getRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/4 v1, -0x2

    const v2, 0x7fffffff

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_0

    return-object v1

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isVisibleTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static rotateMultiSplitClockwise(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I
    .locals 10

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x30

    const/16 v5, 0x18

    const/16 v6, 0x48

    if-eq v0, v3, :cond_9

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/16 v9, 0x60

    if-eq v0, v2, :cond_6

    const/4 v2, 0x5

    if-eq v0, v8, :cond_3

    if-eq v0, v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iput v7, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    if-ne v0, v6, :cond_1

    iput v5, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto :goto_0

    :cond_1
    if-ne v0, v9, :cond_2

    iput v6, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    :cond_2
    :goto_0
    return v3

    :cond_3
    iput v1, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    if-ne v0, v4, :cond_4

    iput v9, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto :goto_1

    :cond_4
    if-ne v0, v9, :cond_5

    iput v6, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    :cond_5
    :goto_1
    return v2

    :cond_6
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iput v7, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    if-ne v0, v5, :cond_7

    iput v4, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto :goto_2

    :cond_7
    if-ne v0, v4, :cond_8

    iput v9, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    :cond_8
    :goto_2
    return v8

    :cond_9
    iput v1, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    if-ne v0, v5, :cond_a

    iput v4, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    goto :goto_3

    :cond_a
    if-ne v0, v6, :cond_b

    iput v5, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    :cond_b
    :goto_3
    return v2
.end method

.method public static sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V
    .locals 5

    const-class v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "stage_position"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "stage_ratio"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v3, "cell_ratio"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v3, "launch_task_id"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "main_stage_intent"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "side_stage_intent"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "main_stage_user_handle"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "side_stage_user_handle"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "left_top_task_id"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "right_bottom_task_id"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cell_task_id"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "tap_task_id"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "tap_intent"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "tap_user_handle"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "cell_stage_intent"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "cell_stage_user_handle"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "grouped_recent_vertically"

    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mAppsStackedVertically:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "change_app_intent"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "change_app_user_handle"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "change_app_stage_type"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppStageType:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cell_stage_position"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "launch_from"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchFrom:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "split_division"

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "pending_intent"

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "remote_transition"

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static shouldBreakPairedTaskInRecents(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const-string v1, "StageCoordinator"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/window/TransitionInfo$Change;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefCellDividerBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    const/high16 p0, 0x800000

    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "addCellDividerBarToTransition:[MST] leash="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    invoke-static {p1, v1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_2
    :goto_1
    const-string p0, "addDividerBarToTransition but leash was released or not be created"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const-string v1, "StageCoordinator"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/window/TransitionInfo$Change;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    const/high16 p0, 0x800000

    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_LOG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "addDividerBarToTransition:[MST] leash="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    invoke-static {p1, v1, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "addDividerBarToTransition but leash was released or not be created"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final adjustBoundsForMinSizeTaskAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-ne v3, v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageBounds(Landroid/window/WindowContainerToken;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final applyCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "StageCoordinator"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "applyCellDividerVisibility: cancel, prev animator"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "applyCellDividerVisibility: vis="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefCellDividerBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "StageCoordinator"

    const-string p1, "applyCellHostResizeTransition: cannot find cell host token"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "cell_start"

    invoke-virtual {p1, p0, v0, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :goto_0
    return-void
.end method

.method public final applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "   Skip animating divider bar due to divider leash not ready."

    const/4 v5, 0x0

    const-wide v1, -0x281fe1792362c672L    # -1.984783138343622E115

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    if-eqz v2, :cond_3

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "   Skip animating divider bar due to it\'s remote animating."

    const/4 v5, 0x0

    const-wide v1, 0x2759d98302b1389cL    # 4.004206646490776E-119

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x7a9371443e64cc2dL

    const/4 v5, 0x0

    const-string v6, "applyExitSplitScreen: reason=%s"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearSplitPairedInRecents(I)V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget-object v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v5

    if-ne v5, v3, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    iget-object v5, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v5, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v5, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v5, v2}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v2, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v2, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2, p2, v1, v4}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;ZZ)Z

    invoke-virtual {v0, p2, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v5, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, p2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {p2, v2, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete()V

    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v2, v1}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p2, v4}, Landroid/window/WindowContainerTransaction;->setDismissSplit(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;

    const/4 v5, 0x0

    invoke-direct {p2, p0, p1, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz p2, :cond_4

    iput v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    :cond_4
    if-eqz p1, :cond_6

    if-ne p1, v0, :cond_5

    move v1, v4

    :cond_5
    invoke-virtual {p0, p3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExitToStage(IZ)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v6, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    :goto_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_7
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_MODE_SA_LOGGING:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLoggingPairPackageListInFlexModeRunnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPendingPairPackageListInFlexMode:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    :goto_3
    return-void
.end method

.method public final checkNonResizableTaskAndStartTask(III)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isAllTasksResizable(III)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    const-string p3, "dismiss_recent_pair"

    invoke-virtual {p2, p1, p3}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    const-string p0, "StageCoordinator"

    const-string p1, "include non resizable task"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clearRequestIfPresented()V
    .locals 7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "clearRequestIfPresented"

    const/4 v6, 0x0

    const-wide v2, 0x380fc3c052e034e2L    # 1.1668490812757594E-38

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    :cond_1
    return-void
.end method

.method public final clearSplitPairedInRecents(I)V
    .locals 6

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->shouldBreakPairedTaskInRecents(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x553692dc7c1a3b66L    # 3.159954624570653E102

    const/4 v3, 0x0

    const-string v4, "clearSplitPairedInRecents: reason=%s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final closeHandleMenuIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_0
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->closeHandleMenu(Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final collectPairInFlexPackageList(Ljava/util/List;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStageList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v2, v1, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpStageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExcludeLoggingPackages:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda20;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    if-eqz p0, :cond_4

    return v3

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return v2
.end method

.method public final dismissSplitKeepingLastActiveStage(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearSplitPairedInRecents(I)V

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    const/4 v9, 0x0

    move-object v6, p0

    move v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :goto_1
    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mBreakOnNextWake:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final dismissSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;Z)V
    .locals 12

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v6, v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v7, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v6, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    goto :goto_3

    :cond_3
    invoke-virtual {v7, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    move v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_2

    :goto_3
    move v7, v0

    move v8, v1

    :goto_4
    move v11, v5

    goto :goto_5

    :cond_6
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    move-result v0

    move v11, v0

    move v7, v1

    move v8, v5

    goto :goto_5

    :cond_7
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    move-result v0

    move v11, v0

    move v8, v1

    move v7, v5

    goto :goto_5

    :cond_8
    move v7, v4

    move v8, v7

    goto :goto_4

    :goto_5
    if-eq v7, v4, :cond_b

    if-ne v8, v4, :cond_9

    goto :goto_6

    :cond_9
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_a

    move-object v6, p0

    move-object v9, p2

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareAndStartDismissTransition(IILandroid/window/WindowContainerTransaction;ZZ)V

    :cond_a
    return-void

    :cond_b
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "dismissSplitTask: failed, cannot find "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StageCoordinator"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "StageCoordinator mDisplayId="

    invoke-static {p2, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDividerVisible="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    const-string v3, "isSplitActive="

    invoke-static {p2, v2, p1, v1, v3}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v3, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const-string v4, "isSplitVisible="

    invoke-static {p2, v3, p1, v1, v4}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isLeftRightSplit="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MainStage"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stagePosition="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v4

    const-string v5, "SPLIT_POSITION_UNDEFINED"

    const-string v6, "SPLIT_POSITION_TOP_OR_LEFT"

    const-string v7, "SPLIT_POSITION_BOTTOM_OR_RIGHT"

    const-string v8, "UNKNOWN"

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eq v4, v10, :cond_2

    if-eqz v4, :cond_1

    if-eq v4, v9, :cond_0

    move-object v4, v8

    goto :goto_0

    :cond_0
    move-object v4, v7

    goto :goto_0

    :cond_1
    move-object v4, v6

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "isActive="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    invoke-static {p2, v4, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    invoke-virtual {v2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MainStageListener"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SideStage"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-eq v2, v10, :cond_5

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_3

    move-object v5, v8

    goto :goto_1

    :cond_3
    move-object v5, v7

    goto :goto_1

    :cond_4
    move-object v5, v6

    :cond_5
    :goto_1
    invoke-static {p2, v5, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SideStageListener"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CellStage"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    invoke-static {v2}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CellStageListener"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_6
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SplitLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mAllowLeftRightSplitInPortrait="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mAllowLeftRightSplitInPortrait:Z

    const-string v4, "mIsLeftRightSplit="

    invoke-static {v2, v3, p1, v1, v4}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    const-string v4, "mFreezeDividerWindow="

    invoke-static {v2, v3, p1, v1, v4}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    const-string v4, "mDimNonImeSide="

    invoke-static {v2, v3, p1, v1, v4}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDimNonImeSide:Z

    const-string v4, "mDividerPosition="

    invoke-static {v2, v3, p1, v1, v4}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bounds1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dividerBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounds2="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v1, :cond_7

    const-string v1, "bounds3="

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "splitDivision="

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "mPausingTasks="

    invoke-static {v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v1, v0, v3}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v7, 0x33

    const-string v8, "exitSplitScreen: mainStageToTop=%b reason=%s active=%b"

    const-wide v5, 0x21fb26254a832b5L

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public final finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 13

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, -0x32263ad67c37c569L    # -1.0855660411326954E67

    const/4 v5, 0x0

    const-string v6, "finishEnterSplitScreen"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v6}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v5, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v6, v7}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;)V

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v5, :cond_1

    iget-boolean v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    iget-boolean v6, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    iget-object v6, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    iget-object v7, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v7, p2, v6, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;Z)V

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v6

    iput-object v6, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :goto_1
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v6, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7, p2}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipEvictingMainStageChildren:Z

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    move-result v7

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v8

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v9

    iget v10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v11

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v12, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-virtual/range {v6 .. v12}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logEnter(FIIIIZ)V

    :goto_2
    if-eqz v5, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_5
    return-void
.end method

.method public final getActivateSplitPosition(Landroid/app/TaskInfo;)I
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId:I

    if-eqz v2, :cond_1

    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId2:I

    iget v4, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne v3, v4, :cond_1

    iget p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return p0

    :cond_1
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne v2, v3, :cond_2

    iget p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return p0

    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return p0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent2:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getBottomStages()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public final getCellHostStageType()I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v12, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/RemoteAnimationTarget;

    move-object v2, v1

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    new-instance v0, Landroid/graphics/Point;

    move-object v10, v0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/app/WindowConfiguration;

    move-object v13, v0

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7f2

    move-object v11, v12

    invoke-direct/range {v2 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v1
.end method

.method public final getFocusedStageType()I
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getMainStageBounds()Landroid/graphics/Rect;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getMainStageWinConfigPosition()I
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/16 v1, 0x40

    const/16 v2, 0x20

    const/16 v3, 0x8

    const/16 v4, 0x10

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v5, :cond_7

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v0

    const/16 v1, 0x18

    const/16 v2, 0x30

    const/16 v5, 0x48

    const/16 v6, 0x60

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_0

    move v5, v6

    :cond_0
    return v5

    :cond_1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_4

    move v2, v6

    :cond_4
    return v2

    :cond_5
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_6

    move v1, v5

    :cond_6
    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v2, v3

    :goto_0
    return v2

    :cond_9
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    move v1, v4

    :goto_1
    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v0

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_c

    goto :goto_2

    :cond_c
    move v2, v3

    :goto_2
    return v2

    :cond_d
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_e

    goto :goto_3

    :cond_e
    move v1, v4

    :goto_3
    return v1
.end method

.method public final getSideStageBounds()Landroid/graphics/Rect;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getSideStageWinConfigPosition()I
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/16 v1, 0x40

    const/16 v2, 0x20

    const/16 v3, 0x8

    const/16 v4, 0x10

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v5, :cond_7

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x18

    const/16 v5, 0x60

    const/16 v6, 0x48

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_0

    move v5, v6

    :cond_0
    return v5

    :cond_1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v5

    :goto_0
    return v1

    :cond_5
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_8

    move v2, v3

    :cond_8
    return v2

    :cond_9
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_a

    move v1, v4

    :cond_a
    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v0

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_c

    move v2, v3

    :cond_c
    return v2

    :cond_d
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_e

    move v1, v4

    :cond_e
    return v1
.end method

.method public final getSplitCreateMode()I
    .locals 2

    new-instance v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    invoke-direct {v0}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iput v1, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    iput p0, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    move-result p0

    return p0
.end method

.method public final getSplitDivision()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getSplitItemPosition(Landroid/window/WindowContainerToken;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p0

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    return p0

    :cond_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v2, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne p1, v1, :cond_3

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p0

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    :goto_0
    return p0

    :cond_4
    return v0
.end method

.method public final getSplitItemStage(Landroid/window/WindowContainerToken;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0
.end method

.method public final getSplitItemStagePosition(Landroid/window/WindowContainerToken;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result p0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result p0

    return p0

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    return p0

    :cond_3
    return v0
.end method

.method public getSplitTransitions()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    return-object p0
.end method

.method public final getStageAtPosition(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStageBounds(I)Landroid/graphics/Rect;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds3()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStageBounds(Landroid/window/WindowContainerToken;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStageOfTask(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_1

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    return-object p0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStageToken(I)Landroid/window/WindowContainerToken;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    :cond_2
    return-object v0

    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    :cond_4
    return-object v0
.end method

.method public final getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    if-ne p1, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final getStageWinConfigPositionByType(I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result p0

    return p0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getTaskIdByStageType(I)I
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    return p0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getTopStageBottom()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds3()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final handleLayoutSizeChange(Lcom/android/wm/shell/common/split/SplitLayout;Z)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v3, v2, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateSnapAlgorithm(I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v3

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_3
    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    const-string p2, "handle_layout_size_change"

    invoke-virtual {v6, v1, p2}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez p2, :cond_5

    move-object v5, v4

    goto :goto_0

    :cond_5
    move-object v5, v0

    :goto_0
    if-nez p2, :cond_6

    move-object p2, v0

    goto :goto_1

    :cond_6
    move-object p2, v4

    :goto_1
    invoke-static {}, Lcom/android/window/flags/Flags;->insetsDecoupledConfiguration()Z

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    iget-object v12, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    if-eqz v7, :cond_7

    iget-boolean v7, v12, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v7, :cond_7

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v12, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v6, v5, p2, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    goto :goto_2

    :cond_7
    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v6, v5, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    :goto_2
    sget-boolean v5, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v5, :cond_8

    if-eqz p2, :cond_8

    if-eqz v3, :cond_8

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const-string v3, "handleLayoutSizeChange"

    invoke-virtual {p2, v3, v1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(Ljava/lang/String;ZZ)V

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {v8, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {v9, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v11, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-object v7, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startResizeTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/common/split/SplitDecorManager;Lcom/android/wm/shell/common/split/SplitDecorManager;)V

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p2, v6}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    if-eqz v2, :cond_a

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p0, :cond_9

    invoke-virtual {v12, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_a
    return-void
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    const-string v9, "StageCoordinator"

    iget-object v10, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v8, :cond_6

    iget-boolean v0, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, "handleRequest: split active, but AOD appearing transition"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v19

    const/16 v17, 0x1

    const-string v18, "handleRequest: transition=%d display rotation"

    const-wide v15, 0xcb1b15aba6d3171L

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v1

    invoke-virtual {v0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result v0

    if-eq v1, v0, :cond_2

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-boolean v13, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x3fa

    move-object v0, v10

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;I)V

    iput-object v10, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "  splitTransition  deduced remote passthrough split screen"

    const/4 v6, 0x0

    const-wide v2, -0x14a1edabb85acbdfL    # -1.5447333489495362E209

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide/16 v2, 0x3fa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v5, "setRemotePassThrough: transitType=%d remote=%s"

    const-wide v2, 0x2a12be9f7c743e94L    # 5.108085997637055E-106

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object v0

    :cond_5
    return-object v11

    :cond_6
    iget v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v14, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    if-eq v0, v14, :cond_7

    return-object v11

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v15

    invoke-static {v15}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v16

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    if-ne v0, v13, :cond_8

    move/from16 v17, v13

    goto :goto_0

    :cond_8
    move/from16 v17, v12

    :goto_0
    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v18, :cond_9

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    move v0, v13

    goto :goto_1

    :cond_9
    move v0, v12

    :goto_1
    if-eqz v16, :cond_a

    if-nez v17, :cond_b

    :cond_a
    iget-boolean v1, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v1, :cond_c

    if-eqz v16, :cond_c

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda22;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda22;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_c
    iput-boolean v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsOpeningHomeDuringSplit:Z

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mHandleSplitWithAIAssistTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v2, v1, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mHandleSplitWithAIAssistTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_e

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    if-eq v0, v5, :cond_e

    if-eqz v16, :cond_e

    if-eqz v17, :cond_e

    iget-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v0, :cond_e

    invoke-virtual {v6, v11, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setFlexPanelMode(Landroid/view/SurfaceControl$Transaction;Z)V

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v6, v12, v1, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v19, 0x0

    move-object/from16 v2, p0

    move v11, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    goto :goto_2

    :cond_e
    move v11, v5

    :goto_2
    iget-boolean v0, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz v0, :cond_51

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDebugId()I

    move-result v0

    int-to-long v4, v0

    sget-object v20, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v25

    const/16 v23, 0x1

    const-string v24, "handleRequest: transition=%d split active"

    const-wide v21, -0x2b4e090f863cc220L    # -9.823274847569318E99

    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_10

    iget v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v4, v0

    invoke-static {v15}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v9

    move-object/from16 v20, v2

    int-to-long v1, v9

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v9

    int-to-long v11, v9

    sget-object v23, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v4, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v28

    const/16 v26, 0x51

    const-string v27, "  split is active so using splitTransition to handle request. triggerTask=%d type=%s mainChildren=%d sideChildren=%d"

    const-wide v24, 0x7f585e2ef45b36aaL    # 2.67370688941509E305

    invoke-static/range {v23 .. v28}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_10
    move-object/from16 v20, v2

    :goto_3
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v1

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    const/4 v5, -0x1

    if-eqz v1, :cond_2a

    invoke-static {v15}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v4

    if-eq v4, v13, :cond_1a

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz v4, :cond_15

    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRunningTaskInfoList:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    if-eqz v4, :cond_14

    iget-object v9, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_5

    :cond_11
    iget-object v9, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :cond_12
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    iget-object v14, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_13
    move v4, v11

    goto :goto_5

    :cond_14
    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_5
    if-eq v4, v13, :cond_1a

    :cond_15
    iget-boolean v4, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isAiKeyRemoveAppTask:Z

    if-eqz v4, :cond_21

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v4

    if-nez v4, :cond_17

    :cond_16
    move v4, v13

    goto :goto_8

    :cond_17
    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v13

    :goto_6
    if-ltz v4, :cond_16

    iget-object v9, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v9, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_19

    iget-boolean v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isAiKeyRemoveAppTask:Z

    if-nez v9, :cond_18

    goto :goto_7

    :cond_18
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_19
    :goto_7
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_21

    :cond_1a
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v4, :cond_1b

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v4

    move-object/from16 v11, p2

    invoke-virtual {v6, v0, v4, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;)V

    goto :goto_9

    :cond_1b
    move-object/from16 v11, p2

    :goto_9
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, v2, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v4, :cond_1f

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v4

    if-nez v4, :cond_1c

    move-object v4, v10

    goto :goto_a

    :cond_1c
    if-ne v4, v13, :cond_1d

    move-object v4, v3

    goto :goto_a

    :cond_1d
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_1e

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v2

    invoke-virtual {v6, v0, v4, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    goto :goto_b

    :cond_1e
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v6, v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    :goto_b
    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v9, 0x2

    invoke-virtual {v4, v7, v2, v9, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    goto/16 :goto_e

    :cond_1f
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v2

    if-nez v2, :cond_20

    move v2, v13

    goto :goto_c

    :cond_20
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v6, v2, v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v9, 0x0

    const/4 v12, 0x2

    invoke-virtual {v4, v7, v2, v12, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    goto/16 :goto_e

    :cond_21
    move-object/from16 v11, p2

    if-eqz v16, :cond_23

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x0

    goto :goto_d

    :cond_22
    move v2, v13

    :goto_d
    invoke-virtual {v6, v2, v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v9, 0x0

    const/4 v12, 0x2

    invoke-virtual {v4, v7, v2, v12, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    goto :goto_e

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v16, :cond_24

    invoke-virtual {v6, v0, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePositionByAdjacentTask(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v4

    iget-boolean v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/2addr v9, v13

    const/16 v12, 0x3ec

    invoke-virtual {v2, v7, v4, v12, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    goto :goto_e

    :cond_24
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz v16, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_26

    iget v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v2, v13, v12}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    invoke-virtual {v6, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterMultiSplitScreen(Landroid/window/WindowContainerTransaction;I)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v2, :cond_25

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V

    :cond_25
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v4

    const/16 v9, 0x44d

    invoke-virtual {v2, v7, v4, v9, v12}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    :cond_26
    :goto_e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz v2, :cond_27

    invoke-static {v15}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v4

    if-eqz v4, :cond_27

    iget v4, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addToClosingTasks(I)V

    goto :goto_f

    :cond_27
    if-eqz v17, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_29

    iget v4, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(I)I

    move-result v4

    iget-boolean v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v9, :cond_28

    if-ne v4, v5, :cond_28

    goto :goto_f

    :cond_28
    invoke-virtual {v6, v4, v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/16 v9, 0xd

    const/4 v12, 0x0

    invoke-virtual {v5, v7, v4, v9, v12}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    :cond_29
    :goto_f
    if-eqz v2, :cond_4a

    invoke-static {v15}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addToClosingTasks(I)V

    goto/16 :goto_1f

    :cond_2a
    move-object/from16 v11, p2

    if-eqz v16, :cond_49

    if-eqz v17, :cond_49

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v1, v13}, Lcom/android/wm/shell/common/split/SplitWindowManager;->sendSplitStateChangedInfo(Z)V

    const/4 v1, 0x0

    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    const/4 v1, 0x3

    if-eqz v18, :cond_2e

    iget v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    if-eq v4, v5, :cond_2e

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2c

    if-ne v4, v1, :cond_2b

    goto :goto_10

    :cond_2b
    const/4 v4, 0x0

    goto :goto_11

    :cond_2c
    :goto_10
    move v4, v13

    :goto_11
    if-nez v4, :cond_2d

    invoke-virtual {v6, v5, v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    :cond_2d
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v7, v13}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-object/from16 v12, v20

    invoke-virtual {v12, v4}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_12

    :cond_2e
    move-object/from16 v12, v20

    :goto_12
    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v7, :cond_3c

    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2f

    iget v15, v8, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-ne v15, v13, :cond_2f

    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v15

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v9

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v15, v5, v9, v1}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z

    move-result v1

    xor-int/2addr v1, v13

    goto :goto_13

    :cond_2f
    move v1, v13

    :goto_13
    if-eqz v1, :cond_3c

    iget-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    if-nez v1, :cond_3c

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-nez v1, :cond_30

    goto :goto_15

    :cond_30
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-nez v1, :cond_31

    goto :goto_14

    :cond_31
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v1, :cond_33

    iget-boolean v1, v2, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v1, :cond_33

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-nez v1, :cond_33

    :cond_32
    const/4 v5, 0x2

    goto :goto_16

    :cond_33
    const/4 v5, -0x1

    goto :goto_16

    :cond_34
    :goto_14
    move v5, v13

    goto :goto_16

    :cond_35
    :goto_15
    const/4 v5, 0x0

    :goto_16
    if-eqz v5, :cond_37

    if-ne v5, v13, :cond_36

    goto :goto_17

    :cond_36
    const/4 v1, 0x2

    if-ne v5, v1, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {v6, v4, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    goto :goto_1a

    :cond_37
    :goto_17
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v1, :cond_39

    iget-boolean v1, v2, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v1, :cond_39

    if-nez v5, :cond_38

    move-object v1, v10

    goto :goto_18

    :cond_38
    move-object v1, v3

    :goto_18
    invoke-virtual {v6, v4, v1, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    goto :goto_1a

    :cond_39
    const/4 v1, 0x0

    if-nez v5, :cond_3a

    move v5, v13

    goto :goto_19

    :cond_3a
    move v5, v1

    :goto_19
    invoke-virtual {v6, v5, v4, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    invoke-virtual {v6, v1, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible$1(ZZ)V

    :cond_3b
    :goto_1a
    invoke-virtual {v0, v4, v13}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_3c
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_42

    const/4 v5, 0x3

    if-ne v1, v5, :cond_3d

    goto :goto_1e

    :cond_3d
    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-eq v1, v13, :cond_3e

    goto :goto_1c

    :cond_3e
    :goto_1b
    const/4 v1, -0x1

    goto :goto_1d

    :cond_3f
    :goto_1c
    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-eq v1, v13, :cond_3e

    :cond_40
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v1, :cond_41

    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-ne v1, v13, :cond_41

    goto :goto_1b

    :goto_1d
    invoke-virtual {v6, v1, v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    :cond_41
    iget-boolean v1, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v1, :cond_4a

    iget-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1f

    :cond_42
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz v0, :cond_45

    :cond_43
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz v0, :cond_44

    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsOpeningHomeDuringSplit:Z

    :cond_44
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v13}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v12, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_45
    iget-boolean v0, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v0, :cond_46

    iget-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_46
    if-eqz v7, :cond_48

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_47

    const-string v0, "evict_all_children"

    invoke-virtual {v4, v14, v0}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    :cond_47
    return-object v4

    :cond_48
    const/4 v0, 0x0

    return-object v0

    :cond_49
    const/16 v1, 0x8

    if-ne v15, v1, :cond_4a

    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v4, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v13

    invoke-virtual {v6, v2, v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v2, v1, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    :cond_4a
    :goto_1f
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4b

    return-object v0

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_50

    if-eqz v16, :cond_4c

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4c
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_4d

    move v1, v13

    goto :goto_20

    :cond_4d
    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_4e

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_4e

    move v12, v13

    goto :goto_21

    :cond_4e
    const/4 v12, 0x0

    :goto_21
    if-nez v12, :cond_4f

    move-object v11, v0

    goto :goto_22

    :cond_4f
    const/4 v11, 0x0

    :goto_22
    return-object v11

    :cond_50
    const/4 v0, 0x0

    return-object v0

    :cond_51
    move-object/from16 v11, p2

    move-object v12, v2

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_59

    iget-object v1, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_52

    goto/16 :goto_25

    :cond_52
    iget v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v2, v0, :cond_54

    iget v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v0, :cond_53

    goto :goto_23

    :cond_53
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_24

    :cond_54
    :goto_23
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_55

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v23, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v28

    const/16 v26, 0x1

    const-string v27, "handleRequest: transition=%d restoring to split"

    const-wide v24, -0x73f8f2505ddbc873L

    invoke-static/range {v23 .. v28}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_55
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v2

    const/16 v3, 0x3ed

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    :goto_24
    if-eqz v16, :cond_58

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v1

    if-eqz v1, :cond_58

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_56

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v23, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v28

    const/16 v26, 0x1

    const-string v27, "handleRequest: transition=%d enter split"

    const-wide v24, -0x7af4c069a612c97bL

    invoke-static/range {v23 .. v28}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_56
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v1, :cond_57

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_57

    invoke-virtual {v6, v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    invoke-virtual {v12, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    const/4 v0, 0x0

    return-object v0

    :cond_57
    invoke-virtual {v6, v0, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePositionByAdjacentTask(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v2

    iget-boolean v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/2addr v3, v13

    const/16 v4, 0x3ec

    invoke-virtual {v1, v7, v2, v4, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    :cond_58
    return-object v0

    :cond_59
    :goto_25
    const-string v0, "handleRequest: split active, but stage is null."

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleUnsupportedSplitStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    return-void
.end method

.method public final hasAIKeySplitTransitionPending()Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    const/16 v0, 0x452

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasSameRatioInGroupedTasks(Lcom/android/wm/shell/util/SplitBounds;Z)Z
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    iget-boolean v0, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    iget v3, p1, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    iget v3, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    iget p2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    cmpl-float p2, p2, v2

    if-nez p2, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final isFolding()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInSubDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget-object p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isLandscape$1()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final isMultiSplitActive()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    return p0
.end method

.method public final isMultiSplitScreenVisible()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isSameIntentRequested(Landroid/app/TaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p1, Landroid/app/TaskInfo;->isAliasManaged:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-ne p1, p2, :cond_3

    if-nez p0, :cond_3

    move v0, v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final isSplitScreenVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVerticalDivision()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1, p3, p4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p6, p1, p2, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_1
    const-string p1, "StageCoordinator"

    const-string p2, "Pending intent and shortcut are null is invalid case."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0, p6}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final logExitToStage(IZ)V
    .locals 9

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v2

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-nez p2, :cond_2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    :cond_2
    move v6, v0

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result p2

    move v7, p2

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v8, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    return-void
.end method

.method public final loggingPendingPairPackageListInFlexMode()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_MODE_SA_LOGGING:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsTableMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPendingPairPackageListInFlexMode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1043"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPairPackageListInFlexMode:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPendingPairPackageListInFlexMode:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPendingPairPackageListInFlexMode:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final maximizeSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    const-string v4, "StageCoordinator"

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    if-ne v0, v1, :cond_3

    const-string p1, "maximizeSplitTask: during splitTransition"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "maximizeSplitTask: failed, cannot find "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    move v8, v0

    :goto_1
    if-eqz p2, :cond_5

    :goto_2
    move-object v6, p2

    goto :goto_3

    :cond_5
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, p1}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitMaximizeChangeTransition(Landroid/window/WindowContainerTransaction;I)V

    :cond_7
    invoke-virtual {p0, v8, v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v10, 0x0

    const/4 v9, 0x2

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    return-void
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const-string v6, "mergeAnimation: transition=%d"

    const-wide v3, -0x687892872df9c054L

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    if-eq p4, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    if-eqz v1, :cond_2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_2

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/TransitionInfo$Change;

    const/high16 p4, 0x1000000

    invoke-virtual {p3, p4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_4

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "mergeAnimation: keep current transition, new="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitScreenTransitions"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_5

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object p3, p3, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;

    const/4 p5, 0x0

    invoke-direct {p4, p2, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Landroid/animation/Animator;I)V

    check-cast p3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p3, p4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public final moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V
    .locals 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageBounds(Landroid/window/WindowContainerToken;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setChangeTransitStartBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    const-string/jumbo v2, "split_to_freeform"

    invoke-virtual {v0, p1, p2, v2}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->dismissSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    return-void

    :goto_2
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    throw p1
.end method

.method public final notifySplitAnimationFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitInvocationListener:Lcom/android/systemui/wmshell/WMShell$8;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitInvocationListenerExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 8

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const-string v6, "onDisplayAdded: display=%d"

    const-wide v3, 0x42b6d1d95f9b343fL    # 2.5090550897460246E13

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda21;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFoldedStateChanged(Z)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x93b376dbb0ac7e2L

    const/4 v5, 0x3

    const-string v6, "onFoldedStateChanged: folded=%b"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Save main Split Division="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StageCoordinator"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->recordLastActiveStage()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->willSleepOnFold()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mBreakOnNextWake:Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mBreakOnNextWake:Z

    :goto_0
    return-void
.end method

.method public final onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;ZLjava/lang/String;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p5

    iget v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    new-instance v15, Landroid/window/WindowContainerTransaction;

    invoke-direct {v15}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v6, 0x1

    move-object/from16 v4, p7

    invoke-virtual {v15, v3, v6, v4}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    if-eqz v2, :cond_0

    invoke-virtual {v15, v3, v2}, Landroid/window/WindowContainerTransaction;->setChangeTransitStartBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_0
    const/4 v8, 0x0

    const/16 v2, 0x10

    if-eqz p2, :cond_6

    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_2

    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    move v14, v8

    goto :goto_2

    :cond_3
    move v14, v6

    :goto_2
    and-int/2addr v1, v2

    if-nez v1, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v17, v8

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v17, v6

    :goto_4
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v1, v0, v9}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object v4

    sget-object v18, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v11, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v7, v18

    move v9, v14

    move/from16 v14, v17

    invoke-virtual/range {v0 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void

    :cond_6
    const/16 v0, 0x8

    if-nez v1, :cond_7

    if-eqz p4, :cond_8

    :cond_7
    if-eq v1, v2, :cond_9

    if-ne v1, v0, :cond_8

    goto :goto_5

    :cond_8
    move v3, v6

    goto :goto_6

    :cond_9
    :goto_5
    move v3, v8

    :goto_6
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/16 v5, 0x20

    iget-object v10, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v11, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v12, 0x0

    if-eqz v4, :cond_15

    iget-object v4, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_15

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v4, :cond_a

    iget-boolean v4, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-nez v4, :cond_15

    :cond_a
    if-eqz p4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result v12

    if-ne v4, v6, :cond_c

    if-ne v1, v0, :cond_b

    or-int/lit8 v12, v12, 0x20

    goto :goto_7

    :cond_b
    if-ne v1, v5, :cond_e

    or-int/lit8 v12, v12, 0x8

    goto :goto_7

    :cond_c
    if-ne v1, v2, :cond_d

    or-int/lit8 v12, v12, 0x40

    goto :goto_7

    :cond_d
    const/16 v0, 0x40

    if-ne v1, v0, :cond_e

    or-int/lit8 v12, v12, 0x10

    :cond_e
    :goto_7
    if-ne v4, v6, :cond_f

    move v0, v8

    goto :goto_8

    :cond_f
    move v0, v6

    :goto_8
    invoke-virtual {v7, v3, v8, v15, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    if-eqz p6, :cond_10

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x4

    const-string v4, "natural_swtiching"

    invoke-virtual {v15, v0, v2, v4}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v15, v1, v2, v4}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :cond_10
    const/4 v0, 0x2

    invoke-virtual {v7, v6, v0, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->swapStageTasks(IILandroid/window/WindowContainerTransaction;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v11, -0x1

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_a

    :cond_11
    if-eqz v1, :cond_12

    move v0, v1

    goto :goto_9

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v0

    iget v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    invoke-static {v1, v0}, Lcom/android/wm/shell/util/StageUtils;->getMultiSplitLaunchPosition(IZ)I

    move-result v0

    :goto_9
    const/4 v1, -0x1

    invoke-virtual {v7, v1, v0, v12, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object v1

    move v12, v0

    move-object v0, v1

    :goto_a
    invoke-virtual {v15, v9, v0}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v10, v15}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_13
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v12, v6, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    invoke-virtual {v7, v15, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterMultiSplitScreen(Landroid/window/WindowContainerTransaction;I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_14

    if-nez p6, :cond_14

    invoke-virtual {v7, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V

    :cond_14
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x44d

    move-object/from16 p1, v0

    move-object/from16 p2, v15

    move-object/from16 p3, v2

    move-object/from16 p4, p0

    move/from16 p5, v3

    move/from16 p6, v1

    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    return-void

    :cond_15
    if-eqz v1, :cond_18

    if-eq v1, v0, :cond_16

    if-ne v1, v5, :cond_17

    :cond_16
    move v6, v8

    :cond_17
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v3

    move-object/from16 p4, v2

    move-object/from16 p5, v0

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object/from16 p1, p0

    move/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    :goto_b
    invoke-virtual {v15, v9, v0}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_19

    iget-boolean v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-nez v0, :cond_1a

    :cond_19
    invoke-virtual {v10, v15}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_d

    :cond_1a
    iget-boolean v0, v11, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_1b

    const/16 v0, 0x3ed

    goto :goto_c

    :cond_1b
    const/16 v0, 0x3ec

    :goto_c
    invoke-virtual {v7, v15, v12, v3, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v15

    move-object/from16 p3, v2

    move-object/from16 p4, p0

    move/from16 p5, v0

    move/from16 p6, v3

    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    :goto_d
    return-void
.end method

.method public final onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V
    .locals 11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x45242654f2fc36e7L    # 1.217976667703682E25

    const/4 v5, 0x0

    const-string v6, "onLayoutSizeChanged"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    :goto_0
    move-object v3, p2

    goto :goto_1

    :cond_1
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    if-nez p2, :cond_3

    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const-string p2, "onSplitResizeStart"

    invoke-virtual {p1, p2, v1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {v5, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {v6, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iget-object v7, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    move-object v2, p1

    move-object v4, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startResizeTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/common/split/SplitDecorManager;Lcom/android/wm/shell/common/split/SplitDecorManager;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, p2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p2, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    move-result v4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    cmpg-float p1, v4, p1

    if-lez p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_6

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_7

    iput v4, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v0, 0x184

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final onLayoutSizeChanging(Lcom/android/wm/shell/common/split/SplitLayout;IIZ)V
    .locals 2

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p4, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p4, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    iget p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p4, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p4, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p4, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p4}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Color;->getComponents()[F

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final onRecentsInSplitAnimationCanceled()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final onRecentsInSplitAnimationFinish(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x2412137d24e33927L    # 6.217379348775919E-135

    const/4 v5, 0x0

    const-string v6, "onRecentsInSplitAnimationFinish"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    if-ge v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v6

    if-ne v6, v3, :cond_3

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-boolean p0, v4, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mHiddenWhileRecentsTransition:Z

    if-eqz p0, :cond_2

    iput-boolean v1, v4, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mHiddenWhileRecentsTransition:Z

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v4, v3, v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible$1(ZZ)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v3}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-boolean p1, v4, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mHiddenWhileRecentsTransition:Z

    if-eqz p1, :cond_5

    iput-boolean v1, v4, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mHiddenWhileRecentsTransition:Z

    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    :cond_6
    return-void
.end method

.method public final onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "onRemoteAnimationFinished"

    const-string v0, "main or side stage was not populated"

    invoke-static {p1, v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StageCoordinator"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleUnsupportedSplitStart()V

    return-void
.end method

.method public final onRequestToSplit(Lcom/android/internal/logging/InstanceId;)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    int-to-long v2, v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const-string v8, "onRequestToSplit: reason=%d"

    const-wide v5, 0x3f06f92d1b963bdbL    # 4.381817729914142E-5

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    iput v1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    return-void
.end method

.method public onRootTaskAppeared()V
    .locals 12

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    iget-boolean v5, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v9, 0x3c

    const-string v10, "onRootTaskAppeared: rootTask=%s mainRoot=%b sideRoot=%b"

    const-wide v7, 0x2c5d304f48af339bL    # 5.466083695414983E-95

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_3

    iget-boolean v0, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v5, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v5, v7, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v0, v5, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_2
    iget-object v0, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v0, v3}, Landroid/window/WindowContainerTransaction;->setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, v2, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object v0, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLaunchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "set new launch adjacent flag root container"

    invoke-static {v3, v5, v4}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->container:Landroid/window/WindowContainerToken;

    iget-boolean v4, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->launchAdjacentEnabled:Z

    if-eqz v4, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "enable launch adjacent flag root container"

    invoke-static {v3, v2, v1}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction;->setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onRootTaskVanished()V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, -0x78ff5d310a7ec876L    # -6.006232056429612E-275

    const/4 v5, 0x0

    const-string v6, "onRootTaskVanished"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLaunchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "clear launch adjacent flag root container"

    invoke-static {v4, v6, v5}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/android/wm/shell/common/LaunchAdjacentController;->container:Landroid/window/WindowContainerToken;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "disable launch adjacent flag root container"

    invoke-static {v4, v3, v1}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v1, v5}, Landroid/window/WindowContainerTransaction;->clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    iget-object v3, v2, Lcom/android/wm/shell/common/LaunchAdjacentController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iput-object v6, v2, Lcom/android/wm/shell/common/LaunchAdjacentController;->container:Landroid/window/WindowContainerToken;

    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {v1, p0, v0}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    return-void
.end method

.method public final onSnappedToDismiss(IZZ)V
    .locals 12

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DIVIDER_SA_LOGGING:Z

    if-eqz v0, :cond_0

    const-string v0, "1005"

    const-string v1, "Move divider"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x3

    const-string v6, "onSnappedToDismiss: bottomOrRight=%b reason=%s"

    const-wide v3, -0x4eccbc7f9057ccaaL    # -1.0902855665492504E-71

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v2, v0, :cond_2

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v2, :cond_2

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz v2, :cond_4

    move-object v5, v4

    goto :goto_2

    :cond_4
    move-object v5, v3

    :goto_2
    sget-boolean v6, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v6, :cond_5

    invoke-virtual {p0, v5, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    return-void

    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-boolean p1, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v7, p1}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-object p3, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz p3, :cond_7

    iget-boolean p3, p3, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz p3, :cond_7

    move p3, v0

    goto :goto_3

    :cond_7
    move p3, v1

    :goto_3
    const-string v2, "StageCoordinator"

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v9

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p3

    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    invoke-static {p1, p3}, Lcom/android/wm/shell/common/split/CellUtil;->getCellSide(IZ)I

    move-result p1

    if-eq p1, v0, :cond_9

    const/4 p3, 0x3

    if-ne p1, p3, :cond_8

    goto :goto_4

    :cond_8
    const/16 p1, 0x50

    goto :goto_5

    :cond_9
    :goto_4
    const/16 p1, 0x28

    :goto_5
    invoke-virtual {p0, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageWinConfigPositionByType(I)I

    move-result p3

    and-int/2addr p1, p3

    if-eqz p2, :cond_a

    and-int/lit8 p2, p1, 0x60

    if-eqz p2, :cond_b

    :goto_6
    move v1, v0

    goto :goto_7

    :cond_a
    and-int/lit8 p2, p1, 0x18

    if-eqz p2, :cond_b

    goto :goto_6

    :cond_b
    :goto_7
    const-string p2, "onSnappedToDismissMultiSplit: cell divider action, hostStageType="

    const-string p3, ", hostPos="

    invoke-static {v9, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dismissToHostStage="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {p0, v7, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v8, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    goto :goto_a

    :cond_c
    iget v9, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mHalfSplitStageType:I

    if-nez v9, :cond_d

    move-object v3, v4

    :cond_d
    invoke-virtual {p0, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageWinConfigPositionByType(I)I

    move-result p1

    if-eqz p2, :cond_e

    and-int/lit8 p2, p1, 0x60

    if-eqz p2, :cond_f

    :goto_8
    move v1, v0

    goto :goto_9

    :cond_e
    and-int/lit8 p2, p1, 0x18

    if-eqz p2, :cond_f

    goto :goto_8

    :cond_f
    :goto_9
    const-string p2, "onSnappedToDismissMultiSplit: halfStageType="

    const-string p3, ", halfPos="

    invoke-static {v9, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dismissToHalfStage="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_10

    invoke-virtual {p0, v7, v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v8, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    goto :goto_a

    :cond_10
    invoke-virtual {p0, v9, v7, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v11, 0x0

    const/4 v10, 0x2

    move-object v8, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    :goto_a
    return-void

    :cond_11
    xor-int/lit8 v3, v2, 0x1

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 p2, 0x0

    if-eqz p3, :cond_12

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;Z)V

    :cond_12
    iget-object p3, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p3, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p3, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p3, p2}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p2, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, v3, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p2, :cond_13

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x0

    const/4 v4, 0x4

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    return-void
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, 0x1f604b567dd3addL

    const/4 v4, 0x0

    const-string v5, "onTaskAppeared: task=%s"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    if-eqz v0, :cond_1

    const-string v0, "SplitBackgroundController"

    const-string v1, "attachTo: new root coming."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->detach()V

    :cond_1
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v1, "Split Background Layer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "SplitBackgroundController.onDisplayAreaAppeared"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    iput-object v0, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->setCrop(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-boolean v1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const-string v1, "StageCoordinatorSplitDivider"

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v9, 0x2

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;II)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-object v0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iput-object p2, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iput-object p2, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskAppeared()V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n Unknown task appeared: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_8

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :goto_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "StageCoordinator"

    const-string p1, "onTaskInfoChanged ignore - device type is differents folded state."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWindowDecorViewModel:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda22;

    const/4 v4, 0x1

    invoke-direct {v1, p1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda22;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_4

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpConfigAfterFoldDismiss:Landroid/content/res/Configuration;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_7

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x1

    const-string v7, "onTaskInfoChanged: task=%d updating"

    const-wide v4, 0xb3a223555303a22L

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->hasConfigChanged:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n Unknown task info changed: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "onTaskVanished: task=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x5774af7d0f40335cL    # 1.989868843459399E113

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskVanished()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    :cond_1
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->detach()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n Unknown task vanished: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTransitionAnimationComplete()V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "onTransitionAnimationComplete"

    const/4 v7, 0x0

    const-wide v3, 0x3138345948dd32eeL    # 1.3699254371118333E-71

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSyncAppsReady: SyncId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DividerResizeController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sync_apps_ready"

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/split/DividerResizeController;->stopWaitingForSyncAppsCallback(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    :cond_4
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x46fc8aba0306359bL    # 9.26237637115428E33

    const/4 v5, 0x0

    const-string v6, "onTransitionConsumed"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez p2, :cond_1

    invoke-virtual {p1, p3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;->onConsumed()V

    :cond_2
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "onTransitionConsumed for enter transition"

    const/4 v5, 0x0

    const-wide v1, -0x5ea7728ea4b9c940L

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;->onConsumed()V

    :cond_4
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "onTransitionConsumed for dismiss transition"

    const/4 v5, 0x0

    const-wide v1, 0x4e62b49d0d0b37b1L    # 4.034398876188279E69

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;->onConsumed()V

    :cond_6
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "onTransitionConsumed for resize transition"

    const/4 v5, 0x0

    const-wide v1, -0x7b61f477661cc07L    # -2.734221715073433E271

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingPassThrough(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;->onConsumed()V

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "onTransitionConsumed for passThrough transition"

    const/4 v5, 0x0

    const-wide v1, 0x33386d6be2003087L    # 5.937978671026009E-62

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final prepareActiveSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v7, 0xd

    const-string/jumbo v8, "prepareActiveSplit: task=%d isSplitVisible=%b"

    const-wide v5, 0x1fec4829c0c8315fL    # 6.591748453781241E-155

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const-string v8, "addTask: task=%d"

    const-wide v5, 0x5214b3e1b7ab36bcL    # 2.5739788320470493E87

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move-result-object v0

    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;ZF)V

    return-void
.end method

.method public prepareAndStartDismissTransition(IILandroid/window/WindowContainerTransaction;ZZ)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-eqz p3, :cond_0

    :goto_0
    move-object v2, p3

    goto :goto_1

    :cond_0
    new-instance p3, Landroid/window/WindowContainerTransaction;

    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    goto :goto_0

    :goto_1
    if-eqz p5, :cond_1

    const-string p3, "StageCoordinator"

    const-string/jumbo p5, "prepareAndStartDismissTransition. avoidReady."

    invoke-static {p3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction;->setAvoidReady()V

    :cond_1
    const/4 p3, 0x0

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;Z)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p3, :cond_2

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, p3}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_2
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2, v0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    return-void

    :cond_4
    invoke-virtual {p0, p1, v2, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v6, 0x0

    const/4 v5, 0x2

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    return-void
.end method

.method public final prepareBringSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v7, 0xd

    const-string/jumbo v8, "prepareBringSplit: task=%d isSplitVisible=%b"

    const-wide v5, 0x37a9c9ae0ace3a47L    # 1.4801478142566723E-40

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v2, p0

    move v4, p3

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :cond_2
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    if-eqz p2, :cond_3

    const-string p2, "StageCoordinator"

    const-string p3, "When the App Pair is starting, it does not reparent on the mainStage."

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;ZF)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p2

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipEvictingMainStageChildren:Z

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-nez p2, :cond_4

    invoke-virtual {p3, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    :cond_4
    iget-object p2, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget-object v5, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    sget-object v6, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasChild()Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    :cond_5
    iget-boolean p2, p2, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    :cond_6
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;ZF)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v4

    int-to-long v6, v4

    int-to-long v8, v1

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7, v4}, [Ljava/lang/Object;

    move-result-object v15

    const/4 v13, 0x5

    const-string/jumbo v14, "prepareDismissAnimation: transition=%d toStage=%d reason=%s"

    const-wide v11, -0x191408f470e0c865L    # -6.083905396553407E187

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v4, -0x1

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne v1, v4, :cond_6

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v8

    const-string v9, "] before startAnimation()."

    const-string v10, " to have been called with ["

    const-string v11, "Expected onTaskVanished on "

    const-string v12, "StageCoordinator"

    const-string v13, ""

    const-string v14, ", "

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v5

    :goto_0
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v5

    if-ge v15, v5, :cond_2

    if-eqz v15, :cond_1

    move-object v5, v14

    goto :goto_1

    :cond_1
    move-object v5, v13

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v5, v15}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->keyAt(I)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v15

    if-ge v8, v15, :cond_5

    if-eqz v8, :cond_4

    move-object v15, v14

    goto :goto_3

    :cond_4
    move-object v15, v13

    :goto_3
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v15, v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const/4 v8, 0x1

    move-object/from16 v9, p3

    invoke-static {v9, v8}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v10

    :goto_4
    if-ltz v10, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    if-nez v12, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v13

    if-nez v13, :cond_8

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result v13

    if-eq v13, v4, :cond_9

    :cond_8
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v5, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->shouldBreakPairedTaskInRecents(I)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v10, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda46;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda46;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    const/4 v11, 0x0

    if-eqz v9, :cond_c

    if-eqz p6, :cond_c

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    invoke-virtual {v0, v2, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v11}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_c
    const/4 v9, 0x0

    iput-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    iget-object v9, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v9, v11}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v9, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v9, v11}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    if-eq v1, v4, :cond_f

    if-nez v1, :cond_d

    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    goto :goto_6

    :cond_d
    iget-object v5, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    :goto_6
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_e

    iget-object v5, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    goto :goto_7

    :cond_e
    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    :goto_7
    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_9

    :cond_f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    sub-int/2addr v9, v8

    :goto_8
    if-ltz v9, :cond_10

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/SurfaceControl;

    invoke-virtual {v3, v12}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    :cond_10
    :goto_9
    if-ne v1, v4, :cond_11

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    const/16 v20, -0x1

    const/16 v21, 0x0

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object/from16 v16, v4

    move/from16 v17, p2

    move/from16 v22, v1

    invoke-virtual/range {v16 .. v22}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    :goto_a
    const/4 v1, 0x0

    goto :goto_c

    :cond_11
    if-nez v1, :cond_12

    move/from16 v1, p2

    goto :goto_b

    :cond_12
    move/from16 v1, p2

    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v0, v1, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExitToStage(IZ)V

    goto :goto_a

    :goto_c
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v4, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v4, :cond_13

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v11}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    return-void
.end method

.method public final prepareEnterMultiSplitScreen(Landroid/window/WindowContainerTransaction;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellStageWindowConfigPosition(IZ)V

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellStageWindowConfigPosition(I)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V
    .locals 7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, 0x298ec7c7e6d835a5L    # 1.638271019344134E-108

    const/4 v4, 0x0

    const-string/jumbo v5, "prepareEnterSplitScreen"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    return-void
.end method

.method public final prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v7, 0xd

    const-string/jumbo v8, "prepareEnterSplitScreen: position=%d resize=%b"

    const-wide v5, 0x46a16af2e98b372dL    # 1.7663716309905495E32

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareBringSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareActiveSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V

    :goto_0
    return-void
.end method

.method public final prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mToSplit:Z

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->adjustChildTaskWindowingModeIfNeeded(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget-object v6, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    sget-object v7, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v5, 0x0

    move-object v3, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    :goto_0
    iget-object p2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mToSplit:Z

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    int-to-long v3, p1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x1

    const-string/jumbo v9, "prepareExitSplitScreen: stageToTop=%d"

    const-wide v6, 0x5dc14c08980b39e1L    # 4.218508110935626E143

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-ne p1, v4, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, p2, v1, p3}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;ZZ)Z

    goto :goto_2

    :cond_3
    if-ne p1, v4, :cond_4

    move p3, v4

    goto :goto_1

    :cond_4
    move p3, v2

    :goto_1
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;ZZ)Z

    :goto_2
    if-nez p1, :cond_5

    move p3, v4

    goto :goto_3

    :cond_5
    move p3, v2

    :goto_3
    invoke-virtual {v0, p2, p3}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz p3, :cond_6

    iget p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_6

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCoverDisplaySplitLayoutIfNeeded()Z

    :cond_6
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean p3, p3, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz p3, :cond_8

    const/4 p3, 0x2

    if-ne p1, p3, :cond_7

    move v2, v4

    :cond_7
    invoke-virtual {p0, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    :cond_8
    return-void
.end method

.method public final prepareMultiSplitDismissChangeTransition(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    const-string v2, "StageCoordinator"

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v1

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object p0

    if-eqz v0, :cond_7

    if-eqz v5, :cond_7

    if-nez p0, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p3, :cond_3

    const/4 p3, 0x4

    goto :goto_1

    :cond_3
    move p3, v3

    :goto_1
    if-ne p1, v4, :cond_4

    const-string p3, "half_dismiss"

    invoke-virtual {p2, v5, v3, p3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p2, v0, v3, p3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    goto :goto_2

    :cond_4
    if-ne p1, v1, :cond_5

    const-string v1, "cell_dismiss"

    invoke-virtual {p2, v0, p3, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    move-object p3, v1

    goto :goto_2

    :cond_5
    const-string v0, "cell_host_dismiss"

    invoke-virtual {p2, v5, p3, v0}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    move-object p3, v0

    :goto_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x2

    invoke-virtual {p2, p0, v1, p3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "prepareMultiSplitDismissChangeTransition: dismiss="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hasMovingToFreeform="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "prepareMultiSplitDismissChangeTransition: failed, dismissStageToken="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cellHostStageToken="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cellStageToken="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_5
    const-string/jumbo p0, "prepareMultiSplitDismissChangeTransition: failed, invalid cell host"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;Z)V

    return-void
.end method

.method public final prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;Z)V
    .locals 11

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareMultiSplitDismissChangeTransition(ILandroid/window/WindowContainerTransaction;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    move v3, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    move v3, v0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v5

    const-string v6, "StageCoordinator"

    if-eqz v4, :cond_c

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {p3}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p3

    if-ne p3, v7, :cond_3

    iget-object p3, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string/jumbo v9, "split_to_close(triggerTask)"

    invoke-virtual {p1, p3, v8, v9}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :cond_3
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    if-eqz p3, :cond_4

    move p3, v1

    goto :goto_1

    :cond_4
    move p3, v0

    :goto_1
    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    const-string/jumbo v10, "split_to_close"

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p1, v4, v8, v10}, Landroid/window/WindowContainerTransaction;->orderedSetChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v4, v8, v10}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :goto_2
    if-eqz p4, :cond_7

    move v0, v7

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    move-result p4

    if-eqz p4, :cond_8

    iget p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    const-string/jumbo v2, "split_to_freeform(hasAppsEdge)"

    invoke-virtual {p1, p4, v2}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p4, v1}, Landroid/window/WindowContainerTransaction;->addChangeTransitFlags(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    const/4 p4, 0x6

    invoke-virtual {p1, p4}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExpandChangeTransitionMode(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v0

    :goto_3
    if-eqz v0, :cond_a

    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    const-string/jumbo v1, "split_to_full"

    if-eqz p4, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p1, v5, v0, v1}, Landroid/window/WindowContainerTransaction;->orderedSetChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v5, v0, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :cond_a
    :goto_4
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p0, :cond_b

    const-string p0, "2090"

    const-string p1, "From split dismiss"

    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "prepareSplitDismissChangeTransition: dismiss="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expand="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hasMovingToFreeform="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "prepareSplitDismissChangeTransition: failed, dismissStageToken="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", expandStageToken="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final prepareSplitLayout(Landroid/window/WindowContainerTransaction;ZF)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move p2, v1

    :cond_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x3

    const-string/jumbo v7, "prepareSplitLayout: resize=%b"

    const-wide v4, 0x3f15383becd335daL    # 8.094659570475425E-5

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2, p3, v3, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p3, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerAtBorder(Z)V

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p3}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    :goto_1
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p3, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v4, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    if-eqz v0, :cond_6

    invoke-virtual {p1, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitionRequest(I)V

    :cond_6
    return-void
.end method

.method public prepareSplitMaximizeChangeTransition(Landroid/window/WindowContainerTransaction;I)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "StageCoordinator"

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v5, :cond_4

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo p0, "prepareMultiSplitMaximizeChangeTransition: failed, cannot find token"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "maximize_multi_split"

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2, v1, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExpandChangeTransitionMode(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result p0

    invoke-virtual {p1, v5, p0, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "prepareMultiSplitMaximizeChangeTransition: expand="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    const-string/jumbo p0, "prepareMultiSplitMaximizeChangeTransition: failed, invalid cell host"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object p0

    if-eqz v2, :cond_8

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    const-string v3, "maximize_split"

    invoke-virtual {p1, v2, v1, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExpandChangeTransitionMode(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v0

    invoke-virtual {p1, p0, v0, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "prepareSplitMaximizeChangeTransition: expand="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "prepareSplitMaximizeChangeTransition: failed, dismissStageToken="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", expandStageToken="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final recordLastActiveStage()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    :cond_5
    :goto_1
    return-void
.end method

.method public final registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendStatusToListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public final reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget-object v5, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    sget-object v6, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    move-object v2, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    :goto_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mStageType:I

    if-ne p2, v2, :cond_2

    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    move v4, v2

    :cond_3
    if-nez p2, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    if-ne p2, v2, :cond_6

    if-eqz v4, :cond_6

    :cond_5
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v1

    :cond_6
    move v4, v2

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_2
    if-nez p2, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    if-ne p2, v2, :cond_b

    if-eqz v3, :cond_b

    :cond_a
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v1

    :cond_b
    :goto_3
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget-object v5, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget-object v5, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v3, :cond_c

    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    iget-object v6, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v3, v6

    iget-object v6, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v8, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    float-to-int v3, v6

    add-int/2addr v7, v3

    iput v7, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    goto :goto_4

    :cond_c
    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    iget-object v6, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v3, v6

    iget-object v6, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v8, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    float-to-int v3, v6

    add-int/2addr v7, v3

    iput v7, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    :cond_d
    :goto_4
    invoke-virtual {p0, v1, v2, p1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    :cond_e
    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mToSplit:Z

    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public final requestEnterSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSelectListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSelectListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    iget-object v3, v3, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    const-string v5, "SingleInstanceRemoteListener"

    if-nez v3, :cond_0

    const-string v3, "Failed remote call on null listener"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    check-cast v3, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;

    invoke-virtual {v3, p2, p1, p3}, Lcom/android/wm/shell/splitscreen/ISplitSelectListener$Stub$Proxy;->onRequestSplitSelect(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/graphics/Rect;)Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v6, "Failed remote call"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p4}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_2
    return-void
.end method

.method public final resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;
    .locals 5

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eq p1, v3, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-ne p1, v4, :cond_3

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/wm/shell/util/StageUtils;->getMultiSplitLaunchPosition(IZ)I

    move-result p2

    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellStageWindowConfigPosition(IZ)V

    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellStageWindowConfigPosition(I)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1, p4, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    :cond_2
    invoke-static {p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown stage="

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {p3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-static {p3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_b

    iget-boolean p1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result p1

    if-ne p1, p2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result p1

    if-ne p1, p2, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    if-ne p1, p2, :cond_9

    move v1, v4

    goto :goto_0

    :cond_9
    move v1, v3

    :goto_0
    if-eq v1, v3, :cond_a

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    goto :goto_1

    :cond_a
    const-string p0, "StageCoordinator"

    const-string p1, "No stage type nor split position specified to resolve start stage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v4, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    :goto_1
    return-object p3
.end method

.method public final resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_8

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_3

    if-eq p2, v1, :cond_0

    invoke-virtual {p0, p2, v0, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    :goto_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, p0, :cond_2

    move-object v2, v3

    :cond_2
    invoke-static {p3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto/16 :goto_4

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown stage="

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eq p2, v1, :cond_5

    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p1

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p2

    :goto_1
    if-nez p3, :cond_6

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_6
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, p0, :cond_7

    move-object v2, v3

    :cond_7
    invoke-static {p3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto :goto_4

    :cond_8
    if-eq p2, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, p1, :cond_9

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_4

    :cond_a
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_4

    :cond_b
    const-string p0, "StageCoordinator"

    const-string p1, "No stage type nor split position specified to resolve start stage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object p3
.end method

.method public final rotateMultiSplitWithTransition()Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v4, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    invoke-direct {v4}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iput v6, v4, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    move-result v6

    iput v6, v4, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    iput v6, v4, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->rotateMultiSplitClockwise(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    const-string/jumbo v6, "rotate_split"

    invoke-virtual {v3, v0, v8, v6}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v3, v2, v8, v6}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v3, v5, v8, v6}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    :cond_2
    iput-boolean v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsMultiSplitRotating:Z

    invoke-virtual {p0, v4, v8, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsMultiSplitRotating:Z

    return v8

    :cond_3
    :goto_1
    const-string p0, "StageCoordinator"

    const-string/jumbo v0, "rotateMultiSplitWithTransition: failed, split isn\'t activated"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final sendOnBoundsChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sendPairLoggingLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1004"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "1045"

    goto :goto_0

    :cond_2
    const-string p0, "1044"

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final sendSplitDirectionSaLogging()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Vertical split"

    goto :goto_0

    :cond_1
    const-string v0, "Horizontal split"

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    const-string p0, "Vertical device"

    goto :goto_1

    :cond_2
    const-string p0, "Horizontal device"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1025"

    invoke-static {v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendStatusToListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 5

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {p1, v3, v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    :cond_1
    return-void
.end method

.method public final setAnimScaleSetting(F)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAnimScaleSetting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTransitions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    :cond_0
    return-void
.end method

.method public final setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method

.method public final setCellSplitVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    return-void
.end method

.method public final setCellStageWindowConfigPosition(IZ)V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result p2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_2

    :cond_1
    if-nez p2, :cond_5

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    :cond_2
    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_2

    :cond_4
    if-nez p2, :cond_5

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    return-void
.end method

.method public final setDividerSizeIfNeeded$1(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerConfig(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    if-eqz p1, :cond_0

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    const-string/jumbo v1, "update_flex_panel"

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    :cond_0
    return-void
.end method

.method public final setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eq p2, v0, :cond_b

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v5, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v7, 0x3f

    const-string/jumbo v8, "setDividerVisibility: visible=%b keyguardShowing=%b dividerAnimating=%b caller=%s"

    const-wide v5, -0x3a591d538c91cb12L    # -3.541350913827177E27

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    if-eqz v0, :cond_3

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x37c680e9f28035a1L    # 5.166566233758337E-40

    const/4 v3, 0x0

    const-string v4, "   Defer showing divider bar due to keyguard showing."

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v6, "sendSplitVisibilityChanged: dividerVisible=%b"

    const-wide v3, -0xe34d559f011c21cL    # -1.4152129448770331E240

    const/4 v5, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    invoke-interface {v0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    iput-boolean v0, p2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerVisible:Z

    if-nez v0, :cond_7

    iget-object v0, p2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz v0, :cond_6

    iget-boolean v2, p2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsPendingFirstAutoOpenDividerPanel:Z

    if-eqz v2, :cond_6

    iget-object v2, p2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanelAutoOpen:Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v1, p2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsPendingFirstAutoOpenDividerPanel:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeCallbacks() DividerPanel first auto open / mIsFirstAutoOpenDividerPanel: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SplitWindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    iget-object p2, p2, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object p2, p2, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_7
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION_SA_LOGGING:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendSplitDirectionSaLogging()V

    :cond_8
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    if-eqz p2, :cond_a

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x2759d98302b1389cL    # 4.004206646490776E-119

    const/4 v3, 0x0

    const-string v4, "   Skip animating divider bar due to it\'s remote animating."

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public final setFlexPanelMode(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_2
    return-void
.end method

.method public final setLayoutOffsetTargetForEnsureDock(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .locals 5

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getBottomStages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->applyLayoutOffsetTargetForMultiSplit(Landroid/window/WindowContainerTransaction;ILjava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_0
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget-object p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget-object p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result p1

    div-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int p1, v3

    invoke-virtual {v0, p2, v1, p1}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_3
    iget-object p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0, p2}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public final setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    move-result v3

    invoke-virtual {p0, p4, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZZ)Z

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v2

    :goto_0
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v3, p1, :cond_2

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_LAUNCH_POLICY:Z

    if-eqz p4, :cond_3

    iget-boolean p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz p4, :cond_3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_2
    if-ltz p1, :cond_4

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v0

    invoke-interface {p4, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-interface {p4, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1, p3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    :cond_6
    :goto_3
    return-void
.end method

.method public final setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public final setSideStagePositionByAdjacentTask(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setChangeStagePosition(Z)V

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    return-void

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_4

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p2, :cond_2

    move p2, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelActivity(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    if-eqz p2, :cond_4

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_LAUNCH_ADJACENT:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, v0, v0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    :goto_1
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateFlexPanelState(ZLandroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez p1, :cond_7

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    goto :goto_3

    :cond_4
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_LAUNCH_ADJACENT:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0, v0, v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    goto :goto_3

    :cond_5
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p2, :cond_7

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    :goto_3
    return-void
.end method

.method public final setSplitCreateMode(IZ)Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    invoke-direct {v0}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iput v2, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    iput v2, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    move-result v2

    if-ne p1, v2, :cond_2

    return-object v1

    :cond_2
    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->rotateMultiSplitClockwise(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    move-result v2

    if-ne p1, v2, :cond_2

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    return-object v0
.end method

.method public final setSplitDivision(IZZ)Z
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const-string v2, "StageCoordinator"

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result p1

    xor-int/2addr p1, v0

    goto :goto_0

    :cond_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    if-ne v3, v0, :cond_2

    iget p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    if-eq p1, p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "split division not feasible, so change: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p2

    :cond_2
    :goto_0
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz p2, :cond_4

    const-string/jumbo p2, "setSplitDivision: nextSplitDivision="

    const-string v1, "   Caller="

    invoke-static {p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    if-eq v2, p1, :cond_6

    iput p1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p1

    iput-boolean p1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateSnapAlgorithm(I)V

    :cond_6
    if-eqz p3, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_7
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION_SA_LOGGING:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendSplitDirectionSaLogging()V

    :cond_8
    return v0
.end method

.method public setSplitTransitions(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    return-void
.end method

.method public final setSplitsVisible(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible$1(ZZ)V

    return-void
.end method

.method public final setSplitsVisible$1(ZZ)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x3

    const-string/jumbo v6, "setSplitsVisible: visible=%b"

    const-wide v3, -0x638727c67c34c81cL    # -1.60721868131215E-171

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-boolean p1, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iput-boolean p1, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerLeashHidden:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateDividerLeashVisible(Z)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iput-boolean v2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean v2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    :cond_3
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded$1(Z)V

    :cond_4
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setFlexPanelMode(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->setSplitsVisible(ZZ)V

    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v15, 0x1

    const/4 v1, 0x6

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    if-eqz v0, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/shared/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v1, v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v0

    invoke-static {v9, v15}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v15

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v10, v15}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_4
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    return v15

    :cond_5
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v21

    const/16 v19, 0x1

    const-string/jumbo v20, "startAnimation: transition=%d display change"

    const-wide v17, -0x54e326f32ea1cd59L    # -5.151989205113007E-101

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v10, v15}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    return v15

    :cond_8
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingPassThrough(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v21

    const/16 v19, 0x1

    const-string/jumbo v20, "startAnimation: passThrough transition=%d"

    const-wide v17, 0x7e5f194cc142301dL    # 5.20666582378549E300

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    return v15

    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    if-eqz v0, :cond_b

    invoke-virtual {v6, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V

    :cond_b
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_c
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const-string v3, "StageCoordinator"

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez v2, :cond_12

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :cond_d
    move v1, v7

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_5

    :cond_e
    move v5, v7

    goto :goto_6

    :cond_f
    :goto_5
    move v5, v15

    :goto_6
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startAnimation. disappear at stage position. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return v7

    :cond_12
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    int-to-long v12, v2

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v21

    const/16 v19, 0x1

    const-string/jumbo v20, "startAnimation: transition=%d"

    const-wide v17, 0x4dd7fe3dfe0736caL    # 1.0107087462192559E67

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-boolean v7, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v12, 0x0

    if-eqz v2, :cond_14

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/shared/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v6, v2, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    if-eqz v2, :cond_14

    move v2, v15

    goto :goto_7

    :cond_14
    move v2, v7

    :goto_7
    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;

    invoke-direct {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v13

    invoke-static {v13}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v13

    if-nez v13, :cond_16

    :cond_15
    move v13, v7

    goto :goto_9

    :cond_16
    move v13, v7

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v16

    if-eqz v16, :cond_17

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v14

    invoke-static {v14}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v14

    if-ne v14, v15, :cond_17

    move v13, v15

    goto :goto_9

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v14

    move/from16 v16, v7

    move-object/from16 v22, v12

    move/from16 v12, v16

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    const/16 v21, -0x1

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-ge v12, v15, :cond_3f

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    move/from16 v23, v12

    const/4 v12, 0x6

    if-ne v8, v12, :cond_18

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_18

    iget-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_18
    iget-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v8, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v8, v15, v14}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v8

    if-eqz v8, :cond_19

    move-object/from16 v22, v15

    :cond_19
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    if-nez v8, :cond_1a

    move/from16 v26, v2

    move/from16 v27, v13

    move/from16 v24, v14

    goto/16 :goto_1a

    :cond_1a
    iget-object v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move/from16 v24, v14

    iget-object v14, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v14}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v14, 0x4

    if-eqz v12, :cond_22

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1, v7}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto/16 :goto_e

    :cond_1b
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    if-ne v7, v14, :cond_1c

    if-nez v13, :cond_1c

    iget-boolean v7, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isSleeping:Z

    if-eqz v7, :cond_1c

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "In the process of sleeping, the visible of split should be maintained."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1c
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v7, :cond_1d

    if-eqz v22, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v16

    :cond_1d
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_d

    :cond_1e
    const/4 v7, 0x0

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    if-eqz v12, :cond_1f

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    invoke-static {v8}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v8

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1f

    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v8

    const/4 v12, 0x2

    if-ne v8, v12, :cond_1f

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateDividerLeashVisible(Z)V

    goto :goto_d

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_20
    :goto_d
    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v12, 0x1

    invoke-virtual {v7, v8, v12}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1, v7}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_21
    :goto_e
    move/from16 v26, v2

    move/from16 v27, v13

    goto/16 :goto_1a

    :cond_22
    invoke-virtual {v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v1

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v12, :cond_31

    if-eqz v2, :cond_31

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    if-nez v1, :cond_23

    const/16 v25, 0x1

    goto :goto_f

    :cond_23
    const/16 v25, 0x0

    :goto_f
    if-eqz v25, :cond_24

    iget-object v14, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_10

    :cond_24
    iget-object v14, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    :goto_10
    sget-boolean v26, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v26, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v26

    if-eqz v26, :cond_28

    move/from16 v26, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v2

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v9

    move/from16 v27, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result v13

    if-ne v13, v9, :cond_25

    const/4 v9, 0x0

    goto :goto_11

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result v13

    if-ne v13, v9, :cond_26

    const/4 v9, 0x1

    goto :goto_11

    :cond_26
    iget v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    if-ne v13, v9, :cond_27

    const/4 v9, 0x2

    goto :goto_11

    :cond_27
    move/from16 v9, v21

    :goto_11
    if-ne v9, v2, :cond_29

    const/4 v2, 0x1

    goto :goto_12

    :cond_28
    move/from16 v26, v2

    move/from16 v27, v13

    :cond_29
    const/4 v2, 0x0

    :goto_12
    iget-object v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v13, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    invoke-virtual {v14, v13}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    if-eqz v2, :cond_2a

    iget-object v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    :cond_2a
    iget-object v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    :goto_13
    const/4 v2, 0x1

    goto :goto_14

    :cond_2b
    iget-object v13, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    invoke-virtual {v14, v13}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    if-eqz v2, :cond_2c

    iget-object v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    :cond_2c
    iget-object v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v13, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->left:I

    neg-int v14, v14

    iget v13, v13, Landroid/graphics/Rect;->top:I

    neg-int v13, v13

    invoke-virtual {v2, v14, v13}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_13

    :cond_2d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v2, :cond_2e

    iget-object v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    invoke-virtual {v14, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v13, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->left:I

    neg-int v14, v14

    iget v13, v13, Landroid/graphics/Rect;->top:I

    neg-int v13, v13

    invoke-virtual {v2, v14, v13}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_13

    :cond_2e
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_2f

    iget-object v9, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2f
    if-eqz v2, :cond_32

    if-eqz v25, :cond_30

    invoke-virtual {v15, v12}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    iget v2, v12, Landroid/graphics/Rect;->left:I

    iget v9, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15, v2, v9}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v9, v12, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v9, v12, Landroid/graphics/Rect;->top:I

    iput v9, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v2, v9, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v2, v9, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    int-to-float v12, v13

    int-to-float v13, v14

    invoke-virtual {v9, v2, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15

    :cond_30
    invoke-virtual {v15, v12}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    goto :goto_15

    :cond_31
    move/from16 v26, v2

    move/from16 v27, v13

    :cond_32
    :goto_15
    if-nez v1, :cond_3a

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v9, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget v9, v9, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-eqz v9, :cond_3a

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_33

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v9, v12, :cond_33

    move-object v7, v0

    goto :goto_16

    :cond_33
    iget-object v9, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_34

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v9, v12, :cond_34

    move-object v7, v4

    goto :goto_16

    :cond_34
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v9, :cond_35

    iget-object v9, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_35

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v9, v12, :cond_35

    goto :goto_16

    :cond_35
    const/4 v7, 0x0

    :goto_16
    if-eqz v7, :cond_3a

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    if-eqz v9, :cond_38

    iget-object v7, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStagePosition(Landroid/window/WindowContainerToken;)I

    move-result v2

    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_3a

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    and-int/lit8 v2, v2, 0x28

    if-eqz v2, :cond_37

    iget v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_36

    iget-object v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->left:I

    neg-int v12, v12

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v7, v12, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_17

    :cond_36
    invoke-virtual {v9}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_17

    :cond_37
    invoke-virtual {v9, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    :goto_17
    iget v2, v7, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v12, v7, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    invoke-virtual {v7, v2, v12}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v9, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget v9, v9, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v2, v9

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v11, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_19

    :cond_38
    iget v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v2, :cond_39

    move-object v2, v4

    goto :goto_18

    :cond_39
    move-object v2, v0

    :goto_18
    if-ne v7, v2, :cond_3a

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v7, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    iget v9, v2, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    iget v12, v2, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    invoke-virtual {v2, v9, v12}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v7, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget v7, v7, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v9, v7

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v10, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v11, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_3a
    :goto_19
    if-nez v1, :cond_3b

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_3e

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    iput-boolean v2, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    goto/16 :goto_1a

    :cond_3b
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    const-string v7, " before startAnimation()."

    const-string v9, " to have been called with "

    if-eqz v2, :cond_3c

    iget v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v12, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v2

    if-nez v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "Expected onTaskAppeared on "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v7, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    goto :goto_1a

    :cond_3c
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v12, 0x2

    if-eq v2, v12, :cond_3d

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz v2, :cond_3e

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v12, 0x4

    if-ne v2, v12, :cond_3e

    if-nez v27, :cond_3e

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_3e

    :cond_3d
    iget v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v12, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "Expected onTaskVanished on "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_1a
    add-int/lit8 v12, v23, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v14, v24

    move/from16 v2, v26

    move/from16 v13, v27

    const/4 v1, 0x6

    const/4 v7, 0x0

    const/4 v15, 0x1

    goto/16 :goto_a

    :cond_3f
    move-object/from16 v12, v22

    if-eqz v12, :cond_40

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v2, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_1b

    :cond_40
    move-object/from16 v9, p2

    const/4 v2, 0x1

    goto/16 :goto_23

    :cond_41
    :goto_1b
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStage(Landroid/window/WindowContainerToken;)I

    move-result v2

    if-nez v2, :cond_42

    move-object/from16 v9, p2

    move v1, v0

    const/4 v0, 0x1

    goto :goto_1c

    :cond_42
    const/4 v0, 0x1

    move-object/from16 v9, p2

    if-ne v2, v0, :cond_43

    goto :goto_1c

    :cond_43
    move/from16 v1, v21

    :goto_1c
    invoke-static {v9, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_1d
    if-ltz v2, :cond_46

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    if-eq v3, v12, :cond_45

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v0, :cond_44

    const/4 v0, 0x3

    if-ne v4, v0, :cond_45

    :cond_44
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    if-ne v0, v1, :cond_45

    goto :goto_1e

    :cond_45
    add-int/lit8 v2, v2, -0x1

    const/4 v0, 0x1

    goto :goto_1d

    :cond_46
    const/4 v3, 0x0

    :goto_1e
    if-eqz v3, :cond_47

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/16 v1, 0x3ed

    move-object/from16 v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v1, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    goto :goto_1f

    :cond_47
    move-object/from16 v2, p1

    :goto_1f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v0, :cond_49

    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    if-eqz v3, :cond_48

    const/4 v13, 0x1

    goto :goto_20

    :cond_48
    const/4 v13, 0x0

    :goto_20
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v14, v16

    invoke-virtual/range {v7 .. v14}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animatePendingEnterPipFromSplit(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;ZZ)Z

    goto :goto_22

    :cond_49
    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    if-eqz v3, :cond_4a

    const/4 v13, 0x1

    goto :goto_21

    :cond_4a
    const/4 v13, 0x0

    :goto_21
    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v14}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animatePendingEnterPipFromSplit(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;ZZ)Z

    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    const/4 v2, 0x1

    return v2

    :goto_23
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    iget-object v10, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    sub-int/2addr v10, v2

    :goto_24
    if-ltz v10, :cond_4c

    iget-object v2, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->shouldDismissStage()Z

    move-result v11

    if-eqz v11, :cond_4b

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v10, v10, -0x1

    goto :goto_24

    :cond_4c
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v2, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x1

    goto :goto_25

    :cond_4d
    const/4 v2, 0x0

    :goto_25
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_4f

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_4f

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4f

    if-eqz v2, :cond_4e

    goto :goto_26

    :cond_4e
    move-object v7, v1

    goto/16 :goto_31

    :cond_4f
    :goto_26
    const-string v10, "Somehow removed the last task in a stage outside of a proper transition."

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v10, :cond_50

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Dismiss Split Debugging mMainStage.getChildCount()="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mSideStage.getChildCount()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " dismissStages.size()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isCellStageEmpty="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isSplitActive="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isSplitScreenVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    iget-boolean v10, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    if-eqz v10, :cond_51

    const-string v0, "In the process of starting the App Pair, skip the process"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    const/4 v0, 0x0

    return v0

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasAIKeySplitTransitionPending()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v10

    invoke-static {v10}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v10

    if-nez v10, :cond_52

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/shared/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v10

    if-nez v10, :cond_53

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v10

    if-nez v10, :cond_53

    :cond_52
    const-string/jumbo v0, "waiting split transition change by ai key"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_53
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz v3, :cond_55

    const/4 v3, 0x0

    :goto_28
    iget-object v10, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v3, v10, :cond_55

    iget-object v10, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->shouldDismissStage()Z

    move-result v11

    if-nez v11, :cond_54

    iget-object v10, v10, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v10

    if-nez v10, :cond_54

    const/4 v10, 0x0

    return v10

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_55
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearSplitPairedInRecents(I)V

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_56

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v6, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v10

    if-eqz v10, :cond_57

    :cond_56
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v10

    if-nez v10, :cond_58

    :cond_57
    const/4 v10, 0x1

    goto :goto_29

    :cond_58
    const/4 v10, 0x0

    :goto_29
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v11, :cond_63

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v11

    if-eqz v11, :cond_63

    const/4 v11, 0x1

    xor-int/lit8 v12, v10, 0x1

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ne v1, v11, :cond_59

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v6, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5a

    :cond_59
    if-eqz v2, :cond_5b

    :cond_5a
    const/4 v12, 0x2

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v2

    if-nez v2, :cond_5c

    const/4 v2, 0x1

    goto :goto_2a

    :cond_5c
    const/4 v5, 0x1

    if-ne v2, v5, :cond_5d

    const/4 v2, 0x0

    goto :goto_2a

    :cond_5d
    move/from16 v2, v21

    :goto_2a
    iget-object v5, v7, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v5, v0, :cond_5e

    move-object v0, v4

    :cond_5e
    const/4 v4, 0x0

    invoke-virtual {v6, v12, v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareMultiSplitDismissChangeTransition(ILandroid/window/WindowContainerTransaction;Z)V

    const/4 v7, 0x2

    if-ne v12, v7, :cond_5f

    invoke-virtual {v6, v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_2b

    :cond_5f
    if-ne v12, v1, :cond_60

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v5, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    goto :goto_2b

    :cond_60
    const/4 v4, 0x1

    if-ne v12, v2, :cond_61

    invoke-virtual {v6, v3, v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    move v4, v2

    goto :goto_2c

    :cond_61
    :goto_2b
    move v4, v1

    :goto_2c
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x1

    const/16 v7, 0xa

    move-object v1, v3

    move-object/from16 v2, p0

    move v3, v4

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_62

    iget-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    if-eqz v0, :cond_62

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    :cond_62
    const/4 v0, 0x0

    return v0

    :cond_63
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v2, :cond_67

    iget-boolean v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v2, :cond_67

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-nez v2, :cond_64

    goto :goto_2e

    :cond_64
    iget-boolean v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsTableMode:Z

    if-eqz v2, :cond_66

    iget-boolean v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    if-eqz v2, :cond_65

    goto :goto_2d

    :cond_65
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/shared/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-boolean v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    if-eqz v2, :cond_67

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_67

    :cond_66
    :goto_2d
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :cond_67
    :goto_2e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_69

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_69

    invoke-virtual {v6, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    :cond_68
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v6, v3, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;)V

    :cond_69
    iget-boolean v0, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    if-nez v0, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v10

    :goto_2f
    const/4 v2, 0x1

    goto :goto_30

    :cond_6a
    move/from16 v0, v21

    goto :goto_2f

    :goto_30
    invoke-virtual {v6, v0, v3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x0

    const/4 v4, 0x2

    move-object v7, v1

    move-object v1, v3

    move-object/from16 v2, p0

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    iget-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz v0, :cond_6c

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6b
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_6c
    :goto_31
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_6d

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6d

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v7, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->notifySplitAnimationFinished()V

    goto/16 :goto_27
.end method

.method public final startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/window/WindowContainerToken;II)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p5

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v11, 0x0

    aget-boolean v0, v0, v11

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, v9

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const/4 v15, 0x4

    const-string/jumbo v16, "startIntent: intent=%s position=%d"

    const-wide v13, 0x4d02be1ee20d3c9bL    # 9.637853240223E62

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v6, v1, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;I)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v13, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, v12, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    xor-int/lit8 v10, v0, 0x1

    new-instance v12, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;

    invoke-direct {v12, v6, v10, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V

    new-instance v13, Landroid/window/WindowContainerTransaction;

    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v13

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v10, :cond_1

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iget v1, v1, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v6, v1, v13, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    :cond_1
    invoke-virtual {v13, v7, v8, v0}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, v12, v13}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_2
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v14, :cond_3

    if-eqz p7, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, p7

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;ILandroid/os/Bundle;)V

    return-void

    :cond_3
    new-instance v15, Landroid/window/WindowContainerTransaction;

    invoke-direct {v15}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v10, :cond_5

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v1, v1, v11

    if-eqz v1, :cond_4

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v17, 0x15ee573c810e3476L    # 4.838597429637216E-203

    const/16 v19, 0x0

    const-string v20, "Reordering hide-task to bottom"

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v15, v10, v11}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v6, v15, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    :cond_6
    invoke-virtual {v15, v7, v8, v0}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    move-result v0

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->isIntentInPip(Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_7
    const/4 v1, -0x1

    if-eq v9, v1, :cond_c

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipEvictingMainStageChildren:Z

    invoke-virtual {v6, v1, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2, v15}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_a
    iget-boolean v0, v12, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x3ed

    goto :goto_0

    :cond_b
    const/16 v0, 0x3ec

    :goto_0
    iget-boolean v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/2addr v2, v13

    invoke-virtual {v6, v15, v1, v9, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-boolean v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/2addr v2, v13

    const/4 v3, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v15

    move-object/from16 p3, v3

    move-object/from16 p4, p0

    move/from16 p5, v0

    move/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    return-void

    :cond_c
    :goto_1
    invoke-virtual {v2, v15}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;ILandroid/os/Bundle;)V
    .locals 6

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :cond_0
    if-eqz p1, :cond_1

    move-object p2, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x42000000    # 32.0f

    move-object v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    :goto_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    invoke-static {p2, p4, p3, p0, p5}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->makeStartIntentOpts(Landroid/content/Intent;Landroid/os/UserHandle;III)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    move-result-object p0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    const-string p0, "StageCoordinator"

    const-string p1, "pending split screen by start intent to cell"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p5, p6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p2, p3, p1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p2, 0x0

    const/high16 p3, 0x3f000000    # 0.5f

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p5, p4, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    :cond_4
    invoke-virtual {p0, v1, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterMultiSplitScreen(Landroid/window/WindowContainerTransaction;I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x44d

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    return-void
.end method

.method public final startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 36

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v9, 0x0

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const-string/jumbo v6, "startPendingAnimation: transition=%d"

    const-wide v3, -0x1c35bff66bd6cc95L    # -5.0722337410355004E172

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    iget-object v8, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v2, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v5, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz v0, :cond_36

    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    sget-object v19, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v19, v19, v9

    if-eqz v19, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v25

    const/16 v23, 0x0

    const-string/jumbo v24, "startPendingEnterAnimation: enterTransition=%s"

    const-wide v21, -0x57d7bdc18ab9ccc0L

    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v9, Landroid/window/WindowContainerTransaction;

    invoke-direct {v9}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v26

    if-nez v26, :cond_3

    :cond_2
    move-object/from16 v26, v0

    goto :goto_1

    :cond_3
    move-object/from16 v26, v0

    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    iget v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v12, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    move-result v0

    if-nez v4, :cond_6

    if-nez v0, :cond_6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    invoke-static {v10}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    const/4 v15, 0x6

    if-ne v10, v15, :cond_6

    :cond_5
    move-object v4, v6

    :goto_1
    const/4 v10, 0x6

    :goto_2
    const/4 v15, -0x1

    goto :goto_6

    :cond_6
    if-nez v1, :cond_8

    const/4 v10, 0x1

    if-ne v0, v10, :cond_8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    invoke-static {v10}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    const/4 v15, 0x6

    if-eq v10, v15, :cond_7

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v10, :cond_8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    invoke-static {v10}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    if-eqz v10, :cond_8

    :cond_7
    move-object v1, v6

    goto :goto_1

    :cond_8
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v10, :cond_b

    const/4 v10, 0x2

    if-ne v0, v10, :cond_b

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v15

    invoke-static {v15}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v15

    const/4 v10, 0x6

    if-ne v15, v10, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v15, -0x1

    goto :goto_5

    :cond_a
    const/4 v10, 0x6

    :goto_4
    move-object/from16 v20, v6

    goto :goto_2

    :cond_b
    const/4 v10, 0x6

    goto :goto_3

    :goto_5
    if-eq v0, v15, :cond_c

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_c

    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9, v0, v6, v7}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v15, p3

    move-object/from16 v10, p5

    move-object/from16 v0, v26

    goto/16 :goto_0

    :cond_d
    move-object/from16 v26, v0

    const/4 v10, 0x6

    const/4 v15, -0x1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelActivity(Ljava/lang/String;)Z

    move-result v3

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v3, 0x0

    :goto_8
    iput-boolean v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v6, :cond_10

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v12, v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_9
    iget-boolean v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    if-eqz v3, :cond_11

    iput-boolean v6, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded$1(Z)V

    goto :goto_a

    :cond_11
    const/4 v3, 0x1

    iget-boolean v6, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeFlexPanelMode:Z

    invoke-virtual {v12, v6, v11, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateFlexPanelState(ZLandroid/view/SurfaceControl$Transaction;Z)V

    :cond_12
    :goto_a
    iget-object v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v7, v3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v18, :cond_13

    iget v3, v7, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    const/16 v6, 0x44d

    if-ne v3, v6, :cond_13

    if-eqz v20, :cond_13

    const/16 v24, 0x1

    goto :goto_b

    :cond_13
    const/16 v24, 0x0

    :goto_b
    iget v6, v7, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    iget-boolean v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    const-string v15, "StageCoordinator"

    if-eqz v3, :cond_14

    const/4 v10, 0x0

    iput-boolean v10, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    const-string v0, "isSkipDismissPair: mAppPairStarted=true"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_14
    iget-boolean v10, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    if-nez v10, :cond_15

    goto :goto_d

    :cond_15
    const/16 v10, 0x3ec

    if-ne v6, v10, :cond_16

    const-string v0, "isSkipDismissPair: type=TRANSIT_SPLIT_SCREEN_PAIR_OPEN mKeyguardShowing=true"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_16
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz v10, :cond_17

    const/16 v10, 0x44e

    if-ne v6, v10, :cond_17

    const-string v0, "isSkipDismissPair: type=TRANSIT_MULTI_SPLIT_SCREEN_PAIR_OPEN mKeyguardShowing=true"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move/from16 v28, v3

    goto/16 :goto_11

    :cond_17
    :goto_d
    if-eqz v24, :cond_18

    goto :goto_c

    :cond_18
    const-string/jumbo v10, "startPendingEnterAnimation"

    move/from16 v28, v3

    const/16 v3, 0x3ed

    if-eq v6, v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasAIKeySplitTransitionPending()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_1a
    if-eqz v4, :cond_1b

    if-nez v1, :cond_23

    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "  info:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, " mainChild="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, " sideChild="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1c

    const/4 v6, 0x0

    goto :goto_e

    :cond_1c
    if-eqz v1, :cond_1d

    const/4 v6, 0x1

    goto :goto_e

    :cond_1d
    const/4 v6, -0x1

    :goto_e
    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda41;

    invoke-direct {v9, v12, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda41;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    iput-object v9, v7, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "launched 2 tasks in split, but didn\'t receive 2 tasks in transition. Possibly one of them failed to launch"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v4, :cond_1e

    iget-object v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_1e
    iget-object v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-eqz v1, :cond_1f

    iget-object v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_1f
    if-eqz v0, :cond_20

    iget-boolean v0, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    if-eqz v0, :cond_20

    if-nez v1, :cond_20

    const/4 v3, 0x0

    iput-boolean v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    const/4 v0, 0x0

    invoke-virtual {v12, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setFlexPanelMode(Landroid/view/SurfaceControl$Transaction;Z)V

    :goto_f
    move-object/from16 v32, v2

    move v9, v3

    move-object v15, v5

    move-object v10, v8

    move-object v8, v11

    move-object v7, v12

    move-object v6, v13

    move-object v11, v14

    const/16 v5, 0x44f

    const/4 v12, 0x6

    const/4 v14, 0x0

    move-object/from16 v13, p3

    goto/16 :goto_1e

    :cond_20
    const/4 v3, 0x0

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    if-eqz v0, :cond_21

    invoke-virtual {v0, v13, v3, v11}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleUnsupportedSplitStart()V

    goto :goto_f

    :goto_10
    if-nez v4, :cond_22

    if-nez v1, :cond_22

    const-string v0, "Launched a task in split, but didn\'t receive any task in transition."

    invoke-static {v10, v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->splitFailureMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    move-object/from16 v32, v2

    move v9, v3

    move-object v15, v5

    move-object v10, v8

    move-object v8, v11

    move-object v7, v12

    move-object v6, v13

    move-object v11, v14

    const/16 v5, 0x44f

    const/4 v12, 0x6

    move-object/from16 v13, p3

    move-object v14, v0

    goto/16 :goto_1e

    :cond_22
    const/4 v0, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->hasAIKeySplitTransitionPending()Z

    move-result v16

    if-eqz v16, :cond_23

    if-nez v1, :cond_23

    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mHandleSplitWithAIAssistTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v3, v0, v10, v11}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_23
    :goto_11
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v10, 0x1

    goto :goto_12

    :cond_24
    const/4 v10, 0x0

    :goto_12
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v11, 0x1

    goto :goto_13

    :cond_25
    const/4 v11, 0x0

    :goto_13
    if-eqz v18, :cond_26

    if-eqz v20, :cond_26

    invoke-virtual/range {v20 .. v20}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-nez v0, :cond_26

    const/16 v27, 0x1

    goto :goto_14

    :cond_26
    const/16 v27, 0x0

    :goto_14
    const-string v0, " before startAnimation()."

    const-string v3, " to have been called with "

    move/from16 v29, v6

    const-string v6, "Expected onTaskAppeared on "

    if-eqz v10, :cond_27

    move-object/from16 v30, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v5

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_27
    move-object/from16 v31, v5

    move-object/from16 v30, v7

    :goto_15
    if-eqz v11, :cond_28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-eqz v27, :cond_29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;

    move-object/from16 v6, v26

    const/16 v16, 0x0

    move-object v0, v7

    move-object/from16 v22, v1

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v32, v2

    const/4 v3, 0x4

    move-object v2, v6

    move-object/from16 v19, v15

    move/from16 v21, v28

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v3, v4

    move-object/from16 v23, v4

    const/4 v15, 0x1

    move/from16 v4, v24

    move-object/from16 v15, v31

    move/from16 v5, v21

    move-object v13, v6

    move/from16 v33, v29

    move v6, v10

    move-object v12, v7

    move-object/from16 v10, v16

    move-object/from16 v14, v30

    move-object/from16 v7, v22

    move-object/from16 v34, v8

    move v8, v11

    move-object/from16 v16, v9

    move/from16 v11, v17

    move-object/from16 v9, v20

    move/from16 v10, v27

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda42;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;Landroid/window/TransitionInfo$Change;ZZZLandroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;)V

    iput-object v12, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    iget v1, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2c

    iget-boolean v0, v15, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v0, :cond_2c

    const/16 v0, 0x3ed

    if-ne v1, v0, :cond_2c

    if-eqz v23, :cond_2a

    if-nez v22, :cond_2a

    invoke-virtual/range {v23 .. v23}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object/from16 v7, p0

    iget v4, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v7, v4, v0, v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->requestEnterSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    goto :goto_16

    :cond_2a
    move-object/from16 v7, p0

    if-eqz v22, :cond_2b

    if-nez v23, :cond_2b

    invoke-virtual/range {v22 .. v22}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget v4, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-virtual/range {v22 .. v22}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v7, v4, v0, v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->requestEnterSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    goto :goto_16

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to restore to split but reparenting change not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    move-object/from16 v7, p0

    :goto_16
    if-eqz v18, :cond_2e

    if-eqz v24, :cond_2e

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    move-object/from16 v8, p4

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    if-eqz v1, :cond_2d

    move-object/from16 v10, v34

    const/4 v9, 0x0

    goto :goto_17

    :cond_2d
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v1, v9}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;Z)V

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-object/from16 v10, v34

    :goto_17
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v3, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v8, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v3, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    iput-boolean v9, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    move-object/from16 v11, p2

    move v12, v2

    invoke-virtual {v7, v11, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    move-object/from16 v6, p1

    move-object/from16 v13, p3

    const/16 v5, 0x44f

    const/4 v14, 0x0

    goto/16 :goto_1e

    :cond_2e
    move-object/from16 v11, p2

    move-object/from16 v8, p4

    move v12, v2

    move-object/from16 v10, v34

    const/4 v9, 0x0

    if-eqz v18, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    if-eqz v0, :cond_2f

    invoke-virtual {v7, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    move-object/from16 v13, p3

    invoke-virtual {v7, v13, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 v14, 0x0

    invoke-virtual {v13, v0, v14}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_18

    :cond_2f
    move-object/from16 v13, p3

    const/4 v14, 0x0

    :goto_18
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v11, v0}, Landroid/window/TransitionInfo;->findChange(Ljava/util/function/Predicate;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mOneshotStartAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_30

    iput v3, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mOneshotStartAlpha:F

    :cond_30
    if-eqz v18, :cond_31

    move/from16 v0, v33

    const/16 v2, 0x44e

    if-ne v0, v2, :cond_31

    const/4 v0, 0x1

    goto :goto_19

    :cond_31
    move v0, v9

    :goto_19
    invoke-virtual {v7, v8, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-boolean v2, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz v2, :cond_34

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/16 v5, 0x44f

    if-eqz v2, :cond_33

    if-eq v1, v5, :cond_32

    goto :goto_1b

    :cond_32
    :goto_1a
    const/4 v1, 0x1

    goto :goto_1c

    :cond_33
    :goto_1b
    const-string/jumbo v1, "startPendingEnterAnimation: skip addDividerBarToTransition, divider is already visible."

    move-object/from16 v2, v19

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1d

    :cond_34
    const/16 v5, 0x44f

    goto :goto_1a

    :goto_1c
    invoke-virtual {v7, v11, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    :goto_1d
    if-eqz v18, :cond_35

    if-eqz v0, :cond_35

    invoke-virtual {v7, v11, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    :cond_35
    :goto_1e
    move-object/from16 v5, p5

    move-object/from16 v2, v32

    goto/16 :goto_22

    :cond_36
    move-object/from16 v32, v2

    move-object v10, v8

    move-object v8, v11

    move-object v7, v12

    move-object v6, v13

    move-object v11, v14

    move-object v13, v15

    const/4 v12, 0x6

    const/4 v14, 0x0

    move-object v15, v5

    const/16 v5, 0x44f

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_37

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v21

    const-string/jumbo v20, "startPendingDismissAnimation: transition=%d dismissTransition=%s"

    const-wide v17, 0x1336a432e0d0335fL    # 4.104936326539844E-216

    const/16 v19, 0x1

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_38

    iget v1, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    iget v2, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    iget-boolean v3, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mIsMultiSplitDismissed:Z

    move-object/from16 v0, p0

    move/from16 v16, v3

    move-object/from16 v3, p2

    move-object v12, v4

    move-object/from16 v4, p3

    const/4 v14, -0x1

    move-object/from16 v5, p4

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    goto :goto_1f

    :cond_38
    move-object v12, v4

    const/4 v14, -0x1

    iget v1, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    const/4 v6, 0x0

    iget v2, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    :goto_1f
    iget v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    if-ne v0, v14, :cond_39

    invoke-virtual {v7, v13, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    return v9

    :cond_39
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;

    const/4 v1, 0x2

    invoke-direct {v0, v7, v12, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    iput-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    move-object/from16 v6, p1

    goto/16 :goto_1e

    :cond_3a
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3b

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->hasChangeTransition()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    invoke-virtual {v7, v11, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v7, v11, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    goto/16 :goto_1e

    :cond_3b
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v1, v15, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object/from16 v2, v32

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, v15, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v5, v5, v9

    if-eqz v5, :cond_3c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v5

    int-to-long v9, v5

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v19

    const-string v18, "playResizeAnimation: transition=%d"

    const-wide v15, -0x77919bc1c9c6c21cL

    const/16 v17, 0x1

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v5, 0x1

    invoke-static {v11, v5}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v6

    :goto_20
    if-ltz v6, :cond_41

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    :cond_3d
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v13, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v13, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    move-object v7, v4

    goto :goto_21

    :cond_3e
    move-object v7, v2

    :goto_21
    new-instance v8, Landroid/animation/ValueAnimator;

    invoke-direct {v8}, Landroid/animation/ValueAnimator;-><init>()V

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    :cond_3f
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v7, v13, v5}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda6;)V

    :cond_40
    add-int/lit8 v6, v6, -0x1

    goto :goto_20

    :cond_41
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;)V

    const/4 v0, 0x1

    return v0

    :goto_22
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_42

    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object v10, v0

    goto :goto_23

    :cond_42
    const/4 v10, 0x0

    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_43
    iget-object v12, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v15, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v14, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_44

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v21

    const-string v20, "playAnimation: transition=%d"

    const-wide v17, 0x758d7d7bf5e03123L    # 1.7711837448225286E258

    const/16 v19, 0x1

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    iput-object v6, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iput-object v8, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v5, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {v12, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    if-nez v1, :cond_47

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    if-eqz v1, :cond_45

    if-nez v5, :cond_45

    invoke-virtual {v12, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    goto :goto_25

    :cond_45
    if-eqz v5, :cond_48

    if-eqz v1, :cond_46

    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1, v11, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->adjustBoundsForMinSizeTaskAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    :cond_46
    iget-object v7, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    iput-object v6, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    :goto_24
    const/4 v0, 0x1

    goto/16 :goto_45

    :cond_47
    :goto_25
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;)V

    goto :goto_24

    :cond_48
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_49

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    int-to-long v0, v0

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v21

    const-wide v17, 0x1873ea5f156f3c66L    # 6.984161340536888E-191

    const/16 v19, 0x1

    const-string v20, "playInternalAnimation: transition=%d"

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    invoke-virtual {v12, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v8

    const/4 v0, 0x1

    invoke-static {v11, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    move v5, v1

    :goto_26
    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const-string v1, "SplitScreenTransitions"

    if-ltz v5, :cond_75

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v4, v11}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v9

    const/4 v6, 0x6

    if-ne v2, v6, :cond_50

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_50

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    if-eqz v16, :cond_4a

    move/from16 v16, v2

    const/16 v2, 0x200

    invoke-virtual {v4, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v17

    if-eqz v17, :cond_4b

    const/16 v2, 0x400

    invoke-virtual {v4, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v17

    if-nez v17, :cond_4b

    if-eqz v6, :cond_4b

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_4b

    const-string v0, "Except TaskFragment changes, it\'s parent has snapshot. it replaces task fragment changes."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v2, p1

    move/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v22, v10

    :goto_27
    move-object/from16 v25, v14

    :goto_28
    const/4 v3, 0x2

    const/4 v4, 0x4

    :goto_29
    const/4 v5, 0x6

    const/4 v7, 0x0

    goto/16 :goto_43

    :cond_4a
    move/from16 v16, v2

    :cond_4b
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object/from16 v22, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v13, v2, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v2, :cond_4c

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    if-eqz v10, :cond_4c

    :goto_2a
    move/from16 v18, v9

    goto :goto_2b

    :cond_4c
    const/high16 v10, 0x1000000

    invoke-virtual {v4, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v10

    if-eqz v10, :cond_4d

    const/16 v10, 0x200

    invoke-virtual {v4, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v17

    if-nez v17, :cond_4d

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    if-eqz v10, :cond_4d

    goto :goto_2a

    :cond_4d
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v10, :cond_4e

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isSeparatedFromCustomDisplayChange()Z

    move-result v10

    if-eqz v10, :cond_4e

    goto :goto_2a

    :cond_4e
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v11, v9}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v17

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v13, v10, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v13, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_2b
    if-eqz v2, :cond_4f

    if-eqz v8, :cond_4f

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "prevent child to reparent to topRoot during split enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_4f
    iget-object v2, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v2, v3, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2c

    :cond_50
    move/from16 v16, v2

    move/from16 v18, v9

    move-object/from16 v22, v10

    :goto_2c
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v6, :cond_54

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_54

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_52

    const/4 v10, 0x1

    goto :goto_2d

    :cond_51
    const/4 v9, 0x2

    :cond_52
    const/4 v10, 0x0

    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "buildChangeTransition: leash="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", snapshot="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_53

    const-string v9, ", shouldBeHidden=true"

    goto :goto_2e

    :cond_53
    const-string v9, ""

    :goto_2e
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v9, v12, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;I)V

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    move/from16 v17, v6

    move/from16 v6, v16

    move-object v2, v4

    move-object/from16 v35, v3

    move-object v3, v9

    move-object v9, v4

    move-object/from16 v4, p3

    move/from16 v23, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->buildChangeTransitionAnimators(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z

    if-eqz v10, :cond_55

    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2f

    :cond_54
    move-object/from16 v35, v3

    move-object v9, v4

    move/from16 v23, v5

    move/from16 v17, v6

    move/from16 v6, v16

    :cond_55
    :goto_2f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    if-eqz v0, :cond_57

    const/16 v0, 0x200

    invoke-virtual {v9, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_57

    const/16 v0, 0x400

    invoke-virtual {v9, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_57

    const/4 v0, 0x2

    if-ne v6, v0, :cond_56

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_30
    move-object/from16 v2, p1

    move-object/from16 v24, v7

    goto/16 :goto_27

    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v13, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_30

    :cond_57
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_58

    const/4 v3, 0x1

    goto :goto_31

    :cond_58
    const/4 v3, 0x0

    :goto_31
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v10, :cond_59

    if-eqz v22, :cond_59

    move-object/from16 v24, v7

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v7

    move-object/from16 v25, v14

    move-object/from16 v14, v22

    invoke-virtual {v14, v7}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    move/from16 p0, v7

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    move/from16 v16, p0

    goto :goto_32

    :cond_59
    move-object/from16 v24, v7

    move-object/from16 v25, v14

    move-object/from16 v14, v22

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_32
    if-eqz v8, :cond_5a

    if-nez v4, :cond_5b

    if-nez v5, :cond_5b

    if-eqz v7, :cond_5a

    goto :goto_33

    :cond_5a
    move-object/from16 v22, v14

    move-object/from16 v14, v35

    goto :goto_34

    :cond_5b
    :goto_33
    iget-object v4, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    move-object/from16 v22, v14

    move-object/from16 v14, v35

    invoke-virtual {v4, v14, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_36

    :goto_34
    if-eqz v0, :cond_5c

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_36

    :cond_5c
    if-eqz v8, :cond_5d

    if-nez v1, :cond_5f

    :cond_5d
    if-nez v2, :cond_5f

    if-eqz v16, :cond_5e

    goto :goto_35

    :cond_5e
    if-eqz v3, :cond_60

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v13, v14, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const v4, 0x7fffffff

    invoke-virtual {v13, v14, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_36

    :cond_5f
    :goto_35
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v13, v14, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v13, v14, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    if-eqz v10, :cond_60

    if-eqz v16, :cond_60

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_60
    :goto_36
    if-nez v0, :cond_61

    if-nez v1, :cond_61

    if-nez v2, :cond_61

    if-eqz v10, :cond_62

    if-nez v16, :cond_61

    goto :goto_38

    :cond_61
    :goto_37
    move-object/from16 v2, p1

    goto/16 :goto_28

    :cond_62
    :goto_38
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_63

    if-nez v3, :cond_63

    goto :goto_37

    :cond_63
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_64

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_64

    goto :goto_37

    :cond_64
    if-eqz v8, :cond_65

    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    if-eqz v0, :cond_65

    goto :goto_37

    :cond_65
    move-object/from16 v2, p1

    invoke-virtual {v12, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    iget v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_67

    :goto_39
    const/4 v3, 0x2

    goto/16 :goto_29

    :cond_66
    const/4 v4, 0x4

    :cond_67
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-static {v9}, Lcom/android/wm/shell/shared/TransitionUtil;->isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v17, :cond_68

    if-eqz v1, :cond_68

    if-eqz v8, :cond_68

    if-eqz v0, :cond_68

    const/4 v5, 0x2

    if-eq v6, v5, :cond_69

    if-ne v6, v4, :cond_68

    goto :goto_3a

    :cond_68
    const/16 v5, 0x44f

    goto :goto_3c

    :cond_69
    :goto_3a
    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz v0, :cond_6a

    iget v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    const/16 v5, 0x44f

    if-ne v0, v5, :cond_6b

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_3b

    :cond_6a
    const/16 v5, 0x44f

    :cond_6b
    const/4 v0, 0x1

    const/4 v9, 0x0

    :goto_3b
    xor-int/lit8 v21, v9, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startCustomFadeAnimation(Landroid/view/SurfaceControl;ZZZZ)V

    goto :goto_39

    :goto_3c
    if-eqz v17, :cond_6e

    if-nez v1, :cond_6e

    if-eqz v8, :cond_6e

    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz v1, :cond_6e

    iget v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    if-ne v1, v5, :cond_6e

    if-eqz v3, :cond_6c

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v18, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startCustomFadeAnimation(Landroid/view/SurfaceControl;ZZZZ)V

    goto :goto_39

    :cond_6c
    const/4 v0, 0x0

    invoke-virtual {v13, v14, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v18, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startCustomFadeAnimation(Landroid/view/SurfaceControl;ZZZZ)V

    goto/16 :goto_39

    :cond_6d
    const v0, 0x7f0102b1

    invoke-virtual {v12, v9, v14, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->buildSurfaceAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V

    goto/16 :goto_39

    :cond_6e
    const/4 v1, 0x3

    if-eqz v17, :cond_6f

    if-eqz v0, :cond_6f

    const/4 v7, 0x1

    if-eq v6, v7, :cond_70

    if-ne v6, v1, :cond_6f

    goto :goto_3d

    :cond_6f
    const/4 v7, 0x0

    goto :goto_40

    :cond_70
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isSeparatedFromCustomDisplayChange()Z

    move-result v7

    if-nez v7, :cond_6f

    const/4 v7, 0x0

    invoke-virtual {v13, v14, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const v0, 0x7f0102b2

    invoke-virtual {v12, v9, v14, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->buildSurfaceAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V

    :goto_3e
    const/4 v3, 0x2

    :goto_3f
    const/4 v5, 0x6

    goto/16 :goto_43

    :goto_40
    if-eqz v17, :cond_71

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v10

    const/4 v5, 0x6

    if-ne v10, v5, :cond_71

    if-eqz v3, :cond_71

    if-ne v6, v1, :cond_71

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startCustomFadeAnimation(Landroid/view/SurfaceControl;ZZZZ)V

    goto :goto_3e

    :cond_71
    const/4 v3, 0x2

    if-nez v0, :cond_72

    if-eq v6, v3, :cond_73

    if-ne v6, v4, :cond_72

    goto :goto_41

    :cond_72
    const/4 v5, 0x6

    goto :goto_42

    :cond_73
    :goto_41
    invoke-virtual {v12, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;)V

    goto :goto_3f

    :goto_42
    if-ne v6, v5, :cond_74

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v11, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {v13, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v13, v0, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;)V

    :cond_74
    :goto_43
    add-int/lit8 v0, v23, -0x1

    move v5, v0

    move-object v6, v2

    move-object/from16 v10, v22

    move-object/from16 v7, v24

    move-object/from16 v14, v25

    const/4 v9, 0x0

    goto/16 :goto_26

    :cond_75
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v2, :cond_76

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startAllAnimators: num_anim="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Landroid/animation/Animator;I)V

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_44

    :cond_76
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;)V

    goto/16 :goto_24

    :goto_45
    return v0
.end method

.method public final startSingleTask(ILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {p3, p1, p2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method public final startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v15, p9

    move/from16 v8, p10

    move/from16 v7, p13

    move/from16 v6, p14

    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    const-string v5, "StageCoordinator"

    const/4 v4, 0x1

    if-eqz v16, :cond_0

    if-ne v7, v4, :cond_0

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v3, :cond_0

    const-string v0, "app pair started while working flex panel"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    const/4 v7, -0x1

    if-eqz v3, :cond_1

    iput v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    :cond_1
    if-eqz v2, :cond_2

    move-object v8, v2

    move-object/from16 v20, v5

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_3

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0xa000000

    move/from16 v4, v18

    move-object/from16 v20, v5

    move-object/from16 v5, p3

    move/from16 v6, v19

    move-object/from16 v7, v17

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v8, v3

    goto :goto_0

    :cond_3
    move-object/from16 v20, v5

    const/4 v8, 0x0

    :goto_0
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0xa000000

    move-object/from16 v5, p4

    move-object v14, v8

    move-object/from16 v8, p7

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v11, :cond_4

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0xa000000

    move-object/from16 v5, p5

    move-object v11, v8

    move-object/from16 v8, p8

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v11, v8

    const/4 v3, 0x0

    :goto_1
    if-eqz v11, :cond_5

    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    if-nez v14, :cond_6

    :cond_5
    move v5, v1

    move-object v1, v10

    move-object/from16 v3, v20

    goto/16 :goto_14

    :cond_6
    const/4 v5, 0x2

    if-eq v1, v4, :cond_7

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskByTaskIdInDexDisplay(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move/from16 v8, p14

    invoke-static {v1, v10, v15, v8}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->makeStartTaskAndIntentOpts(ILandroid/content/Intent;II)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    const-string v0, "pending split screen by recent drag and drop"

    move-object/from16 v7, v20

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    move/from16 v8, p14

    move-object/from16 v7, v20

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v4, p4

    move-object/from16 v6, p7

    move-object v0, v7

    move/from16 v7, p9

    move v1, v8

    move/from16 v8, p11

    move/from16 v9, p14

    invoke-static/range {v3 .. v9}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->makeStartIntentsOpts(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    move-result-object v1

    iput-object v2, v1, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    const-string v1, "pending split screen by appsEdge drag and drop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    move v6, v8

    const/4 v2, 0x1

    if-eqz p15, :cond_9

    move-object/from16 v8, p15

    goto :goto_2

    :cond_9
    new-instance v8, Landroid/window/WindowContainerTransaction;

    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    :goto_2
    const/4 v5, 0x0

    if-eqz v16, :cond_a

    iget-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setFlexPanelMode(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded$1(Z)V

    :cond_a
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    move-object/from16 v16, v11

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    move-object/from16 v17, v14

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    move-object/from16 v18, v3

    move-object/from16 v20, v7

    const/4 v3, 0x1

    move/from16 v7, p13

    if-ne v7, v3, :cond_11

    iget-boolean v3, v14, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz p16, :cond_b

    const/4 v3, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v3, p16

    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    move-object/from16 v19, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v9, v12, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSameIntentRequested(Landroid/app/TaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;Z)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v14, v1, v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    :cond_c
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v0, v7, v10, v13, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSameIntentRequested(Landroid/app/TaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;Z)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v11, v1, v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    :cond_d
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz v7, :cond_e

    iget-boolean v7, v4, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v7, :cond_e

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    move-object/from16 v8, p5

    move-object/from16 v13, p8

    move-object/from16 v21, v16

    move-object/from16 v10, v17

    const/4 v12, 0x1

    invoke-virtual {v0, v7, v8, v13, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSameIntentRequested(Landroid/app/TaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;Z)Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_4

    :cond_e
    move-object/from16 v8, p5

    move-object/from16 v13, p8

    move-object/from16 v21, v16

    move-object/from16 v10, v17

    :cond_f
    :goto_4
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12

    if-nez v3, :cond_10

    const-string v7, "evict_all_children"

    invoke-virtual {v1, v2, v7}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    :cond_10
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    goto :goto_5

    :cond_11
    move-object/from16 v13, p8

    move-object/from16 v19, v8

    move-object/from16 v21, v16

    move-object/from16 v10, v17

    move-object/from16 v8, p5

    move-object/from16 v3, p16

    :cond_12
    :goto_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz v1, :cond_13

    if-eqz v8, :cond_13

    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    new-instance v7, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    invoke-direct {v7}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    iput v15, v7, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iput v6, v7, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    move/from16 v12, p10

    iput v12, v7, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    move-object/from16 v6, v19

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v15, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    move-object v7, v6

    move v13, v15

    :goto_6
    move/from16 v6, p13

    goto :goto_9

    :cond_13
    move/from16 v12, p10

    move-object/from16 v7, v19

    if-eqz v15, :cond_16

    const/4 v13, 0x1

    if-ne v15, v13, :cond_14

    goto :goto_7

    :cond_14
    iget v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_15

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto :goto_8

    :cond_15
    move v15, v13

    :cond_16
    :goto_7
    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v0, v15, v13, v7, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    goto :goto_6

    :goto_9
    invoke-virtual {v7, v6}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    iput v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v7, v15, v13}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v7, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    iget-boolean v15, v14, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v15, :cond_17

    invoke-virtual {v14, v7, v13}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v13}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    :cond_17
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    move/from16 v17, v2

    move-object/from16 v16, v5

    const/4 v2, 0x1

    move/from16 v5, p11

    invoke-virtual {v13, v5, v2, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    if-eqz v1, :cond_18

    if-eqz v8, :cond_18

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    move/from16 v5, p12

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v12, v2, v13}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    goto :goto_a

    :cond_18
    const/4 v13, 0x0

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v1, v7, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    :goto_a
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v7, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-static {v2, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    move/from16 v5, p1

    const/4 v11, -0x1

    if-ne v5, v11, :cond_19

    invoke-virtual {v7, v10, v9, v1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_b
    move-object/from16 v1, p4

    move-object/from16 v5, v21

    goto :goto_c

    :cond_19
    const/4 v10, 0x2

    if-ne v6, v10, :cond_1a

    if-eqz v15, :cond_1a

    const-string v10, "android.activity.splitTaskDeferResume"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1a
    invoke-virtual {v7, v5, v1}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_b

    :goto_c
    invoke-virtual {v7, v5, v1, v2}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v2, :cond_1c

    if-eqz v18, :cond_1b

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    move-object/from16 v4, v18

    invoke-virtual {v7, v4, v8, v2}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_d

    :cond_1b
    move-object/from16 v4, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_d

    :cond_1c
    move-object/from16 v4, v18

    :cond_1d
    :goto_d
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    if-ne v6, v2, :cond_26

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v6, p6

    invoke-static {v5, v9, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVisibleTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v10

    if-nez v10, :cond_1f

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static {v5, v1, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVisibleTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v12

    if-nez v12, :cond_1f

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz v12, :cond_1e

    invoke-static {v5, v8, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVisibleTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v12

    if-eqz v12, :cond_1e

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSplitScreen: If there is already a visible task, delete the remote transition because the animation does not look normal. task="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_20
    if-nez v3, :cond_25

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz v2, :cond_21

    if-eqz v8, :cond_21

    const/4 v5, 0x1

    :goto_e
    const/4 v6, 0x0

    goto :goto_f

    :cond_21
    const/4 v5, 0x0

    goto :goto_e

    :goto_f
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v8

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v6

    const/4 v9, 0x2

    if-eqz v8, :cond_22

    invoke-virtual {v7, v8, v9}, Landroid/window/WindowContainerTransaction;->addChangeTransitFlags(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_22
    if-eqz v6, :cond_23

    invoke-virtual {v7, v6, v9}, Landroid/window/WindowContainerTransaction;->addChangeTransitFlags(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_23
    if-eqz v2, :cond_24

    if-eqz v5, :cond_24

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {v7, v2, v9}, Landroid/window/WindowContainerTransaction;->addChangeTransitFlags(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_24
    const-string v2, "app_pair"

    move/from16 v5, v17

    invoke-virtual {v7, v5, v2}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    goto :goto_10

    :cond_25
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/window/WindowContainerTransaction;->addAdditionalInfo(I)V

    :cond_26
    :goto_10
    if-eqz v4, :cond_27

    const/16 v2, 0x44e

    goto :goto_11

    :cond_27
    const/16 v2, 0x3ec

    :goto_11
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v4, :cond_28

    const-string/jumbo v4, "start_dnd_split_with_all_apps"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x44f

    goto :goto_12

    :cond_28
    move v1, v2

    :goto_12
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v4, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v7

    move-object/from16 p3, v3

    move-object/from16 p4, p0

    move/from16 p5, v1

    move/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    goto :goto_13

    :cond_29
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v7}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_13
    return-void

    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startSplitScreen param is wrong. taskId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mainIntent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",sideIntent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startSplitTasks(IIIZIFF)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {p0 .. p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->checkNonResizableTaskAndStartTask(III)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v5, :cond_1

    iget-boolean v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v6, v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz v6, :cond_1

    const-string v0, "StageCoordinator"

    const-string/jumbo v1, "split tasks started while working flex panel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v10

    if-eqz v10, :cond_2

    if-ne v1, v9, :cond_2

    invoke-virtual {p0, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    :cond_2
    const/4 v10, 0x1

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setFlexPanelMode(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded$1(Z)V

    :cond_3
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    iget v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    const-string/jumbo v11, "split_tasks"

    invoke-virtual {v6, v5, v11}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v14, v13, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v14, :cond_4

    invoke-virtual {v13, v6, v8}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_0

    :cond_4
    const-string v14, "android.activity.splitTaskDeferResume"

    invoke-virtual {v5, v14, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v11, v14, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v7, :cond_5

    if-eq v1, v9, :cond_5

    invoke-virtual {v12, v14, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    :goto_0
    invoke-static {v5, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {v11, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    move/from16 v13, p1

    invoke-virtual {v6, v13, v5}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    move/from16 v5, p2

    invoke-virtual {v6, v5, v11}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    if-eqz v7, :cond_6

    if-eq v1, v9, :cond_6

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iput-boolean v10, v5, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    invoke-static {v12, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v6, v1, v12}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :cond_6
    if-eqz v7, :cond_7

    if-eq v1, v9, :cond_7

    new-instance v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    invoke-direct {v5}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    iput v10, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    iput v2, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    iput v3, v5, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    invoke-virtual {p0, v5, v8, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v10, v8, v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    :goto_1
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v5, v4, v10, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    goto :goto_2

    :cond_8
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v5, v4, v8, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    :goto_2
    if-eq v1, v9, :cond_c

    if-eqz v2, :cond_9

    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_a

    :cond_9
    if-nez v2, :cond_b

    and-int/lit8 v2, v3, 0x40

    if-eqz v2, :cond_b

    :cond_a
    move v2, v10

    goto :goto_3

    :cond_b
    move v2, v8

    :goto_3
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    move/from16 v5, p7

    invoke-virtual {v4, v5, v3, v8, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    :cond_c
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v2, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v2, v10}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    if-eqz v7, :cond_d

    if-eq v1, v9, :cond_d

    const/16 v1, 0x44e

    goto :goto_4

    :cond_d
    const/16 v1, 0x3ec

    :goto_4
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v6

    move-object/from16 p3, v3

    move-object/from16 p4, p0

    move/from16 p5, v1

    move/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    return-void
.end method

.method public final startTaskWithAllApps(ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;I)V
    .locals 19

    move-object/from16 v14, p0

    move/from16 v1, p1

    move-object/from16 v9, p2

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    const-string v2, "StageCoordinator"

    if-nez v0, :cond_0

    const-string/jumbo v0, "task not found"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v9, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startTaskWithAllApps from uid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v9, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v14, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v4, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    xor-int/lit8 v7, v4, 0x1

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {v2, v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskByTaskIdInDexDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v0, p3

    invoke-static {v1, v4, v7, v0}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->makeStartTaskAndIntentOpts(ILandroid/content/Intent;II)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    return-void

    :cond_3
    move/from16 v0, p3

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v11, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v18, v7

    move-object/from16 v7, v17

    move/from16 v9, v18

    move/from16 v14, p3

    invoke-virtual/range {v0 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_START_EDGE_ALL_APPS_SA_LOGGING:Z

    if-eqz v0, :cond_4

    move-object/from16 v0, p2

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;->mUid:I

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1000"

    const-string v1, "From recent_option"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final startTaskWithMultiSplit(IILandroid/os/Bundle;II)V
    .locals 9

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {p3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchedFromDnD(Z)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    :cond_0
    move-object v3, p3

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskByTaskIdInDexDisplay(I)Z

    move-result p3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p5, :cond_6

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p5, v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {v8, v6}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, p5, v1, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    :cond_4
    invoke-virtual {p0, v6, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterMultiSplitScreen(Landroid/window/WindowContainerTransaction;I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V

    :cond_5
    const/16 p1, 0x44d

    :goto_0
    move v4, p1

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    move-object v0, p0

    move v2, p2

    move-object v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {v6, p1, p4}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    if-eqz p3, :cond_9

    :cond_8
    invoke-virtual {v8, v6}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x3ed

    goto :goto_1

    :cond_a
    const/16 p1, 0x3ec

    :goto_1
    const/4 p3, 0x0

    invoke-virtual {p0, v6, p3, p2, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    return-void
.end method

.method public final startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/os/Bundle;IIFIFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v13, p5

    move/from16 v4, p7

    move-object/from16 v14, p12

    move/from16 v5, p14

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    int-to-long v8, v1

    int-to-long v10, v3

    move-wide v15, v8

    int-to-long v7, v4

    move/from16 v6, p8

    int-to-long v12, v6

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v9, v10, v7, v8}, [Ljava/lang/Object;

    move-result-object v22

    const/16 v20, 0x55

    const-string/jumbo v21, "startTasks: task1=%d task2=%d position=%d snapPosition=%d"

    const-wide v18, -0x57c7c4450057c888L    # -6.150276207340309E-115

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move/from16 v6, p8

    :goto_0
    const/4 v13, -0x1

    if-ne v3, v13, :cond_1

    move-object/from16 v7, p15

    invoke-virtual {v0, v1, v7, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTaskWithAllApps(ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;I)V

    return-void

    :cond_1
    move/from16 v15, p5

    invoke-virtual {v0, v1, v3, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->checkNonResizableTaskAndStartTask(III)Z

    move-result v7

    if-eqz v7, :cond_2

    return-void

    :cond_2
    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-ne v3, v13, :cond_3

    invoke-virtual {v0, v1, v2, v7, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSingleTask(ILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void

    :cond_3
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v8, :cond_4

    if-ne v15, v13, :cond_4

    iget v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastFlexPanelTaskId:I

    if-ne v3, v8, :cond_4

    invoke-virtual {v0, v1, v2, v7, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSingleTask(ILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void

    :cond_4
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v16, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v8

    if-eqz v8, :cond_5

    if-ne v15, v13, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    :cond_5
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v8, v8, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-eq v8, v13, :cond_6

    if-eq v8, v4, :cond_6

    move v4, v8

    move/from16 v23, v3

    move v3, v1

    move/from16 v1, v23

    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v0, v4, v8, v7, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    if-eqz v16, :cond_7

    if-eq v15, v13, :cond_7

    move/from16 v4, p10

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellStageWindowConfigPosition(IZ)V

    :cond_7
    if-eqz v2, :cond_8

    :goto_1
    move-object v12, v2

    goto :goto_2

    :cond_8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :goto_2
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-static {v12, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v7, v1, v12}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v3

    move-object/from16 v3, p4

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    invoke-virtual/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFILandroid/os/Bundle;Landroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ZZLandroid/os/Bundle;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_RECENT_TASKS_SA_LOGGING:Z

    if-eqz v0, :cond_9

    if-eqz v14, :cond_9

    const-string v0, "1000"

    const-string v1, "From recent_task"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_9

    if-eq v15, v13, :cond_9

    const-string v0, "1021"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IILandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    const/16 v8, 0xa

    invoke-virtual {p0, v9, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :cond_0
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v10, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v8, v10}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-boolean v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    iput-boolean v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v8, :cond_2

    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-eqz v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    :cond_1
    invoke-direct {v8, p0, v2, v9, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/content/Intent;I)V

    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    :cond_2
    invoke-virtual {p0, p1, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition$1(Landroid/window/WindowContainerTransaction;I)V

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v8, v5, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v8, :cond_3

    invoke-virtual {v5, p1, v13}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_3
    if-nez p6, :cond_4

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_4
    move-object/from16 v8, p6

    :goto_0
    invoke-static {v8, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v9, p1, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v9, v11}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, p1, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    const/4 v9, -0x1

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    if-eq v2, v9, :cond_6

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v5, v3, v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v4, v3, v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    :cond_5
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;

    invoke-direct {v4, p0, v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V

    new-instance v3, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual/range {p9 .. p9}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v11

    invoke-virtual/range {p9 .. p9}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v5

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-wide/from16 p5, v11

    move-wide/from16 p7, v5

    invoke-direct/range {p3 .. p8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    invoke-static {v8}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-static {v3}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v10, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v4, v8}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_7
    move-object/from16 v2, p4

    invoke-virtual {p1, v3, v2, v8}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_1
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v6, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    invoke-virtual {v10, v2, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    :goto_2
    if-eqz v7, :cond_8

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iput-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    :cond_8
    return-void
.end method

.method public final startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFILandroid/os/Bundle;Landroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ZZLandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p12

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v6, v5, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const/4 v7, 0x0

    if-nez v6, :cond_0

    invoke-virtual {v5, v1, v7}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    if-eq v2, v8, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v7

    :goto_0
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    if-eqz v10, :cond_2

    iput-boolean v9, v11, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    :cond_2
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    move/from16 v13, p5

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v12, v1, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    iput v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v12, v9}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v12, v7}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v1, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    if-eqz p3, :cond_3

    move-object/from16 v7, p3

    goto :goto_1

    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    :goto_1
    invoke-static {v7, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    move/from16 v12, p2

    invoke-virtual {v1, v12, v7}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    if-eqz v10, :cond_5

    if-eqz p7, :cond_4

    move-object/from16 v13, p7

    goto :goto_2

    :cond_4
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    :goto_2
    invoke-static {v13, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v1, v2, v13}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_3

    :cond_5
    move-object/from16 v13, p7

    :goto_3
    if-eqz p8, :cond_7

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasChild()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasChild()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    if-eqz v4, :cond_7

    const-string v5, "android.activity.splitTaskDeferResume"

    invoke-virtual {v7, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v10, :cond_7

    invoke-virtual {v13, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_8
    const/16 v4, 0x3ec

    if-eqz v6, :cond_9

    if-eq v2, v8, :cond_9

    const/16 v2, 0x44e

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    if-eqz v6, :cond_a

    move v4, v2

    :cond_a
    const/4 v2, 0x0

    move-object/from16 p2, v5

    move-object/from16 p3, p1

    move-object/from16 p4, p8

    move-object/from16 p5, p0

    move/from16 p6, v4

    move/from16 p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    if-eqz v3, :cond_b

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    :cond_b
    return-void
.end method

.method public final supportCompatUI()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final swapStageTasks(IILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->reparentAllChildren(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->reparentAllChildren(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot swapStageTasks, stage1="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",stage2="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",callers="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StageCoordinator"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final swapTasksInSplitScreenMode$1()V
    .locals 6

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x1

    const-string/jumbo v4, "swap_split"

    invoke-virtual {v0, v1, v3, v4}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3, v4}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v1

    iget-object v4, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v4, v4, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt v4, v2, :cond_2

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v1

    sub-int v2, v4, v2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateSnapAlgorithm(I)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateSnapTarget(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v1, v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "StageCoordinator"

    const-string/jumbo v0, "swapTasksInSplitScreenMode: main or side running task is empty"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final switchSplitPosition(Ljava/lang/String;)V
    .locals 14

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, 0x136a762503733fb8L

    const/4 v4, 0x0

    const-string/jumbo v5, "switchSplitPosition"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    const v6, 0x7ffffffe

    invoke-static {v0, v4, v4, v5, v6}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    move-result-object v4

    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez v5, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    iget-object v7, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    invoke-static {v0, v7, v7, v8, v6}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;

    invoke-direct {v8, p0, v0, v4, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {v7, v0, v1, v5, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->splitSwitching(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda34;)V

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, 0x6feca396a6a33949L    # 1.389456025487688E231

    const/4 v7, 0x0

    const-string v8, "Switch split position: %s"

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p1

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1, v3}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateMainStageState(II)Z

    invoke-static {v1, v3}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateSideStageState(II)Z

    iget v8, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    iget v9, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    iget v10, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    iget v11, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x184

    const/4 v4, 0x5

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    :goto_2
    return-void
.end method

.method public final updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    if-eqz p1, :cond_3

    move-object v3, p1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v4, v0, v3, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->applyCornerRadiusToLeashIfNeeded(FLandroid/view/SurfaceControl$Transaction;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v5, v0, v3, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->applyCornerRadiusToLeashIfNeeded(FLandroid/view/SurfaceControl$Transaction;Z)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->applyCornerRadiusToLeashIfNeeded(FLandroid/view/SurfaceControl$Transaction;Z)Z

    move-result p0

    or-int/2addr p0, v4

    if-nez p1, :cond_5

    if-eqz p0, :cond_4

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_5
    return-void
.end method

.method public final updateCoverDisplaySplitLayoutIfNeeded()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpConfigAfterFoldDismiss:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSplitDivisionIfNeeded()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final updateDividerLeashVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const-string v1, "StageCoordinator"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    xor-int/lit8 v2, p1, 0x1

    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerLeashHidden:Z

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDividerLeashVisible: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", show="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    const-string/jumbo p0, "updateDividerLeashVisible: leash was released or not be created"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateFlexPanelState(ZLandroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "updateFlexPanelState: "

    const-string v1, ", callers"

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "StageCoordinator"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setFlexPanelMode(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded$1(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setFlexPanelMode(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded$1(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V
    .locals 3

    iget v0, p1, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    invoke-virtual {p0, v0, v1, p3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    iget p1, p1, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellStageWindowConfigPosition(IZ)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellStageWindowConfigPosition(I)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    :cond_0
    return-void
.end method

.method public final updateRecentTasksSplitPair()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSplitDivisionIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isFolding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    const-string v2, "Update split division for SubDisplay. d="

    const-string v3, "  Call="

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StageCoordinator"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZZ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedSideStageWinConfigPosition:I

    if-ne v1, v5, :cond_1

    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedCellStageWinConfigPosition:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedMainStageWinConfigPosition:I

    if-ne v0, v5, :cond_2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedMainStageWinConfigPosition:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v0}, Landroid/window/WindowContainerTransaction;->setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedSideStageWinConfigPosition:I

    iput v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedCellStageWinConfigPosition:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0, v4}, Landroid/window/WindowContainerTransaction;->setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 14

    move-object v0, p0

    move-object/from16 v7, p2

    iget v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez v1, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    const v3, 0x7fffffff

    const/4 v8, 0x0

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v5, v1, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-eqz v5, :cond_f

    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    :goto_2
    iget-object v5, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v9, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    iget-object v10, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    iget v12, v12, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v7, v2, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v11, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefCellDividerBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v11, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v7, v4, v12, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v3

    iget v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    invoke-static {v4, v3}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v11, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    neg-int v12, v12

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    invoke-virtual {v4, v12, v11}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v3, v11, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    move-result-object v4

    :goto_3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds3()Landroid/graphics/Rect;

    move-result-object v11

    iget-object v12, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    iget v12, v12, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Rect;->offset(II)V

    iget v12, v3, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v13, v3, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v7, v5, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v12, v5, v13, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v12, v4, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v7, v6, v3, v12}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v6, v12, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v3, v11, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v11, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v7, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v3, v1, v4, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget v4, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-nez v4, :cond_6

    goto/16 :goto_a

    :cond_6
    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v2, :cond_7

    iget-object v9, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v10, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v10, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v9, v8, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v9, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v7, v2, v10, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    if-eqz v3, :cond_8

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v9, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v7, v3, v9, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_8
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_a

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v6, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v3, v6

    invoke-virtual {v7, v5, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v2, v8, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_a

    :cond_9
    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v6, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v3, v6

    invoke-virtual {v7, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v5, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_a

    :cond_a
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_1c

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v5, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v3, v5

    invoke-virtual {v7, v6, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v2, v8, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_a

    :cond_b
    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v5, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v3, v5

    invoke-virtual {v7, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v6, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_a

    :cond_c
    iget v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_d

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v3, v9

    invoke-virtual {v7, v5, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v5, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v3, v5

    invoke-virtual {v7, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v6, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_a

    :cond_d
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1c

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    add-int/2addr v3, v9

    invoke-virtual {v7, v5, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v2, v8, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v7, v6, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v2, v8, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_a

    :cond_e
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    move-object/from16 v1, p2

    move-object v3, v5

    move-object v4, v6

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->adjustSurfaceLayoutForIme(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    goto/16 :goto_a

    :cond_f
    if-eqz p1, :cond_10

    move-object v9, p1

    goto :goto_4

    :cond_10
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    move-object v9, v0

    :goto_4
    iget-object v10, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v11, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v12, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    iget-object v13, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v9}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v0, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-object v0, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_11
    iget-object v0, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    iget-object v0, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v10, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v10, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v7, v11, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v11, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    move-object/from16 v1, p2

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->adjustSurfaceLayoutForIme(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_a

    :cond_12
    iget-object v0, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingSide:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_14

    if-eq v1, v4, :cond_14

    if-eq v1, v3, :cond_13

    if-eq v1, v2, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v7, v12, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v13, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6

    :cond_13
    move-object v12, v13

    :cond_14
    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingDimValue:F

    invoke-virtual {v7, v12, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget v6, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingDimValue:F

    const v9, 0x3a83126f    # 0.001f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_15

    move v6, v5

    goto :goto_5

    :cond_15
    move v6, v8

    :goto_5
    invoke-virtual {v1, v12, v6}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :goto_6
    if-eqz p3, :cond_1c

    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v6, 0x0

    iget v9, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxType:I

    if-ne v9, v5, :cond_18

    iget v12, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingSide:I

    if-eq v12, v5, :cond_17

    if-eq v12, v4, :cond_17

    if-eq v12, v3, :cond_16

    if-eq v12, v2, :cond_16

    goto :goto_8

    :cond_16
    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_17
    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_18
    if-ne v9, v4, :cond_1b

    iget v12, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mShrinkSide:I

    if-eq v12, v5, :cond_1a

    if-eq v12, v4, :cond_1a

    if-eq v12, v3, :cond_19

    if-eq v12, v2, :cond_19

    goto :goto_8

    :cond_19
    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_7
    move-object v10, v11

    goto :goto_9

    :cond_1a
    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_1b
    :goto_8
    move-object v10, v6

    :goto_9
    if-eqz v9, :cond_1c

    if-eqz v10, :cond_1c

    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxOffset:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v7, v10, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxOffset:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v10, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_1c
    :goto_a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x7be438cc664ec2d0L

    const/4 v5, 0x0

    const-string/jumbo v6, "updateSurfaceBounds: topLeftStage=%s bottomRightStage=%s"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public final updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public final updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-static {}, Lcom/android/window/flags/Flags;->insetsDecoupledConfiguration()Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    if-nez v0, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    iget-object p3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, p2, p0, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 p3, 0x0

    aget-boolean p2, p2, p3

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x206edf6bbe7acd62L    # -2.242568769776325E152

    const/4 v3, 0x0

    const-string/jumbo v4, "updateWindowBounds: topLeftStage=%s bottomRightStage=%s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return p0
.end method

.method public willSleepOnFold()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFoldLockSettingsObserver:Lcom/android/internal/policy/FoldLockSettingsObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->isSleepOnFold()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
