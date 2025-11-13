.class public final Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;
.super Landroid/view/IRecentsAnimationController$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mClosingTasks:Ljava/util/ArrayList;

.field public mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda4;

.field public mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mFinishTransactions:Ljava/util/ArrayList;

.field public mForceEnterPip:Z

.field public mInfo:Landroid/window/TransitionInfo;

.field public final mInstanceId:I

.field public mKeyguardLocked:Z

.field public mLeashMap:Landroid/util/ArrayMap;

.field public mListener:Landroid/view/IRecentsAnimationRunner;

.field public mMergedTransitionInfo:Landroid/window/TransitionInfo;

.field public mOpeningSeparateHome:Z

.field public mOpeningTasks:Ljava/util/ArrayList;

.field public mPausingSeparateHome:Z

.field public mPausingTasks:Ljava/util/ArrayList;

.field public mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

.field public mPipTask:Landroid/window/WindowContainerToken;

.field public mPipTaskId:I

.field public mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public mRecentsTask:Landroid/window/WindowContainerToken;

.field public mRecentsTaskId:I

.field public mRecentsTaskState:Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

.field public mState:I

.field public mTransferLeashMap:Landroid/util/ArrayMap;

.field public mTransition:Landroid/os/IBinder;

.field public mWillFinishToHome:Z

.field public mWillForceFinishToHome:Z

.field public final synthetic this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/view/IRecentsAnimationRunner;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransactions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTaskId:I

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    iput v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskId:I

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskState:Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillForceFinishToHome:Z

    iput v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mForceEnterPip:Z

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V

    iput-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda4;

    :try_start_0
    invoke-interface {p2}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda4;

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "RecentsTransitionHandler"

    const-string v1, "RecentsController: failed to link to death"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    :goto_0
    return-void
.end method


# virtual methods
.method public final animateNavigationBarToApp(J)V
    .locals 0

    return-void
.end method

.method public final cancel(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final cancel(Ljava/lang/String;ZZ)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v5, 0xd

    const-string v6, "[%d] RecentsController.cancel: toHome=%b reason=%s"

    const-wide v3, -0x7e22a64788dac800L

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->getSnapshotsForPausingTasks()Landroid/util/Pair;

    move-result-object p1

    :goto_0
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, [I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Landroid/window/TaskSnapshot;

    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancel([I[Landroid/window/TaskSnapshot;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancel([I[Landroid/window/TaskSnapshot;)Z

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->finishInner(ZZLcom/android/internal/os/IResultReceiver;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    :goto_2
    return-void
.end method

.method public final cleanUp()V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const-string v6, "[%d] RecentsController.cleanup"

    const-wide v3, 0x358696ce69b63825L    # 7.546914358088865E-51

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda4;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda4;

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda4;

    :cond_1
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;

    invoke-interface {v3, v1}, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;->onAnimationStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    :cond_7
    return-void
.end method

.method public final cleanUpPausingOrClosingTask(Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    if-nez p4, :cond_1

    iget-object p4, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p4, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mForceEnterPip:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "PipTaskOrganizer"

    const-string/jumbo p2, "recents transition is canceled but will go to pip"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p0}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final cleanupScreenshot()V
    .locals 0

    return-void
.end method

.method public final detachNavigationBarFromApp(Z)V
    .locals 8

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x7955be46d12bc99dL

    const/4 v5, 0x1

    const-string v6, "[%d] RecentsController.detachNavigationBarFromApp"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finish(ZZLcom/android/internal/os/IResultReceiver;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZLcom/android/internal/os/IResultReceiver;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finishInner(ZZLcom/android/internal/os/IResultReceiver;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const-string v4, "RecentsTransitionHandler"

    if-nez v3, :cond_0

    const-string v0, "Duplicate call to finish"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_1

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-eqz v6, :cond_5

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_1
    if-ltz v8, :cond_4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-boolean v9, v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mIsTranslucent:Z

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_4
    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    invoke-virtual {v7, v5}, Lcom/android/wm/shell/transition/HomeTransitionObserver;->notifyHomeVisibilityChanged(Z)V

    goto :goto_3

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    invoke-virtual {v7, v3}, Lcom/android/wm/shell/transition/HomeTransitionObserver;->notifyHomeVisibilityChanged(Z)V

    :cond_6
    :goto_3
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_7

    iget v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v7, v7

    iget-boolean v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    iget v10, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    int-to-long v10, v10

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v7, v8, v13, v9, v10}, [Ljava/lang/Object;

    move-result-object v17

    const-wide v13, -0x2d26b02930d2c31fL    # -1.289029820805137E91

    const/16 v15, 0x1fd

    const-string v16, "[%d] RecentsController.finishInner: toHome=%b userLeave=%b willFinishToHome=%b state=%d"

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v9, :cond_a

    iget-boolean v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillForceFinishToHome:Z

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v5, :cond_8

    goto :goto_4

    :cond_8
    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceControl$Transaction;

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    goto :goto_5

    :cond_a
    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    :goto_5
    new-instance v10, Landroid/window/WindowContainerTransaction;

    invoke-direct {v10}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v11, :cond_b

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v11, v11, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v11, v11, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v4, v11}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->cancelForceHideAnimationsIfNeeded(Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V

    :cond_b
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v11, :cond_f

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mMergedTransitionInfo:Landroid/window/TransitionInfo;

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMinimizeAnimState()I

    move-result v13

    if-eq v13, v5, :cond_d

    goto :goto_6

    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "notifyFreeformMinimizeFinished: #"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    iget v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v13

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    iget v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMinimizePoint()Landroid/graphics/PointF;

    move-result-object v12

    invoke-virtual {v13, v14, v12}, Lcom/samsung/android/multiwindow/MultiWindowManager;->notifyFreeformMinimizeAnimationEnd(ILandroid/graphics/PointF;)V

    goto :goto_6

    :cond_e
    iput-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mMergedTransitionInfo:Landroid/window/TransitionInfo;

    :cond_f
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz v11, :cond_10

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v11, v11, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v11, v11, Lcom/android/wm/shell/transition/Transitions;->mRecentTransitionCallback:Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    if-eqz v11, :cond_10

    iget-object v11, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v12, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-boolean v13, v12, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mReparentedToTransitionRoot:Z

    if-eqz v13, :cond_10

    iget-object v11, v11, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v11, v3, v9}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->reparentToLeash(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_10
    iget-boolean v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    if-eqz v11, :cond_12

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v11, :cond_12

    if-eqz p1, :cond_11

    invoke-virtual {v10, v11, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_7

    :cond_11
    invoke-virtual {v10, v11}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_12
    :goto_7
    if-eqz v6, :cond_15

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_13

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v15, "  returning to app"

    const/16 v16, 0x0

    const-wide v12, -0x26cb407801bdcc9eL    # -5.357695646153326E121

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_8
    if-ltz v1, :cond_14

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v6, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v10, v6, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v6, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_14
    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    if-nez v1, :cond_2b

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_2b

    invoke-virtual {v10, v1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskState:Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_12

    :cond_15
    if-eqz p1, :cond_1a

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    if-eqz v6, :cond_1a

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_1a

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_16

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v15, "  3p launching home"

    const/16 v16, 0x0

    const-wide v12, 0x6aefd13a37033d45L    # 1.2768805945858076E207

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    move v1, v3

    :goto_9
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_18

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v11, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_17

    iget-object v11, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v10, v11, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_17
    iget-object v6, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_a
    if-ltz v1, :cond_19

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v6, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_19
    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    if-nez v1, :cond_2b

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_2b

    invoke-virtual {v10, v1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskState:Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_12

    :cond_1a
    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    if-eqz v6, :cond_1c

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_1c

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v15, "  recents occluded 3p home"

    const/16 v16, 0x0

    const-wide v12, -0x6b34984561f5c657L

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_1b
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_1c

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v15, "  switch task by recents on 3p home"

    const/16 v16, 0x0

    const-wide v12, 0x45bb56c50b583969L    # 8.460993401131713E27

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    :goto_b
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_1d

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v15, "  normal finish"

    const/16 v16, 0x0

    const-wide v12, 0x6819db00e47734e7L    # 2.9491025735554115E193

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v6, :cond_1f

    iget-boolean v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillForceFinishToHome:Z

    if-eqz v6, :cond_1f

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v6, :cond_1f

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_1e

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v15, "  attempting to force go home after swiping"

    const/16 v16, 0x0

    const-wide v12, 0x1f115da7da9b3083L    # 4.940810029310004E-159

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v10, v6, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_1f
    move v6, v3

    :goto_c
    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_20

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v11, v11, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_20
    move v6, v3

    :goto_d
    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_21

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    invoke-virtual {v0, v11, v10, v9, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUpPausingOrClosingTask(Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_21
    move v6, v3

    :goto_e
    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_22

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    invoke-virtual {v0, v11, v10, v9, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUpPausingOrClosingTask(Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_22
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v6, :cond_2b

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    const/4 v6, -0x1

    if-eqz v1, :cond_23

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v11, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    goto :goto_10

    :cond_23
    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTaskId:I

    if-eq v1, v6, :cond_27

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v11, v8

    move-object v12, v11

    :cond_24
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    if-eqz v14, :cond_24

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    iget v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v15, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTaskId:I

    if-ne v14, v15, :cond_24

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v11, v11, v5

    if-eqz v11, :cond_25

    iget v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTaskId:I

    int-to-long v14, v11

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v21

    const-wide v17, -0x42c5e965bc09c706L    # -9.268422972878548E-14

    const/16 v19, 0x1

    const-string v20, "RecentsController.finishInner: found a change with taskId=%d"

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    move-object v11, v13

    goto :goto_f

    :cond_26
    move-object v1, v11

    move-object v11, v12

    goto :goto_10

    :cond_27
    move-object v1, v8

    move-object v11, v1

    :goto_10
    if-nez v11, :cond_28

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTaskId:I

    int-to-long v11, v11

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v1, v9, v11}, [Ljava/lang/Object;

    move-result-object v18

    const-wide v14, 0x7d34eaccf5543912L    # 1.335915865471358E295

    const/16 v16, 0x10

    const-string v17, "RecentsController.finishInner: no valid PiP leash;mPipTransaction=%s, mPipTask=%s, mPipTaskId=%d"

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_28
    invoke-virtual {v9, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v12, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-static {v12, v11, v9}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v9, v9, v5

    if-eqz v9, :cond_29

    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v15, "RecentsController.finishInner: PiP transaction %s merged"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v16

    const-wide v12, 0x18170b7d8a673ea8L

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result v9

    if-eqz v9, :cond_2a

    new-instance v9, Landroid/window/TransitionRequestInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v11, v9

    invoke-direct/range {v11 .. v17}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;I)V

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v11, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    invoke-virtual {v1, v11, v9, v8}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/window/WindowContainerTransaction;

    invoke-virtual {v10, v1, v5}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v9, 0xa

    invoke-virtual {v1, v9, v10, v8}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    invoke-virtual {v10}, Landroid/window/WindowContainerTransaction;->clear()V

    :cond_2a
    :goto_11
    iput v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTaskId:I

    iput-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    :cond_2b
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    invoke-virtual {v10}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object v10, v8

    :cond_2c
    invoke-interface {v7, v10}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    if-eqz v2, :cond_2e

    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_2d

    iget v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, v0

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v13, "[%d] RecentsController.finishInner: calling finish callback"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v14

    const-wide v10, 0x42631bbd3af434abL    # 6.565581188176459E11

    const/4 v12, 0x1

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_14

    :cond_2d
    :goto_13
    invoke-interface {v2, v3, v8}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_15

    :goto_14
    const-string v1, "Failed to report transition finished"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_15
    return-void
.end method

.method public final getSnapshotsForPausingTasks()Landroid/util/Pair;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/window/TaskSnapshot;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    :try_start_0
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v8, 0x1

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v9, v7

    iget-object v7, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v11, v7

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v17, "[%d] RecentsController.sendCancel: Snapshotting task=%d"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v18

    const-wide v14, -0x7d545d01d75c2dbL    # -7.059941405808089E270

    const/16 v16, 0x5

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v7

    iget-object v6, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v7, v6, v8}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v6

    aput-object v6, v3, v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1

    :catch_0
    :cond_2
    move-object v3, v2

    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final handOffAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/window/WindowAnimationState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;[Landroid/view/RemoteAnimationTarget;[Landroid/window/WindowAnimationState;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/os/IBinder;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v11, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v1, v1, v11

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const-string v6, "[%d] RecentsController.merge: skip, no finish callback"

    const-wide v3, -0x65503645c017c2c3L    # -3.830326415970404E-180

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v1, v1, v11

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x1

    const-string v7, "[%d] RecentsController.merge: transit_sleep"

    const-wide v4, -0x3b31b1545fcfc3f8L    # -2.862444149228997E23

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v1, "transit_sleep"

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    const/4 v12, 0x0

    if-nez v1, :cond_56

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    const v2, 0x43900

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    goto/16 :goto_31

    :cond_4
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v1, v1, v11

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v1, v1

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v18

    const/16 v16, 0x1

    const-string v17, "[%d] RecentsController.merge"

    const-wide v14, 0x124963150148382aL    # 1.40464067902276E-220

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iput-boolean v12, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    new-instance v1, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;

    invoke-direct {v1}, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-static {v7, v11}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_0
    const/16 v3, 0x20

    const/4 v13, 0x6

    if-ltz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-ne v4, v13, :cond_6

    move v2, v11

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    move v2, v12

    :goto_1
    move v4, v12

    move v5, v4

    move v15, v5

    move/from16 v18, v15

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v11

    const-string v3, "RecentsTransitionHandler"

    if-ge v4, v11, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    if-eqz v12, :cond_f

    iget-object v13, v12, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v13, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v13

    if-eqz v13, :cond_f

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v13, :cond_e

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    if-nez v13, :cond_8

    goto :goto_6

    :cond_8
    sget-boolean v24, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v24, :cond_9

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMinimizeAnimState()I

    move-result v10

    const/4 v9, 0x2

    if-ne v10, v9, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_a

    goto :goto_3

    :cond_a
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v9, :cond_e

    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v9

    if-eqz v9, :cond_e

    :goto_3
    if-eqz v2, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "merge: skip handling always-on-top task "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", reason=display_change"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    move-object/from16 v13, v19

    :cond_c
    :goto_5
    const/16 v19, 0x20

    goto/16 :goto_10

    :cond_d
    return-void

    :cond_e
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "task #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v3, " is always_on_top"

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;ZZ)V

    return-void

    :cond_f
    if-eqz v12, :cond_10

    invoke-static {v11, v7}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v9, :cond_11

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    :goto_8
    if-nez v18, :cond_13

    if-eqz v3, :cond_12

    goto :goto_9

    :cond_12
    const/16 v18, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    const/16 v18, 0x1

    :goto_a
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v10

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v13

    invoke-static {v13}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v13

    if-nez v13, :cond_14

    invoke-static {v11}, Lcom/android/wm/shell/shared/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v13

    if-eqz v13, :cond_15

    :cond_14
    move-object/from16 v13, v19

    const/16 v19, 0x20

    goto/16 :goto_f

    :cond_15
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v13

    invoke-static {v13}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v13

    if-eqz v13, :cond_19

    if-eqz v9, :cond_16

    move-object/from16 v13, v19

    const/4 v15, 0x1

    goto :goto_5

    :cond_16
    if-nez v3, :cond_17

    if-eqz v10, :cond_b

    :cond_17
    if-nez v14, :cond_18

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_18
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_19
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v13, 0x6

    if-ne v3, v13, :cond_b

    const/16 v3, 0x20

    invoke-virtual {v11, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    if-ne v3, v13, :cond_1a

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mForceEnterPip:Z

    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    const-string v2, "display change"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;ZZ)V

    return-void

    :cond_1a
    invoke-static {v11}, Lcom/android/wm/shell/shared/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    if-nez v3, :cond_1e

    if-eqz v10, :cond_1e

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v3, :cond_1d

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    if-eq v3, v5, :cond_1d

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v3, v11}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v3

    if-gez v3, :cond_1b

    goto :goto_d

    :cond_1b
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v13, v19

    if-nez v13, :cond_1c

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Landroid/util/IntArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/IntArray;-><init>()V

    move-object/from16 v3, v17

    move-object/from16 v13, v19

    goto :goto_b

    :cond_1c
    move-object/from16 v3, v17

    :goto_b
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/util/IntArray;->add(I)V

    move-object/from16 v17, v3

    :goto_c
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_1d
    :goto_d
    move-object/from16 v13, v19

    goto :goto_c

    :cond_1e
    move-object/from16 v13, v19

    if-eqz v10, :cond_c

    iget v3, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v10, 0x2

    if-ne v3, v10, :cond_c

    if-nez v9, :cond_c

    if-nez v13, :cond_1f

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Landroid/util/IntArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/IntArray;-><init>()V

    move-object/from16 v3, v17

    move-object/from16 v13, v19

    goto :goto_e

    :cond_1f
    move-object/from16 v3, v17

    :goto_e
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/util/IntArray;->add(I)V

    move-object/from16 v17, v3

    goto/16 :goto_5

    :goto_f
    if-eqz v9, :cond_20

    move-object v6, v11

    goto :goto_10

    :cond_20
    if-nez v3, :cond_21

    if-eqz v10, :cond_24

    :cond_21
    if-eqz v10, :cond_22

    iget v3, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v9, 0x2

    if-ne v3, v9, :cond_22

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    :cond_22
    if-nez v13, :cond_23

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Landroid/util/IntArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/IntArray;-><init>()V

    move-object v13, v3

    :cond_23
    move-object/from16 v3, v17

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v10}, Landroid/util/IntArray;->add(I)V

    move-object/from16 v17, v3

    :cond_24
    :goto_10
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v3, v19

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v19, v13

    const/4 v13, 0x6

    goto/16 :goto_2

    :cond_25
    move-object/from16 v13, v19

    if-eqz v5, :cond_27

    if-eqz v15, :cond_27

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    if-eqz v1, :cond_26

    goto :goto_11

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->getSnapshotsForPausingTasks()Landroid/util/Pair;

    move-result-object v1

    :goto_11
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroid/window/TaskSnapshot;

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancel([I[Landroid/window/TaskSnapshot;)Z

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;I)V

    const-wide/16 v3, 0x0

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_27
    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v6, :cond_2b

    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    if-nez v1, :cond_28

    const-string v1, "Returning to recents while recents is already idle."

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-eqz v14, :cond_29

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2a

    :cond_29
    const-string v1, "Returning to recents without closing any opening tasks."

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    :cond_2b
    const-string v10, ""

    const-string v11, "leaf "

    const/4 v1, 0x0

    if-eqz v14, :cond_31

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_31

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v5

    if-ltz v5, :cond_2d

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v5, 0x1

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_2c

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v4, v1

    sget-object v23, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v28

    const/16 v26, 0x1

    const-string v27, "  closing pausing taskId=%d"

    const-wide v24, -0x6f16f8587ef2cb1fL    # -3.301812375493969E-227

    invoke-static/range {v23 .. v28}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    :goto_13
    const/4 v1, 0x1

    goto :goto_15

    :cond_2d
    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v5

    if-gez v5, :cond_2e

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Closing a task that wasn\'t opening, this may be split or something unexpected: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_2e
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_30

    iget-object v4, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2f

    move-object v4, v11

    goto :goto_14

    :cond_2f
    move-object v4, v10

    :goto_14
    iget-object v5, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v5, v5

    sget-object v23, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v28

    const/16 v26, 0x4

    const-string v27, "  pausing opening %staskId=%d"

    const-wide v24, 0x12d5892510893d9cL

    invoke-static/range {v23 .. v28}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    :cond_31
    if-eqz v13, :cond_40

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_40

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v12, v1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    invoke-virtual/range {v17 .. v17}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_32

    move-object/from16 v14, v17

    invoke-virtual {v14, v1}, Landroid/util/IntArray;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_32
    move-object/from16 v14, v17

    if-lez v2, :cond_33

    new-array v1, v2, [Landroid/view/RemoteAnimationTarget;

    move-object/from16 v17, v1

    goto :goto_17

    :cond_33
    const/16 v17, 0x0

    :goto_17
    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_18
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_3f

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v14, v6}, Landroid/util/IntArray;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    const/4 v1, 0x1

    goto :goto_19

    :cond_34
    const/4 v1, 0x0

    :goto_19
    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v4

    if-ltz v4, :cond_35

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mClosingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_35
    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v2

    if-ltz v2, :cond_39

    if-eqz v1, :cond_36

    add-int/lit8 v4, v19, 0x1

    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v9, v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    move-object/from16 v23, v3

    const/4 v3, 0x0

    invoke-static {v5, v12, v9, v3}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object v9

    aput-object v9, v17, v19

    move/from16 v19, v4

    goto :goto_1a

    :cond_36
    move-object/from16 v23, v3

    :goto_1a
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_38

    if-eqz v1, :cond_37

    move-object v1, v11

    goto :goto_1b

    :cond_37
    move-object v1, v10

    :goto_1b
    iget-object v3, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v3, v3

    sget-object v24, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v29

    const/16 v27, 0x4

    const-string v28, "  opening pausing %staskId=%d"

    const-wide v25, 0x37dbd8ddfe13ad0L

    invoke-static/range {v24 .. v29}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move/from16 v25, v6

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    goto/16 :goto_1f

    :cond_39
    move-object/from16 v23, v3

    if-eqz v1, :cond_3d

    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    move-object v1, v5

    move v2, v12

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    move/from16 v23, v4

    move-object/from16 v4, p1

    move-object/from16 v30, v5

    move-object/from16 v5, p2

    move/from16 v25, v6

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    add-int/lit8 v2, v19, 0x1

    aput-object v1, v17, v19

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    move-object/from16 v4, v30

    invoke-static {v4, v3}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v3

    if-ltz v23, :cond_3a

    const/4 v5, 0x1

    goto :goto_1c

    :cond_3a
    const/4 v5, 0x0

    :goto_1c
    iget-object v6, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v9, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v9, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v8, v6, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v3, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    if-eqz v5, :cond_3b

    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v8, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v8, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1d

    :cond_3b
    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1d
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v6, 0x1

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_3c

    iget v3, v1, Landroid/view/RemoteAnimationTarget;->taskId:I

    move v6, v2

    int-to-long v2, v3

    sget-object v26, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v31

    const/16 v29, 0xd

    const-string v30, "  opening new leaf taskId=%d wasClosing=%b"

    const-wide v27, -0x3679f0688a14c5acL    # -1.5743187777123311E46

    invoke-static/range {v26 .. v31}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_3c
    move v6, v2

    :goto_1e
    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v6

    goto :goto_1f

    :cond_3d
    move-object v4, v5

    move/from16 v25, v6

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3e

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v26, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v31

    const/16 v29, 0x1

    const-string v30, "  opening new taskId=%d"

    const-wide v27, 0x54a98e3f9213bdbL

    invoke-static/range {v26 .. v31}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    add-int/lit8 v6, v25, 0x1

    move-object v3, v10

    move-object/from16 v10, v24

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_18

    :cond_3f
    move-object v10, v3

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    move v3, v2

    move-object/from16 v1, v17

    goto :goto_20

    :cond_40
    move-object v10, v3

    const/4 v2, 0x1

    move v3, v1

    const/4 v1, 0x0

    :goto_20
    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_41

    iget v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v4, v2

    sget-object v23, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v28

    const/16 v26, 0x1

    const-string v27, "[%d] RecentsController.merge: empty pausing tasks"

    const-wide v24, -0x15705385e03bc0b3L    # -1.9861241440736382E205

    invoke-static/range {v23 .. v28}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    if-nez v18, :cond_45

    const-string v2, "Got an activity only transition during recents, so apply directly"

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_44

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v8, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_22

    :cond_42
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_43
    :goto_22
    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    :cond_44
    move-object/from16 v2, p3

    goto/16 :goto_28

    :cond_45
    if-nez v3, :cond_44

    const-string v1, "Don\'t know how to merge this transition, foundRecentsClosing="

    const-string v2, " recentsTaskId="

    invoke-static {v1, v2, v15}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_46

    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTaskId:I

    if-gez v1, :cond_47

    :cond_46
    const/4 v1, 0x0

    goto/16 :goto_26

    :cond_47
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_4d

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_48

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_48

    const-string v1, "isAllowedToMergeTransition: reason=remove_pip"

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_48
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4c

    const/4 v12, 0x0

    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_4b

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    if-eq v3, v2, :cond_49

    goto :goto_24

    :cond_49
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_4c

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_24

    :cond_4a
    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    :cond_4b
    const-string v1, "When only split change, merge"

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "isAllowedToMergeTransition: reason=split_change_only"

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_4c
    :goto_24
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v1, :cond_4d

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4d

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "isAllowedToMergeTransition: reason=freeform_minimize_only"

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    iput-object v7, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mMergedTransitionInfo:Landroid/window/TransitionInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object/from16 v2, p3

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    goto :goto_27

    :goto_26
    iput-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    const-string v2, "didn\'t merge"

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;ZZ)V

    :cond_4d
    :goto_27
    return-void

    :goto_28
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v3, :cond_4f

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v3, :cond_4e

    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    goto :goto_29

    :cond_4e
    const/4 v3, 0x0

    :goto_29
    if-eqz v3, :cond_50

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_4f
    move-object/from16 v4, p4

    :cond_50
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    if-eqz v1, :cond_55

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz v3, :cond_53

    if-eqz v4, :cond_53

    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions;->mRecentTransitionCallback:Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    if-eqz v3, :cond_53

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v6, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_53

    array-length v4, v1

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    :goto_2b
    if-ltz v4, :cond_53

    aget-object v6, v1, v4

    iget-object v8, v6, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v8, :cond_52

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v8

    if-eqz v8, :cond_52

    iget v6, v6, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v6, :cond_52

    iget v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    invoke-virtual {v5, v4}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v4

    if-gez v4, :cond_51

    goto :goto_2c

    :cond_51
    invoke-virtual {v5, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->reparentToLeash(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_2c

    :cond_52
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    :cond_53
    :goto_2c
    :try_start_0
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_54

    iget v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v3, v3

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v21, "[%d] RecentsController.merge: calling onTasksAppeared"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v22

    const-wide v18, 0xb92b88d51e03717L

    const/16 v20, 0x1

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    :catch_0
    move-exception v0

    goto :goto_2f

    :cond_54
    :goto_2d
    iget-object v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v3, v1}, Landroid/view/IRecentsAnimationRunner;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_55

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v1, :cond_55

    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->updateActiveRecents(Landroid/window/TransitionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_55
    :goto_2e
    const/4 v1, 0x0

    goto :goto_30

    :goto_2f
    const-string v1, "Error sending appeared tasks to recents animation"

    invoke-static {v10, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :goto_30
    invoke-interface {v2, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_56
    :goto_31
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v1, :cond_57

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->setHasCancelledRecentsTransitionByMerge()V

    :cond_57
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_58

    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x1

    const-string v7, "[%d] RecentsController.merge: keyguard is locked"

    const-wide v4, 0x1b1439cdf1043dfcL    # 3.119523455762887E-178

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_58
    const-string v1, "keyguard_locked"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final removeTask(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final screenshotTask(I)Landroid/window/TaskSnapshot;
    .locals 12

    :try_start_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v2, p0

    int-to-long v4, p1

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v10, "[%d] RecentsController.screenshotTask: taskId=%d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v11

    const-wide v7, -0x436d70a01ee6c746L    # -6.439313232589051E-17

    const/4 v9, 0x5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const-string p1, "RecentsTransitionHandler"

    const-string v0, "Failed to screenshot task"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendCancel([I[Landroid/window/TaskSnapshot;)Z
    .locals 11

    if-eqz p2, :cond_0

    :try_start_0
    const-string/jumbo v0, "with snapshots"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v0, ""

    :goto_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v3, v1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v9, "[%d] RecentsController.cancel: calling onAnimationCanceled %s"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, -0x7d351562f9e7c868L    # -3.292548490934105E-295

    const/4 v8, 0x1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_1
    const-string p1, "RecentsTransitionHandler"

    const-string p2, "Error canceling recents animation"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setAnimationTargetsBehindSystemBars(Z)V
    .locals 0

    return-void
.end method

.method public final setDeferCancelUntilNextTransition(ZZ)V
    .locals 0

    return-void
.end method

.method public final setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object p3, p3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ILandroid/window/PictureInPictureSurfaceTransaction;)V

    check-cast p3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setInputConsumerEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZI)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setWillFinishToHome(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZI)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setWillForceFinishToHome(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZI)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateActiveRecents(Landroid/window/TransitionInfo;)V
    .locals 13

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENTS_TRANSITION_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v3, v1

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v5, v1

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v11, "[%d] RecentsController.updateActiveRecents: set to task=%d"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, -0x42cf395a8462c2e7L    # -5.960019169100618E-14

    const/4 v10, 0x5

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->updateActiveRecents(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string v2, "RecentsTransitionHandler"

    const-string v3, "Failed to update active recents for input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
