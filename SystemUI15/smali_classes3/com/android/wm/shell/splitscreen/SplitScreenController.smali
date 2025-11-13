.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;


# instance fields
.field public final mConnection:Lcom/android/wm/shell/splitscreen/SplitScreenController$1;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopTasksController:Ljava/util/Optional;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

.field public final mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

.field public mFocusedTaskPosition:I

.field public mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

.field public final mGestureStarter:Ljava/util/Optional;

.field public mGoingToRecentsTasksLayer:Landroid/view/SurfaceControl;

.field public final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public final mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

.field public mIsKeyguardOccludedAndShowingSupplier:Ljava/util/function/BooleanSupplier;

.field public final mLaunchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMultiInstanceHelpher:Lcom/android/wm/shell/common/MultiInstanceHelper;

.field public final mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

.field public final mRecentTasksOptional:Ljava/util/Optional;

.field public final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public mService:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

.field mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public mStartingSplitTasksLayer:Landroid/view/SurfaceControl;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorViewModel:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/LaunchAdjacentController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/MultiInstanceHelper;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/LaunchAdjacentController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator;",
            "Lcom/android/wm/shell/common/MultiInstanceHelper;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;",
            "Lcom/android/wm/shell/flexpanel/FlexPanelStartController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object/from16 v3, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)V

    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iput v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFocusedTaskPosition:I

    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v6, p3

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v6, p4

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v6, p6

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const-class v6, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherApps;

    move-object v6, p7

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v6, p21

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v6, p22

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v6, p8

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v6, p10

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object/from16 v6, p11

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v6, p14

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mLaunchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mWindowDecorViewModel:Ljava/util/Optional;

    move-object/from16 v6, p18

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDesktopTasksController:Ljava/util/Optional;

    move-object/from16 v6, p19

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v6, p20

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMultiInstanceHelpher:Lcom/android/wm/shell/common/MultiInstanceHelper;

    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    invoke-static {p1}, Landroid/app/ActivityTaskManager;->deviceSupportsMultiWindow(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)V

    move-object v7, p2

    invoke-virtual {p2, v6, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v5, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iget-object v5, v2, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mGestureStarter:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_1

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    :goto_0
    return-void
.end method

.method public static exitReasonToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "unknown reason, reason int = "

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "FULLSCREEN_REQUEST"

    return-object p0

    :pswitch_2
    const-string p0, "DESKTOP_MODE"

    return-object p0

    :pswitch_3
    const-string p0, "RECREATE_SPLIT"

    return-object p0

    :pswitch_4
    const-string p0, "CHILD_TASK_ENTER_PIP"

    return-object p0

    :pswitch_5
    const-string p0, "SCREEN_LOCKED_SHOW_ON_TOP"

    return-object p0

    :pswitch_6
    const-string p0, "SCREEN_LOCKED"

    return-object p0

    :pswitch_7
    const-string p0, "ROOT_TASK_VANISHED"

    return-object p0

    :pswitch_8
    const-string p0, "RETURN_HOME"

    return-object p0

    :pswitch_9
    const-string p0, "DRAG_DIVIDER"

    return-object p0

    :pswitch_a
    const-string p0, "DEVICE_FOLDED"

    return-object p0

    :pswitch_b
    const-string p0, "APP_FINISHED"

    return-object p0

    :pswitch_c
    const-string p0, "APP_DOES_NOT_SUPPORT_MULTIWINDOW"

    return-object p0

    :pswitch_d
    const-string p0, "UNKNOWN_EXIT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getToggleSplitScreenTarget()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 5

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->originallySupportedMultiWindow:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v3
.end method


# virtual methods
.method public final dismissAddToAppPairDialog()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final dismissSplitTask(Landroid/window/WindowContainerToken;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->dismissSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public final enterSplitScreen$1()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getToggleSplitScreenTarget()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object v4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CREATE_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V

    return-void
.end method

.method public final exitSplitScreen(II)V
    .locals 13

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(I)I

    move-result v5

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v2, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v7, 0x0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    goto/16 :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz v0, :cond_2

    int-to-long v4, p1

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v3, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v4, v0, v5}, [Ljava/lang/Object;

    move-result-object v12

    const-string v11, "exitSplitScreen: topTaskId=%d reason=%s active=%b"

    const-wide v8, -0x2f82b99f56cfc73cL    # -5.423685235674248E79

    const/16 v10, 0x31

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-boolean v0, v3, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v3, :cond_8

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v4, v2

    if-eqz v2, :cond_6

    int-to-long v4, p1

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v11

    const-wide v7, -0x5f92f4fa92fdcbdcL

    const/16 v9, 0xd

    const-string/jumbo v10, "reorderChild: task=%d onTop=%b"

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v2, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_8
    :goto_1
    invoke-virtual {p0, v3, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    :goto_2
    return-void
.end method

.method public final finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public final getActivateSplitPosition(Landroid/app/TaskInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    move-result p0

    return p0
.end method

.method public final getAllStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    invoke-static {v1, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds3()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget p3, p0, Landroid/graphics/Rect;->left:I

    neg-int p3, p3

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p1, p3, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getCellDividerBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getCellHostStageType()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result p0

    return p0
.end method

.method public final getCellStageWindowConfigPosition()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getDividerBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getMainStagePositionExt()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    move-result p0

    return p0
.end method

.method public final getMainStageRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public final getPackageName(ILandroid/window/WindowContainerToken;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;-><init>(ILandroid/window/WindowContainerToken;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final getSideStagePosition()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    return p0
.end method

.method public final getSplitCreateMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitCreateMode()I

    move-result p0

    return p0
.end method

.method public final getSplitDivision()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    move-result p0

    return p0
.end method

.method public final getSplitPosition(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getStageBounds(I)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getInitBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public final getStageOfTask(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(I)I

    move-result p0

    return p0
.end method

.method public final getStageTypeAtPosition(I)I
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageAtPosition(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    if-ne p1, p0, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_0
    return v1
.end method

.method public final getTargetLeash(I)Landroid/view/SurfaceControl;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    :goto_0
    return-object p0
.end method

.method public final getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v0, p1, :cond_2

    iget-object p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_2
    iget-object p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p1

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTopRunningTaskInfoByPosition(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageAtPosition(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-object p0
.end method

.method public final getUserId(ILandroid/window/WindowContainerToken;)I
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda5;-><init>(ILandroid/window/WindowContainerToken;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->isValidToSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    :cond_2
    return v1
.end method

.method public final invertDividerPosition(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v2, v2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt v2, v1, :cond_1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v0

    sub-int v1, v2, v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateSnapAlgorithm(I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->calculateSnapTarget(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public final isFlexPanelMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLaunchToSplit(Landroid/app/TaskInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLeftRightSplit()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMainStageEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMultiSplitScreenVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result p0

    return p0
.end method

.method public final isSplitScreenActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    return p0
.end method

.method public final isSplitScreenFeasible(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isSplitScreenFeasible(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSplitScreenVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p0

    return p0
.end method

.method public final isTaskInSplitScreen(Landroid/window/WindowContainerToken;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTaskInSplitScreen$1(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTaskRoot(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTaskRootOrStageRoot(I)Z
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_3

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isVerticalDivision()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    move-result p0

    return p0
.end method

.method public final maximizeSplitTask(Landroid/window/WindowContainerToken;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->maximizeSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public final moveTaskToFullscreen(I)V
    .locals 8

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "moveTaskToFullscreen"

    const/4 v7, 0x0

    const-wide v3, -0x3e6287c999ffc3b5L    # -1.2360437750023E8

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-nez p1, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    xor-int/lit8 p1, v1, 0x1

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(IZ)V

    :cond_3
    return-void
.end method

.method public final moveToStage(IILandroid/window/WindowContainerTransaction;)V
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen$1(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, p1

    int-to-long v4, p2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v11

    const-string v10, "moveToStage: task=%d position=%d"

    const-wide v7, 0x15b2e9f5d43835e2L    # 3.770372027438553E-204

    const/4 v9, 0x5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p3, v0, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3ed

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_1
    const/16 p1, 0x3ec

    goto :goto_0

    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/lit8 v7, p1, 0x1

    const/4 v4, 0x0

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_2
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipEvictingMainStageChildren:Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "taskId is in split"

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown taskId"

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDroppedToSplit(ILcom/android/internal/logging/InstanceId;Z)V
    .locals 10

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const-string v8, "onDroppedToSplit: position=%d"

    const-wide v5, 0x2d1a5fa49b263954L    # 2.022976470579103E-91

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    new-instance p3, Landroid/window/WindowContainerTransaction;

    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, p3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p3

    if-nez p3, :cond_2

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipEvictingMainStageChildren:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p3

    if-nez p3, :cond_3

    sget-boolean p3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p3, :cond_3

    const/4 p3, 0x0

    const/16 v0, 0xa

    invoke-virtual {p0, p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mDragEnterPosition:I

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    return-void
.end method

.method public final onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const-string v7, "freeform_to_split"

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;ZLjava/lang/String;)V

    return-void
.end method

.method public onInit()V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    const-string/jumbo v1, "splitscreen"

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSplitScreenShellCommandHandler:Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    const-string v3, "extra_shell_split_screen"

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mWindowDecorViewModel:Ljava/util/Optional;

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    move-object/from16 v17, v5

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mLaunchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v16, v17

    move-object/from16 v17, v5

    const/4 v5, 0x0

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v18

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    move-object/from16 v18, v20

    invoke-direct/range {v3 .. v18}, Lcom/android/wm/shell/splitscreen/StageCoordinator;-><init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;Lcom/android/wm/shell/common/LaunchAdjacentController;Ljava/util/Optional;)V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    new-instance v1, Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {v1, v3, v4}, Lcom/android/wm/shell/common/split/DividerResizeController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iput-object v3, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_0

    iput-object v2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    if-eqz v1, :cond_1

    iput-object v0, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    iput-object v0, v2, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mWindowDecorViewModel:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mDesktopTasksController:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 11

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean v0, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    iput-boolean p1, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    iget-object v1, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSplitDivisionIfNeeded()V

    :cond_0
    if-eq v0, p1, :cond_8

    iget-object p2, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-nez p1, :cond_1

    iget v0, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mOrientation:I

    if-eq p2, v0, :cond_1

    iget-object v0, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p3, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleLayoutSizeChange(Lcom/android/wm/shell/common/split/SplitLayout;Z)V

    :cond_1
    iput p2, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mOrientation:I

    goto/16 :goto_1

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget v4, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iput v5, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastActiveStage:I

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v4, :cond_3

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSplitDivisionIfNeeded()V

    :cond_3
    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCoverDisplaySplitLayoutIfNeeded()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v4, v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v4, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p3, v4, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    :cond_4
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_5

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v10

    const-string v9, "onKeyguardVisibilityChanged: active=%b occludingTaskRunning=%b"

    const-wide v6, -0x6814c9db6c6c2d4L

    const/16 v8, 0xf

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    xor-int/2addr v4, v2

    iget-object v5, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-virtual {v5, v4, v3}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->setSplitsVisible(ZZ)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardActive:Z

    xor-int/2addr v0, v2

    invoke-virtual {p3, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    :goto_0
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const/16 p2, 0x8

    invoke-virtual {p3, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->dismissSplitKeepingLastActiveStage(I)V

    :cond_8
    :goto_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iput-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsKeyguardVisible:Z

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_9
    return-void
.end method

.method public final onPipExpandToSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x0

    const-string v6, "onPipExpandToSplit: task=%s"

    const-wide v3, 0x35b5d18de183530L

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    iget v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_0
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onPipToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const-string v7, "pip_to_split"

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;ZLjava/lang/String;)V

    return-void
.end method

.method public final openInSplitWithAllApps(ILandroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq p1, v1, :cond_1

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;

    invoke-direct {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTaskWithAllApps(ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;I)V

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x42000000    # 32.0f

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-static {p2, p3, v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startPendingIntentAndIntent(Landroid/app/PendingIntent;Landroid/content/Intent;II)V

    :goto_1
    return-void
.end method

.method public final prepareExitSplitScreen(IILandroid/window/WindowContainerTransaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearSplitPairedInRecents(I)V

    return-void
.end method

.method public final registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public final removeFromSideStage(I)Z
    .locals 14

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v8, "removeFromSideStage: task=%d"

    const-wide v5, 0x78bf0a44fc0d3c11L    # 4.197970704461545E273

    const/4 v7, 0x1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v3, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v4, v4, v1

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    int-to-long v6, p1

    if-eqz v3, :cond_2

    move p1, v5

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object v13

    const-wide v9, 0x13309d3c97d63b96L    # 3.0121923999213974E-216

    const/16 v11, 0xd

    const-string/jumbo v12, "remove side stage task: task=%d exists=%b"

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, v2, v1}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move v1, v5

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return v1
.end method

.method public final reparentSplitTasksForAnimation([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 3

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "RecentsAnimationSplitTasks"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, v1, p3}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    :goto_0
    array-length p3, p1

    if-ge v1, p3, :cond_0

    aget-object p3, p1, v1

    iget-object v0, p3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2, v0, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final requestEnterSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->requestEnterSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final rotateMultiSplitWithTransition()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->rotateMultiSplitWithTransition()Z

    move-result p0

    return p0
.end method

.method public final setDividerVisibilityFromNS(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public final setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public final setSplitInvisible()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible$1(ZZ)V

    return-void
.end method

.method public final setSplitVisible()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    return-void
.end method

.method public final startDragAndSplit(Landroid/content/Intent;ILandroid/os/Bundle;III)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    move v7, p4

    invoke-direct {v6, p4}, Landroid/os/UserHandle;-><init>(I)V

    const/high16 v4, 0x42000000    # 32.0f

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v2, p4

    move v4, p2

    move-object v5, p3

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V

    return-void
.end method

.method public final startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;Landroid/window/WindowContainerToken;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V

    return-void
.end method

.method public final startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;Landroid/window/WindowContainerToken;II)V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V

    return-void
.end method

.method public final startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v6, p4

    move-object/from16 v7, p6

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v8, 0x1

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    int-to-long v9, v6

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v16

    const/16 v14, 0x44

    const-string/jumbo v15, "startIntent(): intent=%s user=%d fillInIntent=%s position=%d"

    const-wide v12, 0x66a8b9567a003bc2L    # 3.3617517744659275E186

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    :cond_1
    move-object/from16 v2, p3

    :goto_0
    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v4

    invoke-virtual {v0, v4, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getPackageName(ILandroid/window/WindowContainerToken;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v5

    invoke-virtual {v0, v5, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getUserId(ILandroid/window/WindowContainerToken;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-nez p9, :cond_3

    :cond_2
    move-object/from16 v9, p5

    goto/16 :goto_5

    :cond_3
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v11, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;

    invoke-direct {v11, v9, v1, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;ILandroid/window/WindowContainerToken;)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v9, :cond_2

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v1, v1, v8

    if-eqz v1, :cond_4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v16

    const-wide v12, 0x6ef5fbce0403a25L

    const/4 v14, 0x0

    const-string v15, "Found suitable background task=%s"

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v1, :cond_5

    if-eqz p8, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v1, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTaskWithMultiSplit(IILandroid/os/Bundle;II)V

    goto/16 :goto_4

    :cond_5
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v12, 0x0

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_6

    int-to-long v2, v9

    int-to-long v4, v6

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v18

    const-string/jumbo v17, "startTask: task=%d position=%d"

    const-wide v14, 0x62af4060ba193b2cL    # 2.3035526543557157E167

    const/16 v16, 0x5

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    invoke-direct {v0, v11, v9, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;II)V

    iput-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    new-instance v13, Landroid/window/WindowContainerTransaction;

    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v1, :cond_7

    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object v0, v11

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v1, -0x1

    move-object v0, v11

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    if-eqz v7, :cond_9

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v1, v1, v12

    if-eqz v1, :cond_8

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v18, "Reordering hide-task to bottom"

    const/16 v19, 0x0

    const-wide v15, 0x15ee573c810e3476L    # 4.838597429637216E-203

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v13, v7, v12}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_9
    invoke-virtual {v13, v9, v0}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eqz v0, :cond_a

    invoke-static {v9, v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipTransitionController;->isPackageActiveInPip(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_a
    move v0, v12

    :goto_2
    if-eqz v0, :cond_b

    invoke-virtual {v1, v13}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_c

    iput-boolean v8, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipEvictingMainStageChildren:Z

    invoke-virtual {v11, v10, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz v0, :cond_d

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1, v13}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_4

    :cond_d
    const/4 v0, -0x1

    if-ne v6, v0, :cond_e

    invoke-virtual {v1, v13}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_4

    :cond_e
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x3ed

    goto :goto_3

    :cond_f
    const/16 v0, 0x3ec

    :goto_3
    iget-boolean v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/2addr v1, v8

    invoke-virtual {v11, v13, v10, v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-boolean v2, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    xor-int/2addr v2, v8

    const/4 v3, 0x0

    move-object/from16 p0, v1

    move-object/from16 p1, v13

    move-object/from16 p2, v3

    move-object/from16 p3, v11

    move/from16 p4, v0

    move/from16 p5, v2

    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    goto :goto_4

    :cond_10
    iget v1, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    move-object/from16 v9, p5

    invoke-virtual {v0, v1, v6, v9, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;)V

    :goto_4
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x3eb5b58910343202L    # 1.2939645451264712E-6

    const/4 v3, 0x0

    const-string v4, "Start task in background"

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-wide/from16 p1, v1

    move/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void

    :goto_5
    invoke-static {v1, v5, v3, v4}, Lcom/android/wm/shell/common/MultiInstanceHelper;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v1, p1

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/window/WindowContainerToken;II)V

    goto :goto_6

    :cond_12
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v8, -0x1

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move v6, v8

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/window/WindowContainerToken;II)V

    :goto_6
    return-void
.end method

.method public final startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V
    .locals 15

    move-object v0, p0

    if-nez p2, :cond_0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startIntent: position="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v8, p3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SplitScreenController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x42000000    # 32.0f

    move-object/from16 v4, p1

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v2, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getToggleSplitScreenTarget()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_0
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object/from16 v14, p5

    invoke-virtual/range {v7 .. v14}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, v7

    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object v7, v9

    move/from16 v8, p4

    move v9, v10

    move v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V

    return-void
.end method

.method public final startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;I)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x40000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setResumedAffordanceAnimation()V

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;ILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFILandroid/window/RemoteTransition;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p3, :cond_0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    if-nez p4, :cond_1

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    const/4 v13, 0x1

    const/4 v15, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v14, p7

    move-object/from16 v16, p8

    invoke-virtual/range {v0 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method public final startPendingIntentAndIntent(Landroid/app/PendingIntent;Landroid/content/Intent;II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v13, 0x2

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v9, p3

    move/from16 v14, p4

    invoke-virtual/range {v0 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method public final startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;II)V

    return-void
.end method

.method public final startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p3

    move/from16 v1, p7

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v3, -0x1

    move-object/from16 v4, p4

    invoke-virtual {v2, v3, v1, v4, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p4

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v2, -0x1

    const/4 v5, 0x0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-static {v1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v2

    invoke-virtual {v0, v2, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getPackageName(ILandroid/window/WindowContainerToken;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getUserId(ILandroid/window/WindowContainerToken;)I

    move-result v4

    move-object/from16 v6, p1

    invoke-static {v3, v4, v6, v2}, Lcom/android/wm/shell/common/MultiInstanceHelper;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v4, v7

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    int-to-long v9, v2

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v16

    const/16 v14, 0x50

    const-string/jumbo v15, "startShortcut: pkg=%s id=%s position=%d user=%d"

    const-wide v12, -0x47b51c41d02fccb4L    # -1.5804298655335948E-37

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const/4 v9, 0x1

    xor-int/2addr v0, v9

    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;

    invoke-direct {v11, v8, v0, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v8

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/ActivityOptions;->setApplyNoUserActionFlagForShortcut(Z)V

    invoke-static {v1}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    :try_start_0
    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v8, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "StageCoordinator"

    const-string v2, "Failed to launch shortcut"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final startSplitTasks(IIIZIFF)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitTasks(IIIZIFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SplitScreenController"

    const-string p2, "Failed to launch tasks"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V

    return-void
.end method

.method public final startTask(IILandroid/os/Bundle;Landroid/window/WindowContainerToken;IIZ)V
    .locals 8

    if-eqz p7, :cond_0

    const/4 p4, -0x1

    if-eq p2, p4, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTaskWithMultiSplit(IILandroid/os/Bundle;II)V

    return-void

    :cond_0
    sget-object p4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 p5, 0x1

    aget-boolean p4, p4, p5

    if-eqz p4, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x2f182e8630263106L    # 7.966519921346117E-82

    const/4 v3, 0x0

    const-string v4, "Legacy startTask does not support hide task token"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-array p4, p5, [I

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;

    invoke-direct {v1, p0, p4, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;[II)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object p0

    new-instance p2, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-static {p2}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result p0

    const/4 p1, 0x0

    aput p0, p4, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SplitScreenController"

    const-string p2, "Failed to launch task"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final startTaskAndIntent(ILandroid/content/Intent;II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

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

    move/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v9, p3

    move/from16 v14, p4

    invoke-virtual/range {v0 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method public final startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 16

    move-object/from16 v0, p0

    :try_start_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x5

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v14, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/os/Bundle;IIFIFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SplitScreenController"

    const-string v2, "Failed to launch tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final swapStageTasks(IILandroid/window/WindowContainerTransaction;)V
    .locals 0

    const/4 p1, 0x2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->swapStageTasks(IILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final swapTasksInSplitScreenMode()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->swapTasksInSplitScreenMode$1()V

    return-void
.end method

.method public final toggleSplitScreen(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_0
    iget-object p1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_4

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mStageType:I

    if-nez p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTaskIdByStageType(I)I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getFocusedStageType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTaskIdByStageType(I)I

    move-result v2

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "focusStageRootTaskInfo is null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitScreenController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/16 p1, 0xe

    invoke-virtual {p0, v2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(II)V

    return-void

    :cond_5
    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getToggleSplitScreenTarget()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1, v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object v6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CREATE_MODE:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    move v9, v3

    goto :goto_3

    :cond_7
    move v9, v2

    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape$1()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-nez v0, :cond_8

    move v8, v3

    goto :goto_4

    :cond_8
    move v8, p1

    :goto_4
    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V

    return-void
.end method

.method public final updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V
    .locals 0

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final updateSplitScreenSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final updateSurfaceBoundsForNS(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method
