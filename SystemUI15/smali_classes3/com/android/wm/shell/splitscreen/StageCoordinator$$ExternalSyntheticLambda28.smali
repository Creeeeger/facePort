.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const-string v1, "Error starting remote animation"

    const-string v2, "StageCoordinator"

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, p2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-class v3, Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    invoke-static {v3, p4, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    move-object v7, p4

    check-cast v7, [Landroid/view/RemoteAnimationTarget;

    const/4 p4, 0x0

    :goto_0
    array-length v3, p2

    if-ge p4, v3, :cond_2

    aget-object v3, p2, p4

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v4, :cond_1

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p6, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v3, p2, p4

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {p6, v3, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x1

    invoke-virtual {p0, p6, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;

    invoke-direct {v8, p0, p2, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v3 .. v8}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_1
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const-string v1, "Error starting remote animation"

    const-string v2, "StageCoordinator"

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, p2

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_3
    array-length v3, p2

    if-ge p0, v3, :cond_6

    aget-object v3, p2, p0

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v4, :cond_5

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p6, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_2
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_3
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mIsMultiSplitDismissed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mIsMultiSplitDismissed:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    :cond_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mFlexController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_3
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0, p2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method
